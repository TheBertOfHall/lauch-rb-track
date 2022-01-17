def calculate_bonus(salary, approval)
  bonus_amount = 0 
  if approval == true 
    bonus_amount = salary / 2
  else 
    bonus_amount = 0
  end
  bonus_amount
end