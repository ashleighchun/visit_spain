class CLI

  def run
    puts "Welcome to 10 Best Places to Visit in Spain"
    puts "These are the best places to visit in Spain"
    puts "       "
    puts "------------"
    puts "       "
    Scraper.scrape_places
    print_places
    input = ""
    while input != "exit" do
      puts "Which place would you like to see details on?"
      puts "Enter the number of the place or type 'exit' to exit"
      input = gets.strip
      Scraper.scrape_place(Place.all[input-1]) if !Place.all[input-1].directory

    end
  end

  def print_places
    Place.all.each.with_index(1) do |place, index|
      puts "#{index} #{place.name}"
    end
  end
end
