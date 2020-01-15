﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="WebApplication6.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>TheGazette - News Magazine HTML5 Template | Home</title>

    <!-- Favicon  -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="css/core-style.css">
    <link rel="stylesheet" href="style.css">

    <!-- Responsive CSS -->
    <link href="css/responsive.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
         <!-- Header Area Start -->
    <header class="header-area">
        <div class="top-header">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <!-- Breaking News Area -->
                    <div class="col-12 col-md-6">
                        <div class="breaking-news-area">
                            <h5 class="breaking-news-title">SICAK Haber</h5>
                            <div id="breakingNewsTicker" class="ticker">
                                <ul>
                                   <asp:Repeater ID="Top5Haber" runat="server">
                                       <ItemTemplate>
                                           <li><a href="NewPage.aspx?title=<%# Eval("Title") %>"><%# Eval("Title") %></a></li>
                                       </ItemTemplate>
                                       </asp:Repeater>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- Stock News Area -->
                    <div class="col-12 col-md-6">
                        <div class="stock-news-area">
                            <div id="stockNewsTicker" class="ticker">
                                <ul>
                                    <li>
                                        <div class="single-stock-report">
                                            <div class="stock-values">
                                                <span>eur/usd</span>
                                                <span>1.1862</span>
                                            </div>
                                            <div class="stock-index minus-index">
                                                <h4>0.18</h4>
                                            </div>
                                        </div>
                                        <div class="single-stock-report">
                                            <div class="stock-values">
                                                <span>BTC/usd</span>
                                                <span>15.674.99</span>
                                            </div>
                                            <div class="stock-index plus-index">
                                                <h4>8.60</h4>
                                            </div>
                                        </div>
                                        <div class="single-stock-report">
                                            <div class="stock-values">
                                                <span>ETH/usd</span>
                                                <span>674.99</span>
                                            </div>
                                            <div class="stock-index minus-index">
                                                <h4>13.60</h4>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="single-stock-report">
                                            <div class="stock-values">
                                                <span>eur/usd</span>
                                                <span>1.1862</span>
                                            </div>
                                            <div class="stock-index minus-index">
                                                <h4>0.18</h4>
                                            </div>
                                        </div>
                                        <div class="single-stock-report">
                                            <div class="stock-values">
                                                <span>BTC/usd</span>
                                                <span>15.674.99</span>
                                            </div>
                                            <div class="stock-index plus-index">
                                                <h4>8.60</h4>
                                            </div>
                                        </div>
                                        <div class="single-stock-report">
                                            <div class="stock-values">
                                                <span>ETH/usd</span>
                                                <span>674.99</span>
                                            </div>
                                            <div class="stock-index minus-index">
                                                <h4>13.60</h4>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="single-stock-report">
                                            <div class="stock-values">
                                                <span>eur/usd</span>
                                                <span>1.1862</span>
                                            </div>
                                            <div class="stock-index minus-index">
                                                <h4>3.95</h4>
                                            </div>
                                        </div>
                                        <div class="single-stock-report">
                                            <div class="stock-values">
                                                <span>BTC/usd</span>
                                                <span>15.674.99</span>
                                            </div>
                                            <div class="stock-index plus-index">
                                                <h4>4.78</h4>
                                            </div>
                                        </div>
                                        <div class="single-stock-report">
                                            <div class="stock-values">
                                                <span>ETH/usd</span>
                                                <span>674.99</span>
                                            </div>
                                            <div class="stock-index minus-index">
                                                <h4>11.37</h4>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Middle Header Area -->
        <div class="middle-header">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <!-- Logo Area -->
                    <div class="col-12 col-md-4">
                        <div class="logo-area">
                            <a href="MainPage.aspx"><img src="img/core-img/logo.png" alt="logo"></a>
                        </div>
                    </div>
                    <!-- Header Advert Area -->
                    <div class="col-12 col-md-8">
                        <div class="header-advert-area">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href="#"><img src="img/bg-img/top-advert.png" alt="header-add"></a></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bottom Header Area -->
        <div class="bottom-header">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12">
                        <div class="main-menu">
                            <nav class="navbar navbar-expand-lg">
                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#gazetteMenu" aria-controls="gazetteMenu" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i> Menu</button>
                                <div class="collapse navbar-collapse" id="gazetteMenu">
                                    <ul class="navbar-nav mr-auto">
                                        <li class="nav-item active">
                                            <a class="nav-link" href="TopicPage.aspx?category=DHA-Gündem">Gündem</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="TopicPage.aspx?category=DHA-Genel">Genel</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="TopicPage.aspx?category=DHA-Ekonomi">Ekonomi</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="TopicPage.aspx?category=DHA-Güvenlik">Güvenlik</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="TopicPage.aspx?category=DHA-Politika">Politika</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="TopicPage.aspx?category=DHA-Kültür Sanat">Kültür Sanat</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="TopicPage.aspx?category=DHA-Spor">Spor</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="TopicPage.aspx?category=DHA-Sağlık">Sağlık</a>
                                        </li>
                                    </ul>
                                    <!-- Search Form -->
                                    <div class="header-search-form mr-auto">
                                        <form action="#">
                                            <input type="search" placeholder="Şuanda bakımdayız..." id="search" name="search">
                                            <input class="d-none" type="submit" value="submit">
                                        </form>
                                    </div>
                                    <!-- Search btn -->
                                    <div id="searchbtn">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </div>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Area End -->

    <!-- Welcome Blog Slide Area Start -->
    <section class="welcome-blog-post-slide owl-carousel">
        <asp:Repeater ID="Repeater1" runat="server">
                   <ItemTemplate> 
        <!-- Single Blog Post -->
        <div class="single-blog-post-slide bg-img background-overlay-5" >
            <!-- Single Blog Post Content -->
            <img src="<%# Eval("ImageUrl") %> ">
            <div class="single-blog-post-content">                             
                <div class="tags">
                    <a href="#"><%# Eval("Category") %></a>
                </div>
                <h3><a href="NewPage.aspx?title=<%# Eval("Title") %>" class="font-pt"><%# Eval("Title") %> </a></h3>
                <div class="date">
                    <a href="#"><%# Eval("PubDate") %></a>
                </div>
                
            </div>
        </div>
                       
                         </ItemTemplate>
                 </asp:Repeater>
            
    </section>
    <!-- Welcome Blog Slide Area End -->

    <!-- Latest News Marquee Area Start -->
    <div class="latest-news-marquee-area">
        <div class="simple-marquee-container">
            <div class="marquee">
                <ul class="marquee-content-items">
                    <li>
                        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate> 
                                <a href="NewPage.aspx?title=<%# Eval("Title") %>"><span class="latest-news-time"><%# Eval("Category") %></span> <%# Eval("Title") %>  </a>
                            </ItemTemplate>
                        </asp:Repeater>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Latest News Marquee Area End -->

    <!-- Main Content Area Start -->
    <section class="main-content-wrapper section_padding_100">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-9">
                    <!-- Gazette Welcome Post -->
                    <div class="gazette-welcome-post">
                        <!-- Post Tag -->
                        <asp:Repeater ID="Repeater3" runat="server">
                            <ItemTemplate> 
                        <div class="gazette-post-tag">
                            <a href="#"><%# Eval("Category") %></a>
                        </div>
                        <h2 class="font-pt"><%# Eval("Title") %></h2>
                        <p class="gazette-post-date"><%# Eval("PubDate") %></p>
                        <!-- Post Thumbnail -->
                        <div class="blog-post-thumbnail my-5">
                            <img src="<%# Eval("ImageUrl") %>" >
                        </div>
                        <!-- Post Excerpt -->
                        <p><%# Eval("Description") %></p>
                        <!-- Reading More -->
                             
                        <div class="post-continue-reading-share d-sm-flex align-items-center justify-content-between mt-30">
                            <div class="post-continue-btn">
                                <a href="NewPage.aspx?title=<%# Eval("Title") %>" class="font-pt">Okumaya Devam Et <i class="fa fa-chevron-right" aria-hidden="true"></i></a>
                            </div>
                            <div class="post-share-btn-group">
                                <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                            </div>
                        </div>
                                </ItemTemplate>
                       </asp:Repeater>
                    </div>

                    <div class="gazette-todays-post section_padding_100_50">
                        <div class="gazette-heading">
                            <h4>Bugünün Popüler Haberleri</h4>
                        </div>
                        <!-- Single Today Post -->
                        <div class="gazette-single-todays-post d-md-flex align-items-start mb-50">
                            <asp:Repeater ID="Repeater4" runat="server">
                            <ItemTemplate> 
                            <div class="todays-post-thumb">
                                <img src="<%# Eval("ImageUrl") %>" alt="">
                            </div>
                            <div class="todays-post-content">
                                <!-- Post Tag -->
                                <div class="gazette-post-tag">
                                    <a href="#"><%# Eval("Category") %></a>
                                </div>
                                <h3><a href="NewPage.aspx?title=<%# Eval("Title") %>" class="font-pt mb-2"><%# Eval("Title") %></a></h3>
                                <span class="gazette-post-date mb-2"><%# Eval("PubDate") %></span>
                                <a href="#" class="post-total-comments">3 Comments</a>
                                <p><%# Eval("Description") %></p>
                            </div>
                                </ItemTemplate>
                       </asp:Repeater>
                        </div>
                         
                       <div class="gazette-single-todays-post d-md-flex align-items-start mb-50">
                           <asp:Repeater ID="Repeater5" runat="server">
                            <ItemTemplate> 
                            <div class="todays-post-thumb">
                                <img src="<%# Eval("ImageUrl") %>" alt="">
                            </div>
                            <div class="todays-post-content">
                                <!-- Post Tag -->
                                <div class="gazette-post-tag">
                                    <a href="#"><%# Eval("Category") %></a>
                                </div>
                                <h3><a href="NewPage.aspx?title=<%# Eval("Title") %>" class="font-pt mb-2"><%# Eval("Title") %></a></h3>
                                <p class="gazette-post-date mb-2"><%# Eval("PubDate") %></p>
                                <a href="#" class="post-total-comments">3 Comments</a>
                                <p><%# Eval("Description") %></p>
                            </div>
                                </ItemTemplate>
                       </asp:Repeater>
                        </div>
                    </div>
                </div>
                        <!-- Single Today Post -->
                        
                <div class="col-12 col-lg-3 col-md-6">
                    <div class="sidebar-area">
                        <!-- Breaking News Widget -->
                        <div class="breaking-news-widget">
                            <div class="widget-title">
                                <h5>breaking news englısh</h5>
                            </div>
                            <!-- Single Breaking News Widget -->
                            <div class="single-breaking-news-widget">
                                <img src="img/blog-img/bn-1.jpg" alt="">
                                <div class="breakingnews-title">
                                    <p>breaking news</p>
                                </div>
                                <div class="breaking-news-heading gradient-background-overlay">
                                    <h5 class="font-pt">China leads new global skyscraper record</h5>
                                </div>
                            </div>
                            <!-- Single Breaking News Widget -->
                            <div class="single-breaking-news-widget">
                                <img src="img/blog-img/bn-2.jpg" alt="">
                                <div class="breakingnews-title">
                                    <p>breaking news</p>
                                </div>
                                <div class="breaking-news-heading gradient-background-overlay">
                                    <h5 class="font-pt">Can a zebra crossing change its stripes?</h5>
                                </div>
                            </div>
                        </div>

                        <!-- Don't Miss Widget -->
                        <div class="donnot-miss-widget">
                            <div class="widget-title">
                                <h5>Don't miss</h5>
                            </div>
                            <!-- Single Don't Miss Post -->
                            <div class="single-dont-miss-post d-flex mb-30">
                                <div class="dont-miss-post-thumb">
                                    <img src="img/blog-img/dm-1.jpg" alt="">
                                </div>
                                <div class="dont-miss-post-content">
                                    <a href="#" class="font-pt">EU council reunites</a>
                                    <span>Nov 29, 2017</span>
                                </div>
                            </div>
                            <!-- Single Don't Miss Post -->
                            <div class="single-dont-miss-post d-flex mb-30">
                                <div class="dont-miss-post-thumb">
                                    <img src="img/blog-img/dm-2.jpg" alt="">
                                </div>
                                <div class="dont-miss-post-content">
                                    <a href="#" class="font-pt">A new way to travel the world</a>
                                    <span>March 29, 2016</span>
                                </div>
                            </div>
                            <!-- Single Don't Miss Post -->
                            <div class="single-dont-miss-post d-flex mb-30">
                                <div class="dont-miss-post-thumb">
                                    <img src="img/blog-img/dm-3.jpg" alt="">
                                </div>
                                <div class="dont-miss-post-content">
                                    <a href="#" class="font-pt">Why choose a bank?</a>
                                    <span>March 29, 2016</span>
                                </div>
                            </div>
                        </div>
                        <!-- Advert Widget -->
                        <div class="advert-widget">
                            <div class="widget-title">
                                <h5>Advert</h5>
                            </div>
                            <div class="advert-thumb mb-30">
                                <a href="#"><img src="img/bg-img/add.png" alt=""></a>
                            </div>
                        </div> 
                    </div>
                </div>
            </div>
        </div>
        <!-- Main Content Area End -->
    <!-- Video Posts Area Start --
    <!-- Editorial Area Start -->
    <section class="gazatte-editorial-area section_padding_100 bg-dark">
        <asp:Repeater ID="Repeater6" runat="server">
                                            <ItemTemplate> 
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="editorial-post-slides owl-carousel">

                        <!-- Editorial Post Single Slide -->
                        <div class="editorial-post-single-slide">
                            <div class="row">
                                <div class="col-12 col-md-5">
                                    <div class="editorial-post-thumb">
                                        <img src="<%# Eval("ImageUrl") %>" alt="">
                                    </div>
                                </div>
                                <div class="col-12 col-md-7">
                                    <div class="editorial-post-content">
                                         
                                        <!-- Post Tag -->
                                        <div class="gazette-post-tag">
                                            <a href="#"><%# Eval("Category") %></a>
                                        </div>
                                        <h2><a href="NewPage.aspx?title=<%# Eval("Title") %>" class="font-pt mb-15"><%# Eval("Title") %></a></h2>
                                        <p class="editorial-post-date mb-15"><%# Eval("PubDate") %></p>
                                        <p><%# Eval("Description") %></p>
                                             
                                    </div>
                                </div>
                            </div>
                        </div>

                        
                        <!-- Editorial Post Single Slide -->
                        <div class="editorial-post-single-slide">
                            <div class="row">
                                <div class="col-12 col-md-5">
                                    <div class="editorial-post-thumb">
                                        <img src="img/blog-img/bitcoin.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col-12 col-md-7">
                                    <div class="editorial-post-content">
                                        <!-- Post Tag -->
                                        <div class="gazette-post-tag">
                                            <a href="#">Editorial</a>
                                        </div>
                                        <h2><a href="#" class="font-pt mb-15">Move over, bitcoin. <br>Here comes litecoin</a></h2>
                                        <p class="editorial-post-date mb-15">March 29, 2016</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ultrices egestas nunc, quis venenatis orci tincidunt id. Fusce commodo blandit eleifend. Nullam viverra tincidunt dolor, at pulvinar dui. Nullam at risus ut ipsum viverra posuere. Aliquam quis convallis enim. Nunc pulvinar molestie sem id blandit. Nunc venenatis interdum mollis...</p>
                                    </div>
                                </div>
                            </div>
                        </div>                  

                       
                    </div>
                </div>
            </div>
        </div>
           </ItemTemplate>
                                    </asp:Repeater>                                     
    </section>
    <!-- Editorial Area End -->
        
    <!-- Footer Area Start -->
    <footer class="footer-area bg-img background-overlay" style="background-image: url(img/bg-img/4.jpg);">
        <!-- Top Footer Area -->
        <div class="top-footer-area section_padding_100_70">
            <div class="container">
                <div class="row">
                    <!-- Single Footer Widget -->
                    <div class="col-12 col-sm-6 col-md-4 col-lg-2">
                        <div class="single-footer-widget">
                            <div class="footer-widget-title">
                                <h4 class="font-pt">Bölgeler</h4>
                            </div>
                            <ul class="footer-widget-menu">
                                <li><a href="#">Türkiye</a></li>
                                <li><a href="#">U.S.</a></li>
                                <li><a href="#">Afrika</a></li>
                                <li><a href="#">Güney Amerika</a></li>
                                <li><a href="#">Asya</a></li>
                                <li><a href="#">Çin</a></li>
                                <li><a href="#">Avrupa</a></li>
                                <li><a href="#">Doğu</a></li>
                                <li><a href="#">Batı</a></li>

                            </ul>
                        </div>
                    </div>
                    <!-- Single Footer Widget -->
                    <div class="col-12 col-sm-6 col-md-4 col-lg-2">
                        <div class="single-footer-widget">
                            <div class="footer-widget-title">
                                <h4 class="font-pt">Moda</h4>
                            </div>
                            <ul class="footer-widget-menu">
                                <li><a href="#">Eleme 2019</a></li>
                                <li><a href="#">Ulusal</a></li>
                                <li><a href="#">Dünya</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- Single Footer Widget -->
                    <div class="col-12 col-sm-6 col-md-4 col-lg-2">
                        <div class="single-footer-widget">
                            <div class="footer-widget-title">
                                <h4 class="font-pt">Politika</h4>
                            </div>
                            <ul class="footer-widget-menu">
                                <li><a href="#">İş</a></li>
                                <li><a href="#">Piyasalar</a></li>
                                <li><a href="#">Teknoloji</a></li>
                                <li><a href="#">Cemiyet</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- Single Footer Widget -->
                    <div class="col-12 col-sm-6 col-md-4 col-lg-2">
                        <div class="single-footer-widget">
                            <div class="footer-widget-title">
                                <h4 class="font-pt">Spor</h4>
                            </div>
                            <ul class="footer-widget-menu">
                                <li><a href="#">Futbol</a></li>
                                <li><a href="#">Golf</a></li>
                                <li><a href="#">Tenis</a></li>
                                <li><a href="#">Moto GP</a></li>
                                <li><a href="#">At Yarışı</a></li>
                                <li><a href="#">Basketbol</a></li>
                                <li><a href="#">Voleybol</a></li>
                                <li><a href="#">Hentbol</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- Single Footer Widget -->
                    <div class="col-12 col-sm-6 col-md-4 col-lg-2">
                        <div class="single-footer-widget">
                            <div class="footer-widget-title">
                                <h4 class="font-pt">SSS</h4>
                            </div>
                            <ul class="footer-widget-menu">
                                <li><a href="#">Havacılık</a></li>
                                <li><a href="#">İş</a></li>
                                <li><a href="#">Gezi</a></li>
                                <li><a href="#">Yolculuk</a></li>
                                <li><a href="#">Yeme/İçme</a></li>
                                <li><a href="#">Hoteller</a></li>
                                <li><a href="#">Partner Hoteller</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- Single Footer Widget -->
                    <div class="col-12 col-sm-6 col-md-4 col-lg-2">
                        <div class="single-footer-widget">
                            <div class="footer-widget-title">
                                <h4 class="font-pt">Daha Fazlası</h4>
                            </div>
                            <ul class="footer-widget-menu">
                                <li><a href="#">Moda</a></li>
                                <li><a href="#">Dizayn</a></li>
                                <li><a href="#">Mimari</a></li>
                                <li><a href="#">Sanat</a></li>
                                <li><a href="#">Otomotiv</a></li>
                                <li><a href="#">Cemiyet</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bottom Footer Area -->
        <div class="bottom-footer-area">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-center">
                    <div class="col-12">
                        <div class="copywrite-text">
                            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with by Mehmet Pazar
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Area End -->

    <!-- jQuery (Necessary for All JavaScript Plugins) -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="js/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
        <asp:Timer ID="Timer2" runat="server" Interval="30000" OnTick="Timer2_Tick">
         </asp:Timer>
         <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
    </form>
</body>
</html>