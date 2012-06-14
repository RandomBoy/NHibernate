using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model.Entities;

namespace Web
{
    public partial class checkin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = this.Name.Text;
            string contact = this.Contact.Text;
            int age = Convert.ToInt32(this.Age.Text.ToString());
            Patient patient = new Patient();
            patient.Name = name;
            patient.Contact = contact;
            patient.Age = age;
            patient.Isin = 1;
            patient.Id = 10;
            if (BLL.PatientBLL.Checkin(patient) == true)
            {
                Response.Write(" <script> alert('入院手续办理成功！');location.href= 'view.aspx '; </script> ");
            }
            else
            {
                Response.Write(" <script> alert('入院手续办理失败！');history.back(); </script> ");
            }
        }
    }
}