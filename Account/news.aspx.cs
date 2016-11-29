using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Account_community : System.Web.UI.Page
{
    string connStr = @"data source=(localdb)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;Connect Timeout=30;";
    protected void Page_Load(object sender, EventArgs e)
    {
        Image1.ImageUrl = ResolveUrl("~/Images/title/default/title.jpeg");
        SqlConnection conn = new SqlConnection(connStr);
        SqlDataAdapter adpter_animal = new SqlDataAdapter("select * from news", conn);
        DataSet ds = new DataSet();
        adpter_animal.Fill(ds, "dt1");
        DataList1.DataSource = ds.Tables["dt1"];
        DataList1.DataBind();
        conn.Close();
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {

        if (e.CommandName == "detail")
        {
            Server.Transfer("news_detail2.aspx?id=" + Convert.ToInt32(DataList1.DataKeys[e.Item.ItemIndex].ToString()));
        }
    }
}