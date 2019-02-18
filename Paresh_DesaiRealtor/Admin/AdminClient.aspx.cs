using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Data;
using Property;
using Property_cls;

namespace Property.Admin
{
    public partial class AdminClient : System.Web.UI.Page
    {
        #region Global
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ToString());
        cls_Property clsobj = new cls_Property();
        #endregion Global

        #region Page Load

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["FirstName"] != null)
            //{
            if (!IsPostBack)
            {
                if (Request.QueryString["edit"] != null)
                {
                    GetPageData();
                }
            }
            //}
            //else
            //{
            //    Response.Redirect("~/Admin/AdminLogin.aspx", false);
            //}
        }

        #endregion Page Load

        #region PageListGrid Events & Method


        //protected void GrdBlogList_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    int id = 0;
        //    if (e.CommandName == "Deleterec")
        //    {
        //        id = Convert.ToInt32(e.CommandArgument);
        //        int result = clsobj.DeleteDreamHouse(id);
        //        //FillGridData();
        //    }
        //    else if (e.CommandName == "Editrec")
        //    {
        //        id = Convert.ToInt32(e.CommandArgument);
        //        DataTable dt = new DataTable();
        //        dt = clsobj.GetDreamHousebyID(id);
        //        txtName.Text = dt.Rows[0]["Title"].ToString();


        //    }
        //    else
        //    {

        //    }
        //}

        #endregion PageListGrid Events & Method

        #region Button Click
        protected void btnUploadImage_Click(object sender, EventArgs e)
        {
            try
            {
                var photopath = "";
                var clientId = ClientId.Value;
                var Status = "";
                var gender ="";
                var Address ="";
                var source = "";
                var MobileNo = "";
                var Email = "";
                var Name = "";
                var Dob = "";

                if (clientId==null || clientId == "")
                {
                    if (ClientPhoto.PostedFile != null && ClientPhoto.PostedFile.FileName != "")
                    {                        
                        photopath = SaveImageFile();                       
                    }
                    Name = txtName.Text==null?"": txtName.Text;
                    Email = txtEmail.Text == null ? "" : txtEmail.Text;
                    MobileNo = txtPhoneNo.Text == null ? "" : txtPhoneNo.Text;
                    Dob = txtDob.Text == null ? "" : txtDob.Text;
                    Status = rblList.SelectedValue == null ? "" : rblList.SelectedValue;
                    gender = Gender.SelectedValue == null ? "" : Gender.SelectedValue;
                    source = Source.SelectedValue == null ? "" : Source.SelectedValue;
                    Address = txtAddress.Text == null ? "" : txtAddress.Text;

                    int AdminClientId = clsobj.InsertAdminClient(Name, Dob, Email, MobileNo, Address, source, Status, gender, photopath, Remarks.Text);

                }
                else
                {
                    if (ClientPhoto.PostedFile != null && ClientPhoto.PostedFile.FileName != "")
                    {

                        photopath = SaveImageFile();
                    }
                    else
                    {
                        photopath = PhotoPath.Value;
                    }
                    Status = rblList.SelectedValue;
                    gender = Gender.SelectedValue;
                    source = Source.SelectedValue;
                    clsobj.UpdateAdminClient(Convert.ToInt32(clientId), txtName.Text, txtDob.Text, txtEmail.Text, txtPhoneNo.Text, txtAddress.Text, source, Status, gender, photopath, Remarks.Text);
                    
                }

               
               

                Response.Redirect("~/Admin/AdminClientList.aspx", false);
            }

            catch (Exception ex)
            {
                // ErrorLogging.WriteLog(ex.ToString());
            }

        }
        protected void btnfavdelete_Click(object sender, EventArgs e)
        {

            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            SqlCommand cmd = new SqlCommand("update AdminClient set Photopath='" + "" + "'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            btnfavdelete.Visible = false;
            Response.Redirect("AdminClient.aspx");
        }

        #endregion Button Click

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtPhoneNo.Text = "";
            txtDob.Text = "";
            txtEmail.Text = "";           
            txtAddress.Text = "";
            
        }
         protected void GetPageData()
        {
            try
            {
                if (Request.QueryString["edit"] != null)
                {
                    var id = Convert.ToInt32(Request.QueryString["edit"]);


                    string qry = "select * from AdminClient where Id=" + id + "";
                    DataTable dt = clsobj.GetdataTable(qry);
                    
                   
                    if (dt.Rows.Count > 0)
                    {
                        txtName.Text =             Convert.ToString(dt.Rows[0]["Name"]); ;
                        txtPhoneNo.Text =          Convert.ToString(dt.Rows[0]["PhoneNo"]);
                        txtDob.Text =              Convert.ToString(dt.Rows[0]["DOB"]);
                        txtEmail.Text =               Convert.ToString(dt.Rows[0]["EmailId"]);
                        txtAddress.Text =            Convert.ToString(dt.Rows[0]["Address"]);
                        ClientId.Value =             Convert.ToString(dt.Rows[0]["ID"]);
                        PhotoPath.Value =              Convert.ToString(dt.Rows[0]["PhotoPath"]);
                        imgfavicon.ImageUrl = Convert.ToString(dt.Rows[0]["PhotoPath"]);
                        Remarks.Text = Convert.ToString(dt.Rows[0]["Remarks"]);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

         protected string SaveImageFile()
         {
             var PhotoPath="";
             try
             {
                if(ClientPhoto!=null)
                {
                    //Save the photo in Folder
                    var fileExt = Path.GetExtension(ClientPhoto.FileName);
                    string fileName = Guid.NewGuid() + fileExt;
                    var subPath = Server.MapPath("~/uploadfiles");

                    //Check SubPath Exist or Not
                    if (!Directory.Exists(subPath))
                    {
                        Directory.CreateDirectory(subPath);
                    }
                    //End : Check SubPath Exist or Not

                    var path = Path.Combine(subPath, fileName);
                    ClientPhoto.SaveAs(path);

                    PhotoPath = clsobj.GetURL() + "/uploadfiles/" + fileName;
                }
               
             }
             catch
             {

             }
             return PhotoPath;
         }
    }
}