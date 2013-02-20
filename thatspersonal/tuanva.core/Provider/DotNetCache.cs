using System;
using System.Web;
using System.Web.Caching;
using tuanva.Core.Provider;

namespace SunLaw.Core.Provider
{
    internal class DotNetCache : ICacheProvider
    {
        private static Cache _cache;
        private static Cache Instance
        {
            get { return _cache ?? (_cache = new Cache()); }
        }

        public object Get(string key)
        {
            return Instance.Get(key);
        }

        public void Add(string key, object value)
        {
           Instance.Insert(key,value);
        }

        public void AddWithTimeOut(string key, object value, int timeout)
        {
            Instance.Insert(key,value,null,DateTime.Now.AddMinutes(timeout),new TimeSpan(0,10,0));
        }

        public void Update(string key, object value)
        {
            Instance.Remove(key);
            Instance.Insert(key, value);
        }

        public void UpdateWithTimeOut(string key, object value, int timeout)
        {
            Instance.Remove(key);
            AddWithTimeOut(key,value,timeout);
        }

        public void Remove(string key)
        {
            Instance.Remove(key);
        }

        public void Flush()
        {
            var t = Instance.GetEnumerator();
            while (t.MoveNext())
            {
                Instance.Remove(t.Key.ToString());
            }
        }
    }
}
