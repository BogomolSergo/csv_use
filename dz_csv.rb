require 'csv'
class HomeCSV
  @hash = {}
  def self.read_csv
    CSV.foreach('/home/sergo/Documents/file.csv') do |row|
      #my_m = {}
      #months = row[0].split('.')
      #my_m[months[0]] = months[1]
      @hash[row[0].split('.')] = row[1].to_i
    end
    puts @hash
    return @hash
  end

  def self.detect_month()

  end

  def self.mdt_temperatures (temp)
    sum_t = 0
    sum_t1 = 0
    i = 0
    j = 0
    temp.each_pair do |data, t|
      case data[1]
        when '01'
          i += 1
          sum_t += t
        when '02'
          j += 1
          sum_t1 += t
      end
    end
    puts "Temperature of the month:~ #{sum_t / i},  #{sum_t1 / j}"
  end
end
HomeCSV.mdt_temperatures(HomeCSV.read_csv)