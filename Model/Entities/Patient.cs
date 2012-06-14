using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model.Entities
{
    public class Patient
    {
        int id;

        public virtual int Id
        {
            get { return id; }
            set { id = value; }
        }
        string name;

        public virtual string Name
        {
            get { return name; }
            set { name = value; }
        }
        string contact;

        public virtual string Contact
        {
            get { return contact; }
            set { contact = value; }
        }
        int age;

        public virtual int Age
        {
            get { return age; }
            set { age = value; }
        }

        int isin;

        public virtual int Isin
        {
            get { return isin; }
            set { isin = value; }
        }
    }
}
