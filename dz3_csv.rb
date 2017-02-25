require 'csv'
class HomeCSV
  def self.read_csv # Read & build data.
    @hash = {}
    CSV.foreach('/home/sergo/Documents/file.csv') do |row|
      # my_m = {}
      # months = row[0].split('.')
      # my_m[months[0]] = months[1]
      @hash[row[0].split('.')] = row[1].to_i
    end
    puts @hash
    @hash
  end

  def self.that_oll?(params) # Check month switch.
    unless params == @month
      puts "Temperature month #{@month}:~ #{@sum_t / @i} C"
      @month = params
      @i = 0
      @sum_t = 0
    end
  end

  def self.mdt_temperatures(temp)
    @sum_t = 0 # Calculations...
    @i = 0
    @month = '01'
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
