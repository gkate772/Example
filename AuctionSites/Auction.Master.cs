using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AuctionSites
{
    public partial class Auction : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    Label1.Text = Convert.ToString(Session["EMP_NAME"]);
                    if (Convert.ToString(Session["EMP_NAME"]) == "" || Convert.ToString(Session["EMP_NAME"]) == null)
                    {
                        Response.Redirect("Home.aspx");
                    }

                }
                catch (Exception ex)
                {
                }
                finally
                {
                    SqlConnection.ClearAllPools();
                }

            }
        }
    }
}