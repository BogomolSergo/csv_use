require 'csv'
class HomeCSV
  @array = []
  def self.read_csv
    CSV.foreach('/home/sergo/Documents/file.csv') do |row|
      print row
    end
  end

  def self.write_csv(masive)
    CSV.open('/home/sergo/Documents/file1.csv', 'wb') do |csv|
      csv << %W(#{masive})
      puts 'File was written!'
    end
  end
  
  def banana 
    # something
  end

  def self.input # Input data method
    puts 'write Name: '
    name = gets.chomp
    @array << name
    puts 'write Age: '
    age = gets.chomp
    @array << age
    puts 'write City: '
    city = gets.chomp
    @array << city
    @array
  end
end

HomeCSV.write_csv(HomeCSV.input)
