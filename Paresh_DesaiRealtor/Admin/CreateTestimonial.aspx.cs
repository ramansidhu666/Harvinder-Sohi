using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Property_cls;
using System.IO;

namespace Property.Admin
{
    public partial class CreateTestimonial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["FirstName"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }
        cls_Property clsobj = new cls_Property();
        protected void btnCreateTestimonial_Click(object sender, EventArgs e)
        {
            var photopath = "";
            if (txtcomment.Text == "")
            {
                lblError.Text = "Testimonial Tour required";
                return;
            }
            if (ClientPhoto.PostedFile != null && ClientPhoto.PostedFile.FileName != "")
            {
                photopath = SaveImageFile();
            }
            cls_Property objprp = new cls_Property();
            objprp.FirstName = txtName.Text;
            objprp.LastName = txtlname.Text;
            objprp.date = txtDate.Text;
            objprp.comments = txtcomment.Text;
            objprp.ImageUrl = photopath;
            int result = objprp.Insert_Testimonial();
            if (result > 0)
            {
                //lblError.Text = "Virtual Tour successfully created!";
                txtName.Text = string.Empty;
                txtlname.Text = string.Empty;
                txtDate.Text = string.Empty;
                txtcomment.Text = string.Empty;
            }
            else
            {
                lblError.Text = "An error has occurred!!";
            }
            Response.Redirect("~/admin/Testimonials.aspx");

        }
        protected string SaveImageFile()
        {
            var PhotoPath = "";
            try
            {
                if (ClientPhoto != null)
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
        //protected void btnBack_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("CreateVirtualTour.aspx");
        //}

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Testimonials.aspx");
        }
    }
}