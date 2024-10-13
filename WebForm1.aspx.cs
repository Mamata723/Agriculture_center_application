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
    public partial class WebForm1 : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();

            Showsupplier();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void Showsupplier()
        {
            string Query = "select * from suppTbl";
            GridV.DataSource = Con.GetData(Query);
            GridV.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || dp.SelectedValue == "" || TextBox5.Text == ""||TextBox7.Text=="")
                {
                    Label1.Text = "Missing Data";

                }
                else
                {

                    string supp_name = TextBox1.Text;
                    string comp_name = TextBox2.Text;
                    string mob_no = TextBox3.Text;
                    string item_type=dp.SelectedValue;

                    string item_name = TextBox5.Text;
                    string Desc = TextBox7.Text;




                    string Query = "insert into suppTbl values('{0}','{1}','{2}','{3}','{4}','{5}')";

                    Query = string.Format(Query, supp_name, comp_name, mob_no, item_type,item_name, Desc);
                    Con.SetData(Query);
                    Showsupplier();
                    Label1.Text = "supplier Added !!!";
                }
            }
            catch (Exception Ex)
            {
                Label1.Text = Ex.Message;

            }
        }

        int key = 0;
      
  
        protected void GridV_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = GridV.SelectedRow.Cells[2].Text;
            TextBox2.Text = GridV.SelectedRow.Cells[3].Text;
            TextBox3.Text = GridV.SelectedRow.Cells[4].Text;

            dp.SelectedValue = GridV.SelectedRow.Cells[5].Text;
            TextBox5.Text = GridV.SelectedRow.Cells[6].Text;
            TextBox7.Text = GridV.SelectedRow.Cells[7].Text;

            if (TextBox1.Text == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(GridV.SelectedRow.Cells[1].Text);
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || dp.SelectedValue == "" || TextBox5.Text == "" || TextBox7.Text == "")
                {
                    Label1.Text = "Missing Data";

                }
                else
                {

                    string Query = "delete from suppTbl where suppId={0}";
                    Query = string.Format(Query, GridV.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    Showsupplier();
                    Label1.Text = "supplier Deleted";

                }
            }
            catch (Exception Ex)
            {
                Label1.Text = Ex.Message;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox2.Text == "")
                {
                    Label1.Text = "missing data";
                }
                else
                {

                    string supp_name = TextBox1.Text;
                    string comp_name = TextBox2.Text;
                    string mob_no = TextBox3.Text;
                    string item_type = dp.SelectedValue;

                    string item_name = TextBox5.Text;
                    string Desc = TextBox7.Text;


                    string Query = "update  suppTbl set supp_name='{0}',comp_name='{1}',mob_no='{2}',item_type='{3}',item_name='{4}',Desc='{5}' where suppId={6}";
                    Query = string.Format(Query, supp_name,comp_name, mob_no, item_type, item_name,Desc, Convert.ToInt32(GridV.SelectedRow.Cells[1].Text));
                    Con.SetData(Query);
                    Showsupplier();
                    Label1.Text = "details updated";

                }
            }
            catch (Exception Ex)
            {
                Label1.Text = Ex.Message;
            }
        }
    }
    }
