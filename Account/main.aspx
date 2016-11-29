<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="Account_main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>流浪</title>
    <link href="/Style/All.css" rel="stylesheet" />
    <link href="/Style/Main.css" rel="stylesheet" />
    <link href="/Style/sign.css" rel="stylesheet" />
    <link rel="stylesheet" href="/lib/font-awesome-4.7.0/css/font-awesome.min.css">
</head>
<body>
    <header style="height:3.5em">
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
                    <li><a href="/Account/news.aspx">社区</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <form id="form1" runat="server">
    <div class="main_con">
        <div class="frist">
            <h5>
                <span>
                    <a href="#">每日·科普</a>
                </span>
            </h5>
            <div class="content">
                <!--3科普栏目一行内，分为左右两个部分，每个部分再分为两个部分，一个图片，一个文字-->
                <div class="content_row">
                    <div class="left content_commen">
                        <asp:DataList ID="DataList2" runat="server" RepeatColumns="1" DataKeyField="id" RepeatDirection="Horizontal" OnItemCommand="DataList2_ItemCommand" Width="486px">
                            <ItemTemplate>
                                <div>
                                    <div class="info_img">
                                        <img src=<%#Eval("m_newsimagepath") %> alt="新闻图片" />
                                    </div>
                                    <div class="information">
                                        <asp:LinkButton ID="LinkButton1" CommandName="detail" runat="server"><%#Eval("m_newsname") %></asp:LinkButton>
                                    </div>
                                    <div style="clear:both"></div>
                                    
                                </div>
                                <hr />
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                    <div class="right content_commen">
                        <div class="content_img">
                            <img src="../Images/banner.jpg" alt="Alternate Text" />
                        </div>
                        <div class="content_text">
                            <h5>题目</h5>
                            <span class="content_text_span">这是一段描述</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="frist">
            <h5>
                <span>
                    <a href="#">资·讯</a>
                </span>
            </h5>
            <div class="content">
                <!--11111科普栏目一行内，分为左右两个部分，每个部分再分为两个部分，一个图片，一个文字-->
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="2">
                    <ItemTemplate>
                        <div class="content_row">
                            <div class="left content_commen">
                                <div class="content_img">
                                    <img src=<%#Eval("m_animalimagepath") %> alt="Text" />
                                </div>
                                <div class="content_text">
                                    <h5><%#Eval("m_animalname") %></h5>
                                    <p class="content_text_span"><%#Eval("m_animalcontent") %></p>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </div>
    </form>
    <footer class="clear">
        <div>
            <p>&copy2016 niko lan. All rights reserved. </p>
        </div>
    </footer>
</body>
</html>
