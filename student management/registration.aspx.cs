using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace student_management
{
    public partial class registration : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            object ob = db.exescalar("insert into logintable1 values('" + txtemail.Text + "','" + txtpassword.Text + "','user');select @@IDENTITY");

           
            string s = "insert into studentregister values('" + txtreg.Text + "','" + txtname.Text + "','" + txtage.Text + "','" + txtmobile.Text + "','" + txtclass.Text + "','" + FileUpload1.FileName + "','"+txtemail.Text+"','"+txtpassword.Text+"','" + ob + "')";
            int i = db.exenonquery(s);
            if (i == 0)
            {
                Response.Write("failed");

            }
            else
            {
                Response.Write("successfully saved");
            }
            txtreg.Text = "";
            txtname.Text = "";
            txtage.Text = "";
            txtmobile.Text = "";
            txtclass.Text = "";
            
            txtemail.Text = "";
            txtpassword.Text = "";
            
            Response.Redirect("login.aspx");
        }
    }
}