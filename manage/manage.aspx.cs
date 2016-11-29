using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class manage_manage : System.Web.UI.Page
{
    string connStr = @"data source=(localdb)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;Connect Timeout=30;";
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

   //验证是否为图片
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
 
    protected void Button1_Click(object sender, EventArgs e)
    {
        string TextMainNew = TextMainNews.Text;
        string TextMainCont = TextMainContent.Text;
        //开始验证上传图片
        if (ImageMainFile.HasFile) {
            if (CheckFileType(ImageMainFile.FileName)) {
                string FilePath = "/Images/mainnew/" + ImageMainFile.FileName;
                ImageMainFile.SaveAs(MapPath(FilePath));
            }
        }

        string ImagePath = "/Images/mainnew/"+ImageMainFile.FileName;
        //开始连接数据库
        SqlConnection conn = new SqlConnection(connStr);
        //SQL命令
        string insertMess = "insert into mainnews(m_newsname,m_newscontent,m_newsimagepath)values(@m_newsname,@m_newscontent,@m_newsimagepath)";
        SqlCommand cmd = new SqlCommand(insertMess,conn);
        cmd.Parameters.AddWithValue("@m_newsname", TextMainNew);
        cmd.Parameters.AddWithValue("@m_newscontent", TextMainCont);
        cmd.Parameters.AddWithValue("@m_newsimagepath", ImagePath);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    //bool UpImages(string fileName, EventArgs e)
    //{
    //    if (e.HasFile)
    //    {
    //        if (CheckFileType(ImageMainFile.FileName))
    //        {
    //            string FilePath = "/Images/"+fileName+"/";
    //            ImageMainFile.SaveAs(MapPath(FilePath));
    //        }
    //    }
    //}


    //主页——动物的管理--------------------------------------------------------------------------------------------
    protected void Button2_Click(object sender, EventArgs e)
    {
        string TextMainAnimalNam = TextMainAnimalName.Text;
        string TextMainAnimalCon = TextMainAnimalCont.Text;
        //开始验证上传图片
        if (TextMainAnimalImage.HasFile)
        {
            if (CheckFileType(TextMainAnimalImage.FileName))
            {
                string FilePath = "/Images/mainanimal/" + TextMainAnimalImage.FileName;
                TextMainAnimalImage.SaveAs(MapPath(FilePath));
            }
        }

        string MainAnimalImage = "/Images/mainanimal/" + TextMainAnimalImage.FileName;
        //开始连接数据库
        SqlConnection conn = new SqlConnection(connStr);
        //SQL命令
        string insertMess = "insert into mainanimal(m_animalname,m_animalcontent,m_animalimagepath)values(@m_animalname,@m_animalcontent,@m_animalimagepath)";
        SqlCommand cmd = new SqlCommand(insertMess, conn);
        cmd.Parameters.AddWithValue("@m_animalname", TextMainAnimalNam);
        cmd.Parameters.AddWithValue("@m_animalcontent", TextMainAnimalCon);
        cmd.Parameters.AddWithValue("@m_animalimagepath", MainAnimalImage);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    //领养——动物的管理-------------------------------------------------------------------------------------------------
    protected void Button3_Click(object sender, EventArgs e)
    {
        string TextAdoptAnimalNam = TextAdoptAnimalName.Text;
        string TextAdoptAnimalClas = TextAdoptAnimalClass.Text;
        string TextAdoptAnimalAg = TextAdoptAnimalAge.Text;
        string TextAdoptAnimalConten = TextAdoptAnimalContent.Text;
        //开始验证上传图片
        if (TextAdoptAnimalImage.HasFile)
        {
            if (CheckFileType(TextAdoptAnimalImage.FileName))
            {
                string FilePath = "/Images/adoptanimal/" + TextAdoptAnimalImage.FileName;
                TextAdoptAnimalImage.SaveAs(MapPath(FilePath));
            }
        }

        string TextAdoptAnimalImagePath = "/Images/adoptanimal/" + TextAdoptAnimalImage.FileName;
        //开始连接数据库
        SqlConnection conn = new SqlConnection(connStr);
        //SQL命令
        string insertMess = "insert into adoptanimal(m_adoptname,m_adoptcontent,m_adoptimagepath,m_adoptage,m_adoptcontent)values(@m_adoptname,@m_adoptcontent,@m_adoptimagepath,@m_adoptage,@m_adoptcontent)";
        SqlCommand cmd = new SqlCommand(insertMess, conn);
        cmd.Parameters.AddWithValue("@m_adoptname", TextAdoptAnimalNam);
        cmd.Parameters.AddWithValue("@m_adoptcontent", TextAdoptAnimalClas);
        cmd.Parameters.AddWithValue("@m_adoptimagepath", TextAdoptAnimalImagePath);
        cmd.Parameters.AddWithValue("@m_adoptage", TextAdoptAnimalAg);
        cmd.Parameters.AddWithValue("m_adoptcontent", TextAdoptAnimalConten);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    //募捐-组织的管理-------------------------------------------------------------------------------------------------
    protected void Button4_Click(object sender, EventArgs e)
    {
        string TextCollectNam = TextCollectName.Text;
        string TextCollectCont = TextCollectConte.Text;
        //开始验证上传图片
        if (TextCollectImage.HasFile)
        {
            if (CheckFileType(TextCollectImage.FileName))
            {
                string FilePath = "/Images/collecttitle/" + TextCollectImage.FileName;
                TextCollectImage.SaveAs(MapPath(FilePath));
            }
        }

        string TextCollectImagePath = "/Images/collecttitle/" + TextCollectImage.FileName;
        //开始连接数据库
        SqlConnection conn = new SqlConnection(connStr);
        //SQL命令
        string insertMess = "insert into collect(collectname,collectcontent,collecttitle)values(@collectname,@collectcontent,@collecttitle)";
        SqlCommand cmd = new SqlCommand(insertMess, conn);
        cmd.Parameters.AddWithValue("@collectname", TextCollectNam);
        cmd.Parameters.AddWithValue("@collectcontent", TextCollectCont);
        cmd.Parameters.AddWithValue("@collecttitle", TextCollectImagePath);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    //资讯-新闻的管理-------------------------------------------------------------------------------------------------
    protected void Button5_Click(object sender, EventArgs e)
    {
        string TextNewsNam = TextNewsName.Text;
        string TextNewsConten = TextNewsContent.Text;
        //开始验证上传图片
        if (TextNewsImage.HasFile)
        {
            if (CheckFileType(TextNewsImage.FileName))
            {
                string FilePath = "/Images/news/" + TextNewsImage.FileName;
                TextNewsImage.SaveAs(MapPath(FilePath));
            }
        }

        string TextNewsImagePath = "/Images/news/" + TextNewsImage.FileName;
        //开始连接数据库
        SqlConnection conn = new SqlConnection(connStr);
        //SQL命令
        string insertMess = "insert into news(newsname,newscontent,newsimagepath)values(@newsname,@newscontent,@newsimagepath)";
        SqlCommand cmd = new SqlCommand(insertMess, conn);
        cmd.Parameters.AddWithValue("@newsname", TextNewsNam);
        cmd.Parameters.AddWithValue("@newscontent", TextNewsConten);
        cmd.Parameters.AddWithValue("@newsimagepath", TextNewsImagePath);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    protected void Button6_Click(object sender, EventArgs e)
    {

    }
}