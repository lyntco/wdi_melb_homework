1.

a) kitchen[:oven]
b) kitchen[:drawer].pop
c) kitchen[:drawer].push('fork')

2. attr_accessor allows you to access certain variables within a class

3. Everything in ruby is an object. A class is a way to give a certain type of object certain attributes and unique methods.

4.

class Student
  attr_accessor :name, :age, :favourite_subject
  def initialize(name, age, favourite_subject = "sleeping")
    @name = name
    @age = age
    @favourite_subject = favourite_subject
  end
end

student_1 = Student.new("Henry", 14)
student_2 = Student.new("Jenny", 12, "Maths")

5. GET retreives existing data and allows it to presented where POST is used when you a processing new data or changing something on the database.

6. params

7.  In the controller you could specify things to go into the hash using the correct keys.

8. rails new name -d=postgresql

9. It would use the show.html.erb from the posts folder in views. It would use the posts controller and look for the show function.

10. In the seed file - u1 = User.create username: 'lauren.smolenski', password: 'ilovecake', :password_confirmation => 'ilovecake'

11. In the rails console - User.first.destroy

12. In the rails console - User.destroy_all

13.
a) user.rb
b) users_controller.rb
c) views folder => users
   inside users folder => new.html.erb, edit.html.erb

14. User.new makes a new instance of a user but in order for it to be saved to the database you need to call .save on it.
  User.create makes a new instace of a user and saves it directly to the database(no need to call .save unless changing attributes).

15. rake db:migrate

16.
function sample(array) {
  return array[Math.floor ( Math.random() * array.length )]
}

var hat =
  {color: sample(["white", "yellow", "purple", "red"])
    };

17. $('<div/>') creates new div and the other adds things to an existing div.



