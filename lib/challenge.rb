## Here's one potential solution.
# def power_of_two?(num)
#   num = num.to_f
#   if num > 1
#     while num > 1
#       num = num/2
#     end
#     return num == 1
#   else
#     if num <= 0
#       return false
#     end
#     if num == 1
#       return true
#     end
#     while num < 1
#       num = num * 2
#     end
#     return num == 1
#   end
# end

## If the solution above is refactored to be more ruby-ish,
## in order to satisfy rubocop's warnings,
## it might look something like this:

def power_of_two?(num)
  num = num.to_f
  # Your Code Goes Here
  if num > 1
    num /= 2 while num > 1
  else
    return false if num <= 0
    return true if num == 1
    num *= 2 while num < 1
  end
  num == 1
end
