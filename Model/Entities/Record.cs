using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model.Entities
{
    public class Record
    {
        int id;

        public virtual int Id
        {
            get { return id; }
            set { id = value; }
        }
        string doctor;

        public virtual string Doctor
        {
            get { return doctor; }
            set { doctor = value; }
        }
        string patient;

        public virtual string Patient
        {
            get { return patient; }
            set { patient = value; }
        }
        string item;

        public virtual string Item
        {
            get { return item; }
            set { item = value; }
        }
        string content;

        public virtual string Content
        {
            get { return content; }
            set { content = value; }
        }
        float fee;

        public virtual float Fee
        {
            get { return fee; }
            set { fee = value; }
        }

        string time;

        public virtual string Time
        {
            get { return time; }
            set { time = value; }
        }
    }
}
