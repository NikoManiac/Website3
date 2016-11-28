<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="Account_register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>流浪-注册</title>
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
        <h4 style="margin-top:2em;">
            <span>                
                <a href="Account/register.aspx">注<b>·</b>册</a>
            </span>
        </h4>
        <form id="form1" runat="server">
            <div class="loginDiv">
                <div class="formS">
                    <span class="form_span"><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
                    <asp:TextBox ID="TextBoxName" placeholder="请输入姓名" runat="server" CssClass="inputForm"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" Text="" CssClass="labelS"></asp:Label>
                </div>
                <!-- 输入邮箱 -->
                <div class="formS">
                    <span class="form_span"><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
                    <asp:TextBox ID="TextBoxMail" placeholder="请输入邮箱" runat="server" CssClass="inputForm"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                           ErrorMessage="邮箱格式不正确" ControlToValidate="TextBoxMail"
                           ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                    </asp:RegularExpressionValidator>
                    <asp:Label ID="LabelShow" runat="server" Text="" CssClass="labelS"></asp:Label>
                </div>
                <!-- 输入性别 -->
                <div class="formS radioS">
                    <asp:RadioButton ID="radSex" runat="server"  Text="男" Checked="true" GroupName="sex"/>
                    <asp:RadioButton ID="radSex2" runat="server" Text="女" GroupName="sex" />
                </div>
               
                <!-- 输入密码 -->
                <div class="formS">
                    <span class="form_span"><i class="fa fa-unlock-alt" aria-hidden="true"></i></span>
                    <asp:TextBox ID="TextBoxPwd" placeholder="请输入密码" runat="server" CssClass="inputForm"></asp:TextBox>
                </div>
                
                <div class="formS">
                    <asp:Button ID="Button1" runat="server" Height="39px" OnClick="Button1_Click" CssClass="buttonForm" Text="注册" />
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
