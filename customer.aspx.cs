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
    public partial class customer : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            showcustomer();

           
        }
        

        private void showcustomer()
        {
            string Query = "select * from customerTbl";
            customerGV.DataSource = Con.GetData(Query);
            customerGV.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox6.Text == "" || dp.SelectedValue == "" || TextBox5.Text == ""|| TextBox7.Text == ""|| TextBox8.Text == "")
                {
                    errmsg.Text = "Missing Data";

                }
                else
                {

                    string custname = TextBox1.Text;
                    string mob = TextBox2.Text;
                    string aadhar_no = TextBox3.Text;

                    string address = TextBox6.Text;
                    string item_type = dp.SelectedValue;
                    string item_name = TextBox5.Text;
                    string quant = TextBox7.Text;

                    string MRP = TextBox8.Text;




                    string Query = "insert into customerTbl values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')";

                    Query = string.Format(Query, custname, mob, aadhar_no, address, item_type,item_name,quant,MRP);
                    Con.SetData(Query);
                    showcustomer();
                    errmsg.Text = "customer Added !!!";
                }
            }

            catch (Exception Ex)
            {
                errmsg.Text = Ex.Message;

            }
        }
        int key = 0;
        protected void customerGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = customerGV.SelectedRow.Cells[2].Text;
            TextBox2.Text = customerGV.SelectedRow.Cells[3].Text;
            TextBox3.Text = customerGV.SelectedRow.Cells[4].Text;
            TextBox6.Text = customerGV.SelectedRow.Cells[5].Text;
            dp.SelectedValue = customerGV.SelectedRow.Cells[6].Text;
            TextBox5.Text = customerGV.SelectedRow.Cells[7].Text;
            TextBox7.Text = customerGV.SelectedRow.Cells[8].Text;
            TextBox8.Text = customerGV.SelectedRow.Cells[9].Text;

            if (TextBox1.Text == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(customerGV.SelectedRow.Cells[1].Text);
            }
           
        }

        protected void DELETE_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox6.Text == "")
                {
                    errmsg.Text = "missing data";
                }
                else
                {

                    string address = TextBox6.Text;

                    string Query = "delete from customerTbl where custId={0}";
                    Query = string.Format(Query, customerGV.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    showcustomer();
                    errmsg.Text = "employee Deleted";

                }
            }
            catch (Exception Ex)
            {
                errmsg.Text = Ex.Message;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox1.Text == "")
                {
                    errmsg.Text = "missing data";
                }
                else
                {

                    string custname = TextBox1.Text;
                    string mob = TextBox2.Text;
                    string aadhar_no = TextBox3.Text;

                    string address = TextBox6.Text;
                    string date = dp.SelectedValue;
                    string item_name = TextBox5.Text;
                    string quant = TextBox7.Text;

                    string MRP = TextBox8.Text;
                  
                   


                    string Query = "update  customerTbl set custname='{0}',mob='{1}',aadhar_no='{2}',address='{3}',item_type='{4}',item_name='{5}',quant='{6}',MRP='{7}' where custId={8}";
                    Query = string.Format(Query, custname, mob, aadhar_no, address,date, item_name,quant,MRP,Convert.ToInt32(customerGV.SelectedRow.Cells[1].Text));
                    Con.SetData(Query);
                    showcustomer();
                    errmsg.Text = "customer updated";

                }
            }
            catch (Exception Ex)
            {
                errmsg.Text = Ex.Message;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void dp_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}