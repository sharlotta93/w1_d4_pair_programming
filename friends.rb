def get_name(person)
  return person[:name]
end

def get_tvshow(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, snack)
  for snck in person[:favourites][:snacks]
    if snck == snack
      return true
    end
  end
  return false
end

def add_friend(person, friend)
  person[:friends] << friend
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
end

def total_money(people_array)
  total = 0
  for person in people_array
    total += person[:monies]
  end
  return total
end

def money_lending(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
end

def favourite_foods(people_array)
  foods_array = []
  for person in people_array
    for snck in person[:favourites][:snacks]
      foods_array << snck
    end
  end
  return foods_array
end

def no_friends(people_array)
  no_friends_people = []
  for person in people_array
    if person[:friends].length == 0
      no_friends_people << person
    end
  end
  return no_friends_people
end
