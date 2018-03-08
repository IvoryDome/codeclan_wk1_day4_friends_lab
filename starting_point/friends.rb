def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  return person[:favourites][:things_to_eat].include?(food)
end

def add_friend(person, friend)
  person[:friends].push(friend)
end

def unfriend(person, friend)
  person[:friends].delete(friend)
end

def total_money(array_of_people)
  total_money = 0
  for person in array_of_people
    total_money += person[:monies]
  end
  return total_money
end

def loan_of_money(lender, lendee, money_loaned)
  lender[:monies] -= money_loaned
  lendee[:monies] += money_loaned
end

def everyones_favourite_food(array_of_people)
  favourite_foods = []
  for person in array_of_people
    favourite_foods.concat(person[:favourites][:things_to_eat])
  end
  return favourite_foods
end

def no_friends(array_of_people)
  array_of_no_friends = []
  for person in array_of_people
    if person[:friends] == []
      array_of_no_friends.push(person[:name])
    end
  end
  return array_of_no_friends
end
