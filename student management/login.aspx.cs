using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace student_management
{
    public partial class login : System.Web.UI.Page
    {
        dboperation db=new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "select * from logintable1 where email='" + txtemail.Text + "' and password='" + txtpassword.Text + "' ";
            DataTable dt = db.select(s);
            if (dt.Rows.Count == 1)
            {
                Session["email"] = dt.Rows[0]["email"].ToString();
                Session["id"] = dt.Rows[0]["lid"].ToString();

                if (dt.Rows[0]["role"].ToString() == "user")
                {
                    Response.Redirect("main.aspx");
                }
                else
                {
                    Response.Redirect("adminhome.aspx");
                }
            }
            else
            {
                Response.Write("Invalid username and password");

            }
        }
    }
}