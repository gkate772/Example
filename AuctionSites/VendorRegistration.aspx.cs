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
using System.IO;

namespace AUCTIONSITE
{
    public partial class VendorRegistration : DataBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.MaintainScrollPositionOnPostBack = true;
            if (!IsPostBack)
            {
                BindDropDownCity();
                BindDropDownCountry();
                BindGridData();
            }
        }
        public void AddUpdateData()
        {
            try
            {
                string connectionstring = ConfigurationManager.ConnectionStrings["strCone"].ConnectionString;
                SqlConnection con = new SqlConnection(connectionstring);
                SqlCommand cmd = new SqlCommand("VenderRegistrationInsert", con);
                //string ID = Convert.ToString(ViewState["Qry"]);
                cmd.CommandType = CommandType.StoredProcedure;
                //cmd.Parameters.AddWithValue("@ID", ID);
                cmd.Parameters.AddWithValue("@Name1", Name.Text);
                cmd.Parameters.AddWithValue("@Name2", LastName.Text);
                cmd.Parameters.AddWithValue("@Cityid", ddlCity.SelectedValue);
                cmd.Parameters.AddWithValue("@Countryid", ddlCountry.SelectedValue);
                cmd.Parameters.AddWithValue("@phone1", Phone1.Text);
                cmd.Parameters.AddWithValue("@phone2", Phone2.Text);
                cmd.Parameters.AddWithValue("@emailid", Email.Text);
                cmd.Parameters.AddWithValue("@password", Password.Text);
                cmd.Parameters.AddWithValue("@Address", Address.Text);
                con.Open();
                string vendorID = cmd.ExecuteScalar().ToString();
                //int vendorID = (int)

                string query = "";
                string fileUploadDirectory = Server.MapPath("~/Files/" + vendorID);
                if (!System.IO.Directory.Exists(fileUploadDirectory))
                {
                    System.IO.Directory.CreateDirectory(fileUploadDirectory);
                }
                // Insert in License table
                for (int i = 0; i < gvLicense.Rows.Count; i++)
                {
                    TextBox box1 = (TextBox)gvLicense.Rows[i].Cells[1].FindControl("txtLicenseNo");
                    TextBox box2 = (TextBox)gvLicense.Rows[i].Cells[1].FindControl("txtFileName");
                    HiddenField hfFile = (HiddenField)gvLicense.Rows[i].Cells[2].FindControl("hfFileByte");

                    string licenseNo = box1.Text;
                    string fileName = box2.Text;
                    string base64String = hfFile.Value;
                    byte[] bytes = Convert.FromBase64String(base64String);

                    string filePath = fileUploadDirectory + "\\" + fileName;

                    if (!string.IsNullOrEmpty(licenseNo) & !string.IsNullOrEmpty(fileName) && bytes != null)
                    {
                        // Save the Byte Array as file in folder.
                        File.WriteAllBytes(filePath, bytes);
                    }

                    if (!string.IsNullOrEmpty(licenseNo))
                    {
                        query = " INSERT INTO vendor_master_Licenses(auc_venmast_id, auc_licence_no, auc_pdf_path) Values " +
                                "  (@auc_venmast_id, @auc_licence_no, @auc_pdf_path) ";
                        cmd = new SqlCommand(query, con);
                        cmd.CommandType = CommandType.Text;
                        cmd.Parameters.AddWithValue("@auc_venmast_id", vendorID.ToString());
                        cmd.Parameters.AddWithValue("@auc_licence_no", box1.Text);
                        cmd.Parameters.AddWithValue("@auc_pdf_path", fileName == string.Empty ? string.Empty : filePath);
                        cmd.ExecuteNonQuery();
                    }
                }

                //Insert in GST
                for (int i = 0; i < gvGST.Rows.Count; i++)
                {
                    TextBox box1 = (TextBox)gvGST.Rows[i].Cells[1].FindControl("txtGSTNo");
                    TextBox box2 = (TextBox)gvGST.Rows[i].Cells[1].FindControl("txtFileName");
                    HiddenField hfFile = (HiddenField)gvGST.Rows[i].Cells[2].FindControl("hfFileByte");

                    string GSTNo = box1.Text;
                    string fileName = box2.Text;
                    string base64String = hfFile.Value;
                    byte[] bytes = Convert.FromBase64String(base64String);

                    string filePathGST = fileUploadDirectory + "\\" + fileName;

                    if (!string.IsNullOrEmpty(GSTNo) & !string.IsNullOrEmpty(fileName) && bytes != null)
                    {
                        // Save the Byte Array as file in folder.
                        File.WriteAllBytes(filePathGST, bytes);
                    }
                    //if (box1.Text != string.Empty)
                    if (!string.IsNullOrEmpty(GSTNo))
                    {
                        query = "INSERT INTO vendor_master_GST(auc_venmast_id, auc_GST_no, auc_pdf_path) Values " +
                              "(@auc_venmast_id, @auc_GST_no, @auc_pdf_path)";
                        cmd = new SqlCommand(query, con);
                        cmd.CommandType = CommandType.Text;
                        cmd.Parameters.AddWithValue("@auc_venmast_id", vendorID.ToString());
                        cmd.Parameters.AddWithValue("@auc_GST_no", box1.Text);
                        cmd.Parameters.AddWithValue("@auc_pdf_path", fileName == string.Empty ? string.Empty : filePathGST);
                        cmd.ExecuteNonQuery();
                    }
                }

                //Insert in Bank Details
                for (int i = 0; i < gvBankDetails.Rows.Count; i++)
                {
                    TextBox box1 = (TextBox)gvBankDetails.Rows[i].Cells[0].FindControl("txtBankName");
                    TextBox box2 = (TextBox)gvBankDetails.Rows[i].Cells[1].FindControl("txtBankLocation");
                    TextBox box3 = (TextBox)gvBankDetails.Rows[i].Cells[2].FindControl("txtIFCSCode");
                    DropDownList dropdown = (DropDownList)gvBankDetails.Rows[i].Cells[3].FindControl("ddlAccountType");

                    if (box1.Text != string.Empty)
                    {
                        query = "INSERT INTO vendor_master_Bank_details (auc_venmast_id, auc_bank_name, auc_bank_location, auc_bank_ifscCode, auc_account_type) " +
                            "values (@auc_venmast_id, @auc_bank_name, @auc_bank_location, @auc_bank_ifscCode, @auc_account_type) ";
                        cmd = new SqlCommand(query, con);
                        cmd.CommandType = CommandType.Text;
                        cmd.Parameters.AddWithValue("@auc_venmast_id", vendorID);
                        cmd.Parameters.AddWithValue("@auc_bank_name", box1.Text);
                        cmd.Parameters.AddWithValue("@auc_bank_location", box2.Text);
                        cmd.Parameters.AddWithValue("@auc_bank_ifscCode", box3.Text);
                        cmd.Parameters.AddWithValue("@auc_account_type", ddlCountry.SelectedValue);
                        cmd.ExecuteNonQuery();
                    }
                }

                con.Close();
                Response.Redirect("Home.aspx");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Popup", "showModal();", true);
                //Response.Write(" Regition succssfull");
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }
            finally
            {
                SqlConnection.ClearAllPools();
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            //AddUpdateData();

            string ID = Convert.ToString(ViewState["Qry"]);
            List<string> List = new List<string>();
            DataTable dt = ExecuteDataTable("VendorRegistrationNameCKList", new SqlParameter("@ID", ID));
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                List.Add(Convert.ToString(dt.Rows[i].ItemArray[0]).ToUpper());
            }
            if (ID == "" || ID == null)
            {
                if (List.Contains(Email.Text.ToUpper()) == true)
                {
                    //ScriptManager.RegisterStartupScript(this, this.GetType(), "Popup", "showModal1()", true);
                    //Response.Write(" Email Id already exists");
                }
                else
                {
                }
            }
            else if (ID != "" || ID != null)
            {
                if (List.Contains(Name.Text.ToUpper()) == true)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Popup", "showModal1();", true);
                }
                else
                {
                    AddUpdateData();
                }
            }

        }

        public void BindDropDownCountry()
        {
            DataTable dt = spDataTable("DropdownListCountry");
            if (dt.Rows.Count > 0)
            {
                ddlCountry.Items.Clear();
                ddlCountry.DataSource = dt;
                ddlCountry.DataTextField = "auc_cm_name";
                ddlCountry.DataValueField = "auc_cm_id";
                ddlCountry.DataBind();
                ddlCountry.Items.Insert(0, new ListItem("--Select--", "0"));
                ddlCountry.SelectedIndex = 0;
            }

        }
        public void BindDropDownCity()
        {
            DataTable dt = spDataTable("DropdownListCity");
            if (dt.Rows.Count > 0)
            {
                ddlCity.Items.Clear();
                ddlCity.DataSource = dt;
                ddlCity.DataTextField = "auc_cty_name";
                ddlCity.DataValueField = "auc_cty_id";
                ddlCity.DataBind();
                ddlCity.Items.Insert(0, new ListItem("--Select--", "0"));
                ddlCity.SelectedIndex = 0;
            }

        }

        protected void btnSubmitPopup_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }


        private void BindGridData()
        {
            DataTable dt = new DataTable();
            DataRow dr = null;
            dt.Columns.Add(new DataColumn("auc_licence_no", typeof(string)));
            dt.Columns.Add(new DataColumn("auc_pdf_path", typeof(string)));
            dt.Columns.Add(new DataColumn("auc_pdf_byte", typeof(byte[])));
            dr = dt.NewRow();
            dr["auc_licence_no"] = string.Empty;
            dr["auc_pdf_path"] = string.Empty;
            dt.Rows.Add(dr);
            //Store the DataTable in ViewState
            ViewState["LicenceTable"] = dt;
            gvLicense.DataSource = dt;
            gvLicense.DataBind();

            dt = new DataTable();
            dt.Columns.Add(new DataColumn("auc_GST_no", typeof(string)));
            dt.Columns.Add(new DataColumn("auc_pdf_path", typeof(string)));
            dr = dt.NewRow();
            dr["auc_GST_no"] = string.Empty;
            dr["auc_pdf_path"] = string.Empty;
            dt.Rows.Add(dr);
            ViewState["GSTTable"] = dt;
            gvGST.DataSource = dt;
            gvGST.DataBind();

            dt = new DataTable();
            dt.Columns.Add(new DataColumn("auc_Bank_name", typeof(string)));
            dt.Columns.Add(new DataColumn("auc_Banklocation", typeof(string)));
            dt.Columns.Add(new DataColumn("auc_Bank_IFSCCode", typeof(string)));
            dt.Columns.Add(new DataColumn("auc_account_type", typeof(string)));
            dr = dt.NewRow();
            dr["auc_Bank_name"] = string.Empty;
            dr["auc_Banklocation"] = string.Empty;
            dr["auc_Bank_IFSCCode"] = string.Empty;
            dr["auc_account_type"] = string.Empty;
            dt.Rows.Add(dr);
            ViewState["BankTable"] = dt;
            gvBankDetails.DataSource = dt;
            gvBankDetails.DataBind();


            //SqlConnection connection = OpenConnection();
            //SqlCommand command = new SqlCommand("SELECT auc_licence_no FROM vendor_master_Licenses", connection);
            //SqlDataAdapter daimages = new SqlDataAdapter(command);
            //DataTable dt = new DataTable();
            //daimages.Fill(dt);
            //gvLicense.DataSource = dt;
            //gvLicense.DataBind();
        }

        protected void AddNewRowToLicenseGrid(object sender, EventArgs e)
        {
            int rowIndex = 0;

            if (ViewState["LicenceTable"] != null)
            {
                DataTable dtCurrentTable = (DataTable)ViewState["LicenceTable"];
                DataRow drCurrentRow = null;
                if (dtCurrentTable.Rows.Count > 0)
                {
                    for (int i = 0; i < dtCurrentTable.Rows.Count; i++)
                    {
                        TextBox box1 = (TextBox)gvLicense.Rows[rowIndex].Cells[0].FindControl("txtLicenseNo");
                        TextBox box2 = (TextBox)gvLicense.Rows[rowIndex].Cells[1].FindControl("txtFileName");

                        HiddenField hfFile = (HiddenField)gvLicense.Rows[rowIndex].Cells[2].FindControl("hfFileByte");
                        FileUpload fuUpload = (FileUpload)gvLicense.Rows[rowIndex].Cells[2].FindControl("fuUpload");
                        byte[] bytes = null;
                        if (fuUpload != null)
                        {
                            if (fuUpload.HasFile)
                            {
                                BinaryReader br = new BinaryReader(fuUpload.PostedFile.InputStream);
                                bytes = br.ReadBytes((int)fuUpload.PostedFile.InputStream.Length);
                                hfFile.Value = Convert.ToBase64String(bytes);
                            }
                        }

                        drCurrentRow = dtCurrentTable.NewRow();
                        dtCurrentTable.Rows[i]["auc_licence_no"] = box1.Text;
                        dtCurrentTable.Rows[i]["auc_pdf_path"] = fuUpload != null && fuUpload.HasFile ? Path.GetFileName(fuUpload.PostedFile.FileName) : box2.Text;
                        dtCurrentTable.Rows[i]["auc_pdf_byte"] = fuUpload.HasFile ? bytes : Convert.FromBase64String(hfFile.Value);
                        rowIndex++;
                    }
                    dtCurrentTable.Rows.Add(drCurrentRow);
                    ViewState["LicenceTable"] = dtCurrentTable;

                    gvLicense.DataSource = dtCurrentTable;
                    gvLicense.DataBind();
                }
            }
            else
            {
                Response.Write("ViewState is null");
            }
            SetPreviousLicenseData();
        }

        protected void gvLicense_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Upload")
            {
                //Determine the RowIndex of the Row whose Button was clicked.
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                if (ViewState["LicenceTable"] != null)
                {
                    DataTable dtCurrentTable = (DataTable)ViewState["LicenceTable"];

                }
                //Reference the GridView Row.
                GridViewRow row = gvLicense.Rows[rowIndex];

                //Fetch value of Name.
                TextBox box1 = (row.FindControl("txtFileName") as TextBox);

                FileUpload fuUpload = (row.FindControl("fuUpload") as FileUpload);
                HiddenField hfFile = (row.FindControl("hfFileByte") as HiddenField);
                string fileName = fuUpload.PostedFile.FileName;
                string fileExtension = fileName.Substring(fileName.LastIndexOf(".") + 1).ToLower();
                if (fileExtension == "pdf" || fileExtension == "jpg" || fileExtension == "jpeg" || fileExtension == "png")
                {
                    byte[] bytes = null;
                    if (fuUpload != null)
                    {
                        if (fuUpload.HasFile)
                        {
                            BinaryReader br = new BinaryReader(fuUpload.PostedFile.InputStream);
                            bytes = br.ReadBytes((int)fuUpload.PostedFile.InputStream.Length);
                            hfFile.Value = Convert.ToBase64String(bytes);
                            box1.Text = fuUpload.PostedFile.FileName;
                        }
                    }
                }

                //HiddenField hfFile = (HiddenField)gvLicense.Rows[rowIndex].Cells[2].FindControl("hfFileByte");
                //FileUpload fuUpload = (FileUpload)gvLicense.Rows[rowIndex].Cells[2].FindControl("fuUpload");
            }
            else if (e.CommandName == "View")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gvLicense.Rows[rowIndex];
                HiddenField hfFile = (row.FindControl("hfFileByte") as HiddenField);
                TextBox box = (row.FindControl("txtFileName") as TextBox);

                string base64String = hfFile.Value;
                if (base64String == string.Empty)
                {
                    return;
                }
                byte[] bytes = Convert.FromBase64String(base64String);
                string fileUploadDirectory = Server.MapPath("~/Files/Temp");
                //string fileUploadDirectory = Server.MapPath("~/AuctionSite/Files/Temp");
                //string openFilePath = 
                if (!System.IO.Directory.Exists(fileUploadDirectory))
                {
                    System.IO.Directory.CreateDirectory(fileUploadDirectory);
                }
                string filePath = fileUploadDirectory + "\\" + box.Text;
                File.WriteAllBytes(filePath, bytes);
                Page.ClientScript.RegisterStartupScript(
                this.GetType(), "OpenWindow", "window.open('" + "/Files/Temp/" + box.Text + "','_newtab');", true);
                //this.GetType(), "OpenWindow", "window.open('" + "/AuctionSite/Files/Temp/" + box.Text + "','_newtab');", true);
                #region Download
                //this.GetType(), "OpenWindow", "window.open('" + "/Files/Temp/" + folderID + "/" + str + "','_newtab');", true);
                //Response.ContentType = ContentType;
                //Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
                //Response.WriteFile(filePath);
                //Response.End();
                #endregion
            }
        }

        protected void gvGST_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Upload")
            {
                //Determine the RowIndex of the Row whose Button was clicked.
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                //Reference the GridView Row.
                GridViewRow row = gvGST.Rows[rowIndex];

                //Fetch value of Name.
                TextBox box2 = (row.FindControl("txtFileName") as TextBox);

                FileUpload fuUpload = (row.FindControl("fuUpload") as FileUpload);
                HiddenField hfFile = (row.FindControl("hfFileByte") as HiddenField);
                string fileName = fuUpload.PostedFile.FileName;
                string fileExtension = fileName.Substring(fileName.LastIndexOf(".") + 1).ToLower();
                if (fileExtension == "pdf" || fileExtension == "jpg" || fileExtension == "jpeg" || fileExtension == "png")
                {
                    byte[] bytes = null;
                    if (fuUpload != null)
                    {
                        if (fuUpload.HasFile)
                        {
                            BinaryReader br = new BinaryReader(fuUpload.PostedFile.InputStream);
                            bytes = br.ReadBytes((int)fuUpload.PostedFile.InputStream.Length);
                            hfFile.Value = Convert.ToBase64String(bytes);
                            box2.Text = fuUpload.PostedFile.FileName;
                        }
                    }
                }
            }
            else if (e.CommandName == "View")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gvGST.Rows[rowIndex];
                HiddenField hfFile = (row.FindControl("hfFileByte") as HiddenField);
                TextBox box = (row.FindControl("txtFileName") as TextBox);

                string base64String = hfFile.Value;
                if (base64String == string.Empty)
                {
                    return;
                }
                byte[] bytes = Convert.FromBase64String(base64String);
                string fileUploadDirectory = Server.MapPath("~/Files/Temp");
                //string fileUploadDirectory = Server.MapPath("~/AuctionSite/Files/Temp");
                //string openFilePath = 
                if (!System.IO.Directory.Exists(fileUploadDirectory))
                {
                    System.IO.Directory.CreateDirectory(fileUploadDirectory);
                }
                string filePath = fileUploadDirectory + "\\" + box.Text;
                File.WriteAllBytes(filePath, bytes);
                Page.ClientScript.RegisterStartupScript(
                this.GetType(), "OpenWindow", "window.open('" + "/Files/Temp/" + box.Text + "','_newtab');", true);

            }
        }


        private void SetPreviousLicenseData()
        {
            int rowIndex = 0;
            if (ViewState["LicenceTable"] != null)
            {
                DataTable dt = (DataTable)ViewState["LicenceTable"];
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        TextBox box1 = (TextBox)gvLicense.Rows[rowIndex].Cells[0].FindControl("txtLicenseNo");
                        TextBox box2 = (TextBox)gvLicense.Rows[rowIndex].Cells[0].FindControl("txtFileName");
                        HiddenField hfFile = (HiddenField)gvLicense.Rows[rowIndex].Cells[1].FindControl("hfFileByte");

                        box1.Text = dt.Rows[i]["auc_licence_no"].ToString();
                        box2.Text = dt.Rows[i]["auc_pdf_path"].ToString();
                        hfFile.Value = !Convert.IsDBNull(dt.Rows[i]["auc_pdf_byte"]) ? Convert.ToBase64String((byte[])dt.Rows[i]["auc_pdf_byte"]) : "";
                        rowIndex++;
                    }
                }
            }
        }

        protected void AddNewRowToBankGrid(object sender, EventArgs e)
        {
            int rowIndex = 0;
            hidTAB.Value = "#nav-BankDetails";

            if (ViewState["BankTable"] != null)
            {
                DataTable dtCurrentTable = (DataTable)ViewState["BankTable"];
                DataRow drCurrentRow = null;
                if (dtCurrentTable.Rows.Count > 0)
                {
                    for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                    {
                        TextBox box1 = (TextBox)gvBankDetails.Rows[rowIndex].Cells[1].FindControl("TextBox1");

                        //HiddenField hfFile = (HiddenField)gvLicense.Rows[rowIndex].Cells[4].FindControl("hfFileByte");
                        //FileUpload fuUpload = (FileUpload)gvLicense.Rows[rowIndex].Cells[4].FindControl("fuUpload");
                        //byte[] bytes = null;
                        //if (fuUpload.HasFile)
                        //{
                        //    BinaryReader br = new BinaryReader(fuUpload.PostedFile.InputStream);
                        //    bytes = br.ReadBytes((int)fuUpload.PostedFile.InputStream.Length);
                        //    hfFile.Value = Convert.ToBase64String(bytes);
                        //}

                        drCurrentRow = dtCurrentTable.NewRow();
                        //drCurrentRow["RowNumber"] = i + 1;
                        //dtCurrentTable.Rows[i - 1]["Column1"] = box1.Text;

                        //dtCurrentTable.Rows[i - 1]["Column3"] = fuUpload.HasFile ? Path.Get
                        //(fuUpload.PostedFile.FileName) : box3.Text;
                        //dtCurrentTable.Rows[i - 1]["Column4"] = fuUpload.HasFile ? bytes : Convert.FromBase64String(hfFile.Value);
                        rowIndex++;
                    }
                    dtCurrentTable.Rows.Add(drCurrentRow);
                    ViewState["BankTable"] = dtCurrentTable;

                    gvBankDetails.DataSource = dtCurrentTable;
                    gvBankDetails.DataBind();
                }
            }
            else
            {
                Response.Write("ViewState is null");
            }
        }

        //protected void btnlogin_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        SqlConnection con = OpenConnection();
        //        SqlCommand cmd = new SqlCommand("AuthenticateVendor", con);
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        cmd.Parameters.Add("@EMAILID", SqlDbType.VarChar).Value = txtemail.Text.Trim();
        //        cmd.Parameters.Add("@PASSWORD", SqlDbType.VarChar).Value = txtpassword.Text.Trim();
        //        SqlDataReader dr = cmd.ExecuteReader();
        //        if (dr.Read() && dr["PASSWORD"].ToString() == txtpassword.Text)
        //        {
        //            //Session["auc_vendmast_name1"] = dr["auc_vendmast_name1"].ToString();
        //            Session["EMP_NAME"] = dr["NAME"].ToString();
        //            Session["EMAILID"] = dr["EmailID"].ToString();
        //            Session["ROLE"] = dr["Role"].ToString();
        //            Session["UserID"] = dr["UserID"].ToString();
        //            Response.Redirect("Auction.aspx");

        //        }
        //        else
        //        {
        //            //dvMessage.Visible = true;
        //            //lblMessage.Text = "Please enter valid EmailID and Password";
        //            //ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "Loginfunction()", true);
        //        }
        //        con.Close();
        //    }
        //    catch (Exception ex)
        //    {
        //        Label1.Text = ex.ToString();
        //    }
        //    finally
        //    {
        //        SqlConnection.ClearAllPools();
        //    }

        //}
    }
}