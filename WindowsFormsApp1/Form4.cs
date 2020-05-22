using System;
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
    public partial class Form4 : Form
    {
        public Form4()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Form4_Load(object sender, EventArgs e)
        {
            timer1.Start();
            textBox1.Text = DateTime.Now.ToLongTimeString();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            
            textBox1.Text = DateTime.Now.ToLongTimeString();
            timer1.Start();
        }

        // Po izabranoj kabini u donja 2 TextBoxa treba da se prikazze ligIn time i Job
        // Button Logout treba da se u bazu podataka odjavljenih korisnika unesu podaci 
        // uspput taj button treba da updejtuje kabinu da nije full nego Empty



    }
}
