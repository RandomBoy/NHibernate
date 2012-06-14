using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using NHibernate;
using NHibernate.Cfg;
using Model.Entities;
using System.Web;

namespace BLL
{
    public class Helper
    {

        public static ISession GetSession()
        {
            string path = HttpContext.Current.Server.MapPath("~/hibernate.cfg.xml");
            Configuration cfg = new Configuration().Configure(path);
            ISession session = cfg.BuildSessionFactory().OpenSession();
            return session;
        }
    }
}
