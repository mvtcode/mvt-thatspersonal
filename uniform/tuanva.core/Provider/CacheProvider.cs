namespace tuanva.Core.Provider
{
    public class CacheProvider
    {
        static ICacheProvider _instance;
        static ICacheProvider Instance
        {
            get { return _instance ?? (_instance = new SynchronizedCache()); }
        }

        public static object Get(string key)
        {
            return Instance.Get(key);
        }

        public static void Add(string key, object value)
        {
            Instance.Add(key, value);
        }

        public static void AddWithTimeOut(string key, object value, int timeout)
        {
            Instance.AddWithTimeOut(key, value, timeout);
        }

        public static void Update(string key, object value)
        {
            Instance.Update(key, value);
        }

        public static void UpdateWithTimeOut(string key, object value, int timeout)
        {
            Instance.UpdateWithTimeOut(key, value, timeout);
        }

        public static void Remove(string key)
        {            
            Instance.Remove(key);
        }

        public static void Flush()
        {
            Instance.Flush();
        }
    }
}