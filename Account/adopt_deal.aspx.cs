using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Account_adopt_deal : System.Web.UI.Page
{
    string connStr = @"data source=(localdb)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;Connect Timeout=30;";
    public string animalid;
    protected void Page_Load(object sender, EventArgs e)
    {
        Image1.ImageUrl = ResolveUrl("~/Images/title/default/title.jpeg");
        animalid = Request.QueryString["id"];
        string sql = "SELECT * FROM adoptanimal WHERE id=@id";
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand(sql, conn);
        cmd.Parameters.AddWithValue("@id", animalid);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            name.InnerText = (string)dr[1];
            age.InnerText = (string)dr[4];
            image.Src = (string)dr[3];
            content.InnerText = (string)dr[2];
        }
        conn.Close();
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string TextBoxNam = TextBoxName.Text;
        string TextBoxPhon = TextBoxPhone.Text;
        string TextBoxDres = TextBoxDress.Text;
        //是否领养
        bool statu = false;

        int userId = Convert.ToInt32(Session["id"].ToString().Trim());
        
        SqlConnection conn = new SqlConnection(connStr);
        //SQL命令
        string sql = "insert into useradopt(userid,username,userphone,userdress,animalid,statu)values(@userid,@username,@userphone,@userdress,@animalid,@statu)";
        SqlCommand cmd = new SqlCommand(sql, conn);
        cmd.Parameters.AddWithValue("@userid", userId);
        cmd.Parameters.AddWithValue("@username", TextBoxNam);
        cmd.Parameters.AddWithValue("@userphone", TextBoxPhon);
        cmd.Parameters.AddWithValue("@userdress", TextBoxDres);
        cmd.Parameters.AddWithValue("@animalid", animalid);
        cmd.Parameters.AddWithValue("@statu", statu);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Server.Transfer("adopt_show.aspx");
        
    }
}