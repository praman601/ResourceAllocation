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
    public partial class users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //using (SqlConnection con = new SqlConnection("Data Source=DSKTP;Initial Catalog=project;Integrated Security=true"))
            //{

            //    SqlCommand com = new SqlCommand("select taskName,taskCode from taskTable", con);
            //    SqlDataAdapter da = new SqlDataAdapter(com);
            //    DataSet ds = new DataSet();
            //    da.Fill(ds);
            //    dropdownlistTaskCode.DataTextField = ds.Tables[0].Columns["taskName"].ToString();
            //    dropdownlistTaskCode.DataValueField = ds.Tables[0].Columns["taskCode"].ToString();
            //    dropdownlistTaskCode.DataSource = ds.Tables[0];
            //    dropdownlistTaskCode.DataBind();


            //}

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection("Data Source=DSKTP;Initial Catalog=project;Integrated Security=true"))
            {
            con.Open();
                SqlCommand cmd = new SqlCommand();

                string userName = txtUser.Text;
                string userType = DropDownList1.Text;
                string usercred = txtUserCred.Text;
                string userweight = txtUserWeight.Text;
                string userPrem = radioUserPreemption.Text;
               // Int32 taskCod = Convert.ToInt32(dropdownlistTaskCode.SelectedValue);
                //Response.Write(taskcod);

                int rows;

                cmd.CommandText = "insert into userTable values('" + userName + "','" + userType + "','" + usercred + "','" + userweight + "','" + userPrem + "')";
                cmd.Connection = con;
                rows = cmd.ExecuteNonQuery();

              
                Response.Write("the number of rows updated is " + rows);



                //for (int i = 0; i < checkboxRemainingResources.Items.Count - 1; i++)
                //{


                //    int rows;
                //    string resource = String.Empty;

                //    foreach (ListItem chk in checkboxRemainingResources.Items)
                //    {
                //        if (chk.Selected)
                //        {
                //            resource = resource + chk.Text + ",";
                //        }
                //    }
                //    resource = resource.Substring(0, resource.Length - 1);
                //    cmd.CommandText = "insert into userTable values('" + userName + "','" + userType + "','" + resource + "','" + usercred + "','" + userweight + "','" + userPrem + "','" + taskCod + "')";
                //    cmd.Connection = con;
                //    rows = cmd.ExecuteNonQuery();
                //    Response.Write("the number of rows updated is " + rows);

                //}
                //
                con.Close();


            }

        }
    }
}