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
    public partial class AddAutionDetails : DataBase
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
                // Session["abc"]
                //
                if (BuyerID.Items.FindByText(Session["EMP_NAME"].ToString()).Text == vendorID.SelectedItem.Text)
                {
                    //Response.Redirect("AuctionList.aspx");
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "abc", "sm();", true);
                }
                else
                {
                    if (BuyerID.Items.FindByText(Session["EMP_NAME"].ToString()) != null)
                    {
                        BuyerID.Items.FindByText(Session["EMP_NAME"].ToString()).Selected = true;
                        BuyerID.Enabled = false;
                    }

                }
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

            DataTable buyers = spDataTable("CC_DropDownList_VendorList");
            BuyerID.Items.Clear();
            BuyerID.DataSource = buyers;
            BuyerID.DataTextField = "Name";
            BuyerID.DataValueField = "ID";

            BuyerID.DataBind();

            // vendorID.Items.Insert(0, new ListItem("--Select--", "0"));
            //BuyerID.SelectedIndex = 0;

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
                Label1.Text = "Edit Auction";
                Session["abc"] = vendorID.SelectedValue;
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
                SqlCommand cm = new SqlCommand("AS_AuctionDetails_InsertUpdate", con);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.AddWithValue("@ID", ID);
                cm.Parameters.AddWithValue("@vendorID", vendorID.SelectedValue);
                cm.Parameters.AddWithValue("@ProductID", ProductID.SelectedValue);
                cm.Parameters.AddWithValue("@AUDate", comDate(AUDate.Text));
                cm.Parameters.AddWithValue("@TimesloatID", TimesloatID.SelectedValue);
                cm.Parameters.AddWithValue("@AUTypeID", AUTypeID.SelectedValue);
                cm.Parameters.AddWithValue("@price", price.Text);
                cm.Parameters.AddWithValue("@AUMargin", AUMargin.Text);
                cm.Parameters.AddWithValue("@LocationID", LocationID.SelectedValue);
                cm.Parameters.AddWithValue("@quantity", BQTY.Text);
                cm.Parameters.AddWithValue("@measurement", MeasurID.SelectedValue);
                cm.Parameters.AddWithValue("@ApprovalID", ApprovalID.SelectedValue);
                cm.Parameters.AddWithValue("@BuyerID", BuyerID.SelectedValue);
                cm.Parameters.AddWithValue("@bid", bid.Text);

                con.Open();
                cm.ExecuteNonQuery();
                con.Close();
                //Response.Redirect("CountryMaster.aspx");
                // ScriptManager.RegisterStartupScript(this, this.GetType(), "Popup", "showModal();", true);
                Label1.Text = "data seccess full save";
            }
            catch (Exception ex) { Label1.Text = ex.ToString(); }
            finally
            {
                SqlConnection.ClearAllPools();
            }
        }



        protected void Button1_Click(object sender, EventArgs e)
        {

            // AddUpdateData();
            DataTable dt = ExecuteDataTable("AS_BuyerAmount_Ck", new SqlParameter("@BuyerID", BuyerID.SelectedValue));
            decimal Amount = Convert.ToDecimal(dt.Rows[0].ItemArray[0]);
            if (Amount >= Convert.ToDecimal(AUMargin.Text))
            {
                AddUpdateData();
            }
            else
            {
                string title = "Alert";
                string body = "Margin Amount=" + Convert.ToDecimal(AUMargin.Text) + " is greater then amount you have i.e." + Amount + " Please contact to Admin";
                ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + title + "', '" + body + "');", true);
            }
            //if (Amount >= Convert.ToDecimal(AUMargin.Text))
            //{
            //    if (Quentity.Text.Trim() == "" || bid.Text.Trim() == "")
            //    {
            //        Label1.Text = "Biding Amount or Quentity input field is empty,Please enter values";
            //    }


            //    else if (Int32.Parse(Quentity.Text.Trim()) < Int32.Parse(bid.Text.Trim()))
            //    {
            //        Label1.Text = "Please enter different values";
            //    }
            //    else if (Int32.Parse(Quentity.Text.Trim()) >= Int32.Parse(bid.Text.Trim()))
            //    {
            //        AddUpdateData();
            //    }


            //}
            //else
            //{

            //    //string title = "Alert";
            //    //string body = "Margin Amount=" + Convert.ToDecimal(AUMargin.Text) + " is greater then amount you have i.e." + Amount + " Please contact to Admin";
            //    //ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + title + "', '" + body + "');", true);
            //    Response.Write("Margin Amount=" + Convert.ToDecimal(AUMargin.Text) + " is greater then amount you have i.e." + Amount + " Please contact to Admin");

            //}
            //string ID = Convert.ToString(ViewState["Qry"]);
            //List<string> locationList = new List<string>();
            //DataTable dt = ExecuteDataTable("CC_Vendor_CkList", new SqlParameter("@ID", ID));
            //for (int i = 0; i < dt.Rows.Count; i++)
            //{
            //    locationList.Add(Convert.ToString(dt.Rows[i].ItemArray[0]).ToUpper());
            //}
            //if (ID == "" || ID == null)
            //{
            //    //DataTable dt= ExecuteDataTable("SMS_ClientTypePayment_CkList", new SqlParameter("@ID", ID));
            //    if (locationList.Contains(EmailID.Text.ToUpper()) == true)
            //    {
            //        ScriptManager.RegisterStartupScript(this, this.GetType(), "Popup", "showModal1();", true);
            //    }
            //    else
            //    {
            //        AddUpdateData();
            //    }
            //}
            //else if (ID != "" || ID != null)
            //{
            //    //DataTable dt = ExecuteDataTable("SMS_ClientTypePayment_CkList", new SqlParameter("@ID", ID));
            //    if (locationList.Contains(EmailID.Text.ToUpper()) == true)
            //    {
            //        ScriptManager.RegisterStartupScript(this, this.GetType(), "Popup", "showModal1();", true);
            //    }
            //    else
            //    {
            //        AddUpdateData();
            //    }
            //}
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AuctionList.aspx");
        }

        protected void btnSubmitPopup_Click(object sender, EventArgs e)
        {
            Response.Redirect("AuctionList.aspx");
        }
    }
}
