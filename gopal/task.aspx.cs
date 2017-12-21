using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace gopal
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection("Data Source=DSKTP;Initial Catalog=project;Integrated Security=true"))
            {
               con.Open();
                SqlCommand cmd = new SqlCommand();
               
                string taskCode = txtTaskCode.Text;
                string taskName = txtTaskName.Text;
                string taskLocation = txtTaskLocation.Text;
                string taskType = txtTaskType.Text;

                cmd.CommandText = "insert into taskTable values('"+taskCode+ "','" + taskName + "','" + taskLocation + "','" + taskType + "')";
                cmd.Connection = con;
                 int rows = cmd.ExecuteNonQuery();
                Response.Write("the number of rows updated is " + rows);



            }
        }
    }
}