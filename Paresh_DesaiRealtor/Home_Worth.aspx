<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/landing_master.Master" CodeBehind="Home_Worth.aspx.cs" Inherits="Property.Home_Worth" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagName="Logo" TagPrefix="uc" Src="~/Controls/logo.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link id="favicon" runat="server" rel="shortcut icon" type="image/x-icon" />
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>
        <asp:Literal ID="siteTitle" runat="server"></asp:Literal></title>
    
  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
     <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBG_M1SCro3nb4pQtbHp-oqcrILQIVom3s&libraries=places,geometry"></script>
    <script type="text/javascript">
        google.maps.event.addDomListener(window, 'load', function () {
            var places = new google.maps.places.Autocomplete(document.getElementById('MainContent_search'));
            google.maps.event.addListener(places, 'place_changed', function () {
            });
        });
    </script>
    <script>
    window.fbAsyncInit = function () {
        FB.init({
            appId: '368846763591191',//925184770960018
            xfbml: true,
            version: 'v2.6'
        });
    };

    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) { return; }
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));

    function getQueryStrings() {
        var assoc = {};
        var decode = function (s) { return decodeURIComponent(s.replace(/\+/g, " ")); };
        var queryString = location.search.substring(1);
        var keyValues = queryString.split('&');

        for (var i in keyValues) {
            var key = keyValues[i].split('=');
            if (key.length > 1) {
                assoc[decode(key[0])] = decode(key[1]);
            }
        }

        return assoc;
    }
    //document.getElementById('shareBtn').onclick = function () {
    $(document).ready(function () {
        $("#shareBtn").click(function () {           
            var URL = 'http://sohirealtor.com/Home_Worth.aspx?PageTitle=HomeWorth';
            //alert(window.location.href);
            //var URL = window.location.href;
            FB.ui({
                method: 'share',
                display: 'popup',
                href: URL,
            }, function (response) { });
        });
    });

    </script>
     <script type="text/javascript" src="//platform-api.sharethis.com/js/sharethis.js#property=5ad7268db303230013e85d01&product=custom-share-buttons"></script>

      <!--Facebook Share andFollow-->
<script type="text/javascript">
    (function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js =d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_GB/all.js#xfbml=1";
   fjs.parentNode.insertBefore(js, fjs);
} (document, 'script','facebook-jssdk'));
</script>
<!--Google +1 and Follow-->
<script type="text/javascript">
    (function () {
        var po = document.createElement('script'); po.type = 'text/javascript';po.async = true;
       po.src = 'https://apis.google.com/js/plusone.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
    })();
</script>
<!--Twitter Share-->
<script type="text/javascript">
    !function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (!d.getElementById(id)) {
    js =d.createElement(s);
    js.id =id; js.src = "//platform.twitter.com/widgets.js";
   fjs.parentNode.insertBefore(js, fjs);
    }
} (document, "script","twitter-wjs");
</script>
<!--StumbleUpon andPinterest-->
<script type="text/javascript">
    (function () {
    var li = document.createElement('script'); li.type = 'text/javascript';li.async = true;
    li.src =('https:' == document.location.protocol ? 'https:' : 'http:')+ '//platform.stumbleupon.com/1/widgets.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(li, s);
    })();
</script>
<script type="text/javascript" src="//assets.pinterest.com/js/pinit.js"></script>
<!--Linked In Share-->

<script src="//platform.linkedin.com/in.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="main-wrap" class="clearfix">
        <div class="main-container bg clearfix ">
            <div style="padding-top: 76.2px;" class="addre-box-header">
                <div class="landing_logo">
                    <figure class="logo">
                        <uc:Logo ID="logo" runat="server" />
                    </figure>
                </div>
                <h1 id="siteLiveHomePageMainTitle">What Is your House Really Worth ?</h1>
                <%--<h3>Get instant Free Online Home Evaluation</h3>--%>
                <h2><span class="line">&nbsp;</span><span id="siteLiveHomePageSmallerTitle1">Home Prices are Up 19%</span><span class="line">&nbsp;</span></h2>
                <div class="header-addre-form">
                    <input type="text" id="search" class="MainContentSearchBar" runat="server" placeholder="Type your address and submit" />
                    <asp:Button ID="addre_submit" runat="server" OnClick="addre_submit_Click" Text="Submit" CssClass="green-btn large" />
                </div>
                <div class="">
                <div class="col-md-4 col-sm-4">
                </div>
                <div class="col-md-3 col-sm-3">
                <div class="btn_cntainer">
                 <div class="property_price_box2">
                            <div class="prprty_inner_box_row2">
                               <div class="col-md-12 col-sm-12">
                                    <div class="proprty_share">
                                       
                                       <h4>Share this Page</h4>
                                    
                                        <div class="social_icons_share">
                                             <div data-network="facebook" class="st-custom-button"><a class="fa fa-facebook"></a></div>
                                                    <div data-network="googleplus" class="st-custom-button"><i class="fa fa-google-plus"></i></div>
                                                     <div data-network="linkedin" class="st-custom-button"><i class="fa fa-linkedin"></i></div>
                                               <div data-network="twitter" class="st-custom-button"><i class="fa fa-twitter"></i></div>
                                               <div data-network="pinterest" class="st-custom-button"><i class="fa fa-pinterest"></i></div>
                                                 <div data-network="whatsapp" class="st-custom-button"><i class="fa fa-whatsapp"></i></div> 
                                                <div data-network="email" class="st-custom-button"><i class="fa fa-envelope"></i></div>
                                                 </div>
                                                 <div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                      </div>
                </div>
                </div>
                <div class="col-md-5 col-sm-5">
                </div>
                </div>
                  
                <%--<h2 id="siteLiveHomePageSmallerTitle">See your Zestimate and recently sold properties like yours.</h2>--%>
            </div>
        </div>
    </div>
</asp:Content>
