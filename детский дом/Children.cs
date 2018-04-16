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
		public string FullName;

		// дата рождения
		public DateTime BithDate;

		//личный номер
		public int ID;

		// дата поступления в дет дом
		public DateTime BeginDate;

		//причина поступленя в дет дом
		public string Reason;

		public Children(int id = 0)
		{
			FullName = "";
			ID = id;
			Reason = "не осталось близких";
			BeginDate = DateTime.Now;
			BithDate = new DateTime(2001,01,01);
		}

	}


}
