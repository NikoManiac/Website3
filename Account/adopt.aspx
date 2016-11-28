<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adopt.aspx.cs" Inherits="Account_adopt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>领养</title>
    <link href="../Style/All.css" rel="stylesheet" />
    <link href="../Style/Adopt.css" rel="stylesheet" />
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

    <div class="adopt_content">
        <div class="adopt_detail">
            <img src="../Images/hacker1.jpg" alt="Alternate Text" />
            <div class="adopt_detail_show">
                <h4>小花</h4>
                <hr />
                <h5>品种：</h5>
                <span>content</span>
                <h5>年龄：</h5>
                <span>content</span>
                <h5>介绍：</h5>
                <span>content</span>
                <a href="adopt_deal.aspx">去领养</a>
            </div>
        </div>
        <div class="adopt_detail">
            <img src="#" alt="Alternate Text" />
        </div>
        <div class="adopt_detail">
            <img src="#" alt="Alternate Text" />
        </div>
        <div class="adopt_detail">
            <img src="#" alt="Alternate Text" />
        </div>
        <div class="adopt_detail">
            <img src="#" alt="Alternate Text" />
        </div>
        <div class="adopt_detail">
            <img src="#" alt="Alternate Text" />
        </div>
        <div class="adopt_detail">
            <img src="#" alt="Alternate Text" />
        </div>

    </div>

    <form id="form1" runat="server">
    <div>
        
    </div>
    </form>
    <footer class="clear">
        <div>
            <p>&copy2016 niko lan. All rights reserved. </p>
        </div>
    </footer>
</body>
</html>
