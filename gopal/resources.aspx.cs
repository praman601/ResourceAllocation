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
    public partial class resources : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //using (SqlConnection con = new SqlConnection("Data Source=DSKTP;Initial Catalog=project;Integrated Security=true"))
            //{

            //    SqlCommand com = new SqlCommand("select taskName,taskCode from taskTable", con);
            //    SqlDataAdapter da = new SqlDataAdapter(com);
            //    DataSet ds = new DataSet();
            //    da.Fill(ds);
               

            //}
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection("Data Source=DSKTP;Initial Catalog=project;Integrated Security=true"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();

                string resourceId=txtResourceId.Text;
                string resourceName = txtResourceName.Text;
                string resourceCred = txtResourceCred.Text;
                string resourceWeight = txtResourceWeight.Text;

                cmd.CommandText = "insert into resourceTable values('" + resourceId + "','" + resourceName + "','" + resourceCred + "','" + resourceWeight + "')";
                cmd.Connection = con;
                int rows = cmd.ExecuteNonQuery();
                Response.Write("the number of rows updated is " + rows);



            }


        }
    }
}