class Scraper
  def self.scrape_places

    html = open("https://www.touropia.com/best-places-to-visit-in-spain/")
    doc = Nokogiri::HTML(html)
    doc.css("div .entry-content")[0].css("div.topitem").each do |name|
      place = Place.new
      place.name = name.css(".name").text.strip
      place.url = name.css("a").attr('href').value
    end
  end

  def self.scrape_place(place)
    #add attributes to movie which is an object
  end
end
