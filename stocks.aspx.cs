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
    public partial class stocks : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            
            
               
                Showproduct();
            
           
        }
       
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void Showproduct()
        {
            string Query = "select * from StocksTbl";
            productGV.DataSource = Con.GetData(Query);
            productGV.DataBind();
        }


        protected void SAVE_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox1.Text == "" || TextBox6.Text == "" || drop.SelectedValue==""  || TextBox7.Text == "" || TextBox4.Text == "")
                {
                    errMsg.Text = "Missing Data";

                }
                else
                {
                    string ItemName = TextBox1.Text;
                    string pack = TextBox6.Text;
                    string category = drop.SelectedValue;
                    string mrp = TextBox7.Text;
                    string qty = TextBox4.Text;


                    string Query = "insert into StocksTbl values('{0}','{1}','{2}','{3}','{4}')";

                    Query = string.Format(Query, ItemName, pack, category, mrp, qty);
                    Con.SetData(Query);
                    Showproduct();
                    errMsg.Text = "product Added !!!";
                }
            }

            catch (Exception Ex)
            {
                errMsg.Text = Ex.Message;

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox1.Text == "" || TextBox6.Text == "" ||drop.SelectedValue=="" || TextBox7.Text == "" || TextBox4.Text == "")
                {
                    errMsg.Text = "Missing Data";

                }
                else
                {
                   
                    string Query = "delete from StocksTbl where ItemId={0}";
                    Query = string.Format(Query, productGV.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    Showproduct();
                    errMsg.Text = "product Deleted";

                }
            }
            catch (Exception Ex)
            {
                errMsg.Text = Ex.Message;
            }
        }
        int key = 0;
        protected void productGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = productGV.SelectedRow.Cells[2].Text;
            TextBox6.Text = productGV.SelectedRow.Cells[3].Text;
          drop.SelectedValue= productGV.SelectedRow.Cells[4].Text;
            TextBox7.Text = productGV.SelectedRow.Cells[5].Text;
            TextBox4.Text = productGV.SelectedRow.Cells[6].Text;

            if (TextBox1.Text == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(productGV.SelectedRow.Cells[1].Text);
            }
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox6.Text == "")
                {
                    errMsg.Text = "missing data";
                }
                else
                {

                    string ItemName = TextBox1.Text;
                    string pack = TextBox6.Text;
                    string category = drop.SelectedValue;
                    
                    string mrp = TextBox7.Text;
                    string qty = TextBox4.Text;


                    string Query = "update  StocksTbl set ItemName='{0}',pack='{1}',category='{2}',mrp='{3}',qty='{4}' where ItemId={5}";
                    Query = string.Format(Query, ItemName, pack, category, mrp, qty, Convert.ToInt32(productGV.SelectedRow.Cells[1].Text));
                    Con.SetData(Query);
                    Showproduct();
                    errMsg.Text = "products updated";

                }
            }
            catch (Exception Ex)
            {
                errMsg.Text = Ex.Message;
            }
        }
    }
    }

    