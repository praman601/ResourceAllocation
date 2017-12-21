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
    public partial class columnchart : System.Web.UI.Page
    {
        public string result = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            using (SqlConnection con = new SqlConnection("Data Source=DSKTP;Initial Catalog=project;Integrated Security=true"))
            {
                {
                    
                   
                    con.Open();
                    SqlCommand com = new SqlCommand("select taskCode,taskName from taskTable for JSON PATH", con);
                   SqlDataReader rdr = com.ExecuteReader();
                    //rdr.Read();
                    while (rdr.Read())
                    {
                         result = rdr.GetValue(0).ToString();
                        

                    }
                     
                   
                }
            }

                }
            }
}