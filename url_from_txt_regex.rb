class URLSearch
  URL_LONG = /[http\:\/\/]+[\w+]+[\.\w+]+\.\w+.+[\w]/

  def self.check_links
    string = File.open('file.txt', 'r') { |file| file.read.split("\n") }
    string.each { |x| puts x[URL_LONG] if x[URL_LONG] }
  end
end
URLSearch.check_links
