using News4U.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News4U
{
    public partial class NewsArticleDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<NewsArticle> GetArticles([QueryString("NewsArticleID")] int? NewsArticleID)
        {
            var _db = new News4U.Models.NewsArticleContext();
            IQueryable<NewsArticle> query = _db.NewsArticle;
            if (NewsArticleID.HasValue && NewsArticleID > 0)
            {
                query = query.Where(p => p.NewsArticleID == NewsArticleID);
            }
            else
            {
                query = null;
            }
            return query;
        }
    }
}