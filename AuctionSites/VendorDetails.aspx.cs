using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.Sql;
using System.Configuration;
using System.ComponentModel;
using AuctionSites.App_Start;

namespace AuctionSite
{
    public partial class VendorDetails : DataBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ListView();
        }
        public void ListView()
        {
            DataBase db = new DataBase();
            DataTable dt = new DataTable();
            string connectionstring = ConfigurationManager.ConnectionStrings["strCone"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionstring);
            con.Open();
            //string query = "select ID,Name,Status from VMPCountryMaster where isdeleted=0";
            SqlCommand cm = new SqlCommand("CC_Vendor_List", con);
            cm.CommandType = CommandType.StoredProcedure;
            cm.Parameters.AddWithValue("@Name", Name.Text);
            SqlDataReader sdr = cm.ExecuteReader();
            dt.Load(sdr);
            CountryGridView.DataSource = dt;
            CountryGridView.DataBind();
            dt.Dispose();
            con.Close();
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddVendor.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ListView();
        }

        protected void CountryGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void CountryGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void CountryGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            CountryGridView.PageIndex = e.NewPageIndex;
            this.ListView();
        }
    }
}