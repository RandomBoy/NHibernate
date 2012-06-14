using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model.Entities;

namespace Web
{
    public partial class record : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            repeaters();
        }

        private void repeaters()
        {
            string id = Request["id"].ToString();

            List<Record> record = BLL.RecordBLL.GetRecordById(id);

            PagedDataSource ps = new PagedDataSource();

            ps.DataSource = record;

            if (ps == null)
            {
                Response.Write(" <script> alert( '该讨论室暂无内容！ ');  location.href= 'Post.aspx?id=0 '; </script> ");
            }

            ps.AllowPaging = true;
            ps.PageSize = 5;

            int CurPage;
            if (Request.QueryString["Page"] != null)
                CurPage = Convert.ToInt32(Request.QueryString["Page"]);
            else
                CurPage = 1;

            ps.CurrentPageIndex = CurPage - 1;
            lblCurrentPage.Text = "当前页：" + CurPage.ToString();

            if (!ps.IsFirstPage)
                lnkPrev.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + Convert.ToString(CurPage - 1);

            if (!ps.IsLastPage)
                lnkNext.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + Convert.ToString(CurPage + 1);
            Repeater1.DataSource = ps;
            Repeater1.DataBind();
        }
    }
}