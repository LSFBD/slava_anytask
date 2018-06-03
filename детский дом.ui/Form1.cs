using System;
using System.Windows.Forms;
using System.Collections.Generic;
using System.Xml.Serialization;
using System.IO;
using Детский_дом;
using Verificator;

namespace детский_дом.ui
{
	public partial class Form1 : Form
	{
		public string FileName = "phones.phns";
		public int elements { get; private set; }
		public List<Children> mainList { get; private set; }


		private void addElement(Children inf )
		{
			mainList.Add(inf);
			listView1.Items.Add(new ListViewItem(new string[] {
				inf.ID.ToString(),
				inf.FullName,
				inf.BithDate.ToString(),
			}));
			elements++;
		}

		public Form1()
		{
			mainList = new List<Children>();
			elements = 0;
			InitializeComponent();
		}
		OpenLicense license;
		private void Form1_Load(object sender, EventArgs e) {
			listView1.Columns.Add("ID", 45);
			listView1.Columns.Add("ФИО", 280);
			listView1.Columns.Add("Дата рождения",200);

			openFileDialog1.FileName = FileName;
			openFileDialog1.Filter = "(*.det)|*.det";
			openFileDialog1.InitialDirectory = Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().Location);

			saveFileDialog1.FileName = openFileDialog1.FileName;
			saveFileDialog1.Filter = openFileDialog1.Filter;
			saveFileDialog1.InitialDirectory = openFileDialog1.InitialDirectory;

			button4.Enabled = false;
			button5.Enabled = false;

			license = new OpenLicense(Properties.Resources._public, Properties.Resources._public);

			OpenFileDialog licenseDialog = new OpenFileDialog();
			licenseDialog.Filter = "Файл лицензии (*.xml)|*.xml";
			panel1.Enabled = false;

			if (licenseDialog.ShowDialog() == DialogResult.OK)
			{
				panel1.Enabled = license.TryLoadLicense(licenseDialog.FileName);
			}

		}

		private void listView1_SelectedIndexChanged(object sender, EventArgs e)
		{
			if (listView1.SelectedItems.Count > 0 && listView1.SelectedItems[0] != null)
			{
				button4.Enabled = true;
				button5.Enabled = true;
			}
			else
			{
				button4.Enabled = false;
				button5.Enabled = false;
			}
		}

		private void openFileDialog1_FileOk(object sender, System.ComponentModel.CancelEventArgs e)
		{
			string fileName = openFileDialog1.FileNames[0];
			using (var fl = File.OpenRead(fileName))
			{
				List<Children> buffer = (List<Children>)new XmlSerializer(typeof(List<Children>)).Deserialize(fl);

				listView1.Items.Clear();
				mainList = new List<Children>();
				elements = 0;

				foreach (var v in buffer)
					addElement(v);

				FileName = fileName;
				openFileDialog1.FileName = FileName;
			}
		}

		private void button1_Click(object sender, EventArgs e)
		{
			openFileDialog1.ShowDialog();
		}

		private void button2_Click(object sender, EventArgs e)
		{
			saveFileDialog1.ShowDialog();
		}

		private void button3_Click(object sender, EventArgs e)
		{
			var inforow = new addedit(new Children());
			var dialog = inforow.ShowDialog(this);
			if (dialog == DialogResult.OK)
				addElement(inforow.row);
		}

		private void button4_Click(object sender, EventArgs e)
		{
			var id = listView1.SelectedItems[0].Index;
			listView1.Items[id].Remove();
			mainList[id] = null;
		}

		private void button5_Click(object sender, EventArgs e)
		{
			var id = listView1.SelectedItems[0].Index;
			var inforow = new addedit(mainList[id]);
			var dialog = inforow.ShowDialog(this);
			if (dialog == DialogResult.OK)
			{
				mainList[id] = inforow.row;
				listView1.Items[id] = new ListViewItem(new string[] {
						mainList[id].ID.ToString(),
						mainList[id].FullName,
						mainList[id].BithDate.ToString(),
					});
			}
		}

		private void saveFileDialog1_FileOk(object sender, System.ComponentModel.CancelEventArgs e)
		{
			string fileName = saveFileDialog1.FileNames[0];
			using (var file = File.Create(fileName))
			{
				new XmlSerializer(typeof(List<Children>)).Serialize(file, mainList);
				FileName = fileName;
				saveFileDialog1.FileName = FileName;
			}
		}

		private void panel1_Paint(object sender, PaintEventArgs e)
		{

		}
	}
}
