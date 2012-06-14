using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model.Entities;

namespace Web
{
    public partial class adduser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string role = Session["role"].ToString();
            if (role != "管理员")
            {
                Response.Write(" <script> alert( '您无此权限，请联系管理员 ');  location.href= 'view.aspx'; </script> ");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = this.Name.Text;
            string pass = this.Pass.Text;
            string role = this.DropDownList1.SelectedValue;
            User us = new User();
            us.Name = name;
            us.Pass = pass;
            us.Role = role;
            if (BLL.UserBLL.add(us) == true)
            {
                Response.Write(" <script> alert('添加成功！');</script> ");
            }
            else
            {
                Response.Write(" <script> alert('添加失败，请检验数据！');history.back(); </script> ");
            }
        }
    }
}