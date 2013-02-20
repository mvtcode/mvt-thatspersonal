using System.Collections.Generic;
using uniform.Entity;

namespace uniform.Services
{
    public interface IUser
    {
        int Add(UserInfo info);

        UserInfo GetLogin(string username, string password);

        int Update(UserInfo info);

        UserInfo UpdateProfile(UserInfo info);

        int Delete(int id);

        UserInfo GetInfo(int id);

        List<UserInfo> GetList();

        List<UserInfo> GetList(int pageIndex, int pageSize, out int total);
    }
}