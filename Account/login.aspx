<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Account_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录—流浪之家</title>
    <link href="../Style/LoginStyle.css" rel="stylesheet" />
    <link rel="stylesheet" href="../lib/font-awesome-4.7.0/css/font-awesome.min.css">
</head>
<body>
    <header>

    </header>
    <div class="mainCon">
        <div class="titleName">
            <h1>流浪</h1>
            <h3>动物安好 赖以有你</h3>
        </div>
        <h4>
            <span>
                <a id="active" href="Default.aspx">登录</a>
                <b>·</b>
                <a href="Account/register.aspx">注册</a>
            </span>
        </h4>
        <form id="form1" runat="server">
            <div class="loginDiv">
                <!-- 输入用户名 -->
                <div class="formS">
                    <span class="form_span"><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
                    <asp:TextBox ID="TextBoxMail" runat="server" CssClass="inputForm"></asp:TextBox>
                    <asp:Label ID="LabelShow" runat="server" Text="" CssClass="labelS"></asp:Label>
                </div>
               
                <!-- 输入密码 -->
                <div class="formS">
                    <span class="form_span"><i class="fa fa-unlock-alt" aria-hidden="true"></i></span>
                    <asp:TextBox ID="TextBoxPwd" runat="server" CssClass="inputForm"></asp:TextBox>
                </div>
                
                <div class="formS">
                    <asp:Button ID="Button1" runat="server" Height="39px" OnClick="Button1_Click" CssClass="buttonForm" Text="登录" />
                </div>
             </div>
        </form>
    </div> 
    <footer></footer>
    <div onclick="window.location.href='../index.aspx'" class="collect_m_close">
        <i class="fa fa-times fa-2x" aria-hidden="true"></i>
    </div>
</body>
</html>
