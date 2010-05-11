xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Post"
    xml.description "Blog of Doom"
    xml.link formatted_articles_url(:rss)
    
    for post in @posts
      xml.item do
        xml.title blog.title
        xml.description blog.cody
        xml.pubDate blog.created_at.to_s(:rfc822)
        xml.link post_path(post, :format => :rss)
        xml.guid article_url(post, :format => :rss)
      end
    end
  end
end

