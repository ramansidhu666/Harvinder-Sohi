<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/landing_master.Master" CodeBehind="landing_page.aspx.cs" Inherits="Property.landing_page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagName="Logo" TagPrefix="uc" Src="~/Controls/logo.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link id="favicon" runat="server" rel="shortcut icon" type="image/x-icon" />
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>
        <asp:Literal ID="siteTitle" runat="server"></asp:Literal></title>
    <link rel="stylesheet" href="css/main.css" />
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
            appId: '333133617195031',//'368846763591191',//925184770960018
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
            var URL = 'http://www.sohirealtor.com/landing_page.aspx?PageTitle=LandingPage';
            //alert(window.location.href);
            //var URL = window.location.href;
            FB.ui({
                method: 'share',
                display: 'popup',
                href: URL,
            }, function (response) { });
        });

        $("#sharetweet").click(function (e) {
            debugger;
            var url = window.location.href;
            debugger;
            e.preventDefault();
            var twitterWindow = window.open('https://twitter.com/share?url=' + encodeURIComponent(url), 'twitter-popup', 'height=350,width=600');
            if (twitterWindow.focus) { twitterWindow.focus(); }
            return false;
        })
    });

    
    </script>
    <script type="text/javascript" src="//platform-api.sharethis.com/js/sharethis.js#property=5ad7268db303230013e85d01&product=custom-share-buttons"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <div id="main-wrap" class="clearfix">
            <div  class="main-container bg clearfix ">

                <div style="padding-top: 76.2px;" class="addre-box-header">
                    <div class="landing_logo">
                          <figure class="logo">
                    <uc:Logo ID="logo" runat="server" />
                </figure>
                    </div>
                    <h1 id="siteLiveHomePageMainTitle">Find your dream home Listings ?</h1>
                    <div class="header-addre-form">
                         <input type="text" id="search" class="MainContentSearchBar" runat="server" placeholder="Enter a location" />
                        <asp:Button ID="addre_submit" runat="server" OnClick="addre_submit_Click"  Text="Submit" class="green-btn large" />
                    </div>

                    <h2 id="siteLiveHomePageSmallerTitle">Finding your Dream Home has never been this easy!</h2>
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
                       
                </div>
            </div>
        </div>

</asp:Content>