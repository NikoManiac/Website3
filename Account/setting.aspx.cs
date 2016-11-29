using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class Account_setting : System.Web.UI.Page
{
    string connStr = @"data source=(localdb)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;Connect Timeout=30;";
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string usernam = TextBox1.Text;
        int id = Convert.ToInt32(Session["id"].ToString().Trim());
        string col = "username";
        updatesql(id, col, usernam);
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Session["id"].ToString().Trim());
        string col = "usertitle";
        if (ImageMainFile.HasFile)
        {
            if (CheckFileType(ImageMainFile.FileName))
            {
                string FilePath = "/Images/mainnew/" + ImageMainFile.FileName;
                ImageMainFile.SaveAs(MapPath(FilePath));
            }
        }

        string ImagePath = "/Images/mainnew/" + ImageMainFile.FileName;
        updatesql(id, col, ImagePath);
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string userag = TextBox2.Text;
        int id = Convert.ToInt32(Session["id"].ToString().Trim());
        string col = "userage";
        updatesql(id, col, userag);

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string userwor = TextBox3.Text;
        int id = Convert.ToInt32(Session["id"].ToString().Trim());
        string col = "userwork";
        updatesql(id, col, userwor);

    }


    bool CheckFileType(string fileName)
    {
        string ext = Path.GetExtension(fileName);
        switch (ext.ToLower())
        {
            case ".gif": return true;
            case ".png": return true;
            case ".jpg": return true;
            case ".jpeg": return true;
            default: return false;
        }
    }

    public void updatesql(int id,string col,string v) {
        SqlConnection conn = new SqlConnection(connStr);
        //SQL命令
        string sql = "update userlogin set "+ col+"=@v where id=@id";
        SqlCommand cmd = new SqlCommand(sql, conn);
        cmd.Parameters.AddWithValue("@v", v);
        cmd.Parameters.AddWithValue("@id", id);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}