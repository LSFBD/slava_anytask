using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Детский_дом
{
	class Children
	{
		// имя ребёнка
		public string FullName;

		//личный номер
		public int ID;

		// дата поступления
		public DateTime BeginDate;

		//причина поступленя в дет дом
		public string Reason;

		Children(int id = 0)
		{
			FullName = "";
			ID = id;
			Reason = "не осталось близких";
		}

	}


}
