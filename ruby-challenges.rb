# ASSESSMENT 4: Ruby Coding Practical Questions
# MINASWAN ✌️

#  AND MINASWAN !!! Thank you for the assessment Chris!

# --------------------1) Create a method that takes in a number and determines if the number is even or odd. Use the test variables provided.
p '=========Challenge 1==============='

reposts1 = 7
# Expected output: '7 is odd'
reposts2 = 42
# Expected output: '42 is even'
reposts3 = 221
# Expected output: '221 is odd'

# Pseudo code:

# INPUT: variables that have a value of a number
# FUNCTION_NAME: even_or_odd with a passed in parameters numero
# OUTPUT: a string that passes the value of the variable and identifies if it is odd or even
# EXPECTED_OUTPUT: Will be printed at the end of each p

# PROCESS #1:
# 1) create a method that will set(initialize) and get(attr_accessor) the number from the variable
# 2) give method a parameter number
# 3) create a conditional with modulo operator that checks if the value of the variable == to 1 => put out odd
# 4) p the name of the method (initializer) with the name of the variable in parentheses

# attr_accessor :num
# def initializer(num)
#     p @num % 2 == 1
# end
# p initializer(reposts1)

# GOT AN ERROR: undefined method `attr_accessor' for main:Object, 
# commented out the attr_accessor :num 
# GOT ANOTHER ERROR: `initializer': undefined method `%' for nil:NilClass

# CHECKED IF MY DOCUMENT IS WORKING AND RUNNING PROPERLY (IT DOES)
# puts "#{reposts1} is odd" if reposts1 % 2 === 1
# MY OUTPUT: 7 is odd

# PROCESS #2:
# 1) create a method that will take the number from the variable and be reusable
# 2) give method a parameter numero
# 3) create a conditional statement if/else because we need to check all variables
# 4) create an if statement with an end
# 5) create a conditional with modulo operator that checks if the value of the variable is odd 
# 6) return the string interpelation that takes in the number given, within a hash and curly braces, and put it in the string with the words that say that number is odd. 
# 7) create an else statement
# 8) return the string interpelation that takes in the number given, within a hash and curly braces, and put it in the string with the words that say that number is even. 
# 9) p the name of the method (even_or_odd) with the name of any variable in parentheses

def even_or_odd numero
    if numero % 2 == 0
        "#{numero} is even"
    else 
        "#{numero} is odd"
    end
end

p even_or_odd(reposts1)
# Expected output: '7 is odd'
# my output:       "7 is odd"
p even_or_odd(reposts2)
# Expected output: '42 is even'
# my output:       "42 is even"
p even_or_odd(reposts3)
# Expected output: '221 is odd'
# my output:       "221 is odd"

# -------------------2) Create a method that takes in a string and removes all the vowels from the string. Use the test variables provided. 
# HINT: Check out this resource: https://ruby-doc.org/core-2.6/String.html#method-i-delete
p '=========Challenge 2==============='

beatles_album1 = 'Rubber Soul'
# Expected output: 'Rbbr Sl'
beatles_album2 = 'Sgt Pepper'
# Expected output: 'Sgt Pppr'
beatles_album3 = 'Abbey Road'
# Expected output: 'bby Rd'

# Pseudo code:

# INPUT: variables that have a value of a string
# FUNCTION_NAME: make_nonsense_words with a passed in parameter take_out_the_vowels
# OUTPUT: a string of letters without the vowels present
# EXPECTED_OUTPUT: Will be printed at the end of each p
# PROCESS:
# 1) create a method that will take the string from the variable and be reusable
# 2) give method a parameter take_out_the_vowels
# 3) create String Method that will manipulate the string. The method used today is str.delete
# 5) pass to that method a string of vowels ("aeiou" and "AEIOU") that need to be excluded
# 6) str.downcase was not used because output had all letter lower case which we didn't require
# 7) p the name of the method (make_nonsense_words) with the name of any variable in parentheses

def make_nonsense_words take_out_the_vowels
    # use a parameter name.downcase(because capital letters will not be recognized)
    # take_out_the_vowels.downcase.delete "aeiou" lowered all letters and even returned all letters lower cased
    take_out_the_vowels.delete "aeiou" "AEIOU"
end

p make_nonsense_words(beatles_album1)
# Expected output: 'Rbbr Sl'
# my output:       "Rbbr Sl"
p make_nonsense_words(beatles_album2)
# Expected output: 'Sgt Pppr'
# my output:       "Sgt Pppr"
p make_nonsense_words(beatles_album3)
# Expected output: 'bby Rd'
# my output:       "bby Rd"

# -------------------3) Create a method that takes in a string and checks if the string is a palindrome. A palindrome is the same word spelled forward or backward. Use the test variables provided.
p '=========Challenge 3==============='

palindrome_test_case1 = 'Racecar'
# Expected output: 'Racecar is a palindrome'
palindrome_test_case2 = 'LEARN'
# Expected output: 'LEARN is not a palindrome'
palindrome_test_case3 = 'Rotator'
# Expected output: 'Rotator is a palindrome'

# Pseudo code:

# INPUT: variables that have a value of a string
# FUNCTION_NAME: pali_n_drome with a passed in parameter the_word
# OUTPUT: a string that passes the value of the variable and identifies if it is palindrome or not
# EXPECTED_OUTPUT: Will be printed at the end of each p

# PROCESS:
# 1) create a method that will take the string from the variable and be reusable
# 2) give method a parameter the_word
# 3) create a conditional statement if/else because we need to check all variables
# 4) create an if statement with an end
# 5) create a conditional that takes in parameter, by using dot notation lowercase the entire string and check if it equals to the same parameter, also lower cased and reversed. 
# 6) return the string interpelation that takes in the parameter , within a hash and curly braces, and put it in the string with the words that the word that was checked is a palindrome.
# 7) create an else statement
# 8) return the string interpelation that takes in the number given, within a hash and curly braces, and put it in the string with the words that the word that was checked is not a palindrome.
# 9) p the name of the method (pali_n_drome) with the name of any variable in parentheses


def pali_n_drome the_word
    if the_word.downcase == the_word.downcase.reverse
        "#{the_word} is a palindrome"
    else
        "#{the_word} is not a palindrome"
    end
end

p pali_n_drome(palindrome_test_case1)
# Expected output: 'Racecar is a palindrome'
# MY OUTPUT:       "Racecar is a palindrome"
p pali_n_drome(palindrome_test_case2)
# Expected output: 'LEARN is not a palindrome'
# MY OUTPUT:       "LEARN is not a palindrome"
p pali_n_drome(palindrome_test_case3)
# Expected output: 'Rotator is a palindrome'
# MY OUTPUT:       "Rotator is a palindrome"
