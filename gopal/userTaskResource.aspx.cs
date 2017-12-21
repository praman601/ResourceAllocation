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
    public partial class userTaskResource : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (SqlConnection con = new SqlConnection("Data Source=DSKTP;Initial Catalog=project;Integrated Security=true"))
                {
                    {
                        SqlCommand com = new SqlCommand("select userName,userId from userTable", con);
                        SqlDataAdapter da = new SqlDataAdapter(com);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dropDownUserName.DataTextField = ds.Tables[0].Columns["userName"].ToString();
                        dropDownUserName.DataValueField = ds.Tables[0].Columns["userId"].ToString();
                        dropDownUserName.DataSource = ds.Tables[0];
                        dropDownUserName.DataBind();


                    }


                    {

                        SqlCommand com = new SqlCommand("select taskCode,taskName from taskTable", con);
                        SqlDataAdapter da = new SqlDataAdapter(com);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dropdownlistTaskCode.DataTextField = ds.Tables[0].Columns["taskName"].ToString();
                        dropdownlistTaskCode.DataValueField = ds.Tables[0].Columns["taskCode"].ToString();
                        dropdownlistTaskCode.DataSource = ds.Tables[0];
                        dropdownlistTaskCode.DataBind();



                    }

                }

            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection("Data Source=DSKTP;Initial Catalog=project;Integrated Security=true"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();



                string userName = dropDownUserName.SelectedItem.Text;
                int userId = Convert.ToInt32(dropDownUserName.SelectedValue);
                //string taskCod = dropdownlistTaskCode.SelectedValue;
                Int32 taskCod = Convert.ToInt32(dropdownlistTaskCode.SelectedValue);
                string resourceType = dropDownResourceType.SelectedValue;
                string resourceProcedure = txtResourceProc.Text;
                string resourceCost = txtResourceCost.Text;
                string resourceTime = txtResourceTime.Text;


                int rows;
                string resource = String.Empty;

                foreach (ListItem chk in chkBoxRequestedResources.Items)
                {
                    if (chk.Selected)
                    {
                        resource = resource + chk.Text + ",";
                    }
                }
                resource = resource.Substring(0, resource.Length - 1);
                cmd.CommandText = "insert into userTaskResource values('" + userName + "','" + taskCod + "','" + resource + "','" + resourceType + "','" + resourceProcedure + "','" + resourceCost + "','" + resourceTime + "')";
                cmd.Connection = con;
                rows = cmd.ExecuteNonQuery();
                Response.Write("the number of rows updated is " + rows);



                con.Close();


            }

        }
    }
}