using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model.Entities;
using BLL;

namespace UI
{
    public partial class index : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string code = Code.Text;

            //判断用户输入的验证码是否正确
            if (Request.Cookies["CheckCode"].Value == code)
            {
                User us = new User();
                us.Name = Name.Text.ToString().Trim();
                us.Pass = Pass.Text.ToString().Trim();
                us = UserBLL.Login(us);
                if (us.Id == 0)
                {
                    Response.Write(" <script> alert( '用户名密码错误！ ');history.back(); </script> ");
                    
                    
                }
                else
                {
                    Code.Text = "";
                    Session["name"] = Name.Text;
                    Session["role"] = us.Role;
                    Session["id"] = us.Id;
                    Response.Write(" <script> alert( '登陆成功！"+Session["role"].ToString()+":"+Session["name"].ToString()+"');  location.href= 'main.aspx '; </script> ");
                    
                }
            }
            else
            {
                Response.Write(" <script> alert( '验证码错误！ ');history.back(); </script> ");
            }
        }
    }
}