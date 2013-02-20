using System.Globalization;
using System.IO;
using System.Web;
using System.Web.UI.WebControls;
using tuanva.Core;

namespace Helpers
{
    public class ImageHelper
    {
        public const string Partner = "/Images/Partner";
        public const string Product = "/Images/Product";
        public static bool Upload(byte[] stream, string name2Save, string folder2Save)
        {
            var path = HttpContext.Current.Server.MapPath(folder2Save);

            if (!Directory.Exists(path)) Directory.CreateDirectory(path);
            path = Path.Combine(path, name2Save);
            if (File.Exists(path)) File.Delete(path); //If exists then delete file
            ResizeImage.ImageNoResize(stream, path, 90);
            return true;
        }
        public static bool Upload(byte[] stream, string name2Save, string folder2Save, int width, int height, long quality)
        {
            var path = HttpContext.Current.Server.MapPath(folder2Save);

            if (!Directory.Exists(path)) Directory.CreateDirectory(path);
            path = Path.Combine(path, name2Save);
            ResizeImage.ImageResize(stream, path, 90, width, height);
            return true;
        }

        public static bool ImageValidation(FileUpload file, string[] extensionArray, out string ext)
        {
            ext = string.Empty;
            if(!file.HasFile) return false;
            ext = Path.GetExtension(file.PostedFile.FileName);
            if (string.IsNullOrEmpty(ext)) return false;
            ext = ext.ToLower();
            var extR = ext.Replace(".", "");
            foreach (var ex in extensionArray)
            {
                if (extR == ex)
                {
                    return true;
                }
            }
            return false;
        }
    }
}
