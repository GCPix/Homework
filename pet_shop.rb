def pet_shop_name(pet_shop_array)
  return pet_shop_array[:name]
end

def total_cash(pet_shop_array)
  return pet_shop_array[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop_array, cash_value)
  pet_shop_array[:admin][:total_cash] += cash_value
end

def pets_sold(pet_shop_array)
  return pet_shop_array[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop_array, number_sold)
  pet_shop_array[:admin][:pets_sold]+=number_sold
end

def stock_count(pet_shop_array)
  return pet_shop_array[:pets].length
end

def pets_by_breed(pet_shop_array, animal_breed)
  pets = []

  for pet in pet_shop_array[:pets]
    if pet[:breed] == animal_breed
      pets << pet
    end
  end

  return pets
end


def find_pet_by_name(pet_shop_array, pet_name)

  for pet in pet_shop_array[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop_array, pet_name)

  pet_shop_array[:pets].delete(find_pet_by_name(pet_shop_array, pet_name))

end

def add_pet_to_stock(pet_shop_array, new_stock_pet)
  pet_shop_array[:pets].push(new_stock_pet)
end

def customer_cash(customer_array)
  return customer_array[:cash]
end

def remove_customer_cash(customer_array, remove_amount)

customer_array[:cash] -= remove_amount

end

def customer_pet_count(customer)
  customer[:pets].length
end

def add_pet_to_customer(customer_element, pet_to_add)
  customer_element[:pets].push(pet_to_add)
end

def customer_can_afford_pet(customer, item)

  if customer[:cash] < item[:price]
    return false
  else
    return true
  end
end

def sell_pet_to_customer(pet_shop_array, item, customer)

  #pet = find_pet_by_name(pet_shop_array, new_pet)
if item != nil
  if customer_can_afford_pet(customer, item) == true

      add_pet_to_customer(customer, item)

      remove_customer_cash(customer, item[:price])

      #increase_pets_sold(pet_shop_array, no_sold)
      pet_shop_array[:admin][:pets_sold]+=1
      add_or_remove_cash(pet_shop_array, item[:price])
      end

    end
end
