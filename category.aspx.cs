using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.admin
{
    public partial class category : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowCategory();
            
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }
        private void ShowCategory()
        {
            string Query = "select * from CategoryTbl";
             CategoryGV.DataSource = Con.GetData(Query);
            CategoryGV.DataBind();
        }


       

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
        int key = 0;
        protected void CategoryGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            CatName.Text = CategoryGV.SelectedRow.Cells[2].Text;
            TextBox1.Text = CategoryGV.SelectedRow.Cells[3].Text;
            if(CatName.Text == "")
            {
                key = 0;
            }
            else
            {
                key=Convert.ToInt32(CategoryGV.SelectedRow.Cells[1].Text);
            }
        }

        protected void SAVE_Click(object sender, EventArgs e)
        {
            try
            {
                if (CatName.Text == "" || TextBox1.Text == "")
                {
                    errMsg.Text = "Missing Data";

                }
                else
                {

                    string CatName = this.CatName.Text;
                    string CatDescription = TextBox1.Text;

                    string Query = "insert into CategoryTbl values('{0}','{1}')";
                    Query = string.Format(Query, CatName, CatDescription);
                    Con.SetData(Query);
                    ShowCategory();
                    errMsg.Text = "Category Added !!!";
                   
                }
            }

            catch (Exception Ex)
            {
                errMsg.Text = Ex.Message;

            }
        }

        protected void DELETE_Click(object sender, EventArgs e)
        {
            try
            {
                if (CatName.Text == " ")
                {
                    errMsg.Text = "missing data";
                }
                else
                {
                    string Catname = CatName.Text;
                    string Query = "delete from CategoryTbl where CatId={0}";
                    Query = string.Format(Query, CategoryGV.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowCategory();
                    errMsg.Text = "category Deleted";

                }
            }
            catch (Exception Ex)
            {
                errMsg.Text = Ex.Message;
            }
        }

        protected void EDIT_Click(object sender, EventArgs e)
        {
            try
            {
                if(CatName.Text == " "|| TextBox1.Text == "")
                {
                    errMsg.Text = "missing data";
                }
                else
                {
                    string CatName = this.CatName.Text;
                    string CatDescription = TextBox1.Text;


                    string Query = "update CategoryTbl set CatName='{0}',CatDescription='{1}'where CatId={2}";
                    Query = string.Format(Query, CatName, CatDescription, CategoryGV.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowCategory();
                    errMsg.Text = "Category Updated !!!";

                }
            }
            catch(Exception Ex)
            {
                errMsg.Text = Ex.Message;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}