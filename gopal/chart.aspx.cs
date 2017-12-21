using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.DataVisualization.Charting;

namespace gopal
{
    public partial class chart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetCharData();
                GetCharTypes();
            }
            GetCharData();
            GetCharTypes();
        }

        private void GetCharData()
        {
            using (SqlConnection con = new SqlConnection("Data Source=DSKTP;Initial Catalog=project;Integrated Security=true"))
            {
                {
                    SqlCommand com = new SqlCommand("select userName,userId from userTable", con);
                    Series series = Chart1.Series["Series1"];
                    con.Open();
                    SqlDataReader rdr = com.ExecuteReader();
                    while(rdr.Read())
                    {
                        series.Points.AddXY(rdr["userName"].ToString(), rdr["userID"]);
                    }
                }
            }
        }

        private void GetCharTypes()
        {
            foreach (int chartType in Enum.GetValues(typeof(SeriesChartType)))
            {
                ListItem li = new ListItem(Enum.GetName(typeof(SeriesChartType), chartType), chartType.ToString()); 
                DropDownList1.Items.Add(li);
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.Chart1.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), DropDownList1.SelectedValue);

        }
    }
}