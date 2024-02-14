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
    public partial class adminMarklist : System.Web.UI.Page
    {dboperation db=new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { };
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                string s = "insert into marks values('" + txtmaths.Text + "','" + txtenglish.Text + "','" + txtjava.Text + "','" + txtc.Text + "','"+txttotal.Text+"','"+txtname.Text+"')";
            int i = db.exenonquery(s);
            if (i == 0)
            {
                Response.Write("failed");

            }
            else
            {
                Response.Write("successfully saved");
            }
            string g = "select sum(maths+english+java+c++) as total FROM  marks";
            DataTable dt = db.select(g);
            txtmaths.Text = "";
            txtenglish.Text = "";
            txtjava.Text = "";
            txtc.Text = "";
            

        }
    }
}