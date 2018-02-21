require_relative("../models/student.rb")
require_relative("../models/house.rb")
require('pry-byebug')

Student.delete_all()
House.delete_all()

student1 = Student.new({
  "first_name" => "Rachel",
  "last_name" => "Johnson",
  "house" => house1.id,
  "age" => "25"
  })

student2 = Student.new({
  "first_name" => "Miguel",
  "last_name" => "Morino",
  "house" => "Huffelpuff",
  "age" => "24"
  })

student3 = Student.new({
  "first_name" => "Jussi",
  "last_name" => "Pardoe",
  "house" => "Slytherin",
  "age" => "24"
  })

student1.save()
student2.save()
student3.save()

house1 = House.new({
  "name" => "Gryffindor",
  "logo_url" => "http://bit.ly/2BHRksy"
  })

house2 = House.new({
    "name" => "Hufflepuff",
    "logo_url" => "http://bit.ly/2GAVGRF"
  })

house3 = House.new({
    "name" => "Ravenclaw",
    "logo_url" => "http://bit.ly/2ognnIt"
  })

house4 = House.new({
    "name" => "Slytherin",
    "logo_url" => "http://bit.ly/2EKOw0M"
  })

house1.save()
house2.save()
house3.save()
house4.save()

binding.pry
nil
