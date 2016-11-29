<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adopt_deal.aspx.cs" Inherits="Account_adopt_deal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>详情</title>
    <link href="/Style/All.css" rel="stylesheet" />
    <link href="/Style/AdoptDeal.css" rel="stylesheet" />
    <link href="/Style/sign.css" rel="stylesheet" />
    <link rel="stylesheet" href="/lib/font-awesome-4.7.0/css/font-awesome.min.css">
</head>
<body style="background:rgb(248,248,248);">
    <header style="height:3.5em;">
        <div class="sign">
            <asp:Image ID="Image1" CssClass="user_tilte" runat="server" />
            <div class="user_menu">
                <ul>
                    <li>兰一星</li>
                    <li><a href="#">个人信息</a></li>
                    <li><a href="#">设置</a></li>
                    <li><a href="#">退出</a></li>
                </ul>
            </div>
        </div>
        <div class="banner">
            <nav>
                <ul>   
                    <li>
                        <h5>动物</h5>
                    </li>
                    <li><a href="/Account/main.aspx">动物</a></li>
                    <li><a href="/Account/adopt.aspx">领养</a></li>
                    <li><a href="/Account/collect.aspx">募捐</a></li>
                    <li><a href="/Account/newst.aspx">资讯</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <div class="adopt_deal_main">
        <div class="adopt_deal_an">
            <div>
                <img runat="server" id="image" alt="Alternate Text" />

            </div>
            <div class="adopt_deal_d">
                <div><span>名字：</span><span runat="server" id ="name" style="font-family:FangSong;"></span></div>
                <div><span>年龄：</span><span runat="server" id ="age" style="font-family:FangSong;"></span></div>
                <div>
                    <span>介绍：</span><span runat="server" id ="content" style="font-family:FangSong;"></span>
                </div>
            </div>
        </div>
        <div style="clear:both"></div>
        <div class="adopt_deal_form">
            <h2>填写你的基本信息</h2>
            <hr />
            <form id="form1" runat="server">
                <div class="adopt_f">
                    <asp:Label ID="Label1" runat="server" Text="真实姓名"></asp:Label>
                    <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>

                    <asp:Label ID="Label2" runat="server" Text="手机号"></asp:Label>
                    <asp:TextBox ID="TextBoxPhone" runat="server"></asp:TextBox>

                    <asp:Label ID="Label4" runat="server" Text="地址"></asp:Label>
                    <asp:TextBox ID="TextBoxDress" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />

                </div>
            </form>
        </div>
    </div>

</body>
</html>
