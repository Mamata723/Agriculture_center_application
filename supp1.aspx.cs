using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace WebApplication2.admin
{
    public partial class supp1 : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();

            Showsupplier();
        }
        private void Showsupplier()
        {
            
           
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox6.Text == "" || TextBox4.Text == "")
                {
                    errmsg.Text = "Missing Data";

                }
                else
                {

                    string supp_name = TextBox1.Text;
                    string comp_name = TextBox2.Text;
                    string mob_no = TextBox3.Text;

                   
                    string Item_name = TextBox6.Text;
                    string Desc = TextBox4.Text;




                    string Query = "insert into supplierTbl values('{0}','{1}','{2}','{3}','{4}')";

                    Query = string.Format(Query, supp_name, comp_name, mob_no, Item_name, Desc);
                    Con.SetData(Query);
                    Showsupplier();
                    errmsg.Text = "customer Added !!!";
                }
            }
            catch (Exception Ex)
            {
                errmsg.Text = Ex.Message;

            }
        }
       
       

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }
    }
}