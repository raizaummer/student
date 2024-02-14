using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace student_management
{
    public partial class homepage : System.Web.UI.Page
    {dboperation db=new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack) {
                grid();
            }
        }
     
        public void grid()
        {int id = Convert.ToInt32(Session["id"].ToString());
            string s = "select regno,name,age,mobile,class,photo,email,password FROM  studentregister where id='"+id+"'";
            db.select(s);
            DataTable dt = db.select(s);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        public static int id;
        protected void linkbutton_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32((sender as LinkButton).CommandArgument);


            string g = "select * from studentregister where id = '" + id + "'";
            db.select(g);
            DataTable dt = db.select(g);
            if (dt.Rows.Count > 0)
            {
                txtreg.Text = dt.Rows[0][1].ToString();
                txtname.Text = dt.Rows[0][2].ToString();
                txtage.Text = dt.Rows[0][3].ToString();
                txtmobile.Text = dt.Rows[0][4].ToString();
                txtclass.Text = dt.Rows[0][5].ToString();
                txtemail.Text = dt.Rows[0][7].ToString();
                txtemail.Text = dt.Rows[0][8].ToString();

            }
        }

        protected void butn_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["id"].ToString());
            string s="update studentregister set regno='"+txtreg.Text+"',name='"+txtname.Text+"',age='"+txtage.Text+"',mobile='"+txtmobile.Text+"',class='"+txtclass.Text+"',email='"+txtemail.Text+"',password='"+txtpassword.Text+"' where id='"+id+"'";
            
        }
    }
}