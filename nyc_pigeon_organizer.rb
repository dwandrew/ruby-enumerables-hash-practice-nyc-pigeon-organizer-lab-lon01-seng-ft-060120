require 'pp'



pigeon_data = {
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
}


def nyc_pigeon_organizer(pigeon_data)
pigeons ={}
pigeon_names=[]
pigeon_data[:color].each {|k, v| pigeon_names.push(v)}
pigeon_names.flatten!
pigeon_names.uniq!
pigeon_names.each{|name| pigeons[name]={:color =>[], :gender =>[], :lives =>[]}}
pigeons.each{|k, v| pigeons[k]== pigeon_data[:color]; pigeons[k][:color].push(pigeon_data[:color]) }
pp pigeons

end

