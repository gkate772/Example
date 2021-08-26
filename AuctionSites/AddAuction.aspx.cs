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
using System.IO;

namespace AuctionSites
{
    public partial class AddAuction : DataBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.MaintainScrollPositionOnPostBack = true;
            if (!IsPostBack)
            {
                GetImageData();
                string Qry = Request.QueryString["ID"];
                if (Qry != "")
                {

                    ViewState["Qry"] = Qry;
                    BindDropDown();
                    GetData();
                    //Session["UserID"] = Qry;
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
        public void lnkDownload_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)(sender);
            string str = btn.CommandArgument;
            Page.ClientScript.RegisterStartupScript(
            this.GetType(), "OpenWindow", "window.open('" + "/UploadImages/" + str + "','_newtab');", true);
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
                Quentity.Text = dr["quentity"].ToString();
                Percent.Text = dr["percentage"].ToString();
                Specification.Text = dr["auc_am_Specification"].ToString();
                RFFile.Enabled = false;
                Label1.Text = "Edit Auction";
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
                SqlCommand cm = new SqlCommand("AS_Auction_InsertUpdate", con);
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
                cm.Parameters.AddWithValue("@ApprovalID", ApprovalID.SelectedValue);
                cm.Parameters.AddWithValue("@Quentity", Quentity.Text);
                cm.Parameters.AddWithValue("@MeasurID", MeasurID.SelectedValue);
                cm.Parameters.AddWithValue("@sep", Specification.Text);
                cm.Parameters.AddWithValue("@Percentage", Percent.Text);
                //Session["UserID"]
                //   cm.Parameters.AddWithValue("@ID", ID).ToString();
                con.Open();
                //cm.ExecuteNonQuery();
                string AUID = Convert.ToString(cm.ExecuteScalar());
                Session["AUID"] = AUID;
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
            AddUpdateData();
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
            //Response.Redirect("Auction.aspx");
            Response.Redirect("SellerAuctionList.aspx");
        }

        protected void btnSubmitPopup_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Auction.aspx");
            Response.Redirect("SellerAuctionList.aspx");
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
            SqlCommand cm = new SqlCommand("Document_list", con);
            cm.CommandType = CommandType.StoredProcedure;
            cm.Parameters.AddWithValue("@ID", Convert.ToString(Request.QueryString["ID"]));
            SqlDataReader sdr = cm.ExecuteReader();
            dt.Load(sdr);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            dt.Dispose();
        }

        /// <summary>
        /// ----------------------------------- data in gridview
        /// </summary>
        /// 
        public void AddDocumentGridview()
        {
            ///////////profile image
            string fileName = Convert.ToString(Session["ProductID"]) + "_" + DateTime.Now.ToString("ddMMyyyyHHmmss") + "_" + Path.GetFileName(FileUpload1.PostedFile.FileName);
            //Set the Image File Path.
            string filePath = "~/UploadImages/" + fileName;
            string img = string.Empty;
            FileUpload1.SaveAs(Server.MapPath(@"~\UploadImages\") + fileName);//local

            string connectionstring = ConfigurationManager.ConnectionStrings["strCone"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionstring);
            string ID = Convert.ToString(Session["ProductID"]);
            SqlCommand cm = new SqlCommand("Document_InsertAM", con);
            cm.CommandType = CommandType.StoredProcedure;
            cm.Parameters.AddWithValue("@AM_ID", ID);
            cm.Parameters.AddWithValue("@Name", fileName);
            cm.Parameters.AddWithValue("@Path", filePath);
            con.Open();
            cm.ExecuteNonQuery();
            con.Close();
            if (Convert.ToString(Request.QueryString["ID"]) == "" || Convert.ToString(Request.QueryString["ID"]) == null)
            {
                Response.Redirect("AddAuction.aspx?ID=" + ID);
            }
            GetImageData();
            Page.MaintainScrollPositionOnPostBack = true;
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {

            var ckFILE = Path.GetFileName(FileUpload1.PostedFile.FileName) == "" ? 0 : 1;
            if (ckFILE == 1 && Path.GetExtension(Path.GetFileName(FileUpload1.PostedFile.FileName)).ToUpper() != ".PDF")
            {
                string title = "Alert";
                string body = "Please upload pdf file only";
                ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + title + "', '" + body + "');", true);
            }
            else if (ckFILE == 0)
            {
                string title = "Alert";
                string body = "Please upload document file";
                ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + title + "', '" + body + "');", true);
            }
            else
            {
                if (Convert.ToString(Request.QueryString["ID"]) == "" || Convert.ToString(Request.QueryString["ID"]) == null)
                {

                    try
                    {

                        string connectionstring = ConfigurationManager.ConnectionStrings["strCone"].ConnectionString;
                        SqlConnection con = new SqlConnection(connectionstring);
                        string ID = Convert.ToString(ViewState["Qry"]);
                        SqlCommand cmd = new SqlCommand("AS_Auction_InsertUpdate", con);

                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@ID", ID);
                        cmd.Parameters.AddWithValue("@vendorID", vendorID.SelectedValue);
                        cmd.Parameters.AddWithValue("@ProductID", ProductID.SelectedValue);
                        cmd.Parameters.AddWithValue("@AUDate", comDate(AUDate.Text));
                        cmd.Parameters.AddWithValue("@TimesloatID", TimesloatID.SelectedValue);
                        cmd.Parameters.AddWithValue("@AUTypeID", AUTypeID.SelectedValue);
                        cmd.Parameters.AddWithValue("@price", price.Text);
                        cmd.Parameters.AddWithValue("@AUMargin", AUMargin.Text);
                        cmd.Parameters.AddWithValue("@LocationID", LocationID.SelectedValue);
                        cmd.Parameters.AddWithValue("@ApprovalID", ApprovalID.SelectedValue);
                        cmd.Parameters.AddWithValue("@quentity", Quentity.Text);
                        cmd.Parameters.AddWithValue("@MeasurID", MeasurID.SelectedValue);
                        cmd.Parameters.AddWithValue("@sep", Specification.Text);
                        cmd.Parameters.AddWithValue("@Percentage", Percent.Text);
                        con.Open();
                        int mode = Convert.ToInt32(cmd.ExecuteScalar());
                        Session["ProductID"] = mode;
                        con.Close();
                        //ScriptManager.RegisterStartupScript(this, this.GetType(), "Popup", "showModal();", true);

                    }
                    catch (Exception cr)
                    {
                    }
                    finally
                    {
                        SqlConnection.ClearAllPools();
                    }
                }
                else
                {
                    Session["ProductID"] = Request.QueryString["ID"];
                }


                AddDocumentGridview();

            }
        }
    }
}