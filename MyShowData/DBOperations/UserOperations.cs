using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MyShowData.Models;
using MyShowData.DB;

namespace MyShowData.DBOperations
{
    class UserOperations
    {
        DBCommunication DBcontext = null;
        public UserOperations()
        {
            DBcontext = new DBCommunication();
            }
        public bool AddNewUser(UserDetails UserInfo)
        {
            string AddUserFormat = @"insert into dbo.Users(FirstName,LastName,UserName,password)
                values('{0}', '{1}', '{2}', '{3}')";

            string AddUserCmd = string.Format(AddUserFormat, UserInfo.FirstName,
                UserInfo.LastName, UserInfo.UserName, UserInfo.password);
          int rowsaffected = DBcontext.ExecuteNonQuery(AddUserCmd);
            if(rowsaffected > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
