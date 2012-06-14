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
    public class UserInfoBLL
    {
        private string path = HttpContext.Current.Server.MapPath("~/hibernate.cfg.xml");

        public bool Insert(UserInfo userInfo)
        {
            Configuration cfg = new Configuration().Configure(path);

            ISession session = cfg.BuildSessionFactory().OpenSession();
            ITransaction transaction = session.BeginTransaction();

            try
            {
                session.Save(userInfo);
                transaction.Commit();
                return true;
            }
            catch (Exception e)
            {
                transaction.Rollback();
                return false;
            }
            finally
            {
                session.Close();
            }
        }

        public IList<UserInfo> GetUsers()
        {
            Configuration cfg = new Configuration().Configure(path);
            ISession session = cfg.BuildSessionFactory().OpenSession();

            //使用HQL
            IList<UserInfo> list = session.CreateQuery(" from UserInfo")
                .List<UserInfo>();
            return list;
        }

        public bool Update(UserInfo userInfo)
        {
            Configuration cfg = new Configuration().Configure(path);

            ISession session = cfg.BuildSessionFactory().OpenSession();
            ITransaction transaction = session.BeginTransaction();
            try
            {
                session.Update(userInfo);
                transaction.Commit();
                return true;
            }
            catch (Exception e)
            {
                transaction.Rollback();
                return false;
            }
            finally
            {
                session.Close();
            }
        }

        public bool Delete(UserInfo userInfo)
        {
            Configuration cfg = new Configuration().Configure(path);

            ISession session = cfg.BuildSessionFactory().OpenSession();
            ITransaction transaction = session.BeginTransaction();
            try
            {
                session.Delete(userInfo);
                transaction.Commit();
                return true;
            }
            catch (Exception e)
            {
                transaction.Rollback();
                return false;
            }
            finally
            {
                session.Close();
            }
        }

        public UserInfo GetUserInfoById(int userId)
        {
            Configuration cfg = new Configuration().Configure(path);

            ISession session = cfg.BuildSessionFactory().OpenSession();
            return session.Get<UserInfo>(userId);
        }
    }
}
