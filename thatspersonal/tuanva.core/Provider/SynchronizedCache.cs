using System.Collections.Generic;
using System.Threading;

namespace tuanva.Core.Provider
{
    public class SynchronizedCache : ICacheProvider
    {
        private ReaderWriterLockSlim _cacheLock = new ReaderWriterLockSlim();
        private Dictionary<string, object> _innerCache = new Dictionary<string, object>();

        public object Get(string key)
        {
            _cacheLock.EnterReadLock();
            try
            {
                object a;
                if (_innerCache.TryGetValue(key, out a))
                    return a;
                else return null;
            }
            finally
            {
                _cacheLock.ExitReadLock();
            }
        }

        public void Add(string key, object value)
        {
            _cacheLock.EnterWriteLock();
            try
            {
                if (_innerCache.ContainsKey(key)) _innerCache.Remove(key);
                _innerCache.Add(key, value);
            }
            finally
            {
                _cacheLock.ExitWriteLock();
            }
        }

        public void AddWithTimeOut(string key, object value, int timeout)
        {
            if (!_cacheLock.TryEnterWriteLock(timeout * 1000))
            {
                return; //faile
            }
            try
            {
                if (_innerCache.ContainsKey(key))
                    _innerCache.Remove(key);
                _innerCache.Add(key, value);
            }
            finally
            {
                _cacheLock.ExitWriteLock();
            }
            //return true;
        }

        public void Update(string key, object value)
        {
            _cacheLock.EnterUpgradeableReadLock();
            try
            {
                object result = null;
                if (_innerCache.TryGetValue(key, out result))
                {
                    if (result == value)
                    {
                        return;// AddOrUpdateStatus.Unchanged;
                    }
                    else
                    {
                        _cacheLock.EnterWriteLock();
                        try
                        {
                            _innerCache[key] = value;
                        }
                        finally
                        {
                            _cacheLock.ExitWriteLock();
                        }
                        return;// AddOrUpdateStatus.Updated;
                    }
                }
                else
                {
                    _cacheLock.EnterWriteLock();
                    try
                    {
                        _innerCache.Add(key, value);
                    }
                    finally
                    {
                        _cacheLock.ExitWriteLock();
                    }
                    return;// AddOrUpdateStatus.Added;
                }
            }
            finally
            {
                _cacheLock.ExitUpgradeableReadLock();
            }
        }

        public void UpdateWithTimeOut(string key, object value, int timeout)
        {
            if (!_cacheLock.TryEnterUpgradeableReadLock(timeout * 1000))
            {
                return;// AddOrUpdateStatus.Unchanged;
            }
            try
            {
                object result = null;
                if (_innerCache.TryGetValue(key, out result))
                {
                    if (result == value)
                    {
                        return;// AddOrUpdateStatus.Unchanged;
                    }
                    else
                    {
                        _cacheLock.EnterWriteLock();
                        try
                        {
                            _innerCache[key] = value;
                        }
                        finally
                        {
                            _cacheLock.ExitWriteLock();
                        }
                        return;// AddOrUpdateStatus.Updated;
                    }
                }
                else
                {
                    _cacheLock.EnterWriteLock();
                    try
                    {
                        _innerCache.Add(key, value);
                    }
                    finally
                    {
                        _cacheLock.ExitWriteLock();
                    }
                    return;// AddOrUpdateStatus.Added;
                }
            }
            finally
            {
                _cacheLock.ExitUpgradeableReadLock();
            }
        }

        public void Flush()
        {
            _cacheLock.EnterWriteLock();
            try
            {
                _innerCache.Clear();
            }
            finally
            {
                _cacheLock.ExitWriteLock();
            }
        }

        public void Remove(string key)
        {
            _cacheLock.EnterWriteLock();
            try
            {
                if(_innerCache.ContainsKey(key))
                _innerCache.Remove(key);
            }
            finally
            {
                _cacheLock.ExitWriteLock();
            }
        }

        public enum AddOrUpdateStatus
        {
            Added,
            Updated,
            Unchanged
        };
    }
}
