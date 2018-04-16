using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using quick_sort;

namespace hash_table
{
	public class HashTable
	{
		private int[] keys;
		private object[] values;
		private int num;
		public int Length { get; private set; }

		public HashTable(int size)
		{
			Length = size;
			keys = new int[size];
			values = new object[size];
			num = 0;
		}

		public void PutPair(object key, object value)
		{
			var hashdKey = key.GetHashCode();
			int id;
			if ((id = Binary.BinarySearch(keys, hashdKey)) != -1)
			{
				values[id] = value;
				return;
			}
			else if (num < Length)
			{
				keys[num] = hashdKey;
				values[num] = value;
				num++;

				if (!QuickSort.IsSorted(keys))
					QuickSort.QuickSortTwoTables(keys, values);

				return;
			}
			else
			{
				Console.WriteLine("Недопустимый объем: {0}!", num + 1);
				return;
			}

		}

		public object GetValueByKey(object key)
		{
			var hashdKey = key.GetHashCode();
			var id = Binary.BinarySearch(keys, hashdKey);

			return id != -1 ? values[id] : null;
		}
	}
	class Program
	{
		static void Main(string[] args)
		{
			Console.WriteLine("\nХэш таблицы");
			Test("Добавление трёх элементов, поиск трёх элементов", ThreeElementsTest());
			Test("Добавление одного и того же ключа дважды с разными значениями", SimilarKeysTest());
			Test("Добавление 10000 элементов и поиск одного из них", HugeAndOneFindTest());
			Test("Добавление 1 500 000 элементов и поиск 150 000 недобавленных ключей", HugeAndFadedFindTest());

			Console.ReadKey();
		}

		static void Test(string name, object func)
		{
			Console.Write("тест {0} - {1}\n", name, (bool)func ? "пройден" : "завален");
		}

		static object ThreeElementsTest()
		{
			var table = new HashTable(3);
			table.PutPair("3434", 13424);
			table.PutPair("ghhh", 51977);
			table.PutPair("12", 59498);

			return (int)table.GetValueByKey("ghhh") == 51977;
		}

		static object SimilarKeysTest()
		{
			var table = new HashTable(1);

			table.PutPair("se4f", 575287);
			table.PutPair("se4f", 123);

			return (int)table.GetValueByKey("se4f") == 123;
		}

		static object HugeAndOneFindTest()
		{
			var tbl = new HashTable(10000);
			for (var i = 1; i <= tbl.Length; i++)
				tbl.PutPair(i, i);

			return (int)tbl.GetValueByKey(100) == 100;
		}

		static object HugeAndFadedFindTest()
		{
			var tbl = new HashTable(1500000);
			for (var i = 1; i <= tbl.Length; i++)
				tbl.PutPair(i, i * 2);

			for (var i = tbl.Length + 1; i <= (tbl.Length * 1.1); i++)
				if ((object)tbl.GetValueByKey(i) != null)
					return false;

			return true;
		}

	}


	public static class Binary
	{
		public static int BinarySearch(int[] array, int value)
		{
			int low = 0;
			int high = array.Length - 1;
			while (low <= high)
			{
				int middle = ((low + high) / 2);
				var arrValue = array[middle];

				if ((object)arrValue == null) continue;
				if (value < arrValue)
					high = middle - 1;
				else if (value > arrValue)
					low = middle + 1;
				else if (value == arrValue)
					return middle;
			}
			return -1;
		}
	}


}
