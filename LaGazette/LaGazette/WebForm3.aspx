<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication6.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>TheGazette - News Magazine HTML5 Template | Single Post</title>

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
                                           <li><a href="WebForm3.aspx?title=<%# Eval("Title") %>"><%# Eval("Title") %></a></li>
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
                            <a href="WebForm1.aspx"><img src="img/core-img/logo.png" alt="logo"></a>
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
                                            <a class="nav-link" href="WebForm2.aspx?category=DHA-Gündem">Gündem</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="WebForm2.aspx?category=DHA-Genel">Genel</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="WebForm2.aspx?category=DHA-Ekonomi">Ekonomi</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="WebForm2.aspx?category=DHA-Güvenlik">Güvenlik</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="WebForm2.aspx?category=DHA-Politika">Politika</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="WebForm2.aspx?category=DHA-Kültür Sanat">Kültür Sanat</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="WebForm2.aspx?category=DHA-Spor">Spor</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="WebForm2.aspx?category=DHA-Sağlık">Sağlık</a>
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
    <!-- Header Area End -->

    <section class="single-post-area">
        <!-- Single Post Title -->
        <asp:DataList ID="DataList" runat="server">
             <ItemTemplate>
        <div class="single-post-title bg-img background-overlay" style='background-position:center;background-image:url(<%# Eval("ImageUrl") %>)'  >
            
            <div class="container h-100">
                <div class="row h-100 align-items-end">
                    <div class="col-12">
                        <div class="single-post-title-content">
                            <!-- Post Tag -->
                            <div class="gazette-post-tag">
                                <a href="#"><%# Eval("Category") %></a>
                            </div>
                            <h2 class="font-pt" id="title"></h2>
                            <script>
                            //var urlParams = new URLSearchParams(location.search);
                            const params = new URLSearchParams(window.location.search);  
                            const title = params.get("title");  
                            document.getElementById("title").innerHTML=title;
                            </script>
                            <p><%# Eval("PubDate") %></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="single-post-contents">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-8">
                        <div class="single-post-text">
                            <p><%# Eval("Description") %></p>
                        </div>
                    </div>                  
                </div>
            </div>
        </div>
        
           </ItemTemplate>
        </asp:DataList>
    </section>

    
    <!-- Footer Area Start -->
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
    </form>
</body>
</html>
