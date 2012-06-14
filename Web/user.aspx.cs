using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model.Entities;

namespace Web
{
    public partial class user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string role = Session["role"].ToString();
            if (role != "管理员")
            {
                Response.Write(" <script> alert( '您无此权限，请联系管理员 ');  location.href= 'view.aspx'; </script> ");
            }

            repeaters();
        }

        private void repeaters()
        {


            List<User> user = BLL.UserBLL.GetAllUser();

            PagedDataSource ps = new PagedDataSource();

            ps.DataSource = user;

            

            ps.AllowPaging = true;
            ps.PageSize = 10;

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