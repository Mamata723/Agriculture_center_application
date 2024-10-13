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
    public partial class employee : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            showemployee();

        }
        private void showemployee()
        {
            string Query = "select * from employeeTbl";
            employeeGV.DataSource = Con.GetData(Query);
            employeeGV.DataBind();
        }


        protected void save_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox1.Text == "" || TextBox4.Text == "" || TextBox2.Text == "" || TextBox5.Text == "" || TextBox3.Text == "")
                {
                    errMsg.Text = "Missing Data";

                }
                else
                {
                    string empFname=TextBox1.Text;
                    string empLname=TextBox4.Text;
                    string mob=TextBox2.Text;
                    string address=TextBox5.Text;
                    string  Payment=TextBox3.Text;

                    string Query = "insert into employeeTbl values('{0}','{1}','{2}','{3}','{4}')";

                    Query = string.Format(Query, empFname, empLname, mob, address, Payment);
                    Con.SetData(Query);
                    showemployee();
                    errMsg.Text = "employee Added !!!";
                }
            }

            catch (Exception Ex)
            {
                errMsg.Text = Ex.Message;

            }
        }
        int key = 0;
        protected void employeeGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = employeeGV.SelectedRow.Cells[2].Text;
            TextBox4.Text = employeeGV.SelectedRow.Cells[3].Text;
            TextBox2.Text = employeeGV.SelectedRow.Cells[4].Text;
            TextBox5.Text = employeeGV.SelectedRow.Cells[5].Text;
            TextBox3.Text = employeeGV.SelectedRow.Cells[6].Text;

            if (TextBox1.Text == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(employeeGV.SelectedRow.Cells[1].Text);
            }
        }



        protected void delete_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox4.Text == "")
                {
                    errMsg.Text = "missing data";
                }
                else
                {
                    
                    string Lname=TextBox4.Text;

                    string Query = "delete from employeeTbl where empId={0}";
                    Query = string.Format(Query, employeeGV.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    showemployee();
                    errMsg.Text = "employee Deleted";

                }
            }
            catch (Exception Ex)
            {
                errMsg.Text = Ex.Message;
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox4.Text == "")
                {
                    errMsg.Text = "missing data";
                }
                else
                {
                    
                    string empFname = TextBox1.Text;
                    string empLname = TextBox4.Text;
                    string mob = TextBox2.Text;
                    string address = TextBox5.Text;
                    string Payment = TextBox3.Text;


                    string Query = "update  employeeTbl set empFname='{0}',empLname='{1}',mob='{2}',address='{3}',payment='{4}' where empId={5}";
                    Query = string.Format(Query,empFname,empLname,mob,address,Payment, Convert.ToInt32(employeeGV.SelectedRow.Cells[1].Text));
                    Con.SetData(Query);
                    showemployee();
                    errMsg.Text = "employee updated";

                }
            }
            catch (Exception Ex)
            {
                errMsg.Text = Ex.Message;
            }
        }
        }
    }


    



