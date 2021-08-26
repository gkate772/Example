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
    public partial class Home : DataBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{

            ListView();

            //}

        }
        public void ListView()
        {
            DataBase db = new DataBase();
            DataTable dt = new DataTable();
            string connectionstring = ConfigurationManager.ConnectionStrings["strCone"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionstring);
            con.Open();
            //string query = "select ID,Name,Status from VMPCountryMaster where isdeleted=0";
            SqlCommand cm = new SqlCommand("AS_ActiveAuction_List", con);
            cm.CommandType = CommandType.StoredProcedure;
            //cm.Parameters.AddWithValue("@Name", Name.Text);
            SqlDataReader sdr = cm.ExecuteReader();
            dt.Load(sdr);
            if (dt.Rows.Count > 0)
            {
                Label1.Visible = false;
                CountryGridView.DataSource = dt;
                CountryGridView.DataBind();
                //ViewState["dt1"] = dt;
                CountryGridView.UseAccessibleHeader = true;
                CountryGridView.HeaderRow.TableSection = TableRowSection.TableHeader;
                dt.Dispose();
            }
            else
            {
                Label1.Visible = true;
            }
            con.Close();
        }

        protected void CountryGridView_Sorting(object sender, GridViewSortEventArgs e)
        {
            if (ViewState["dt1"] != null)
            {
                DataTable dt = (DataTable)ViewState["dt1"];
                DataView dv = new DataView(dt);
                dv.Sort = e.SortExpression;
                CountryGridView.DataSource = dv;
                CountryGridView.DataBind();
            }


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


        protected void btnlogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = OpenConnection();
                SqlCommand cmd = new SqlCommand("Auction_AuthenticateUser", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@EMAILID", SqlDbType.VarChar).Value = txtemail.Text.Trim();
                cmd.Parameters.Add("@PASSWORD", SqlDbType.VarChar).Value = txtpassword.Text.Trim();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read() && dr["PASSWORD"].ToString() == txtpassword.Text)
                {
                    //Session["auc_vendmast_name1"] = dr["auc_vendmast_name1"].ToString();
                    Session["EMP_NAME"] = dr["NAME"].ToString();
                    Session["EMAILID"] = dr["EmailID"].ToString();
                    Session["ROLE"] = dr["Role"].ToString();
                    Session["UserID"] = dr["UserID"].ToString();
                    Response.Redirect("AuctionList.aspx");

                }
                else
                {
                    dvMessage.Visible = true;
                    lblMessage.Text = "Please enter valid EmailID and Password";
                    //ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "Loginfunction()", true);
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally
            {
                SqlConnection.ClearAllPools();
            }

        }

        protected void lnkDownload_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)(sender);
            string str = btn.CommandArgument;
            Page.ClientScript.RegisterStartupScript(
            this.GetType(), "OpenWindow", "window.open('" + "/UploadImages/" + str + "','_newtab');", true);
        }

        protected string Imagepat(string url)
        {

            if (url != null && url.Length > 0)
                return ("UploadImages/" + url);
            else return null;

        }


    }
}