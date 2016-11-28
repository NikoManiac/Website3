using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Account_register : System.Web.UI.Page
{
    string connStr = @"data source=(localdb)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;Connect Timeout=30;";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = TextBoxName.Text;
        string usermail = TextBoxMail.Text;
        string userpwd = TextBoxPwd.Text;
        if (username == "" || userpwd == "" || usermail == "")
        {
            Server.Transfer("register.aspx");
        }
        else {
            bool usersex;
            if (radSex.Checked)
            {
                usersex = true;
            }
            else
            {
                usersex = false;
            }

            SqlConnection conn = new SqlConnection(connStr);
            //验证用户是否存在
            string sqlselect = "select * from userlogin where usermail=@usermail";
            //若不存在，添加一条记录
            string sql = "insert into userLogin(username,usermail,userpwd,usersex)VALUES(@username,@usermail,@userpwd,@usersex)";
            SqlCommand cmd = new SqlCommand(sqlselect, conn);
            cmd.Parameters.AddWithValue("@usermail", usermail);
            cmd.Parameters.AddWithValue("@userpwd", userpwd);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@usersex", usersex);
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                conn.Close();
                Label1.Text = "该邮箱已注册";
            }
            else
            {
                dr.Close();
                cmd.CommandText = sql;
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script type=\"text/javascript\">function fun1() {alert(\"这是前台的js方法\");}</script>");
                Server.Transfer("login.aspx");
            }
            
        }
        
     }
}