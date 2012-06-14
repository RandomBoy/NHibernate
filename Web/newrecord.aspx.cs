using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model.Entities;
using System;

namespace Web
{
    public partial class newrecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string role = Session["role"].ToString();
            if ((role != "医生") && (role != "管理员"))
            {
                Response.Write(" <script> alert( '您无此权限，请联系管理员 ');  location.href= 'view.aspx'; </script> ");
            }

            Label1.Text = Request["name"].ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Record record = new Record();
            record.Item = this.TextBox1.Text.ToString();
            record.Content = this.editor_id.Value;
            record.Doctor = Session["name"].ToString();
            record.Patient =  Request["id"].ToString();
            record.Time = DateTime.Now.ToString();
            record.Fee = float.Parse(this.TextBox2.Text);
            if (BLL.RecordBLL.add(record) == true)
            {

                Response.Write(" <script> alert( '添加成功！ ');history.back(); </script> ");

            }
            else
            {
                Response.Write(" <script> alert( '添加失败！ ');history.back(); </script> ");
            }
        }
    }
}