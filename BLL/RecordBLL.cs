using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model.Entities;
using NHibernate;
using NHibernate.Criterion;

namespace BLL
{
    public class RecordBLL
    {
        public static bool add(Record record)
        {
            ISession session = BLL.Helper.GetSession();

            try
            {
                session.Save(record);
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

        public static List<Record> GetRecordById(string id)
        {
            ISession session = Helper.GetSession();
            ICriteria ic = session.CreateCriteria(typeof(Record));
            ic.Add(Expression.Eq("Patient", id));
            List<Record> list = (List<Record>)ic.List<Record>();
            session.Close();
            return list;
        }
    }
}
