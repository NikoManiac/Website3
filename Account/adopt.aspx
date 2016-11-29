<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adopt.aspx.cs" Inherits="Account_adopt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>领养</title>
    <link href="../Style/All.css" rel="stylesheet" />
    <link href="../Style/Adopt.css" rel="stylesheet" />
    <link href="/Style/sign.css" rel="stylesheet" />
    <link rel="stylesheet" href="/lib/font-awesome-4.7.0/css/font-awesome.min.css">
</head>
<body>

    <header style="height:3.5em;">
        <div class="sign">
            <asp:Image ID="Image1" CssClass="user_tilte" runat="server" />
            <div class="user_menu">
                <ul>
                    <li><span style="display:inline-block; text-align:center;width:1em;"><i class="fa fa-user-circle-o" aria-hidden="true"></i></span><span style="text-align:center;">兰一星</span></li>
                    <li><span style="display:inline-block; text-align:center;width:1em;"><i class="fa fa-address-card-o" aria-hidden="true"></i></span><span style="text-align:center;"><a href="#">个人信息</a></span></li>
                    <li style="border-bottom:solid 1px rgb(240,240,240);"><span style="display:inline-block; text-align:center;width:1em;"><i class="fa fa-cog" aria-hidden="true"></i></span><span style="text-align:center;"><a href="setting.aspx">设置</a></span></li>
                    <li><a style="display:inline-block; text-align:center;width:9em;" href="#">退出</a></li>
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
                    <li><a href="/Account/news.aspx">资讯</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <form id="form1" runat="server">
        <div class="adopt_content">
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" DataKeyField="id" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <div class="adopt_detail">
                        <img src=<%#Eval("m_adoptimagepath") %> alt="Alternate Text" />
                        <div id="adopt_detail_show">
                            <h4><%#Eval("m_adoptname") %></h4>
                            <hr />
                            <h5>品种：</h5>
                            <span><%#Eval("m_adoptClass") %></span>
                            <h5>年龄：</h5>
                            <span><%#Eval("m_adoptage") %></span>
                            <h5>介绍：</h5>
                            <span><%#Eval("m_adoptcontent") %></span>
                            <asp:LinkButton ID="LinkButton1" CommandName="detail" runat="server">去领养</asp:LinkButton>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
