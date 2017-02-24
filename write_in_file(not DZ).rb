def self.write_csv(masive) # write a input data
  CSV.open('/home/sergo/Documents/file1.csv', 'wb') do |csv|
    csv << %W(#{masive})
    puts 'File was written!'
  end
end
