using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model.Entities
{
    public class UserInfo
    {
        public virtual int UserInfoID { get; set; }
        public virtual string UserName { get; set; }
        public virtual string Email { get; set; }

    }
}
