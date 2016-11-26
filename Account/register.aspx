<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="Account_register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>流浪-注册</title>
    <link href="../Style/LoginStyle.css" rel="stylesheet" />
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
                <a id="active" href="../Default.aspx">登录</a>
                <b>·</b>
                <a href="register.aspx">注册</a>
            </span>
        </h4>
        <form id="form1" runat="server">
            <div class="loginDiv">
                <!-- 输入用户名 -->
                <div class="formS">
                     <asp:Label ID="LabelName" runat="server" CssClass="labelForm" Text="账号"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="inputForm"></asp:TextBox>
                </div>
               
                <!-- 输入密码 -->
                <div class="formS">
                    <asp:Label ID="LabelPwd" runat="server" CssClass="labelForm" Text="密码"></asp:Label>
                <asp:TextBox ID="TextBox" runat="server" CssClass="inputForm"></asp:TextBox>
                </div>
                
                <div class="formS">
                    <asp:Button ID="Button1" runat="server" Height="39px" OnClick="Button1_Click" CssClass="buttonForm" Text="登录" />
                </div>
             </div>
        </form>
    </div> 
    <footer></footer>
</body>
</html>
