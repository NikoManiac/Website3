using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Account_login : System.Web.UI.Page
{
    string connStr = @"data source=(localdb)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;Connect Timeout=30;";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //传递用户填的参数
        string usermail = TextBoxMail.Text;
        string userpwd = TextBoxPwd.Text;

        SqlConnection conn = new SqlConnection(connStr);

        string sqlSelect = "SELECT * FROM userlogin WHERE usermail=@usermail and userpwd=@userpwd";



        SqlCommand cmd = new SqlCommand(sqlSelect,conn);
        cmd.Parameters.AddWithValue("@usermail", usermail);
        cmd.Parameters.AddWithValue("@userpwd", userpwd);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["id"] = dr[0];
            Session["username"] = dr[1];
            Session["title"] = dr[6];
            Server.Transfer("main.aspx");
        }
        else {
            LabelShow.Text = "用户名或者密码错误";
        }
        conn.Close();
    }
}