using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model.Entities;

namespace Web
{
    public partial class view : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            repeaters();
        }

        private void repeaters()
        {
            

            List<Patient> patient = BLL.PatientBLL.GetAllPatient();

            PagedDataSource ps = new PagedDataSource();

            ps.DataSource = patient;

            if (ps == null)
            {
                Response.Write(" <script> alert( '该讨论室暂无内容！ ');  location.href= 'Post.aspx?id=0 '; </script> ");
            }

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

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = this.TextBox1.Text;
            List<Patient> patient = BLL.PatientBLL.GetPatientByName(name);
            Repeater1.DataSource = patient;
            Repeater1.DataBind();
        }
    }
}