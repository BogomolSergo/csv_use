require 'csv'
class HomeCSV
  @hash = {}
  def self.read_csv # Read & build data.
    CSV.foreach('/home/sergo/Documents/file.csv') do |row|
      #my_m = {}
      #months = row[0].split('.')
      #my_m[months[0]] = months[1]
      @hash[row[0].split('.')] = row[1].to_i
    end
    puts @hash
    return @hash
  end

  def self.that_oll?(params) # Check month switch.
    unless @mont == params
      puts "Temperature month #{@mont}:~ #{@sum_t / @i} C"
      @mont = params
      @i = 0
      @sum_t = 0
    end
  end

  def self.mdt_temperatures (temp) # Calculations
    @sum_t = 0
    @i = 0
    @mont = '01'
    temp.each_pair do |data, t|
      case data[1]
        when '01'
          @i += 1
          @sum_t += t
        when '02'
          that_oll?(data[1])
          @i += 1
          @sum_t += t
        when '03'
          that_oll?(data[1])
          @i += 1
          @sum_t += t
      end
    end
  end
end
HomeCSV.mdt_temperatures(HomeCSV.read_csv)