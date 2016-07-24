using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using News4U.Models;

namespace News4U.Logic
{
    public class AddNewsArticles
    {
        public bool AddNewsArticle(string NewsArticleTitle, string NewsArticleMainBody,string NewsArticleDatePublished ,string NewsArticleImagePath)
        {
            try
            {
                var myNewsArticle = new NewsArticle();
                myNewsArticle.NewsArticleTitle = NewsArticleTitle;
                myNewsArticle.NewsArticleMainBody = NewsArticleMainBody;
                myNewsArticle.NewsArticleDatePublished = NewsArticleDatePublished;
                myNewsArticle.NewsArticleImagePath = NewsArticleImagePath;

                using (NewsArticleContext _db = new NewsArticleContext())
                {
                    // Add NewsArticle to DB.
                    _db.NewsArticle.Add(myNewsArticle);
                    _db.SaveChanges();
                }
                // Success.
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}