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

namespace AuctionSite
{
    public partial class AddVendor : DataBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.MaintainScrollPositionOnPostBack = true;
            if (!IsPostBack)
            {
                string Qry = Request.QueryString["ID"];
                if (Qry != "")
                {
                    ViewState["Qry"] = Qry;
                    BindDropDown();
                    GetData();
                }
            }
        }
        public void BindDropDown()
        {
            DataTable city = spDataTable("CC_DropDownList_cityList");
            CityID.Items.Clear();
            CityID.DataSource = city;
            CityID.DataTextField = "Name";
            CityID.DataValueField = "ID";
            CityID.DataBind();
            CityID.Items.Insert(0, new ListItem("--Select--", "0"));
            CityID.SelectedIndex = 0;

            DataTable coutry = spDataTable("CC_DropDownList_countryList");
            CountryID.Items.Clear();
            CountryID.DataSource = coutry;
            CountryID.DataTextField = "Name";
            CountryID.DataValueField = "ID";
            CountryID.DataBind();
            CountryID.Items.Insert(0, new ListItem("--Select--", "0"));
            CountryID.SelectedIndex = 0;

        }
        public void GetData()
        {
            DataBase db = new DataBase();
            string Qry = Request.QueryString["ID"];
            //string str = "select * from SMS_CLIENTSTATUS_MASTER where CSM_ID='" + Qry + "'";
            SqlDataReader dr = ExecuteSqlDataReader("CC_Vendor_GETDATA", new SqlParameter("@ID", Qry));
            while (dr.Read())
            {

                Name1.Text = dr["auc_vendmast_name1"].ToString();
                Name2.Text = dr["auc_vendmast_name2"].ToString();
                Address.Text = dr["auc_vendmast_address"].ToString();
                CityID.SelectedValue = dr["auc_cty_id"].ToString();
                CountryID.SelectedValue = dr["auc_country_id"].ToString();
                Phone1.Text = dr["auc_phone1"].ToString();
                Phone2.Text = dr["auc_phone2"].ToString();
                Phone3.Text = dr["auc_phone3"].ToString();
                EmailID.Text = dr["auc_vendmast_emailid"].ToString();
                Amount.Text = dr["auc_vendmast_amount"].ToString();
                Password.Text = dr["auc_vendmast_password"].ToString();
                Label1.Text = "Edit Vendor";
            }
        }
        public void AddUpdateData()
        {
            try
            {
                string connectionstring = ConfigurationManager.ConnectionStrings["strCone"].ConnectionString;
                SqlConnection con = new SqlConnection(connectionstring);
                string ID = Convert.ToString(ViewState["Qry"]);
                //string query = "Insert Into VMPCountryMaster(Name,Status,CreatedBy) values(@name,@Status,@CreatedBy)";
                //SqlCommand cm = new SqlCommand(query, con);
                SqlCommand cm = new SqlCommand("CC_Vendor_InsertUpdate", con);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.AddWithValue("@ID", ID);
                cm.Parameters.AddWithValue("@Name1", Name1.Text);
                cm.Parameters.AddWithValue("@Name2", Name2.Text);
                cm.Parameters.AddWithValue("@Address", Address.Text);
                cm.Parameters.AddWithValue("@CityID", CityID.SelectedValue);
                cm.Parameters.AddWithValue("@CoutryID", CountryID.SelectedValue);
                cm.Parameters.AddWithValue("@Phone1", Phone1.Text);
                cm.Parameters.AddWithValue("@Phone2", Phone2.Text);
                cm.Parameters.AddWithValue("@Phone3", Phone3.Text);
                cm.Parameters.AddWithValue("@EmailID", EmailID.Text);
                cm.Parameters.AddWithValue("@Amount", Amount.Text);
                cm.Parameters.AddWithValue("@Password", Password.Text);
                con.Open();
                cm.ExecuteNonQuery();
                con.Close();
                //Response.Redirect("CountryMaster.aspx");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Popup", "showModal();", true);
            }
            catch (Exception ex) { }
            finally
            {
                SqlConnection.ClearAllPools();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string ID = Convert.ToString(ViewState["Qry"]);
            List<string> locationList = new List<string>();
            DataTable dt = ExecuteDataTable("CC_Vendor_CkList", new SqlParameter("@ID", ID));
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                locationList.Add(Convert.ToString(dt.Rows[i].ItemArray[0]).ToUpper());
            }
            if (ID == "" || ID == null)
            {
                //DataTable dt= ExecuteDataTable("SMS_ClientTypePayment_CkList", new SqlParameter("@ID", ID));
                if (locationList.Contains(EmailID.Text.ToUpper()) == true)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Popup", "showModal1();", true);
                }
                else
                {
                    AddUpdateData();
                }
            }
            else if (ID != "" || ID != null)
            {
                //DataTable dt = ExecuteDataTable("SMS_ClientTypePayment_CkList", new SqlParameter("@ID", ID));
                if (locationList.Contains(EmailID.Text.ToUpper()) == true)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Popup", "showModal1();", true);
                }
                else
                {
                    AddUpdateData();
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("VendorDetails.aspx");
        }

        protected void btnSubmitPopup_Click(object sender, EventArgs e)
        {
            Response.Redirect("VendorDetails.aspx");
        }
    }
}