using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using AuctionSites.App_Start;

namespace AuctionSites
{
    public partial class BuyerAuctionList : DataBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDropDown();
                ListView();
            }
        }
        public void BindDropDown()
        {
            //DataTable vendors = spDataTable("CC_DropDownList_VendorList");
            //vendorID.Items.Clear();
            //vendorID.DataSource = vendors;
            //vendorID.DataTextField = "Name";
            //vendorID.DataValueField = "ID";
            //vendorID.DataBind();
            //vendorID.Items.Insert(0, new ListItem("All", ""));
            //vendorID.SelectedIndex = 0;

            DataTable products = spDataTable("CC_DropDownList_ProductList");
            ProductID.Items.Clear();
            ProductID.DataSource = products;
            ProductID.DataTextField = "Name";
            ProductID.DataValueField = "ID";
            ProductID.DataBind();
            ProductID.Items.Insert(0, new ListItem("All", ""));
            ProductID.SelectedIndex = 0;

            DataTable timeSlot = spDataTable("CC_DropDownList_TimeSlotList");
            TimeloatID.Items.Clear();
            TimeloatID.DataSource = timeSlot;
            TimeloatID.DataTextField = "Name";
            TimeloatID.DataValueField = "ID";
            TimeloatID.DataBind();
            TimeloatID.Items.Insert(0, new ListItem("All", ""));
            TimeloatID.SelectedIndex = 0;

            DataTable AuctionType = spDataTable("CC_DropDownList_AuctionTypeList");
            TypeID.Items.Clear();
            TypeID.DataSource = AuctionType;
            TypeID.DataTextField = "Name";
            TypeID.DataValueField = "ID";
            TypeID.DataBind();
            TypeID.Items.Insert(0, new ListItem("All", ""));
            TypeID.SelectedIndex = 0;
        }
        public void ListView()
        {
            DataBase db = new DataBase();
            DataTable dt = new DataTable();
            string connectionstring = ConfigurationManager.ConnectionStrings["strCone"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionstring);
            con.Open();
            //string query = "select ID,Name,Status from VMPCountryMaster where isdeleted=0";
            SqlCommand cm = new SqlCommand("AS_BuyerAuction_List", con);
            cm.CommandType = CommandType.StoredProcedure;
            //cm.Parameters.AddWithValue("@vendorID", Convert.ToString(Session["UserID"]));
            cm.Parameters.AddWithValue("@ProductID", ProductID.SelectedValue);
            cm.Parameters.AddWithValue("@TimeloatID", TimeloatID.SelectedValue);
            cm.Parameters.AddWithValue("@TypeID", TypeID.SelectedValue);
            cm.Parameters.AddWithValue("@USERID", Convert.ToString(Session["UserID"]));
            SqlDataReader sdr = cm.ExecuteReader();
            dt.Load(sdr);
            if (dt.Rows.Count > 0)
            {
                Label1.Visible = false;
                CountryGridView.DataSource = dt;
                CountryGridView.DataBind();
                CountryGridView.Visible = true;
                dt.Dispose();
            }
            else
            {
                Label1.Visible = true;
                CountryGridView.Visible = false;
            }
            con.Close();
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddAuction.aspx");
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