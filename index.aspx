<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>主页</title>
    <link href="Style/All.css" rel="stylesheet" />
    <link href="Style/index.css" rel="stylesheet" />
    <link rel="stylesheet" href="lib/font-awesome-4.7.0/css/font-awesome.min.css">
</head>
<body>
    <header>
        <div class="sign">
            <span><a href="/Account/login.aspx">登录</a></span>
            <span><a href="/Account/register.aspx">注册</a></span>           
        </div>
        <div class="banner">
            <nav>
                <ul>   
                    <li>
                        <h5>动物</h5>
                    </li>
                    <li><a href="#">动物</a></li>
                    <li><a href="#">领养</a></li>
                    <li><a href="#">募捐</a></li>
                    <li><a href="#">照片</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <div class="main_con">
        <div class="frist">
            <h5>
                <span>
                    <a href="#">每日·科普</a>
                </span>
            </h5>
            <div class="content">
                <!--科普栏目一行内，分为左右两个部分，每个部分再分为两个部分，一个图片，一个文字-->
                <div class="content_row">
                    <div class="left content_commen">
                        <div class="content_img">
                            <img src="../Images/banner.jpg" alt="title" />
                        </div>
                        <div class="content_text">
                            <h5>题目</h5>
                            <span>content</span>
                        </div>
                    </div>
                    <div class="right content_commen">
                        <div class="content_img">
                            <img src="../Images/banner.jpg" alt="Alternate Text" />
                        </div>
                        <div class="content_text">
                            <h5>题目</h5>
                            <span>这是一段描述</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="frist">
            <h5>
                <span>
                    <a href="#">每日科普</a>
                </span>
            </h5>
            <div class="content">
                <!--科普栏目一行内，分为左右两个部分，每个部分再分为两个部分，一个图片，一个文字-->
                <div class="content_row">
                    <div class="left content_commen">
                        <div class="content_img">
                            <img src="../Images/banner.jpg" alt="Text" />
                        </div>
                        <div class="content_text">
                            <h5>题目</h5>
                            <span>content</span>
                        </div>
                    </div>
                    <div class="right content_commen">
                        <div class="content_img">
                            <img src="../Images/banner.jpg" alt="Alternate Text" />
                        </div>
                        <div class="content_text">
                            <h5>题目</h5>
                            <span>这是一段描述</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="frist">
            <h5>
                <span>
                    <a href="#">每日科普</a>
                </span>
            </h5>
        </div>
    </div>
    <footer class="clear">
        <div>
            <p>&copy2016 niko lan. All rights reserved. </p>
        </div>
    </footer>
</body>
</html>
