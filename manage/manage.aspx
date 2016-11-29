<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manage.aspx.cs" Inherits="manage_manage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>后台管理界面</title>
    <link href="manage.css" rel="stylesheet" />
</head>
<body>
    <header>
        <h2> 网站后台管理平台</h2>
    </header>
    <form id="form1" runat="server">
    <div class="manage_main">
        <div class="manage_left">
            <ul>
                <li>首页新闻</li>
                <li>首页动物</li>
                <li>领养动物</li>
                <li>募捐组织</li>
                <li>资讯管理</li>
                <li>用户管理</li>
            </ul>
        </div>
        <div class="manage_right">
            <ul>
                <li>
                    <h5>首页新闻</h5>
                    <div>
                        <asp:Label ID="Label1" runat="server" Text="新闻标题"></asp:Label>
                        <asp:TextBox ID="TextMainNews" runat="server"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Text="新闻内容"></asp:Label>
                        <asp:TextBox ID="TextMainContent" runat="server"></asp:TextBox>
                        <asp:Label ID="Label3" runat="server" Text="文章图片"></asp:Label>
                        <asp:FileUpload ID="ImageMainFile" runat="server" />
                        <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />
                    </div>
                    <hr />
                </li>
                <li>
                    <h5>首页动物</h5>
                    <div>
                        <asp:Label ID="Label4" runat="server" Text="动物名称"></asp:Label>
                        <asp:TextBox ID="TextMainAnimalName" runat="server"></asp:TextBox>
                        <asp:Label ID="Label5" runat="server" Text="动物介绍"></asp:Label>
                        <asp:TextBox ID="TextMainAnimalCont" runat="server"></asp:TextBox>
                        <asp:Label ID="Label6" runat="server" Text="动物图片"></asp:Label>
                        <asp:FileUpload ID="TextMainAnimalImage" runat="server" />
                        <asp:Button ID="Button2" runat="server" Text="提交" OnClick="Button2_Click" />
                    </div>
                    <hr />
                </li>
                <li>
                    <h5>领养动物</h5>
                    <div>
                        <asp:Label ID="Label7" runat="server" Text="动物名称"></asp:Label>
                        <asp:TextBox ID="TextAdoptAnimalName" runat="server"></asp:TextBox>
                        <asp:Label ID="Label8" runat="server" Text="动物品种"></asp:Label>
                        <asp:TextBox ID="TextAdoptAnimalClass" runat="server"></asp:TextBox>
                        <asp:Label ID="Label9" runat="server" Text="动物介绍"></asp:Label>
                        <asp:TextBox ID="TextAdoptAnimalContent" runat="server"></asp:TextBox>
                        <asp:Label ID="Label20" runat="server" Text="动物年龄"></asp:Label>
                        <asp:TextBox ID="TextAdoptAnimalAge" runat="server"></asp:TextBox>
                        <asp:Label ID="Label19" runat="server" Text="动物图片"></asp:Label>
                        <asp:FileUpload ID="TextAdoptAnimalImage" runat="server" />
                        <asp:Button ID="Button3" runat="server" Text="提交" OnClick="Button3_Click" />
                    </div>
                    <hr />
                </li>
                <li>
                    <h5>募捐组织</h5>
                    <div>
                        <asp:Label ID="Label10" runat="server" Text="组织名称"></asp:Label>
                        <asp:TextBox ID="TextCollectName" runat="server"></asp:TextBox>
                        <asp:Label ID="Label11" runat="server" Text="组织介绍"></asp:Label>
                        <asp:TextBox ID="TextCollectConte" runat="server"></asp:TextBox>
                        <asp:Label ID="Label12" runat="server" Text="组织图片"></asp:Label>
                        <asp:FileUpload ID="TextCollectImage" runat="server" />
                        <asp:Button ID="Button4" runat="server" Text="提交" OnClick="Button4_Click" />
                    </div>
                    <hr />
                </li>
                <li>
                    <h5>资讯管理</h5>
                    <div>
                        <asp:Label ID="Label13" runat="server" Text="资讯标题"></asp:Label>
                        <asp:TextBox ID="TextNewsName" runat="server"></asp:TextBox>
                        <asp:Label ID="Label14" runat="server" Text="资讯内容"></asp:Label>
                        <asp:TextBox ID="TextNewsContent" runat="server"></asp:TextBox>
                        <asp:Label ID="Label15" runat="server" Text="资讯图片"></asp:Label>
                        <asp:FileUpload ID="TextNewsImage" runat="server" />
                        <asp:Button ID="Button5" runat="server" Text="提交" OnClick="Button5_Click" />
                    </div>
                    <hr />
                </li>
                <li>
                    <h5>用户管理</h5>
                    <div>
                        <asp:Label ID="Label16" runat="server" Text="新闻标题"></asp:Label>
                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                        <asp:Label ID="Label17" runat="server" Text="新闻标题"></asp:Label>
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                        <asp:Label ID="Label18" runat="server" Text="文章图片"></asp:Label>
                        <asp:FileUpload ID="FileUpload6" runat="server" />
                        <asp:Button ID="Button6" runat="server" Text="提交" OnClick="Button6_Click" />
                    </div>
                    <hr />
                </li>
            </ul>
        </div>
    </div>
    </form>
</body>
</html>
