using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication6
{
    public class Item
    {
        private int newsID;
        private string title;
        private string description;
        private string category;
        private string author;
        private DateTime pubDate;
        private string ımageUrl;

        public int NewsID { get => newsID; set => newsID = value; }
        public string Title { get => title; set => title = value; }
        public string Description { get => description; set => description = value; }
        public string Category { get => category; set => category = value; }
        public string Author { get => author; set => author = value; }
        public DateTime PubDate { get => pubDate; set => pubDate = value; }
        public string ImageUrl { get => ımageUrl; set => ımageUrl = value; }

        public Item(int NewsID, string Title, string Description,
        string Category, string Author, DateTime PubDate, string ImageUrl)
        {
            this.NewsID = NewsID;
            this.Description = Description;
            this.Category = Category;
            this.Author = Author;
            this.PubDate = PubDate;
            this.ImageUrl = ImageUrl;
        }
        public Item()
        { }
    }
}