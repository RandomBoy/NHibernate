using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model.Entities;

namespace Web
{
    public partial class checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            repeaters();
            float fee = 0;
            string id = Request["id"].ToString();
            List<Record> list = BLL.RecordBLL.GetRecordById(id);
            foreach (Record record in list)
            {
                fee = fee + record.Fee;
            }
            Label1.Text = fee.ToString();
        }

        private void repeaters()
        {

            string id = Request["id"].ToString();
            List<Record> record = BLL.RecordBLL.GetRecordById(id);

            PagedDataSource ps = new PagedDataSource();

            ps.DataSource = record;

            if (ps == null)
            {
                Response.Write(" <script> alert( '无此病人账单记录，请核对病人信息 ');  location.href= 'view.aspx'; </script> ");
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
            int id = Convert.ToInt32(Request["id"].ToString());
            Patient patient = new Patient();
            patient = BLL.PatientBLL.GetPatientById(id);
            patient.Isin = 0;
            BLL.PatientBLL.checkout(patient);
            Response.Write(" <script> alert( '出院手续办理完成 ');  location.href= 'view.aspx'; </script> ");
        }
    }
}