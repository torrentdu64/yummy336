# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://www.pinkygirls.co.nz"

SitemapGenerator::Sitemap.create do


SitemapGenerator::Sitemap.create do
  group(:sitemaps_path => 'en/', :filename => :english) do
    add '/brothel', :changefreq => 'weekly'
    add '/job', :changefreq => 'weekly'
    add '/wechat', :changefreq => 'weekly'
    add '/brothel/:auckland/escorts', :changefreq => 'weekly'
    add '/brothel/auckland/escorts/cici', :changefreq => 'weekly'
    add '/brothel/auckland/escorts/mia', :changefreq => 'weekly'
    add '/brothel/auckland/escorts/Alisa', :changefreq => 'weekly'
    add '/brothel/auckland/escorts/isabela', :changefreq => 'weekly'
    add '/brothel/auckland/escorts/monica', :changefreq => 'weekly'
    add '/brothel/auckland/escorts/nina', :changefreq => 'weekly'
    add '/brothel/auckland/escorts/selina', :changefreq => 'weekly'
    add '/brothel/auckland/escorts/amy', :changefreq => 'weekly'
  end

  group(:sitemaps_path => 'ch/', :filename => :english) do
    add '/brothel', :changefreq => 'weekly'
    add '/job', :changefreq => 'weekly'
    add '/wechat', :changefreq => 'weekly'
    add '/brothel/auckland/escorts', :changefreq => 'weekly'
    add '/brothel/auckland/escorts/cici', :changefreq => 'weekly'
    add '/brothel/auckland/escorts/mia', :changefreq => 'weekly'
    add '/brothel/auckland/escorts/Alisa', :changefreq => 'weekly'
    add '/brothel/auckland/escorts/isabela', :changefreq => 'weekly'
    add '/brothel/auckland/escorts/monica', :changefreq => 'weekly'
    add '/brothel/auckland/escorts/nina', :changefreq => 'weekly'
    add '/brothel/auckland/escorts/selina', :changefreq => 'weekly'
    add '/brothel/auckland/escorts/amy', :changefreq => 'weekly'
  end
end



  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
end
