using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model.Entities
{
    public class User
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
        string pass;

        public virtual string Pass
        {
            get { return pass; }
            set { pass = value; }
        }
        string role;

        public virtual string Role
        {
            get { return role; }
            set { role = value; }
        }
        
    }
}
