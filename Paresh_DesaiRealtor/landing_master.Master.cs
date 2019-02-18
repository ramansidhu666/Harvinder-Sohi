using Property_cls;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Property
{
    public partial class landing_master : System.Web.UI.MasterPage
    {
        #region Global

        cls_Property clsobj = new cls_Property();

        #endregion Global
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SiteSetting();
                SetValuesFaceBookShare();
            }
        }
        private void SetValuesFaceBookShare()
        {

            //dt.Rows[0][]
            fbProprtyImage.Content = "";
            fbProprtyTitle.Content = "";
            fbProprtyUrl.Content = "";
            fbProprtyShareType.Content = "";
            fbProprtyImage.Content = "http://www.sohirealtor.com//Images/canada.jpg";
            string path = HttpContext.Current.Request.Url.AbsolutePath;
            if (path.ToLower() == "/landing_page.aspx")
            {
                fbProprtyUrl.Content = "http://www.sohirealtor.com//landing_page.aspx";
                fbProprtyTitle.Content = "Want to know what your neighbours are selling!";
                
            }
            else if (path.ToLower() == "/home_worth.aspx")
            {
                fbProprtyUrl.Content = "http://www.sohirealtor.com//Home_worth.aspx";
                fbProprtyTitle.Content = "What Is your House Really Worth ?";
                
            }
           
            //fbProprtySiteName.Content = "";
            fbProprtyShareType.Content = "Property";



        }
        
        protected void SiteSetting()
        {
            try
            {
                DataTable dt = clsobj.GetSiteSettings();
                DataTable dt1 = clsobj.GetUserInfo();
                if (dt.Rows.Count > 0)
                {
                    siteTitle.Text = Convert.ToString(dt.Rows[0]["Title"]);
                    byte[] favimage = (byte[])dt.Rows[0]["Favicon.ico"];
                    if (favimage.Length > 0)
                    {
                        Session["MyFavicon"] = favimage;
                        favicon.Visible = true;
                        favicon.Href = "~/ShowFavicon.aspx";
                    }
                    else
                    {
                        favicon.Visible = false;
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}