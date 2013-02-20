using System;
using System.IO;
using System.Text;
namespace dongphucdangcap.com.admin
{
    public partial class edit_template : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                
               
            }
        }

        protected void WriteStream(string filename)
        {
            var stream = new StreamWriter(Server.MapPath(filename));
            stream.Write(txtContent.Text);
            stream.Flush();
            stream.Close();
            stream.Dispose();
        }

        protected void btnAc_Click(object sender, EventArgs e)
        {
            switch (drpKhuvuc.SelectedValue)
            {
                case "1":
                    WriteStream("~/html/yahoosupport.htm");
                    break;

                case "2":
                    WriteStream("~/html/listctv.htm");
                    break;
                case "3":
                    WriteStream("~/html/product.htm");
                    break;
                case "4":
                    WriteStream("~/html/listprice.htm");
                    break;
                case "5":
                    WriteStream("~/html/consult.htm");
                    break;
                case "6":
                    WriteStream("~/html/career.htm");
                    break;
                case "7": //tin tức
                    WriteStream("~/html/news.htm");
                    break;
                case "9": //product sub
                    WriteStream("~/html/subproduct.htm");
                    break;
                case "10": //list-pric
                    WriteStream("~/html/sublistprice.htm");
                    break;
                case "11": //consult
                    WriteStream("~/html/subconsult.htm");
                    break;
                case "13": //news
                    WriteStream("~/html/subnews.htm");
                    break;
                case "12": //career
                    WriteStream("~/html/subcareer.htm");
                    break;
                case "14": //about
                    WriteStream("~/html/subabout.htm");
                    break;
                case "15": //about
                    WriteStream("~/html/linkproduct.htm");
                    break;
                case "16": //about
                    WriteStream("~/html/about.htm");
                    break;
            }
        }

        protected void drpKhuvuc_SelectedIndexChanged(object sender, EventArgs e)
        {
            const string folder = "~/html/";
            var check = int.Parse(drpKhuvuc.SelectedValue);
            switch (check)
            {
                case 1:
                    txtContent.Text = LoadContent(folder + "yahoosupport.htm");
                    break;
                case 2:
                    txtContent.Text = LoadContent(folder+"listctv.htm");
                    break;
                case 3:
                    txtContent.Text = LoadContent(folder + "product.htm");
                    break;
                case 4:
                    txtContent.Text = LoadContent(folder + "listprice.htm");
                    break;
                case 5:
                    txtContent.Text = LoadContent(folder + "consult.htm");
                    break;
                case 6:
                    txtContent.Text = LoadContent(folder + "career.htm");
                    break;
                case 7:
                    txtContent.Text = LoadContent(folder + "news.htm");
                    break; 
                case 9: //product sub
                    txtContent.Text = LoadContent("~/html/subproduct.htm");
                    break;
                case 10: //list-pric
                    txtContent.Text = LoadContent("~/html/sublistprice.htm");
                    break;
                case 11: //consult
                    txtContent.Text = LoadContent("~/html/subconsult.htm");
                    break;
                case 13: //news
                    txtContent.Text = LoadContent("~/html/subnews.htm");
                    break;
                case 12: //career
                    txtContent.Text = LoadContent("~/html/subcareer.htm");
                    break;
                case 14: //about
                    txtContent.Text = LoadContent("~/html/subabout.htm");
                    break; 
                case 15: //about
                    txtContent.Text = LoadContent("~/html/linkproduct.htm");
                    break;
                case 16: //about
                    txtContent.Text = LoadContent("~/html/about.htm");
                    break;
                default:
                    txtContent.Text = string.Empty;
                    break;
            }
            
        }

        protected string LoadContent(string path)
        {
            var streamReader = new StreamReader(Server.MapPath(path));
            var str = streamReader.ReadToEnd();
            streamReader.Close();
            streamReader.Dispose();
            return str;
        }
    }
}
