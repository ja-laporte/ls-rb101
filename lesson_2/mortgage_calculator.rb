# Ask user for loan amount
# ask user for interest rate
# ask user for loan term
# validate loan amount, rate, loan term
# perform calculation for monthly payments
# output monthly payments
system('clear')
# ------Validation Methods------
def prompt(message)
  puts "=> #{message}"
end

def valid_loan?(loan)
  loan.to_i.to_s == loan && loan.to_i > 0
end

def format_loan_amount(num)
  format('%.2f', num)
end

def valid_interest?(rate)
  rate.to_f.to_s == rate && rate.to_f > 0.0
end

def interest_rate_convert(rate)
  rate.to_f / 100
end

def valid_loan_term?(loan_term)
  loan_term.to_i.to_s == loan_term && loan_term.to_i > 0
end

def monthly_interest_rate(interest_rate)
  interest_rate / 12
end

def valid_response(answer)
  answer == 'y' || answer == 'n'
end
response = ''

prompt("Welcome to Mortage calculator.")
puts "  ------------------------------"
puts ""

loop do
  # ------Loan Validation Loop Start------
  loan_amount = ''
  loop do
    prompt("To begin, enter your loan amount, excluding commas:")
    loan_amount = gets.chomp

    if valid_loan?(loan_amount)
      loan_amount = loan_amount.to_f
      break
    else
      prompt("Invalid input: #{loan_amount}.")
    end
  end
  prompt("Loan Amount: $#{format_loan_amount(loan_amount)}")

  #-----Rate Validation Loop Start------
  interest_rate = ''
  loop do
    prompt("Enter your interest rate as a decimal(i.e 5 = 5.0):")
    interest_rate = gets.chomp

    if valid_interest?(interest_rate)
      prompt("Interest Rate: #{interest_rate}%")
      interest_rate = interest_rate_convert(interest_rate)
      break
    else
      prompt("Invalid input: #{interest_rate}.")
    end
  end
  # prompt("Interest Rate: #{interest_rate}")
  #-------Rate Validation Loop End  ------

  #-------Loan Term Validation Start------
  loan_term = ''
  loop do
    prompt("Enter your loan term:")
    loan_term = gets.chomp

    if valid_loan_term?(loan_term)
      loan_term = loan_term.to_i * 12
      break
    else
      prompt("Invalid loan term: #{loan_term}.")
    end
  end
  #-------Loan Term Validation End--------

  prompt("Loan duration: #{loan_term} months")

  #-------Monthly Payment Validation------
  monthly_rate = monthly_interest_rate(interest_rate)
  monthly_payments = loan_amount *
                     (monthly_rate / (1 - (1 + monthly_rate)**(-loan_term)))

  puts "Your monthly bill is: $#{monthly_payments.round(2)}."

  #-------Repeat Calculator Loop----------
  prompt("Would you like to continue with another calculation? (y,n)")
  loop do
    response = gets.chomp.downcase
    valid_response(response)
    break if response == 'y' || response == 'n'
    puts "Invalid input. Enter (y) or (n):"
    response
  end

  break if response == "n"
  system('clear')
end
system('clear')
prompt("Thank you for using Mortgage Calculator. Goodbye.")
