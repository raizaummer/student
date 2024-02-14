using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace student_management
{
    public partial class adminStudentList : System.Web.UI.Page
    {dboperation db=new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grid();
            }
        }
        public void grid()
        {
             
            string s = "select regno,name,age,mobile,class,photo,email,password FROM  studentregister";
            db.select(s);
            DataTable dt = db.select(s);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void linkbutton_Click(object sender, EventArgs e)
        {
       
            Response.Redirect("adminMarklist.aspx");
        }
    }
}