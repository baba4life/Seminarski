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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            this.BackgroundImage = Properties.Resources.image2;
            

        }



        private void button1_Click(object sender, EventArgs e)
        {

            if (textAdmin.Text == "Admin" && textPass.Text == "123")
            {
                this.Hide();
                MessageBox.Show("Uspesno logovanje. Dobrodosli admine");
                Forma2 form2 = new Forma2();
                form2.ShowDialog();
                this.Close();
            }
            else
            {
                MessageBox.Show("Ne uspesno logovanje");
            }

        }

        
    }
}
