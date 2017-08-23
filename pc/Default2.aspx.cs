using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            //默认显示第一页，不过在GridView中第一页的页索引是0
            //注意：在C#中集合里的索引也都是以0开始
            BindGridView(0);
        }
    }
    private void BindGridView(int pageIndex)
    {

        if (Request.QueryString["id"] != "")
        {//这里与老师的buyiyang
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["newConnectionString"].ToString();
            connection.Open();

            string strsql = "select * from book where id =" + Request.QueryString["id"];
            SqlCommand command = new SqlCommand(strsql, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable data = new DataTable();
            adapter.Fill(data);


            gvUserList.DataSource = data;
            gvUserList.PageIndex = pageIndex;//设置当前显示第几页
            gvUserList.DataBind();

            SqlDataAdapter da = new SqlDataAdapter(strsql, connection);
            DataSet ds = new DataSet();
            int count = da.Fill(ds, "table");

            if (count > 0)
            {
                Label1.Text = ds.Tables["table"].Rows[0]["name"].ToString();
                Label2.Text = ds.Tables["table"].Rows[0]["author"].ToString();
                Label3.Text = ds.Tables["table"].Rows[0]["kind"].ToString();
                Label4.Text = ds.Tables["table"].Rows[0]["statu"].ToString();
                Label5.Text = ds.Tables["table"].Rows[0]["hot"].ToString();
                Label6.Text = ds.Tables["table"].Rows[0]["number"].ToString();
                Label7.Text = ds.Tables["table"].Rows[0]["imformation"].ToString();
            }
        }
        else
        {
            Response.Redirect("Default.aspx");
        }




    }
    protected void gvUserList_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        //指定新页面，重新绑定数据
        BindGridView(e.NewPageIndex);
    }
}