require "json"
require "rest-client"

# TODO: Write a seed to insert 10 posts in the database fetched from the Hacker News API.
top_stories_url = "https://hacker-news.firebaseio.com/v0/topstories.json"

def story_url(id)
  "https://hacker-news.firebaseio.com/v0/item/#{id}.json"
end

news_ids = JSON.parse(RestClient.get(top_stories_url))

news_ids.take(10).each do |id|
  hacker_news = JSON.parse(RestClient.get(story_url(id)))
  post = Post.new(title: hacker_news["title"], url: hacker_news["url"], votes: hacker_news["votes"])
  post.save
end
