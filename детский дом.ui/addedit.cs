﻿using System;
using System.Windows.Forms;
using Детский_дом;


namespace детский_дом.ui
{
	public partial class addedit : Form
	{
		public Children row { get; private set; }

		public addedit(Children chld)
		{
			InitializeComponent();

			row = chld;
			textBox1.Text = row.FullName;
			textBox2.Text = row.Reason;
			maskedTextBox1.Text = Convert.ToString(row.ID);
			dateTimePicker2.Value = row.BeginDate;
			dateTimePicker1.Value = row.BithDate;

		}


		private void addedit_Load(object sender, EventArgs e)
		{

		}

		private void button1_Click(object sender, EventArgs e)
		{
			if (textBox1.Text.Length < 4 || textBox2.Text.Length < 4)
				return;

			row.FullName = textBox1.Text;
			row.Reason = textBox2.Text;
			row.BeginDate = dateTimePicker2.Value;
			row.BithDate = dateTimePicker1.Value;
			row.ID = int.Parse(maskedTextBox1.Text);

			DialogResult = DialogResult.OK;
			Dispose();
		}

		private void maskedTextBox1_MaskInputRejected(object sender, MaskInputRejectedEventArgs e)
		{

		}
	}
}