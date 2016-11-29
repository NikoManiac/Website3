using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Account_news_detail2 : System.Web.UI.Page
{
    string connStr = @"data source=(localdb)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;Connect Timeout=30;";
    protected void Page_Load(object sender, EventArgs e)
    {
        Image1.ImageUrl = ResolveUrl("~/Images/title/default/title.jpeg");
        string id = Request.QueryString["id"];
        string sql = "SELECT * FROM news WHERE id=@id";
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand(sql, conn);
        cmd.Parameters.AddWithValue("@id", id);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            title.InnerText = (string)dr[1];
            time.InnerText = dr[4].ToString();
            content.InnerText = (string)dr[2];
            img.Src = (string)dr[3];
        }
        conn.Close();
    }
}