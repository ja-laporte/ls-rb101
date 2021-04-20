# How could the unnecessary duplication in this method be removed?

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# My Answer:

def color_valid(color)
  color.include?('blue') || color.include?('green')
end
p color_valid('green')
