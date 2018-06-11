using OfficeOpenXml;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Hosting;
using System.Web.Mvc;
using System.Xml.Serialization;
using Web_Application.Models;
using Детский_дом;

namespace Web_Application.Controllers
{
    public class ChildrenController : Controller
    {
        private ChildrenContext db = new ChildrenContext();

        // GET: Children
        public ActionResult Index()
        {
            return View(db.Children.ToList());
        }

        // GET: Children/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Children children = db.Children.Find(id);
            if (children == null)
            {
                return HttpNotFound();
            }
            return View(children);
        }

        // GET: Children/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Children/Create
        // Чтобы защититься от атак чрезмерной передачи данных, включите определенные свойства, для которых следует установить привязку. Дополнительные 
        // сведения см. в статье https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,FullName,BithDate,BeginDate,Reason")] Children children)
        {
            if (ModelState.IsValid)
            {
                db.Children.Add(children);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(children);
        }

        // GET: Children/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Children children = db.Children.Find(id);
            if (children == null)
            {
                return HttpNotFound();
            }
            return View(children);
        }

        // POST: Children/Edit/5
        // Чтобы защититься от атак чрезмерной передачи данных, включите определенные свойства, для которых следует установить привязку. Дополнительные 
        // сведения см. в статье https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,FullName,BithDate,BeginDate,Reason")] Children children)
        {
            if (ModelState.IsValid)
            {
                db.Entry(children).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(children);
        }

        // GET: Children/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Children children = db.Children.Find(id);
            if (children == null)
            {
                return HttpNotFound();
            }
            return View(children);
        }

        // POST: Children/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Children children = db.Children.Find(id);
            db.Children.Remove(children);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

		[HttpPost]
		public ActionResult Upload(HttpPostedFileBase file)
		{
			if (file != null && file.ContentLength > 0)
			{
				List<Children> buffer = (List<Children>)new XmlSerializer(typeof(List<Children>)).Deserialize(file.InputStream);

				foreach (var value in buffer)
				{
					if (value == null) continue;
					db.Children.Add(value);
					db.SaveChanges();
				}
			}

			return RedirectToAction("Index");
		}

		public ActionResult Download()
		{
			var ms = new MemoryStream();
			FileInfo newFile = new FileInfo(HostingEnvironment.ApplicationPhysicalPath + @"\Жители детского дома");
			using (ExcelPackage Package = new ExcelPackage(newFile))
			{

				var worksheet = Package.Workbook.Worksheets.Add("Жители детского дома");

				var i = 1;
				foreach (var g in db.Children)
				{
					worksheet.Cells[i, 1].Value = g.ID;
					worksheet.Cells[i, 2].Value = g.FullName;
					worksheet.Cells[i, 3].Value = g.BithDate.ToString();
					worksheet.Cells[i, 4].Value = g.BeginDate.ToString();
					worksheet.Cells[i, 5].Value = g.Reason;
					i++;
				}
				Package.SaveAs(ms);
			}

			return File(ms.ToArray(), "application/ooxml", (newFile.Name).Replace(" ", "_") + ".xlsx");
		}
	}
}
