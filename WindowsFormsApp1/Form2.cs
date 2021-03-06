﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Forma2 : Form
    {
        public Forma2()
        {
           
            InitializeComponent();
        }

        private void Form2_Load(object sender, EventArgs e)
        {
            
                timer1.Start();
                label1.Text = DateTime.Now.ToLongTimeString();
                label2.Text = DateTime.Now.ToLongDateString();
            }

            private void timer1_Tick(object sender, EventArgs e)
            {
                label1.Text = DateTime.Now.ToLongTimeString();
                timer1.Start();
            }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void helpToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show(" Program je stvoren da olaksamo rad internet kafanama \n Na projektu su radili: \n Nemanja Svilarov SI28/17 \n Bojan Babic SI12/17 \n David Prokin SI17/17");
        }

        private void inCustomerToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form3 forma = new Form3();
            forma.ShowDialog();
        }

        private void changeNameToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form6 forma = new Form6();
            forma.ShowDialog();
        }


        public void setTitle(String name)
        {
            this.Text = name;
            
            
        }
    }
}
