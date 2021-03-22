require "pry"

def validate_object(num)
  (num.to_i.to_s == num || num.to_f.to_s == num) && num.to_i > 0
end

puts "Welcome to Mortgage Calculator!"

loan = ''
loop do
puts "Enter your loan amount (exclude commas):"
loan = gets.chomp

if validate_object(loan)
  loan = loan.to_i
  break
else
  puts "Invalid #{loan}."
end
end

rate = ''
loop do

  puts "Enter your interest rate (as a percentage. For example = 4.0):"
  rate = gets.chomp

  if validate_object(rate)
    rate = rate.to_f / 100
    break
  else
    puts "Invalid #{rate}."
  end
end

loan_term = ''
loop do

  puts "Enter your loan term in years:"
  loan_term = gets.chomp

  if validate_object(loan_term)
    loan_term = loan_term.to_i * 12
    break
  else
    puts "Invalid #{loan_term}."
  end
end
monthly_rate = rate * loan / 12
monthly_bill = loan * monthly_rate / 1 - (1 + monthly_rate)**(-loan_term)
p monthly_bill
