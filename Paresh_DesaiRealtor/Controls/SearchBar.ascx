<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchBar.ascx.cs" Inherits="Property.Controls.SearchBar" ClientIDMode="Static" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>

<link href="../slider/css/style.css" rel="stylesheet" />
<link href="../css/style_002.css" rel="stylesheet" />
<link href="../css/style.css" rel="stylesheet" />
<link href="../css/shortcodes.css" rel="stylesheet" />

<style type="text/css">
    .AutoExtender {
        background: none repeat scroll 0 0 hsl(0, 0%, 96%);
        border: 1px solid #ccc;
        font-family: Verdana,Arial Black;
        font-size: 12px;
        font-weight: normal;
        height: auto;
        line-height: 20px;
        margin-top: -1px;
        position: absolute;
        width: 265px !important;
        z-index: 600001;
        padding-bottom: 10px;
        padding-top: 10px;
    }

    .AutoExtenderList {
        cursor: pointer;
        color: Black;
        width: 257px;
        padding-left: 7px;
        list-style-type: none;
    }

    .AutoExtenderHighlight {
        color: White;
        background-color: #006699;
        cursor: pointer;
        width: 257px;
        padding-left: 7px;
    }
</style>

<%--<script src="../js/jquery-1.11.1.min.js"></script>
  <script type="text/javascript" src="js/jquery_009.js"></script>
    <script type="text/javascript" src="js/shortcodes.js"></script>
<script>
    $(document).ready(function () {
       
        var PropertyType = GetParameterValues('PropertyType');
        var Searchtype = GetParameterValues('Searchtype');

        var residential = $('#TabResidential');
        var commercial = $('#TabCommercial');
        var condo = $('#TabCondo');
        divresidential = $('#divresidential');
        divcommercial = $('#divcommercial');
        divcondo = $('#divcondo');

        if (PropertyType == 'Residential' || Searchtype == 'Residential')
        {
            divresidential.show();
            divcommercial.hide();
            divcondo.hide();
            residential.addClass('current');
            commercial.removeClass('current');
            condo.removeClass('current');
        }
        else if (PropertyType == 'Commercial' || Searchtype == 'Commercial') {
            divresidential.hide();
            divcommercial.show();
            divcondo.hide();
           commercial.addClass('current')
           residential.removeClass('current');
           condo.removeClass('current');
        }
        else if (PropertyType == 'Condo' || Searchtype == 'Condo') {
            divresidential.hide();
            divcommercial.hide();
            divcondo.show();
            condo.addClass('current')
            commercial.removeClass('current')
            residential.removeClass('current');

        }
      
        alert("Hello " + name + " your ID is " + id);
        function GetParameterValues(param) {
            var url = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
            for (var i = 0; i < url.length; i++) {
                var urlparam = url[i].split('=');
                if (urlparam[0] == param) {
                    return urlparam[1];
                }
            }
        }
    });
</script>  --%>


<div class="property-search-container">
    <div class="dt-sc-tabs-container" style="width: 100%;">

        <div id="divresidential" style="display: block;" class="dt-sc-tabs-frame-content">
            <div class="property-type-module medium-module">
                <label>Search by City, MLS ID or Postal Code</label>
                <asp:TextBox CssClass="MainContentSearchBar" ID="txtSearch" runat="server" AutoComplete="off"></asp:TextBox>
                <ajaxToolkit:AutoCompleteExtender ID="AutoCompleteExtender1" CompletionSetCount="10"
                    TargetControlID="txtSearch" UseContextKey="True" CompletionInterval="0" ServiceMethod="GetAutoCompleteData"
                    CompletionListCssClass="AutoExtender" CompletionListItemCssClass="AutoExtenderList"
                    CompletionListHighlightedItemCssClass="AutoExtenderHighlight" MinimumPrefixLength="2"
                    Enabled="True" runat="server">
                </ajaxToolkit:AutoCompleteExtender>
            </div>
            <div class="beds-module small-module">
                <label>Property Type</label>
                <asp:DropDownList ID="ddlPropType" runat="server">
                    <asp:ListItem Value="0" Selected="True">Any</asp:ListItem>
                    <asp:ListItem Value="Residential">Residential</asp:ListItem>
                    <asp:ListItem Value="Commercial">Commercial</asp:ListItem>
                    <asp:ListItem Value="Condo">Condo</asp:ListItem>


                </asp:DropDownList>
            </div>

            <div class="beds-module small-module">
                <label>Type of Home</label>
                <asp:DropDownList ID="ddlPropertyType" runat="server">
                    <asp:ListItem Value="0">Any</asp:ListItem>
                    <asp:ListItem Value="Detached">Detached</asp:ListItem>
                    <asp:ListItem Value="Att/Row/Twnhouse">Att/Row/Twnhouse</asp:ListItem>
                    <asp:ListItem Value="Semi-Detached">Semi-Detached</asp:ListItem>
                    <asp:ListItem Value="Vacant Land">Vacant Land</asp:ListItem>
                    <asp:ListItem Value="Link">Link</asp:ListItem>
                    <asp:ListItem Value="Duplex">Duplex</asp:ListItem>
                    <asp:ListItem Value="Cottage">Cottage</asp:ListItem>
                    <asp:ListItem Value="Farm">Farm</asp:ListItem>
                    <asp:ListItem Value="Rural Resid">Rural Resid</asp:ListItem>
                    <asp:ListItem Value="Multiplex">Multiplex</asp:ListItem>
                    <asp:ListItem Value="Triplex">Triplex</asp:ListItem>
                    <asp:ListItem Value="Lower Level">Lower Level</asp:ListItem>
                    <asp:ListItem Value="Other">Other</asp:ListItem>
                    <asp:ListItem Value="Store W/Apt/Offc">Store W/Apt/Offc</asp:ListItem>
                    <asp:ListItem Value="Mobile/Trailer">Mobile/Trailer</asp:ListItem>
                    <asp:ListItem Value="Upper Level">Upper Level</asp:ListItem>
                    <asp:ListItem Value="Fourplex">Fourplex</asp:ListItem>
                    <asp:ListItem Value="Room">Room</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlPropertyType_comm" runat="server">
                    <asp:ListItem Value="0">Any</asp:ListItem>
                    <asp:ListItem Value="Commercial/Retail">Commercial/Retail</asp:ListItem>
                    <asp:ListItem Value="Sale Of Business">Sale Of Business</asp:ListItem>
                    <asp:ListItem Value="Office">Office</asp:ListItem>
                    <asp:ListItem Value="Industrial">Industrial</asp:ListItem>
                    <asp:ListItem Value="Land">Land</asp:ListItem>
                    <asp:ListItem Value="Investment">Investment</asp:ListItem>
                    <asp:ListItem Value="Store W/Apt/Office">Store W/Apt/Office</asp:ListItem>
                    <asp:ListItem Value="Farm">Farm</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlPropertyType_condo" runat="server">
                    <asp:ListItem Value="0">Any</asp:ListItem>
                    <asp:ListItem Value="Condo Apt">Condo Apt</asp:ListItem>
                    <asp:ListItem Value="Condo Townhouse">Condo Townhouse</asp:ListItem>
                    <asp:ListItem Value="Comm Element Condo">Comm Element Condo</asp:ListItem>
                    <asp:ListItem Value="Parking Space">Parking Space</asp:ListItem>
                    <asp:ListItem Value="Det Condo">Det Condo</asp:ListItem>
                    <asp:ListItem Value="Other">Other</asp:ListItem>
                    <asp:ListItem Value="Locker">Locker</asp:ListItem>
                    <asp:ListItem Value="Semi-Det Condo">Semi-Det Condo</asp:ListItem>
                    <asp:ListItem Value="Co-Op Apt">Co-Op Apt</asp:ListItem>
                    <asp:ListItem Value="Co-Ownership Apt">Co-Ownership Apt</asp:ListItem>
                    <asp:ListItem Value="Phased Condo">Phased Condo</asp:ListItem>
                    <asp:ListItem Value="Leasehold Condo">Leasehold Condo</asp:ListItem>
                    <asp:ListItem Value="Time Share">Time Share</asp:ListItem>
                    <asp:ListItem Value="Lower Level">Lower Level</asp:ListItem>
                    <asp:ListItem Value="Upper Level">Upper Level</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="baths-module small-module">
                <label>Beds</label>
                <asp:DropDownList ID="ddlBeds" runat="server">
                    <asp:ListItem Value="0" Selected="True">Any</asp:ListItem>
                    <asp:ListItem Value="1">1+</asp:ListItem>
                    <asp:ListItem Value="2">2+</asp:ListItem>
                    <asp:ListItem Value="3">3+</asp:ListItem>
                    <asp:ListItem Value="4">4+</asp:ListItem>
                    <asp:ListItem Value="5">5+</asp:ListItem>
                    <asp:ListItem Value="6">6+</asp:ListItem>
                    <asp:ListItem Value="7">7+</asp:ListItem>
                    <asp:ListItem Value="8">8+</asp:ListItem>
                    <asp:ListItem Value="9">9+</asp:ListItem>
                    <asp:ListItem Value="10">10+</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="floors-module small-module">
                <label>Baths</label>
                <asp:DropDownList ID="ddlBaths" runat="server">
                    <asp:ListItem Value="0" Selected="True">Any</asp:ListItem>
                    <asp:ListItem Value="1">1+</asp:ListItem>
                    <asp:ListItem Value="2">2+</asp:ListItem>
                    <asp:ListItem Value="3">3+</asp:ListItem>
                    <asp:ListItem Value="4">4+</asp:ListItem>
                    <asp:ListItem Value="5">5+</asp:ListItem>
                    <asp:ListItem Value="6">6+</asp:ListItem>
                    <asp:ListItem Value="7">7+</asp:ListItem>
                    <asp:ListItem Value="8">8+</asp:ListItem>
                    <asp:ListItem Value="9">9+</asp:ListItem>
                    <asp:ListItem Value="10">10+</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="garages-module small-module">
                <label>Min Price</label>
                <asp:DropDownList ID="ddlMinPrice" runat="server">
                    <asp:ListItem Value="">Min Price</asp:ListItem>
                      <%--<asp:ListItem Value="1">$1</asp:ListItem>
                    <asp:ListItem Value="25000">$25,000</asp:ListItem>
                    <asp:ListItem Value="50000">$50,000</asp:ListItem>
                    <asp:ListItem Value="75000">$75,000</asp:ListItem>--%>
                    <asp:ListItem Value="100000">$100,000</asp:ListItem>
                    <asp:ListItem Value="125000">$125,000</asp:ListItem>
                    <asp:ListItem Value="150000">$150,000</asp:ListItem>
                    <asp:ListItem Value="175000">$175,000</asp:ListItem>
                    <asp:ListItem Value="200000">$200,000</asp:ListItem>
                    <asp:ListItem Value="225000">$225,000</asp:ListItem>
                    <asp:ListItem Value="250000">$250,000</asp:ListItem>
                    <asp:ListItem Value="275000">$275,000</asp:ListItem>
                    <asp:ListItem Value="300000">$300,000</asp:ListItem>
                    <asp:ListItem Value="325000">$325,000</asp:ListItem>
                    <asp:ListItem Value="350000">$350,000</asp:ListItem>
                    <asp:ListItem Value="375000">$375,000</asp:ListItem>
                    <asp:ListItem Value="400000">$400,000</asp:ListItem>
                    <asp:ListItem Value="425000">$425,000</asp:ListItem>
                    <asp:ListItem Value="450000">$450,000</asp:ListItem>
                    <asp:ListItem Value="475000">$475,000</asp:ListItem>
                    <asp:ListItem Value="500000">$500,000</asp:ListItem>
                    <asp:ListItem Value="525000">$525,000</asp:ListItem>
                    <asp:ListItem Value="550000">$550,000</asp:ListItem>
                    <asp:ListItem Value="575000">$575,000</asp:ListItem>
                    <asp:ListItem Value="600000">$600,000</asp:ListItem>
                    <asp:ListItem Value="625000">$625,000</asp:ListItem>
                    <asp:ListItem Value="650000">$650,000</asp:ListItem>
                    <asp:ListItem Value="675000">$675,000</asp:ListItem>
                    <asp:ListItem Value="700000">$700,000</asp:ListItem>
                    <asp:ListItem Value="725000">$725,000</asp:ListItem>
                    <asp:ListItem Value="750000">$750,000</asp:ListItem>
                    <asp:ListItem Value="775000">$775,000</asp:ListItem>
                    <asp:ListItem Value="800000">$800,000</asp:ListItem>
                    <asp:ListItem Value="825000">$825,000</asp:ListItem>
                    <asp:ListItem Value="850000">$850,000</asp:ListItem>
                    <asp:ListItem Value="875000">$875,000</asp:ListItem>
                    <asp:ListItem Value="900000">$900,000</asp:ListItem>
                    <asp:ListItem Value="925000">$925,000</asp:ListItem>
                    <asp:ListItem Value="950000">$950,000</asp:ListItem>
                    <asp:ListItem Value="975000">$975,000</asp:ListItem>
                    <asp:ListItem Value="1000000">$1,000,000</asp:ListItem>
                    <asp:ListItem Value="1050000">$1,050,000</asp:ListItem>
                    <asp:ListItem Value="1100000">$1,100,000</asp:ListItem>
                    <asp:ListItem Value="1150000">$1,150,000</asp:ListItem>
                    <asp:ListItem Value="1200000">$1,200,000</asp:ListItem>
                    <asp:ListItem Value="1250000">$1,250,000</asp:ListItem>
                    <asp:ListItem Value="1300000">$1,300,000</asp:ListItem>
                    <asp:ListItem Value="1350000">$1,350,000</asp:ListItem>
                    <asp:ListItem Value="1400000">$1,400,000</asp:ListItem>
                    <asp:ListItem Value="1450000">$1,450,000</asp:ListItem>
                    <asp:ListItem Value="1500000">$1,500,000</asp:ListItem>
                    <asp:ListItem Value="1550000">$1,550,000</asp:ListItem>
                    <asp:ListItem Value="1600000">$1,600,000</asp:ListItem>
                    <asp:ListItem Value="1650000">$1,650,000</asp:ListItem>
                    <asp:ListItem Value="1700000">$1,700,000</asp:ListItem>
                    <asp:ListItem Value="1750000">$1,750,000</asp:ListItem>
                    <asp:ListItem Value="1800000">$1,800,000</asp:ListItem>
                    <asp:ListItem Value="1850000">$1,850,000</asp:ListItem>
                    <asp:ListItem Value="1900000">$1,900,000</asp:ListItem>
                    <asp:ListItem Value="1950000">$1,950,000</asp:ListItem>
                    <asp:ListItem Value="2000000">$2,000,000</asp:ListItem>
                    <asp:ListItem Value="2500000">$2,500,000</asp:ListItem>
                    <asp:ListItem Value="3000000">$3,000,000</asp:ListItem>
                    <asp:ListItem Value="3500000">$3,500,000</asp:ListItem>
                    <asp:ListItem Value="4000000">$4,000,000</asp:ListItem>
                    <asp:ListItem Value="4500000">$4,500,000</asp:ListItem>
                    <asp:ListItem Value="5000000">$5,000,000</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="garages-module small-module">
                <label>Max Price</label>
                <asp:DropDownList ID="ddlMaxPrice" runat="server">
                    <asp:ListItem Value="0">Max Price</asp:ListItem>
<%--                     <asp:ListItem Value="1">$1</asp:ListItem>
                    <asp:ListItem Value="25000">$25,000</asp:ListItem>
                    <asp:ListItem Value="50000">$50,000</asp:ListItem>
                    <asp:ListItem Value="75000">$75,000</asp:ListItem>--%>
                    <asp:ListItem Value="100000">$100,000</asp:ListItem>
                    <asp:ListItem Value="125000">$125,000</asp:ListItem>
                    <asp:ListItem Value="150000">$150,000</asp:ListItem>
                    <asp:ListItem Value="175000">$175,000</asp:ListItem>
                    <asp:ListItem Value="200000">$200,000</asp:ListItem>
                    <asp:ListItem Value="225000">$225,000</asp:ListItem>
                    <asp:ListItem Value="250000">$250,000</asp:ListItem>
                    <asp:ListItem Value="275000">$275,000</asp:ListItem>
                    <asp:ListItem Value="300000">$300,000</asp:ListItem>
                    <asp:ListItem Value="325000">$325,000</asp:ListItem>
                    <asp:ListItem Value="350000">$350,000</asp:ListItem>
                    <asp:ListItem Value="375000">$375,000</asp:ListItem>
                    <asp:ListItem Value="400000">$400,000</asp:ListItem>
                    <asp:ListItem Value="425000">$425,000</asp:ListItem>
                    <asp:ListItem Value="450000">$450,000</asp:ListItem>
                    <asp:ListItem Value="475000">$475,000</asp:ListItem>
                    <asp:ListItem Value="500000">$500,000</asp:ListItem>
                    <asp:ListItem Value="525000">$525,000</asp:ListItem>
                    <asp:ListItem Value="550000">$550,000</asp:ListItem>
                    <asp:ListItem Value="575000">$575,000</asp:ListItem>
                    <asp:ListItem Value="600000">$600,000</asp:ListItem>
                    <asp:ListItem Value="625000">$625,000</asp:ListItem>
                    <asp:ListItem Value="650000">$650,000</asp:ListItem>
                    <asp:ListItem Value="675000">$675,000</asp:ListItem>
                    <asp:ListItem Value="700000">$700,000</asp:ListItem>
                    <asp:ListItem Value="725000">$725,000</asp:ListItem>
                    <asp:ListItem Value="750000">$750,000</asp:ListItem>
                    <asp:ListItem Value="775000">$775,000</asp:ListItem>
                    <asp:ListItem Value="800000">$800,000</asp:ListItem>
                    <asp:ListItem Value="825000">$825,000</asp:ListItem>
                    <asp:ListItem Value="850000">$850,000</asp:ListItem>
                    <asp:ListItem Value="875000">$875,000</asp:ListItem>
                    <asp:ListItem Value="900000">$900,000</asp:ListItem>
                    <asp:ListItem Value="925000">$925,000</asp:ListItem>
                    <asp:ListItem Value="950000">$950,000</asp:ListItem>
                    <asp:ListItem Value="975000">$975,000</asp:ListItem>
                    <asp:ListItem Value="1000000">$1,000,000</asp:ListItem>
                    <asp:ListItem Value="1050000">$1,050,000</asp:ListItem>
                    <asp:ListItem Value="1100000">$1,100,000</asp:ListItem>
                    <asp:ListItem Value="1150000">$1,150,000</asp:ListItem>
                    <asp:ListItem Value="1200000">$1,200,000</asp:ListItem>
                    <asp:ListItem Value="1250000">$1,250,000</asp:ListItem>
                    <asp:ListItem Value="1300000">$1,300,000</asp:ListItem>
                    <asp:ListItem Value="1350000">$1,350,000</asp:ListItem>
                    <asp:ListItem Value="1400000">$1,400,000</asp:ListItem>
                    <asp:ListItem Value="1450000">$1,450,000</asp:ListItem>
                    <asp:ListItem Value="1500000">$1,500,000</asp:ListItem>
                    <asp:ListItem Value="1550000">$1,550,000</asp:ListItem>
                    <asp:ListItem Value="1600000">$1,600,000</asp:ListItem>
                    <asp:ListItem Value="1650000">$1,650,000</asp:ListItem>
                    <asp:ListItem Value="1700000">$1,700,000</asp:ListItem>
                    <asp:ListItem Value="1750000">$1,750,000</asp:ListItem>
                    <asp:ListItem Value="1800000">$1,800,000</asp:ListItem>
                    <asp:ListItem Value="1850000">$1,850,000</asp:ListItem>
                    <asp:ListItem Value="1900000">$1,900,000</asp:ListItem>
                    <asp:ListItem Value="1950000">$1,950,000</asp:ListItem>
                    <asp:ListItem Value="2000000">$2,000,000</asp:ListItem>
                    <asp:ListItem Value="2500000">$2,500,000</asp:ListItem>
                    <asp:ListItem Value="3000000">$3,000,000</asp:ListItem>
                    <asp:ListItem Value="3500000">$3,500,000</asp:ListItem>
                    <asp:ListItem Value="4000000">$4,000,000</asp:ListItem>
                    <asp:ListItem Value="4500000">$4,500,000</asp:ListItem>
                    <asp:ListItem Value="5000000">$5,000,000</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="garages-module small-module">
                <label>Status</label>
                <asp:DropDownList ID="ddlType" runat="server">
                </asp:DropDownList>
            </div>
            <div class="garages-module small-module">
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" class="searchButton tab_srch_btttn" />
            </div>
            <asp:CompareValidator runat="server" ID="cmpNumberss" CssClass="clsCompare" ControlToValidate="ddlMaxPrice"
                ControlToCompare="ddlMinPrice" Display="Dynamic" Operator="GreaterThan" Type="Integer" ErrorMessage="Maximum price should be greater than minimum price  " />
        </div>
        <div id="divcommercial" style="display: none;" class="dt-sc-tabs-frame-content">
            <div class="property-type-module medium-module">
                <label>Type any City, MLSID or PostalCode</label>
                <asp:TextBox CssClass="MainContentSearchBar" ID="txtCommSearch" runat="server" AutoComplete="off"></asp:TextBox>
                <ajaxToolkit:AutoCompleteExtender ID="AutoCompleteExtender2" CompletionSetCount="10"
                    TargetControlID="txtCommSearch" UseContextKey="True" CompletionInterval="0" ServiceMethod="GetAutoCompleteData_Comm"
                    CompletionListCssClass="AutoExtender" CompletionListItemCssClass="AutoExtenderList"
                    CompletionListHighlightedItemCssClass="AutoExtenderHighlight" MinimumPrefixLength="2"
                    Enabled="True" runat="server">
                </ajaxToolkit:AutoCompleteExtender>
            </div>
            <div class="beds-module small-module">
                <label>
                    Type of Property</label>
                <asp:DropDownList ID="ddlCommHome" runat="server">
                </asp:DropDownList>
            </div>
            <div class="baths-module small-module">
                <label>Baths</label>
                <asp:DropDownList ID="ddlCommBaths" runat="server">
                    <asp:ListItem Value="0" Selected="True">Any</asp:ListItem>
                    <asp:ListItem Value="1">1+</asp:ListItem>
                    <asp:ListItem Value="2">2+</asp:ListItem>
                    <asp:ListItem Value="3">3+</asp:ListItem>
                    <asp:ListItem Value="4">4+</asp:ListItem>
                    <asp:ListItem Value="5">5+</asp:ListItem>
                    <asp:ListItem Value="6">6+</asp:ListItem>
                    <asp:ListItem Value="7">7+</asp:ListItem>
                    <asp:ListItem Value="8">8+</asp:ListItem>
                    <asp:ListItem Value="9">9+</asp:ListItem>
                    <asp:ListItem Value="10">10+</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="garages-module small-module">
                <label>Min Price</label>
                <asp:DropDownList ID="ddlCommMinPrice" runat="server">
                    <asp:ListItem Value="">Min Price</asp:ListItem>
                     <%--<asp:ListItem Value="1">$1</asp:ListItem>
                    <asp:ListItem Value="25000">$25,000</asp:ListItem>
                    <asp:ListItem Value="50000">$50,000</asp:ListItem>
                    <asp:ListItem Value="75000">$75,000</asp:ListItem>--%>
                    <asp:ListItem Value="100000">$100,000</asp:ListItem>
                    <asp:ListItem Value="125000">$125,000</asp:ListItem>
                    <asp:ListItem Value="150000">$150,000</asp:ListItem>
                    <asp:ListItem Value="175000">$175,000</asp:ListItem>
                    <asp:ListItem Value="200000">$200,000</asp:ListItem>
                    <asp:ListItem Value="225000">$225,000</asp:ListItem>
                    <asp:ListItem Value="250000">$250,000</asp:ListItem>
                    <asp:ListItem Value="275000">$275,000</asp:ListItem>
                    <asp:ListItem Value="300000">$300,000</asp:ListItem>
                    <asp:ListItem Value="325000">$325,000</asp:ListItem>
                    <asp:ListItem Value="350000">$350,000</asp:ListItem>
                    <asp:ListItem Value="375000">$375,000</asp:ListItem>
                    <asp:ListItem Value="400000">$400,000</asp:ListItem>
                    <asp:ListItem Value="425000">$425,000</asp:ListItem>
                    <asp:ListItem Value="450000">$450,000</asp:ListItem>
                    <asp:ListItem Value="475000">$475,000</asp:ListItem>
                    <asp:ListItem Value="500000">$500,000</asp:ListItem>
                    <asp:ListItem Value="525000">$525,000</asp:ListItem>
                    <asp:ListItem Value="550000">$550,000</asp:ListItem>
                    <asp:ListItem Value="575000">$575,000</asp:ListItem>
                    <asp:ListItem Value="600000">$600,000</asp:ListItem>
                    <asp:ListItem Value="625000">$625,000</asp:ListItem>
                    <asp:ListItem Value="650000">$650,000</asp:ListItem>
                    <asp:ListItem Value="675000">$675,000</asp:ListItem>
                    <asp:ListItem Value="700000">$700,000</asp:ListItem>
                    <asp:ListItem Value="725000">$725,000</asp:ListItem>
                    <asp:ListItem Value="750000">$750,000</asp:ListItem>
                    <asp:ListItem Value="775000">$775,000</asp:ListItem>
                    <asp:ListItem Value="800000">$800,000</asp:ListItem>
                    <asp:ListItem Value="825000">$825,000</asp:ListItem>
                    <asp:ListItem Value="850000">$850,000</asp:ListItem>
                    <asp:ListItem Value="875000">$875,000</asp:ListItem>
                    <asp:ListItem Value="900000">$900,000</asp:ListItem>
                    <asp:ListItem Value="925000">$925,000</asp:ListItem>
                    <asp:ListItem Value="950000">$950,000</asp:ListItem>
                    <asp:ListItem Value="975000">$975,000</asp:ListItem>
                    <asp:ListItem Value="1000000">$1,000,000</asp:ListItem>
                    <asp:ListItem Value="1050000">$1,050,000</asp:ListItem>
                    <asp:ListItem Value="1100000">$1,100,000</asp:ListItem>
                    <asp:ListItem Value="1150000">$1,150,000</asp:ListItem>
                    <asp:ListItem Value="1200000">$1,200,000</asp:ListItem>
                    <asp:ListItem Value="1250000">$1,250,000</asp:ListItem>
                    <asp:ListItem Value="1300000">$1,300,000</asp:ListItem>
                    <asp:ListItem Value="1350000">$1,350,000</asp:ListItem>
                    <asp:ListItem Value="1400000">$1,400,000</asp:ListItem>
                    <asp:ListItem Value="1450000">$1,450,000</asp:ListItem>
                    <asp:ListItem Value="1500000">$1,500,000</asp:ListItem>
                    <asp:ListItem Value="1550000">$1,550,000</asp:ListItem>
                    <asp:ListItem Value="1600000">$1,600,000</asp:ListItem>
                    <asp:ListItem Value="1650000">$1,650,000</asp:ListItem>
                    <asp:ListItem Value="1700000">$1,700,000</asp:ListItem>
                    <asp:ListItem Value="1750000">$1,750,000</asp:ListItem>
                    <asp:ListItem Value="1800000">$1,800,000</asp:ListItem>
                    <asp:ListItem Value="1850000">$1,850,000</asp:ListItem>
                    <asp:ListItem Value="1900000">$1,900,000</asp:ListItem>
                    <asp:ListItem Value="1950000">$1,950,000</asp:ListItem>
                    <asp:ListItem Value="2000000">$2,000,000</asp:ListItem>
                    <asp:ListItem Value="2500000">$2,500,000</asp:ListItem>
                    <asp:ListItem Value="3000000">$3,000,000</asp:ListItem>
                    <asp:ListItem Value="3500000">$3,500,000</asp:ListItem>
                    <asp:ListItem Value="4000000">$4,000,000</asp:ListItem>
                    <asp:ListItem Value="4500000">$4,500,000</asp:ListItem>
                    <asp:ListItem Value="5000000">$5,000,000</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="garages-module small-module">
                <label>Max Price</label>
                <asp:DropDownList ID="ddlCommMaxPrice" runat="server">
                    <asp:ListItem Value="0">Max Price</asp:ListItem>
                     <%--<asp:ListItem Value="1">$1</asp:ListItem>
                    <asp:ListItem Value="25000">$25,000</asp:ListItem>
                    <asp:ListItem Value="50000">$50,000</asp:ListItem>
                    <asp:ListItem Value="75000">$75,000</asp:ListItem>--%>
                    <asp:ListItem Value="100000">$100,000</asp:ListItem>
                    <asp:ListItem Value="125000">$125,000</asp:ListItem>
                    <asp:ListItem Value="150000">$150,000</asp:ListItem>
                    <asp:ListItem Value="175000">$175,000</asp:ListItem>
                    <asp:ListItem Value="200000">$200,000</asp:ListItem>
                    <asp:ListItem Value="225000">$225,000</asp:ListItem>
                    <asp:ListItem Value="250000">$250,000</asp:ListItem>
                    <asp:ListItem Value="275000">$275,000</asp:ListItem>
                    <asp:ListItem Value="300000">$300,000</asp:ListItem>
                    <asp:ListItem Value="325000">$325,000</asp:ListItem>
                    <asp:ListItem Value="350000">$350,000</asp:ListItem>
                    <asp:ListItem Value="375000">$375,000</asp:ListItem>
                    <asp:ListItem Value="400000">$400,000</asp:ListItem>
                    <asp:ListItem Value="425000">$425,000</asp:ListItem>
                    <asp:ListItem Value="450000">$450,000</asp:ListItem>
                    <asp:ListItem Value="475000">$475,000</asp:ListItem>
                    <asp:ListItem Value="500000">$500,000</asp:ListItem>
                    <asp:ListItem Value="525000">$525,000</asp:ListItem>
                    <asp:ListItem Value="550000">$550,000</asp:ListItem>
                    <asp:ListItem Value="575000">$575,000</asp:ListItem>
                    <asp:ListItem Value="600000">$600,000</asp:ListItem>
                    <asp:ListItem Value="625000">$625,000</asp:ListItem>
                    <asp:ListItem Value="650000">$650,000</asp:ListItem>
                    <asp:ListItem Value="675000">$675,000</asp:ListItem>
                    <asp:ListItem Value="700000">$700,000</asp:ListItem>
                    <asp:ListItem Value="725000">$725,000</asp:ListItem>
                    <asp:ListItem Value="750000">$750,000</asp:ListItem>
                    <asp:ListItem Value="775000">$775,000</asp:ListItem>
                    <asp:ListItem Value="800000">$800,000</asp:ListItem>
                    <asp:ListItem Value="825000">$825,000</asp:ListItem>
                    <asp:ListItem Value="850000">$850,000</asp:ListItem>
                    <asp:ListItem Value="875000">$875,000</asp:ListItem>
                    <asp:ListItem Value="900000">$900,000</asp:ListItem>
                    <asp:ListItem Value="925000">$925,000</asp:ListItem>
                    <asp:ListItem Value="950000">$950,000</asp:ListItem>
                    <asp:ListItem Value="975000">$975,000</asp:ListItem>
                    <asp:ListItem Value="1000000">$1,000,000</asp:ListItem>
                    <asp:ListItem Value="1050000">$1,050,000</asp:ListItem>
                    <asp:ListItem Value="1100000">$1,100,000</asp:ListItem>
                    <asp:ListItem Value="1150000">$1,150,000</asp:ListItem>
                    <asp:ListItem Value="1200000">$1,200,000</asp:ListItem>
                    <asp:ListItem Value="1250000">$1,250,000</asp:ListItem>
                    <asp:ListItem Value="1300000">$1,300,000</asp:ListItem>
                    <asp:ListItem Value="1350000">$1,350,000</asp:ListItem>
                    <asp:ListItem Value="1400000">$1,400,000</asp:ListItem>
                    <asp:ListItem Value="1450000">$1,450,000</asp:ListItem>
                    <asp:ListItem Value="1500000">$1,500,000</asp:ListItem>
                    <asp:ListItem Value="1550000">$1,550,000</asp:ListItem>
                    <asp:ListItem Value="1600000">$1,600,000</asp:ListItem>
                    <asp:ListItem Value="1650000">$1,650,000</asp:ListItem>
                    <asp:ListItem Value="1700000">$1,700,000</asp:ListItem>
                    <asp:ListItem Value="1750000">$1,750,000</asp:ListItem>
                    <asp:ListItem Value="1800000">$1,800,000</asp:ListItem>
                    <asp:ListItem Value="1850000">$1,850,000</asp:ListItem>
                    <asp:ListItem Value="1900000">$1,900,000</asp:ListItem>
                    <asp:ListItem Value="1950000">$1,950,000</asp:ListItem>
                    <asp:ListItem Value="2000000">$2,000,000</asp:ListItem>
                    <asp:ListItem Value="2500000">$2,500,000</asp:ListItem>
                    <asp:ListItem Value="3000000">$3,000,000</asp:ListItem>
                    <asp:ListItem Value="3500000">$3,500,000</asp:ListItem>
                    <asp:ListItem Value="4000000">$4,000,000</asp:ListItem>
                    <asp:ListItem Value="4500000">$4,500,000</asp:ListItem>
                    <asp:ListItem Value="5000000">$5,000,000</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="garages-module small-module">
                <label>Status</label>
                <asp:DropDownList ID="ddlCommSaleRent" runat="server">
                </asp:DropDownList>
            </div>
            <asp:Button ID="btnCommSearch" runat="server" Text="Search" OnClick="btnCommSearch_Click" class="searchButton" />
            <asp:CompareValidator runat="server" ID="CompareValidator1" CssClass="clsCompare" ControlToValidate="ddlMaxPrice"
                ControlToCompare="ddlMinPrice" Operator="GreaterThan" Type="Integer" ErrorMessage="Maximum price should be greater than minimum price  " />
        </div>
        <div id="divcondo" style="display: none;" class="dt-sc-tabs-frame-content">
            <div class="property-type-module medium-module">
                <label>Type any City, MLSID or PostalCode</label>
                <asp:TextBox CssClass="MainContentSearchBar" ID="txtCondoSearch" runat="server" AutoComplete="off"></asp:TextBox>
                <ajaxToolkit:AutoCompleteExtender ID="AutoCompleteExtender3" CompletionSetCount="10"
                    TargetControlID="txtCondoSearch" UseContextKey="True" CompletionInterval="0"
                    ServiceMethod="GetAutoCompleteData_Condo" CompletionListCssClass="AutoExtender"
                    CompletionListItemCssClass="AutoExtenderList" CompletionListHighlightedItemCssClass="AutoExtenderHighlight"
                    MinimumPrefixLength="2" Enabled="True" runat="server">
                </ajaxToolkit:AutoCompleteExtender>
            </div>
            <div class="beds-module small-module">
                <label>
                    Property Type</label>
                <asp:DropDownList ID="ddlCondoHome" runat="server">
                </asp:DropDownList>
            </div>
            <div class="baths-module small-module">
                <label>
                    Beds</label>
                <asp:DropDownList ID="ddlCondoBeds" runat="server">
                    <asp:ListItem Value="0" Selected="True">Any</asp:ListItem>
                    <asp:ListItem Value="1">1+</asp:ListItem>
                    <asp:ListItem Value="2">2+</asp:ListItem>
                    <asp:ListItem Value="3">3+</asp:ListItem>
                    <asp:ListItem Value="4">4+</asp:ListItem>
                    <asp:ListItem Value="5">5+</asp:ListItem>
                    <asp:ListItem Value="6">6+</asp:ListItem>
                    <asp:ListItem Value="7">7+</asp:ListItem>
                    <asp:ListItem Value="8">8+</asp:ListItem>
                    <asp:ListItem Value="9">9+</asp:ListItem>
                    <asp:ListItem Value="10">10+</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="floors-module small-module">
                <label>
                    Baths</label>
                <asp:DropDownList ID="ddlCondoBaths" runat="server">
                    <asp:ListItem Value="0" Selected="True">Any</asp:ListItem>
                    <asp:ListItem Value="1">1+</asp:ListItem>
                    <asp:ListItem Value="2">2+</asp:ListItem>
                    <asp:ListItem Value="3">3+</asp:ListItem>
                    <asp:ListItem Value="4">4+</asp:ListItem>
                    <asp:ListItem Value="5">5+</asp:ListItem>
                    <asp:ListItem Value="6">6+</asp:ListItem>
                    <asp:ListItem Value="7">7+</asp:ListItem>
                    <asp:ListItem Value="8">8+</asp:ListItem>
                    <asp:ListItem Value="9">9+</asp:ListItem>
                    <asp:ListItem Value="10">10+</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="garages-module small-module">
                <label>
                    Min Price</label>
                <asp:DropDownList ID="ddlCondoMinPrice" runat="server">
                    <asp:ListItem Value="">Min Price</asp:ListItem>
                   <%-- <asp:ListItem Value="1">$1</asp:ListItem>
                    <asp:ListItem Value="25000">$25,000</asp:ListItem>
                    <asp:ListItem Value="50000">$50,000</asp:ListItem>
                    <asp:ListItem Value="75000">$75,000</asp:ListItem>--%>
                    <asp:ListItem Value="100000">$100,000</asp:ListItem>
                    <asp:ListItem Value="125000">$125,000</asp:ListItem>
                    <asp:ListItem Value="150000">$150,000</asp:ListItem>
                    <asp:ListItem Value="175000">$175,000</asp:ListItem>
                    <asp:ListItem Value="200000">$200,000</asp:ListItem>
                    <asp:ListItem Value="225000">$225,000</asp:ListItem>
                    <asp:ListItem Value="250000">$250,000</asp:ListItem>
                    <asp:ListItem Value="275000">$275,000</asp:ListItem>
                    <asp:ListItem Value="300000">$300,000</asp:ListItem>
                    <asp:ListItem Value="325000">$325,000</asp:ListItem>
                    <asp:ListItem Value="350000">$350,000</asp:ListItem>
                    <asp:ListItem Value="375000">$375,000</asp:ListItem>
                    <asp:ListItem Value="400000">$400,000</asp:ListItem>
                    <asp:ListItem Value="425000">$425,000</asp:ListItem>
                    <asp:ListItem Value="450000">$450,000</asp:ListItem>
                    <asp:ListItem Value="475000">$475,000</asp:ListItem>
                    <asp:ListItem Value="500000">$500,000</asp:ListItem>
                    <asp:ListItem Value="525000">$525,000</asp:ListItem>
                    <asp:ListItem Value="550000">$550,000</asp:ListItem>
                    <asp:ListItem Value="575000">$575,000</asp:ListItem>
                    <asp:ListItem Value="600000">$600,000</asp:ListItem>
                    <asp:ListItem Value="625000">$625,000</asp:ListItem>
                    <asp:ListItem Value="650000">$650,000</asp:ListItem>
                    <asp:ListItem Value="675000">$675,000</asp:ListItem>
                    <asp:ListItem Value="700000">$700,000</asp:ListItem>
                    <asp:ListItem Value="725000">$725,000</asp:ListItem>
                    <asp:ListItem Value="750000">$750,000</asp:ListItem>
                    <asp:ListItem Value="775000">$775,000</asp:ListItem>
                    <asp:ListItem Value="800000">$800,000</asp:ListItem>
                    <asp:ListItem Value="825000">$825,000</asp:ListItem>
                    <asp:ListItem Value="850000">$850,000</asp:ListItem>
                    <asp:ListItem Value="875000">$875,000</asp:ListItem>
                    <asp:ListItem Value="900000">$900,000</asp:ListItem>
                    <asp:ListItem Value="925000">$925,000</asp:ListItem>
                    <asp:ListItem Value="950000">$950,000</asp:ListItem>
                    <asp:ListItem Value="975000">$975,000</asp:ListItem>
                    <asp:ListItem Value="1000000">$1,000,000</asp:ListItem>
                    <asp:ListItem Value="1050000">$1,050,000</asp:ListItem>
                    <asp:ListItem Value="1100000">$1,100,000</asp:ListItem>
                    <asp:ListItem Value="1150000">$1,150,000</asp:ListItem>
                    <asp:ListItem Value="1200000">$1,200,000</asp:ListItem>
                    <asp:ListItem Value="1250000">$1,250,000</asp:ListItem>
                    <asp:ListItem Value="1300000">$1,300,000</asp:ListItem>
                    <asp:ListItem Value="1350000">$1,350,000</asp:ListItem>
                    <asp:ListItem Value="1400000">$1,400,000</asp:ListItem>
                    <asp:ListItem Value="1450000">$1,450,000</asp:ListItem>
                    <asp:ListItem Value="1500000">$1,500,000</asp:ListItem>
                    <asp:ListItem Value="1550000">$1,550,000</asp:ListItem>
                    <asp:ListItem Value="1600000">$1,600,000</asp:ListItem>
                    <asp:ListItem Value="1650000">$1,650,000</asp:ListItem>
                    <asp:ListItem Value="1700000">$1,700,000</asp:ListItem>
                    <asp:ListItem Value="1750000">$1,750,000</asp:ListItem>
                    <asp:ListItem Value="1800000">$1,800,000</asp:ListItem>
                    <asp:ListItem Value="1850000">$1,850,000</asp:ListItem>
                    <asp:ListItem Value="1900000">$1,900,000</asp:ListItem>
                    <asp:ListItem Value="1950000">$1,950,000</asp:ListItem>
                    <asp:ListItem Value="2000000">$2,000,000</asp:ListItem>
                    <asp:ListItem Value="2500000">$2,500,000</asp:ListItem>
                    <asp:ListItem Value="3000000">$3,000,000</asp:ListItem>
                    <asp:ListItem Value="3500000">$3,500,000</asp:ListItem>
                    <asp:ListItem Value="4000000">$4,000,000</asp:ListItem>
                    <asp:ListItem Value="4500000">$4,500,000</asp:ListItem>
                    <asp:ListItem Value="5000000">$5,000,000</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="garages-module small-module">
                <label>
                    Max Price</label>
                <asp:DropDownList ID="ddlCondoMaxPrice" runat="server">
                    <asp:ListItem Value="0">Max Price</asp:ListItem>
                    <%-- <asp:ListItem Value="1">$1</asp:ListItem>
                    <asp:ListItem Value="25000">$25,000</asp:ListItem>
                    <asp:ListItem Value="50000">$50,000</asp:ListItem>
                    <asp:ListItem Value="75000">$75,000</asp:ListItem>--%>
                    <asp:ListItem Value="100000">$100,000</asp:ListItem>
                    <asp:ListItem Value="125000">$125,000</asp:ListItem>
                    <asp:ListItem Value="150000">$150,000</asp:ListItem>
                    <asp:ListItem Value="175000">$175,000</asp:ListItem>
                    <asp:ListItem Value="200000">$200,000</asp:ListItem>
                    <asp:ListItem Value="225000">$225,000</asp:ListItem>
                    <asp:ListItem Value="250000">$250,000</asp:ListItem>
                    <asp:ListItem Value="275000">$275,000</asp:ListItem>
                    <asp:ListItem Value="300000">$300,000</asp:ListItem>
                    <asp:ListItem Value="325000">$325,000</asp:ListItem>
                    <asp:ListItem Value="350000">$350,000</asp:ListItem>
                    <asp:ListItem Value="375000">$375,000</asp:ListItem>
                    <asp:ListItem Value="400000">$400,000</asp:ListItem>
                    <asp:ListItem Value="425000">$425,000</asp:ListItem>
                    <asp:ListItem Value="450000">$450,000</asp:ListItem>
                    <asp:ListItem Value="475000">$475,000</asp:ListItem>
                    <asp:ListItem Value="500000">$500,000</asp:ListItem>
                    <asp:ListItem Value="525000">$525,000</asp:ListItem>
                    <asp:ListItem Value="550000">$550,000</asp:ListItem>
                    <asp:ListItem Value="575000">$575,000</asp:ListItem>
                    <asp:ListItem Value="600000">$600,000</asp:ListItem>
                    <asp:ListItem Value="625000">$625,000</asp:ListItem>
                    <asp:ListItem Value="650000">$650,000</asp:ListItem>
                    <asp:ListItem Value="675000">$675,000</asp:ListItem>
                    <asp:ListItem Value="700000">$700,000</asp:ListItem>
                    <asp:ListItem Value="725000">$725,000</asp:ListItem>
                    <asp:ListItem Value="750000">$750,000</asp:ListItem>
                    <asp:ListItem Value="775000">$775,000</asp:ListItem>
                    <asp:ListItem Value="800000">$800,000</asp:ListItem>
                    <asp:ListItem Value="825000">$825,000</asp:ListItem>
                    <asp:ListItem Value="850000">$850,000</asp:ListItem>
                    <asp:ListItem Value="875000">$875,000</asp:ListItem>
                    <asp:ListItem Value="900000">$900,000</asp:ListItem>
                    <asp:ListItem Value="925000">$925,000</asp:ListItem>
                    <asp:ListItem Value="950000">$950,000</asp:ListItem>
                    <asp:ListItem Value="975000">$975,000</asp:ListItem>
                    <asp:ListItem Value="1000000">$1,000,000</asp:ListItem>
                    <asp:ListItem Value="1050000">$1,050,000</asp:ListItem>
                    <asp:ListItem Value="1100000">$1,100,000</asp:ListItem>
                    <asp:ListItem Value="1150000">$1,150,000</asp:ListItem>
                    <asp:ListItem Value="1200000">$1,200,000</asp:ListItem>
                    <asp:ListItem Value="1250000">$1,250,000</asp:ListItem>
                    <asp:ListItem Value="1300000">$1,300,000</asp:ListItem>
                    <asp:ListItem Value="1350000">$1,350,000</asp:ListItem>
                    <asp:ListItem Value="1400000">$1,400,000</asp:ListItem>
                    <asp:ListItem Value="1450000">$1,450,000</asp:ListItem>
                    <asp:ListItem Value="1500000">$1,500,000</asp:ListItem>
                    <asp:ListItem Value="1550000">$1,550,000</asp:ListItem>
                    <asp:ListItem Value="1600000">$1,600,000</asp:ListItem>
                    <asp:ListItem Value="1650000">$1,650,000</asp:ListItem>
                    <asp:ListItem Value="1700000">$1,700,000</asp:ListItem>
                    <asp:ListItem Value="1750000">$1,750,000</asp:ListItem>
                    <asp:ListItem Value="1800000">$1,800,000</asp:ListItem>
                    <asp:ListItem Value="1850000">$1,850,000</asp:ListItem>
                    <asp:ListItem Value="1900000">$1,900,000</asp:ListItem>
                    <asp:ListItem Value="1950000">$1,950,000</asp:ListItem>
                    <asp:ListItem Value="2000000">$2,000,000</asp:ListItem>
                    <asp:ListItem Value="2500000">$2,500,000</asp:ListItem>
                    <asp:ListItem Value="3000000">$3,000,000</asp:ListItem>
                    <asp:ListItem Value="3500000">$3,500,000</asp:ListItem>
                    <asp:ListItem Value="4000000">$4,000,000</asp:ListItem>
                    <asp:ListItem Value="4500000">$4,500,000</asp:ListItem>
                    <asp:ListItem Value="5000000">$5,000,000</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="garages-module small-module">
                <label>
                    Status</label>
                <asp:DropDownList ID="ddlCondoType" runat="server">
                </asp:DropDownList>
            </div>
            <asp:Button ID="btnCondoSearch" runat="server" Text="Search" OnClick="btnCondoSearch_Click" class="searchButton" />
            <asp:CompareValidator runat="server" ID="CompareValidator2" CssClass="clsCompare" ControlToValidate="ddlMaxPrice"
                ControlToCompare="ddlMinPrice" Operator="GreaterThan" Type="Integer" ErrorMessage="Maximum price should be greater than minimum price  " />
        </div>
    </div>
</div>

<script>
    $(function () {
        $("#ddlPropertyType").show();
        $("#ddlPropertyType_comm").hide();
        $("#ddlPropertyType_condo").hide();
        var value = '@Request.RequestContext.HttpContext.Session["someKey"]';

        $("#ddlPropType").change(function () {
            debugger;
            var type = $('option:selected', this).text();
            if (type == "Residential") {
                $("#ddlPropertyType").show();
                $("#ddlPropertyType_comm").hide();
                $("#ddlPropertyType_condo").hide();
            }
            else if (type == "Commercial") {
                $("#ddlPropertyType").hide();
                $("#ddlPropertyType_comm").show();
                $("#ddlPropertyType_condo").hide();
            }
            else {
                $("#ddlPropertyType").hide();
                $("#ddlPropertyType_comm").hide();
                $("#ddlPropertyType_condo").show();
            }
        });
    });
</script>
