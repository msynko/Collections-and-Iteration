
#Exercise 0

colors = ["black", "grey", "white", "blue", "beige"]

years = [27, 56, 47, 10, 37, 85]

coin_flips = ["head", "tail", "head", "head", "tail"]

artists = ["Foals", "Santigold", "Interpol"]

colors2 = [:black, :grey, :white, :blue, :beige]

words= {
  lamp: "bright thing",
  music: "relaxing sound",
  phone: "rings loudly"
}
fav_movie= {
  Freddy_Krueger: 1994,
  Harry_Potter: 2000,
  The_Grinch: 2018
}

 cities={
   Toronto: 200000,
   Paris: 6000000,
   New_York: 9000000
 }


#Exercise 1

puts coin_flips
puts colors[0]
puts years.sort
puts years<<0
puts fav_movie[:The_Grinch]

#Exercise 2
puts colors[-1]
puts cities[:London]=4000000
puts coin_flips.reverse
puts cities[:New_York]
puts "I think #{artists[0]} is great.I think #{artists[1]} is great.I think #{artists[2]} is great."

#Exercise 3
puts artists[0],artists[1]
puts "#{fav_movie.key(1994)} came out in #{fav_movie[:Freddy_Krueger]}. #{fav_movie.key(2000)} came out in #{fav_movie[:Harry_Potter]}. #{fav_movie.key(2018)} came out in #{fav_movie[:The_Grinch]}."
puts years.sort.reverse
puts"____"
fav_movie[:Beaty_and_the_Beast]="1991 2017"
puts fav_movie

#Exercise 4
puts years.select {|year| year<=30}
puts "___"
puts years.max
puts"___"
puts coin_flips.count("head")
puts "__"
puts artists.pop(2)
puts"___"
puts cities["Toronto"] = 300
puts cities

#Exercise 5
def city_population(hash)
  sum=0
   hash.each do |city, population|
     sum += population
   end
   return sum
end
  puts city_population(cities)

#Exercise 5
names = { Martha: 45, Stewart: 13, Holly: 31}
puts"___"
 def age (hash)
   hash.each do |name, age|
     if age >20
     puts "#{name} " + "is old."
    end
  end
end
    puts age(names)

puts"___"
puts colors.last(2)

puts"__"
years.map!do |year|
  year+=1
end
  puts years

puts "___"
puts colors <<"green"<<"purple"

#Exercise 6

movies = {
    1999 => ["The Matrix", "Star Wars: Episode 1", "The Mummy"],
    2009 => ["Avatar", "Star Trek", "District 9"],
    2019 => ["How to Train Your Dragon 3", "Toy Story 4", "Star Wars: Episode 9"]
}

phone = {
    row_1: [1, 2, 3],
    row_2: [4, 5, 6],
    row_3: [7, 8, 9],
    row_4: ["*", 0, "#"]
}

more_countries = {
  australia: {name:"Australia", continent:"Australia", island: true},
  canada: {name:"Canada", continent: "North_America", island: true},
  germany: {name:"Germany", continent:"Europe", island: false}
}

#Exercise 7
20.times{ puts "I will not skateboad in the halls"}
puts "__"
puts new_array=(1...50).to_a

  sum=0
   new_array.each do |number|
     sum += number
   end
  puts sum

puts"__"

new_arrayx3 = []
new_array.each do |element|
    3.times do
      new_arrayx3.push(element)
end
end
  puts new_arrayx3

  puts"___"

  non_island_countries = more_countries.select { |key, value| value[:island] == false}
  non_island_countries_n = []
  non_island_countries.each do | key, value |
    non_island_countries_n.push(value[:name].to_s)
end
puts non_island_countries_n

#Exercise 8
expenses = [250, 7.95, 30.95, 16.50]

def sum_expenses(hash)
  sum=0
   hash.each do |number|
     sum += number
   end
   return sum
end
  puts sum_expenses(expenses)

#Exercise 9
grocery_list = ["carrots", "toilet paper", "apples", "salmon"]
puts grocery_list.map {|item| "* " + item }
puts"___"
grocery_list.push("rice")
def print_new_list(items)
    return items.map {|item| "* " + item }
end
puts print_new_list(grocery_list)
puts"__"
puts grocery_list.length

puts"__"
def bananas(array)
    if array.include?("bananas")
        return "You don't need to pick up bananas today."
    else
        return "You need to pick up bananas."
    end
end
puts bananas(grocery_list)

puts"____"
puts grocery_list[1]

puts"___"
puts grocery_list.sort
puts"___"
def list_alphabetically(array)
    return array.sort.map {|item| "* " + item }
end
puts list_alphabetically(grocery_list)
puts"____"
puts grocery_list.delete("salmon")

#Exercise 10
students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22
}
def show_cohorts(hash)
    output =[]
    hash.each do|cohort, enrollment|
        output.push ("#{cohort} : #{enrollment} students")
    end
    return output;
end
puts show_cohorts(students)
puts "___"
students[:cohort4] = 43
puts"___"
puts students.keys
puts"___"
students.each {|cohort, enrollment|
    students[cohort] = enrollment *= 1.05
}
puts show_cohorts(students)
puts "-----"
students.delete(:cohort2)
puts show_cohorts(students)
puts "-----"

def count_students(hash)
    total_enrollment = 0
    hash.each do |cohort, enrollment|
        total_enrollment += enrollment
    end
    return total_enrollment
end
puts count_students(students)
puts "-----"

staff = {
    :cohort1 => 5,
    :cohort2 => 7,
    :cohort3 => 9,
    :cohort4 => 6,
}

def cohorts_staff(hash)
    output =[]
    hash.each do|cohort, enrollment|
        output.push ("#{cohort} : #{enrollment} staff members")
    end
    return output;
end
puts cohorts_staff(staff)

puts count_students(staff)
puts "-----"

#Exersice 11
nums=(1... 100)
output = []
for num in nums
    if num % 3 != 0 && num % 5 != 0
        output.push(num)
    elsif num % 3 == 0 && num % 5 != 0
        output.push("Bit")
    elsif num % 3 != 0 && num % 5 == 0
        output.push("Maker")
    else
        output.push("BitMaker")
    end
end
puts output
puts "-----"

#Exercise 12
puts "How many pizzas do you want?"
quantity = gets.chomp.to_i
pizza_number = 1
while quantity > 0 do
    puts "How many toppings for pizza #{pizza_number}?"
    topping_number = gets.chomp.to_i
    puts "You have ordered a pizza with #{topping_number} toppings"
    quantity -= 1
    pizza_number += 1
end
