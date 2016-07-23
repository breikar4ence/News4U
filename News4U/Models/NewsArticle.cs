using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace News4U.Models
{
    public class NewsArticle
    {
        [ScaffoldColumn(false)]
        public int NewsArticleID { get; set; }

        [Required, Display(Name = "Title")]
        public string NewsArticleTitle { get; set; }

        [Required, Display(Name = "Main Body")]
        public string NewsArticleMainBody { get; set; }

        [Required, Display(Name = "Date Published")]
        public string NewsArticleDatePublished { get; set; }

        public string NewsArticleImagePath { get; set; }
    }
}