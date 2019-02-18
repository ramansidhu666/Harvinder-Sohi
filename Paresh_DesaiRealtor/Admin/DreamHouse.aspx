<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" ValidateRequest="false" CodeBehind="DreamHouse.aspx.cs" Inherits="Property.Admin.DreamHouse" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
      <script type="text/javascript" src="tiny_mce/tiny_mce.js"></script>

    <%--<script type="text/javascript" language="javascript">
        tinyMCE.init({
            // General options
            mode: "textareas",
            theme: "advanced",
            plugins: "pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups",

        });
    </script>--%>
    <script>
      tinymce.init({
            selector: 'textarea',  // change this value according to your html
            //toolbar: "styleselect | fontselect",
            toolbar: [
      'styleselect  | fontselect'
            ],
            font_formats: 'Arial=arial,helvetica,sans-serif;Courier New=courier new,courier,monospace;AkrutiKndPadmini=Akpdmi-n',

            style_formats: [
              { title: 'Red text', inline: 'span', styles: { color: '#ff0000' } },
              { title: 'Red header', block: 'h1', styles: { color: '#ff0000' } } ,
              {title: '10px', inline: 'span', styles: {'font-size':'10pt'}},
              {title: '12px', inline: 'span', styles: {'font-size':'12pt'}},
               {title: '18px', inline: 'span', styles: {'font-size':'18pt'}},
   {title: '24px', inline: 'span', styles: {'font-size': '24pt'}},
   {title: '36px', inline: 'span', styles: {'font-size': '36pt'}}  ,
              { title: 'Open Sans', inline: 'span', styles: { 'font-family': 'Open Sans' } },
            { title: 'Arial', inline: 'span', styles: { 'font-family': 'arial' } },
            { title: 'Book Antiqua', inline: 'span', styles: { 'font-family': 'book antiqua' } },
            { title: 'Comic Sans MS', inline: 'span', styles: { 'font-family': 'comic sans ms,sans-serif' } },
            { title: 'Courier New', inline: 'span', styles: { 'font-family': 'courier new,courier' } },
            { title: 'Georgia', inline: 'span', styles: { 'font-family': 'georgia,palatino' } },
            { title: 'Helvetica', inline: 'span', styles: { 'font-family': 'helvetica' } },
            { title: 'Impact', inline: 'span', styles: { 'font-family': 'impact,chicago' } },
            { title: 'Symbol', inline: 'span', styles: { 'font-family': 'symbol' } },
            { title: 'Tahoma', inline: 'span', styles: { 'font-family': 'tahoma' } },
            { title: 'Terminal', inline: 'span', styles: { 'font-family': 'terminal,monaco' } },
            { title: 'Times New Roman', inline: 'span', styles: { 'font-family': 'times new roman,times' } },
            { title: 'Verdana', inline: 'span', styles: { 'font-family': 'Verdana' } },
             
            ]

        });
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 59px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="span9">
        <div class="content">
            <div class="module">
                <div class="module-head">
                    <h3>Pre-Construction Condos</h3>
                </div>
                  <asp:HiddenField ID="hdnId" runat="server" />
                <div class="module-body">
                    <div class="form-horizontal row-fluid">
                        
                        <div class="control-group">
                            <label class="control-label" for="basicinput">Title`</label>
                            <div class="controls">
                                <asp:TextBox ID="txtName" runat="server" MaxLength="50" PlaceHolder="Title.." class="span8"></asp:TextBox>
                                <span class="help-inline">
                                    <asp:RequiredFieldValidator ID="revBanner" runat="server" ErrorMessage="Title required" Display="Dynamic"
                                        ControlToValidate="txtName" ValidationGroup="SavePage" SetFocusOnError="true"
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </span>
                            </div>
                        </div>


                        <div class="control-group">
                            <label class="control-label" for="basicinput">Condos  Image</label>
                            <div class="controls">
                                <asp:FileUpload ID="updBannerImage" CssClass="multi" AllowMultiple="true" runat="server" />
                                <span class="help-inline">
                                    <asp:Image ID="imgbanner" Width="130px"  runat="server" Visible="false" /></span>
                                <asp:HiddenField ID="hdnImg" runat="server" />
                                <asp:Label ID="lblbannersize" style="color:red;" runat="server"></asp:Label>
                             <%--   <asp:CustomValidator ID="cvFileUpload" runat="server"
                                    ControlToValidate="updBannerImage"
                                    ValidationGroup="SavePage" ValidateEmptyText="True"></asp:CustomValidator>--%>
                            </div>
                        </div>

                          <div class="control-group">
                            <label class="control-label" for="basicinput">Price</label>
                            <div class="controls">
                                
                                <asp:TextBox ID="txtPrice" runat="server" MaxLength="50" PlaceHolder="Price.." class="span8"></asp:TextBox>
                                <span class="help-inline">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Price required" Display="Dynamic"
                                        ControlToValidate="txtPrice" ValidationGroup="SavePage" SetFocusOnError="true"
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </span>
                            </div>
                        </div>
                          <div class="control-group">
                            <label class="control-label" for="basicinput">Address</label>
                            <div class="controls">
                                <asp:TextBox ID="txtAddress" runat="server"  Height="90px" PlaceHolder="Address...." class="span8"></asp:TextBox>
                                <span class="help-inline">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Address required" Display="Dynamic"
                                        ControlToValidate="txtAddress" ValidationGroup="SavePage" SetFocusOnError="true"
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </span>
                            </div>
                        </div>
                     
                        <%-- <div class="control-group">
                            <label class="control-label" for="basicinput">Blog Description</label>
                            <div class="controls">
                                <FCKeditorV2:FCKeditor ID="txtDescription" Value="Add Description"
                                    Width="100%" runat="server">
                                </FCKeditorV2:FCKeditor>
                            </div>
                        </div>--%>

                     <div class="control-group">
                            <label class="control-label" for="basicinput">Description</label>

                            <div class="controls">
                                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Height="90px" PlaceHolder="Description...." class="span8"></asp:TextBox>
                                <span class="help-inline">
                                   
                                </span>
                            </div>
                        </div>

                        <div class="control-group">
                            <div class="controls">
                                <asp:Button ID="btnUploadImage" ValidationGroup="SavePage" runat="server" class="btn btn-primary" Text="Upload" OnClick="btnUploadImage_Click" />
                                <asp:Button ID="BtnUpdate" ValidationGroup="SavePage" runat="server" class="btn btn-primary" Text="Update" OnClick="btnUpdate_Click" />
                                 <asp:Button ID="btnCancel" class="btn" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls"></div>
                        </div>

                        <asp:GridView ID="grdBannerShow" class="table table-striped table-bordered table-condensed" AutoGenerateColumns="False" OnRowCommand="GrdBlogList_RowCommand" PageSize="10" runat="server">
                            <Columns>
                               <%-- <asp:BoundField DataField="ID" HeaderText="#" SortExpression="ID"></asp:BoundField>--%>
                                 
                                <asp:TemplateField HeaderText="Image" SortExpression="ID">
                                    <ItemTemplate>
                                        <img src='/admin/uploadfiles/<%#Eval("ImageUrl") %>' alt="" width="100px" height="100px" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                               
                                <%--<asp:TemplateField HeaderText="ID" HeaderStyle-Width="250px" SortExpression="ID">
                                    <ItemTemplate>
                                        <asp:Label ID="lblID" runat="server" Text='<%#Eval("ID") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>--%>

                                <asp:TemplateField HeaderText="Title" SortExpression="Name">
                                    <ItemTemplate>
                                        <asp:Label ID="lblBannerName" runat="server" Text='<%#Eval("Title") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Description" SortExpression="ItemOrder">
                                    <ItemTemplate>
                                        <asp:Label ID="lblOrder" runat="server" Text='<%# System.Web.HttpUtility.HtmlDecode(Eval("Description").ToString()) %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Edit" SortExpression="Edit">
                                    <ItemTemplate>
                                        <asp:Button ID="btnEdit" runat="server" Text="Edit" CommandArgument='<%#Eval("Id") %>' CommandName="Editrec" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Delete" SortExpression="Delete">
                                    <ItemTemplate>
                                        <asp:Button ID="btnDelete" OnClientClick="return confirm('Are You Sure You Want to Delete this Banner');" runat="server" Text="Delete" CommandArgument='<%#Eval("ID") %>' CommandName="Deleterec" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                            </Columns>
                        </asp:GridView>

                    </div>
                </div>
            </div>
            <!--/.content-->
        </div>

    </div>
    <!--/.span9-->
</asp:Content>
