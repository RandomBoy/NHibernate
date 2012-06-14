using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model.Entities;
using NHibernate;
using NHibernate.Criterion;

namespace BLL
{
    public class PatientBLL
    {
        public static bool Checkin(Patient patient)
        {
            ISession session = BLL.Helper.GetSession();

            try
            {
                session.Save(patient);
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

        public static List<Patient> GetAllPatient()
        {
            ISession session = Helper.GetSession();
            ICriteria ic = session.CreateCriteria(typeof(Patient));
            int a = 1;
            ic.Add(Expression.Eq("Isin", a));
            List<Patient> list = (List<Patient>)ic.List<Patient>();
            session.Close();
            return list;
        }


        public static List<Patient> GetPatientByName(string name)
        {
            ISession session = Helper.GetSession();
            ICriteria ic = session.CreateCriteria(typeof(Patient));
            ic.Add(Expression.Eq("Name", name));
            List<Patient> list = (List<Patient>)ic.List<Patient>();
            session.Close();
            return list;
        }

        public static Patient GetPatientById(int Id)
        {

            ISession session = Helper.GetSession();
            return session.Get<Patient>(Id);
        }

        public static bool checkout(Patient patient)
        {
            ISession session = Helper.GetSession();
            ITransaction transaction = session.BeginTransaction();
            try
            {
                session.Update(patient);
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
    }
}
