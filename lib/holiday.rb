require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas][2] = "Balloons"
  holiday_hash[:winter][:new_years][1] = "Balloons"


end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day][1] = "Grill"
  holiday_hash[:spring][:memorial_day][2] = "Table Cloth"

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[:fall][:columbus_day] = ["Flags", "Italian Food", "Parade Floats"]
  holiday_hash[:winter][:valentines_day] = ["Candy Hearts", "Cupid Cut-Out"]

end


def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

  holiday_hash[:winter][:christmas] + holiday_hash[:winter][:new_years]


end



def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |season, data|
    data.each do |holiday, supply|

      split_holiday = holiday.to_s.split("_")
      new_holiday = ""
      split_holiday.each do |word|
        word.capitalize!
        new_holiday += "#{word} "
      end

      puts "  #{new_holiday.strip}: #{supply.join(", ")}"
    end
    puts "#{season.to_s.capitalize!}:"
  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holidays = []

  holiday_hash.each do |season, data|
    data.each do |holiday, supply|
      if supply.include?("BBQ")
        bbq_holidays.push(holiday)
      end
    end
  end

  return bbq_holidays

end
