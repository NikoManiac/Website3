using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Account_main : System.Web.UI.Page
{
    string connStr = @"data source=(localdb)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;Connect Timeout=30;";
    protected void Page_Load(object sender, EventArgs e)
    {
        Image1.ImageUrl = ResolveUrl("~/Images/title/default/title.jpeg");
        SqlConnection conn = new SqlConnection(connStr);
        SqlDataAdapter adpter_animal = new SqlDataAdapter("select * from mainanimal", conn);
        DataSet ds = new DataSet();
        adpter_animal.Fill(ds, "dt1");
        DataList1.DataSource = ds.Tables["dt1"];
        DataList1.DataBind();
        conn.Close();

        SqlConnection conn2 = new SqlConnection(connStr);
        SqlDataAdapter adpter_news = new SqlDataAdapter("select * from mainnews", conn2);
        DataSet dsnews = new DataSet();
        adpter_news.Fill(dsnews, "dt2");
        DataList2.DataSource = dsnews.Tables["dt2"];
        DataList2.DataBind();
        conn2.Close();

        

    }

    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "detail") {
            Server.Transfer("news_detail.aspx?id="+Convert.ToInt32(DataList2.DataKeys[e.Item.ItemIndex].ToString()));
        }
        
    }

}