using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Account_adopt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = @"data source=(localdb)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;Connect Timeout=30;";
        Image1.ImageUrl = ResolveUrl("~/Images/title/default/title.jpeg");
        SqlConnection conn = new SqlConnection(connStr);
        SqlDataAdapter adpter = new SqlDataAdapter("select * from adoptanimal", conn);
        DataSet ds = new DataSet();
        adpter.Fill(ds, "dt1");
        DataList1.DataSource = ds.Tables["dt1"];
        DataList1.DataBind();
        conn.Close();
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "detail")
        {
            Server.Transfer("adopt_deal.aspx?id=" + Convert.ToInt32(DataList1.DataKeys[e.Item.ItemIndex].ToString()));
        }
    }
}