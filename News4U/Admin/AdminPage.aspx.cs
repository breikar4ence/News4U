using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using News4U.Models;
using News4U.Logic;

namespace News4U.Admin
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string NewsArticleAction = Request.QueryString["NewsArticleAction"];
            if (NewsArticleAction == "add")
            {
                LabelAddStatus.Text = "News article added";
            }

            if (NewsArticleAction == "remove")
            {
                LabelRemoveStatus.Text = "News article removed";
            }

            if (NewsArticleAction == "edit")
            {
                LabelEditStatus.Text = "News article was edited";
            }
        }

        protected void AddNewsArticleButton_Click(object sender, EventArgs e)
        {
            AddNewsArticles articles = new AddNewsArticles();
            bool addSuccess = articles.AddNewsArticle(AddNewsArticleTitle.Text, AddNewsArticleMainBody.Text, AddNewsArticleDatePublished.Text, AddNewsArticleImagePath.Text);
            if (addSuccess)
            {
                string pageUrl = Request.Url.AbsoluteUri.Substring(0, Request.Url.AbsoluteUri.Count() - Request.Url.Query.Count());
                Response.Redirect(pageUrl + "?NewsArticleAction=add");
            }
            else
            {
                LabelAddStatus.Text = "Unable to add new news article to database";
            }
        }

        public IQueryable GetNewsArticle()
        {
            var _db = new News4U.Models.NewsArticleContext();
            IQueryable query = _db.NewsArticle;
            return query;
        }
        
        protected void RemoveNewsArticleButton_Click(object sender, EventArgs e)
        {
            using (var _db = new News4U.Models.NewsArticleContext())
            {
                int newsArticleID = Convert.ToInt32(DropDownRemoveNewsArticle.SelectedValue);
                var myNewsArticle = (from c in _db.NewsArticle where c.NewsArticleID == newsArticleID select c).FirstOrDefault();
                if (myNewsArticle != null)
                {
                    _db.NewsArticle.Remove(myNewsArticle);
                    _db.SaveChanges();

                    string pageUrl = Request.Url.AbsoluteUri.Substring(0, Request.Url.AbsoluteUri.Count() - Request.Url.Query.Count());
                    Response.Redirect(pageUrl + "?NewsArticleAction=remove");
                }
                else
                {
                    LabelRemoveStatus.Text = "Unable to locate news article";
                }
            }
        }

        protected void EditNewsArticleButton_Click(object sender,EventArgs e)
        {
            using (var _db = new News4U.Models.NewsArticleContext())
            {
                int newsArticleID = Convert.ToInt32(DropDownEditNewsArticle.SelectedValue);
                var myNewsArticle = (from c in _db.NewsArticle where c.NewsArticleID == newsArticleID select c).FirstOrDefault();
                if (myNewsArticle != null)
                {
                    if(EditNewsArticleTitle.Text != "")
                    {
                        myNewsArticle.NewsArticleTitle = EditNewsArticleTitle.Text;
                    }
                    if (EditNewsArticleMainBody.Text != "")
                    {
                        myNewsArticle.NewsArticleMainBody = EditNewsArticleMainBody.Text;
                    }
                    if (EditNewsArticleDatePublished.Text != "")
                    {
                        myNewsArticle.NewsArticleDatePublished = EditNewsArticleDatePublished.Text;
                    }
                    if (EditNewsArticleImagePath.Text != "")
                    {
                        myNewsArticle.NewsArticleImagePath = EditNewsArticleImagePath.Text;
                    }
                }
                _db.SaveChanges();

                string pageUrl = Request.Url.AbsoluteUri.Substring(0, Request.Url.AbsoluteUri.Count() - Request.Url.Query.Count());
                Response.Redirect(pageUrl + "?NewsArticleAction=edit");

            }
        }

    }
}