<%@ Page Language="C#" AutoEventWireup="true" CodeFile="setting.aspx.cs" Inherits="Account_setting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>设置</title>
    <link href="../Style/All.css" rel="stylesheet" />
    <link href="../Style/setting.css" rel="stylesheet" />
    <link href="/Style/sign.css" rel="stylesheet" />
    <link rel="stylesheet" href="/lib/font-awesome-4.7.0/css/font-awesome.min.css">
</head>
<body style="background:rgb(240,240,240)">
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
                    <li><a href="#">动物</a></li>
                    <li><a href="#">领养</a></li>
                    <li><a href="#">募捐</a></li>
                    <li><a href="#">照片</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <div class="setting_main">
        <form id="form1" runat="server">
            <div class="setting_left">
                <!--可以同步滚动-->
                <ul >
                    <li>个人资料</li>
                    <li>
                        <ul class="setting_content">
                            <li>
                                <span>登录名：</span>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                <asp:Button ID="Button1" runat="server" Text="修改" OnClick="Button1_Click" />
                            </li>
                            <li>
                                <span>头像：</span>
                                <asp:FileUpload ID="ImageMainFile" runat="server" />
                                <asp:Button ID="Button2" runat="server" Text="修改" OnClick="Button1_Click" />
                            </li>
                            <li>
                                <span>年龄：</span>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                <asp:Button ID="Button4" runat="server" Text="修改" OnClick="Button1_Click" />
                            </li>
                            <li>
                                <span>职业：</span>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                <asp:Button ID="Button5" runat="server" Text="修改" OnClick="Button1_Click" />
                            </li>
                            <li>
                                
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </form>
    </div>

</body>
</html>
