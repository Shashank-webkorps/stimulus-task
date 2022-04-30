# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  # school_details = SchoolDetail.create([{ teacher: "Star Wars 1", school: 'a',  school_year: Date.today - 2.year}, {teacher: "Star Wars 2", school: 'b',  school_year:  Date.today - 3.year }])
#   Character.create(name: "Luke", movie: movies.first)
# rails generate scaffold SchoolDetail teacher:string school:string school_year:date

50.times do |i|
  school_details = SchoolDetail.create(teacher: "Star Wars #{i}", school: i,  school_year: Date.today - i.year)
end