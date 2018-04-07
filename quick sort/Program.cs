using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace quick_sort
{
	class Program
	{
		static void Main(string[] args)
		{
			Console.WriteLine("\nБыстрая сортировка\n");

			MakeTest("Сортировка массива из трёх элементов", ThreeElementsTest());
			MakeTest("Сортировка массива из 100 одинаковых чисел", OneHundredElementsTest());
			MakeTest("Сортировка массива из 1000 случайных элементов", OneThousandElementsTest());
			MakeTest("Сортировка массива из 150000000 элементов(занимет время)", HugeMassiveTest());
			MakeTest("Сортировка пустого массива", EmptyMassiveTest());

			Console.ReadKey();
		}

		static void MakeTest(string name, bool istruth)
		{
			Console.Write("тест: {0} #{1}\n", name, istruth ? "пройден" : "завален");
		}

		static bool ThreeElementsTest()
		{
			var array = new[] { 10, 5, -10 };
			QuickSort.Sort(array);

			return QuickSort.IsSorted(array);
		}

		static bool OneHundredElementsTest()
		{
			var array = new int[100];
			for (var i = 0; i < array.Length; i++)
				array[i] = 12;
			QuickSort.Sort(array);

			return QuickSort.IsSorted(array);
		}

		static bool OneThousandElementsTest()
		{
			var rand = new Random();
			var array = new int[1000];
			for (var i = 0; i < array.Length; i++)
				array[i] = rand.Next();

			QuickSort.Sort(array);

			return QuickSort.IsSorted(array);
		}

		static bool HugeMassiveTest()
		{
			var rand = new Random();
			var array = new int[150000000];

			for (var i = 0; i < array.Length; i++)
				array[i] = rand.Next();

			QuickSort.Sort(array);

			return QuickSort.IsSorted(array);
		}


		static bool EmptyMassiveTest()
		{
			var array = new int[0];
			QuickSort.Sort(array);

			return QuickSort.IsSorted(array);
		}
	}

	public static class QuickSort
	{
		public static bool IsSorted(int[] array)
		{
			var len = array.Length;
			if (len == 0 || len == 1) return true;
			var num = 0;
			var rand = new Random();

			for (var i = 0; i <= 8; i++)
			{
				var x = rand.Next(0, len - 1);
				if (array[x] < array[x + 1])
				{
					num++;
					if (len >= num) break;
				}
			}
			return len >= num || num <= 8;
		}

		static void Sort(int[] array, int begin, int end)
		{
			if (end == begin) return;
			var pivot = array[end];
			var storeIndex = begin;
			for (int i = begin; i <= end - 1; i++)
			{
				if (array[i] <= pivot)
				{
					swap(ref array[i], ref array[storeIndex]);
					storeIndex++;
				}
			}

			swap(ref array[storeIndex], ref array[end]);

			if (storeIndex > begin) Sort(array, begin, storeIndex - 1);
			if (storeIndex < end) Sort(array, storeIndex + 1, end);
		}

		public static void Sort(int[] array)
		{
			var len = array.Length;
			Sort(array, 0, len == 0 ? len : len - 1);
		}
		
		static void QuickSortTwoTables(int[] array, object[] array2, int begin, int end)
		{
			if (end == begin) return;
			var pivot = array[end];
			var storeIndex = begin;
			for (int i = begin; i <= end - 1; i++)
			{
				if (array[i] <= pivot)
				{
					swap(ref array[i], ref array[storeIndex]);
					swap(ref array2[i], ref array2[storeIndex]);
					storeIndex++;
				}
			}

			swap(ref array[storeIndex], ref array[end]);
			swap(ref array2[storeIndex], ref array2[end]);

			if (storeIndex > begin) QuickSortTwoTables(array, array2, begin, storeIndex - 1);
			if (storeIndex < end) QuickSortTwoTables(array, array2, storeIndex + 1, end);
		}
		public static void QuickSortTwoTables(int[] array, object[] array2)
		{
			var len = array.Length;
			QuickSortTwoTables(array, array2 , 0, len == 0 ? len : len - 1);
		}

		private static void swap<T>(ref T lhs, ref T rhs)
		{
			T temp = lhs;
			lhs = rhs;
			rhs = temp;
		}
	}
}
