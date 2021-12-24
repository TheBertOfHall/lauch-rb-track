# How can we add multiple items to our array? (Dino and Hoppy)

advice = "Few things in life are as important as house training your pet dinosaur."

advice.slice!("Few things in life are as important as ")
#  or advice.slice!(0, advice.index('house'))
p advice 