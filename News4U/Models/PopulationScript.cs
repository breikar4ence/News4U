using System;
using System.Linq;
using System.Web;
using System.Collections.Generic;
using System.Data.Entity;
using News4U.Models;

namespace News4U.Models
{
    public class PopulationScript : DropCreateDatabaseIfModelChanges<NewsArticleContext>
    {
        protected override void Seed(NewsArticleContext context)
        {

            GetNewsArticles().ForEach(p => context.NewsArticle.Add(p));
        }

        private static List<NewsArticle> GetNewsArticles()
        {
            var NewsArticles = new List<NewsArticle> {
                new NewsArticle
                {
                    NewsArticleID = 1,
                    NewsArticleTitle = "First man on the moon!",
                    NewsArticleMainBody = "Neil Armstrong from the Appolo 13 spacecraft crew is the first man to set foot on the surface of the moon",
                    NewsArticleImagePath="http://www.nasa.gov/images/content/464436main_S69-31741_full.jpg",
                    NewsArticleDatePublished = "20/07/1969"
               },
                new NewsArticle
                {
                    NewsArticleID = 2,
                    NewsArticleTitle = "Potato invented",
                    NewsArticleMainBody = "Indians have developed a new miracle vegetable which is said to change the culinary art forever",
                    NewsArticleImagePath="http://www.howbigismypotato.com/images/potato.jpg",
                    NewsArticleDatePublished = "02/06/1399"
               },
                new NewsArticle
                {
                    NewsArticleID = 3,
                    NewsArticleTitle = "Dank memes",
                    NewsArticleMainBody = "Internet memes have become a phenomenon in today's online culture which is rapidly gaining popularity in the last years",
                    NewsArticleImagePath="http://i3.kym-cdn.com/photos/images/newsfeed/000/925/494/218.png_large",
                    NewsArticleDatePublished = "69/420/1337"
                },
                new NewsArticle
                {
                    NewsArticleID = 4,
                    NewsArticleTitle = "Turbo Pascal",
                    NewsArticleMainBody = "A new programming language, being developed currently, is said to have drastically improved performance on current computers",
                    NewsArticleImagePath="http://blog.mikaellundin.name/assets/posts/2011-02-14-beginners-guide-to-pascal/turbo_pascal.png",
                    NewsArticleDatePublished = "30/09/1981"
                }
            };

            return NewsArticles;
        }
    }
}