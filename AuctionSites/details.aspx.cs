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

namespace AuctionSites
{
    public partial class details : DataBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetImageData();
                BindDropDown();
                GetData();
            }
        }

        public void GetData()
        {
            DataBase db = new DataBase();
            string Qry = Request.QueryString["ID"];
            //string str = "select * from SMS_CLIENTSTATUS_MASTER where CSM_ID='" + Qry + "'";
            SqlDataReader dr = ExecuteSqlDataReader("AS_Aution_GETDATA", new SqlParameter("@ID", Qry));
            while (dr.Read())
            {

                vendorID.SelectedValue = dr["auc_venmast_id"].ToString();
                ProductID.SelectedValue = dr["auc_vendprod_id"].ToString();
                AUDate.Text = dr["auc_am_date"].ToString();
                TimesloatID.SelectedValue = dr["auc_tsm_id"].ToString();
                AUTypeID.SelectedValue = dr["auc_typ_id"].ToString();
                price.Text = dr["auc_am_price"].ToString();
                AUMargin.Text = dr["auc_am_marginmoney"].ToString();
                LocationID.SelectedValue = dr["auc_cty_id"].ToString();
                ApprovalID.SelectedValue = dr["auc_am_approval"].ToString();
                MeasurID.SelectedValue = dr["measurement"].ToString();
                Quentity.Text = dr["quantity"].ToString();
                Specification.Text = dr["auc_am_Specification"].ToString();
                //RFFile.Enabled = false;
                Label1.Text = "Auction Details";
            }
        }

        public void BindDropDown()
        {
            DataTable city = spDataTable("CC_DropDownList_cityList");
            LocationID.Items.Clear();
            LocationID.DataSource = city;
            LocationID.DataTextField = "Name";
            LocationID.DataValueField = "ID";
            LocationID.DataBind();
            LocationID.Items.Insert(0, new ListItem("--Select--", "0"));
            LocationID.SelectedIndex = 0;

            DataTable vendors = spDataTable("CC_DropDownList_VendorList");
            vendorID.Items.Clear();
            vendorID.DataSource = vendors;
            vendorID.DataTextField = "Name";
            vendorID.DataValueField = "ID";
            vendorID.DataBind();
            vendorID.Items.Insert(0, new ListItem("--Select--", "0"));
            vendorID.SelectedIndex = 0;

            DataTable products = spDataTable("CC_DropDownList_ProductList");
            ProductID.Items.Clear();
            ProductID.DataSource = products;
            ProductID.DataTextField = "Name";
            ProductID.DataValueField = "ID";
            ProductID.DataBind();
            ProductID.Items.Insert(0, new ListItem("--Select--", "0"));
            ProductID.SelectedIndex = 0;

            DataTable timeSlot = spDataTable("CC_DropDownList_TimeSlotList");
            TimesloatID.Items.Clear();
            TimesloatID.DataSource = timeSlot;
            TimesloatID.DataTextField = "Name";
            TimesloatID.DataValueField = "ID";
            TimesloatID.DataBind();
            TimesloatID.Items.Insert(0, new ListItem("--Select--", "0"));
            TimesloatID.SelectedIndex = 0;

            DataTable AuctionType = spDataTable("CC_DropDownList_AuctionTypeList");
            AUTypeID.Items.Clear();
            AUTypeID.DataSource = AuctionType;
            AUTypeID.DataTextField = "Name";
            AUTypeID.DataValueField = "ID";
            AUTypeID.DataBind();
            AUTypeID.Items.Insert(0, new ListItem("--Select--", "0"));
            AUTypeID.SelectedIndex = 0;


            DataTable Measurement = spDataTable("CC_DropDownList_Measurement");
            MeasurID.Items.Clear();
            MeasurID.DataSource = Measurement;
            MeasurID.DataTextField = "Name";
            MeasurID.DataValueField = "ID";
            MeasurID.DataBind();
            MeasurID.Items.Insert(0, new ListItem("--Select--", "0"));
            MeasurID.SelectedIndex = 0;
        }

        /// <summary>
        /// -----------------------------------Image data
        /// </summary>
        public void GetImageData()
        {
            DataBase db = new DataBase();
            DataTable dt = new DataTable();
            string connectionstring = ConfigurationManager.ConnectionStrings["strCone"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionstring);
            con.Open();
            //string query = "select ID,Name,Status from VMPCountryMaster where isdeleted=0";
            SqlCommand cm = new SqlCommand("Document_listAM", con);
            cm.CommandType = CommandType.StoredProcedure;
            cm.Parameters.AddWithValue("@ID", Convert.ToString(Request.QueryString["ID"]));
            SqlDataReader sdr = cm.ExecuteReader();
            dt.Load(sdr);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            dt.Dispose();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuyerAuctionList.aspx");
        }

    }
}