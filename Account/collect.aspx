<%@ Page Language="C#" AutoEventWireup="true" CodeFile="collect.aspx.cs" Inherits="Account_collect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>募捐</title>
    <link href="../Style/All.css" rel="stylesheet" />
    <link href="../Style/collect.css" rel="stylesheet" />
    <link rel="stylesheet" href="../lib/font-awesome-4.7.0/css/font-awesome.min.css">
</head>
<body>
    <header style="height:3.5em;">
        <div class="sign">
            <span><a href="#">注册</a></span>
            <span><a href="#">登录</a></span>           
        </div>
        <div class="banner">
            <nav>
                <ul>   
                    <li>
                        <h5>动物</h5>
                    </li>
                    <li><a href="main.aspx">动物</a></li>
                    <li><a href="#">领养</a></li>
                    <li><a href="#">募捐</a></li>
                    <li><a href="#">社区</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <div class="collect_content">
        <!--这里用作对募捐的简单介绍-->
        <div class="title">
            <h5>
                <span>
                    <a href="#">募捐·简介</a>
                </span>
            </h5>
            <p class="collect_text">
                <span>保</span>护动物的公益广告的传播以及加强动物保护意识已经成为全世界普遍关注的话题，
                然而对动物的虐待、残害和捕杀却从未停止。无论是已经濒危的稀有物种，还是随处可见的宠物们都享有必不可少的动物权利。保护动物无需宏伟的设想，
                从小事做起便可实施拯救。让我们大家一起来努力，一起来了解保护动物的这个公益事业
            </p>
        </div>
        <!--这里用于介绍动物保护的公益组织-->
        <div class="title">
            <h5>
                <span>
                    <a href="#">公益·组织</a>
                </span>
            </h5>
            <div class="collect_content_detail">
                <div class="collect_img">
                    <img src="../Images/logo1.jpg" alt="Alternate Text" />
                </div>
                <div class="collect_page">
                    <span>介绍</span>
                </div>
                <div class="collect_button">
                    <a href="#" onclick="openCollect()">去捐款</a>
                </div>
                <div style="clear:both"></div>
            </div>
            <div style="clear:both"></div>
        </div>
        <!--相关的网站-->
        <div class="title">
            <h5>
                <span>
                    <a href="#">公益·网站</a>
                </span>
            </h5>
            <div>

            </div>
        </div>
        

    </div>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
    <!--当用户点击去捐款后弹出的界面-->
    <div id="site_collect" class="collect_m">
        <div class="collect_m_form">
            <form action="/" method="post"></form>
        </div>
        <div onclick="closeCollect()" class="collect_m_close">
            <i class="fa fa-times fa-2x" aria-hidden="true"></i>
        </div>
    </div>

    <footer class="clear">
        <div>
            <p>&copy2016 niko lan. All rights reserved. </p>
        </div>
    </footer
    <script src="../Js/collect.js"></script>
</body>
</html>
