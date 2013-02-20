//using System;
//using Enyim.Caching;
//using Enyim.Caching.Memcached;

//namespace tuanva.Core.Provider
//{
//    public class MemcacheProvider : ICacheProvider
//    {
//        private static MemcachedClient _instant;
//        public static MemcachedClient Instant
//        {
//            get { return _instant ?? (_instant = new MemcachedClient()); }
//        }

//        public object Get(string key)
//        {
//            return Instant.Get(key);
//        }

//        public void Add(string key, object value)
//        {
//           Instant.Store(StoreMode.Add, key, value);
//        }

//        public void AddWithTimeOut(string key, object value, int timeout)
//        {
//            Instant.Store(StoreMode.Add, key, value, DateTime.Now.AddMinutes(timeout));
//        }

//        public void Update(string key, object value)
//        {
//            Instant.Store(StoreMode.Set, key, value);
//        }

//        public void UpdateWithTimeOut(string key, object value, int timeout)
//        {
//            Instant.Store(StoreMode.Set, key, value, DateTime.Now.AddMinutes(timeout));
//        }

//        public void Remove(string key)
//        {
//            Instant.Remove(key);
//        }
//    }
//}
