<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adopt_deal.aspx.cs" Inherits="Account_adopt_deal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>详情</title>
    <link href="/Style/All.css" rel="stylesheet" />
    <link href="/Style/AdoptDeal.css" rel="stylesheet" />
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
                    <li><a href="/Account/adopt.aspx">领养</a></li>
                    <li><a href="/Account/collect.aspx">募捐</a></li>
                    <li><a href="#">社区</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <div class="adopt_deal_main">
        <div class="adopt_deal_an">
            <div>
                <img src="../Images/banner.jpg" alt="Alternate Text" />

            </div>
            <div class="adopt_deal_d">
                <div><span>名字：</span><span style="font-family:FangSong;">小花</span></div>
                <div><span>年龄：</span><span style="font-family:FangSong;">3</span></div>
                <div>
                    <span>介绍：</span><span style="font-family:FangSong;">这是一只狗的介绍，他会重复很多遍有很多的细腻寻女</span>
                </div>
            </div>
        </div>
        <div style="clear:both"></div>
        <div class="adopt_deal_form">
            <h2>填写你的基本信息</h2>
            <form id="form1" runat="server">
                <div class="adopt_f">
                    <asp:Label ID="Label1" runat="server" Text="姓名"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" Text="手机号"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:Label ID="Label3" runat="server" Text="性别"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                    <asp:Label ID="Label4" runat="server" Text="地址"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="Button" />

                </div>
            </form>
        </div>
    </div>

    <footer class="clear">
        <div>
            <p>&copy2016 niko lan. All rights reserved. </p>
        </div>
    </footer>

</body>
</html>
