using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Детский_дом
{
	public class Children
	{
		// имя ребёнка
		public string FullName { get; set; }

		// дата рождения
		public DateTime BithDate { get; set; }

		//личный номер
		public int ID { get; set; }

		// дата поступления в дет дом
		public DateTime BeginDate { get; set; }

		//причина поступленя в дет дом
		public string Reason { get; set; }

		public Children()
		{
			FullName = "";
			Reason = "не осталось близких";
			BeginDate = DateTime.Now;
			BithDate = new DateTime(2001,01,01);
		}

	}


}
