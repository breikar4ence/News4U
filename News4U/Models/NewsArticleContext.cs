using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace News4U.Models
{
    public class NewsArticleContext : DbContext
    {
        public NewsArticleContext() : base("News4U")
        {
        }
        public DbSet<NewsArticle> NewsArticle { get; set; }

    }

}