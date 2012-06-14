using System;
using System.Collections.Generic;
using System.Text;
using Model.Entities;
using NHibernate;
using NHibernate.Cfg;
using NHibernate.Criterion;
using System.Collections;

namespace BLL
{
    public class UserBLL
    {
        public static bool add(User user)
        {
            ISession session = BLL.Helper.GetSession();

            try
            {
                session.Save(user);
                session.Flush();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
            finally
            {
                session.Close();
            }
        }

        public static User Login(Model.Entities.User user)
        {
            User us = new User();
            ISession session = Helper.GetSession();
            ICriteria ic = session.CreateCriteria(typeof(User));
            ic.Add(Expression.And(Expression.Eq("Name", user.Name), Expression.Eq("Pass", user.Pass)));
            List<User> list = (List<User>)ic.List<User>();
            session.Close();
            if (list.Count > 0)
            {
                us.Id = list[0].Id;
                us.Name = list[0].Name;
                us.Role = list[0].Role;
                return us;
            }
            else
            {
                us.Id = 0;
                return us;
            }
        }

        public static List<User> GetAllUser()
        {
            ISession session = Helper.GetSession();
            ICriteria ic = session.CreateCriteria(typeof(User));
            List<User> list = (List<User>)ic.List<User>();
            session.Close();
            return list;
        }

        

        
    }
}
