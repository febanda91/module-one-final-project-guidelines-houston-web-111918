require_relative '../config/environment.rb'


a = User.create(username: "Andy", age: 10, gender: "female")
b = User.create(username: "Brittany", age: 20, gender: "male")
c = User.create(username: "Cassy", age: 25, gender: "male")
d = User.create(username: "Daisy", age: 30, gender: "male")
e = User.create(username: "Eddy", age: 35, gender: "female")


p1 = PettyFact.create(number: Number.first, petty_fact:"Test 1")
p2 = PettyFact.create(number: Number.second, petty_fact:"Test 2")
p3 = PettyFact.create(number: Number.third, petty_fact:"Test 3")
p4 = PettyFact.create(number: Number.fourth, petty_fact:"Test 4")
p5 = PettyFact.create(number: Number.fifth, petty_fact:"Test 5")
p6 = PettyFact.create(number: Number.first, petty_fact: "Fact 6 about Num 1")
p7 = PettyFact.create(number: Number.first, petty_fact: "Fact 7 about Num 1")
p8 = PettyFact.create(number: Number.second, petty_fact: "Fact 8 about Num 2")
p9 = PettyFact.create(number: Number.second, petty_fact: "Fact 9 about Num 2")


b1 = Bookmark.create(user: a, petty_fact:p1)
b2 = Bookmark.create(user: b, petty_fact:p2)
b3 = Bookmark.create(user: c, petty_fact:p3)
b4 = Bookmark.create(user: d, petty_fact:p4)
b5 = Bookmark.create(user: e, petty_fact:p5)
b6 = Bookmark.create(user: a, petty_fact:p3)
b7 = Bookmark.create(user: b, petty_fact:p4)
b8 = Bookmark.create(user: c, petty_fact:p5)
b9 = Bookmark.create(user: d, petty_fact:p1)
b10 = Bookmark.create(user: e, petty_fact:p2)
b11 = Bookmark.create(user: a, petty_fact:p4)
b12 = Bookmark.create(user: b, petty_fact:p5)

def create_num_instances
    i = 1
    while i <= 100
        Number.create(int_num: i)
        i += 1
    end
end
create_num_instances






# one = Number.create(int_num: 1, alpha_num: "one")
# two = Number.create(int_num: 2, alpha_num: "two")
# three = Number.create(int_num: 3, alpha_num: "three")
# four = Number.create(int_num: 4, alpha_num: "four")
# five = Number.create(int_num: 5, alpha_num: "five")







