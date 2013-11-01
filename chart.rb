require 'nokogiri'
require 'open-uri'

File.open('index.html', 'w') do |f|
    f.write("<!DOCTYPE html>")
    f.write('<html> <head><link rel="stylesheet" href="style.css" type="text/css"><link href="http://fonts.googleapis.com/css?family=Roboto:400,500italic" rel="stylesheet" type="text/css"></head>')
    f.write('<div id="wrapper">')
    page = Nokogiri::HTML(open("http://www.billboard.com/charts/hot-100/"))
    song1 = [page.css('h1')[1].text.rstrip, page.css('p a')[1].text]
    song2 = [page.css('h1')[2].text.rstrip, page.css('p a')[2].text]
    song3 = [page.css('h1')[3].text.rstrip, page.css('p a')[3].text]
    song4 = [page.css('h1')[4].text.rstrip, page.css('p a')[4].text]
    song5 = [page.css('h1')[5].text.rstrip, page.css('p a')[5].text]
    songs = [song1, song2, song3, song4, song5]
  
    f.write("<div id='bb'>\n<h1>Billboard Top 5</h1>")
    i = 0
    songs.each do |s|
      f.write("<h2>#{i += 1}. " + s[0] + "</h2>")
      f.write("<p>#{s[1]}</p>")
    end
    f.write("</div>")

    page = Nokogiri::HTML(open("http://www.billboard.com/charts/country-songs"))
    song1 = [page.css('h1')[1].text.rstrip, page.css('p a')[1].text]
    song2 = [page.css('h1')[2].text.rstrip, page.css('p a')[2].text]
    song3 = [page.css('h1')[3].text.rstrip, page.css('p a')[3].text]
    song4 = [page.css('h1')[4].text.rstrip, page.css('p a')[4].text]
    song5 = [page.css('h1')[5].text.rstrip, page.css('p a')[5].text]
    songs = [song1, song2, song3, song4, song5]
  
    f.write("<div id='country'>\n<h1>Top 5 Country</h1>")
    i = 0
    songs.each do |s|
      f.write("<h2>#{i += 1}. " + s[0] + "</h2>")
      f.write("<p>#{s[1]}</p>")
    end
    f.write("</div>")

    page = Nokogiri::HTML(open("http://www.billboard.com/charts/rap-song"))
    song1 = [page.css('h1')[1].text.rstrip, page.css('p a')[1].text]
    song2 = [page.css('h1')[2].text.rstrip, page.css('p a')[2].text]
    song3 = [page.css('h1')[3].text.rstrip, page.css('p a')[3].text]
    song4 = [page.css('h1')[4].text.rstrip, page.css('p a')[4].text]
    song5 = [page.css('h1')[5].text.rstrip, page.css('p a')[5].text]
    songs = [song1, song2, song3, song4, song5]
  
    f.write("<div id='rap'>\n<h1>Top 5 Rap</h1>")
    i = 0
    songs.each do |s|
      f.write("<h2>#{i += 1}. " + s[0] + "</h2>")
      f.write("<p>#{s[1]}</p>")
    end
    f.write("</div>")

    page = Nokogiri::HTML(open("http://www.billboard.com/charts/dance-electronic-songs"))
    song1 = [page.css('h1')[1].text.rstrip, page.css('p a')[1].text]
    song2 = [page.css('h1')[2].text.rstrip, page.css('p a')[2].text]
    song3 = [page.css('h1')[3].text.rstrip, page.css('p a')[3].text]
    song4 = [page.css('h1')[4].text.rstrip, page.css('p a')[4].text]
    song5 = [page.css('h1')[5].text.rstrip, page.css('p a')[5].text]
    songs = [song1, song2, song3, song4, song5]
  
    f.write("<div id='electronic'>\n<h1>Top 5 Electronic</h1>")
    i = 0
    songs.each do |s|
      f.write("<h2>#{i += 1}. " + s[0] + "</h2>")
      f.write("<p>#{s[1]}</p>")
    end
    f.write("</div>")

    f.write("</div>")
    f.write("</html>")
  end
