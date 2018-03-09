puts "How many Fibonacci numbers do you want to generate?"

input = gets.chomp().to_i

puts "Generating #{input} Fibonacci numbers:"

n = 0 # Fn
n0 = 0 # Fn-1
n1 = 0 # Fn-2
long = false # Long list of fibonacci numbers. Initially set to false.
(1..input).each do |i|
    if i == 1
        n = 1
        n0 = 1
    elsif i == 2
        n = 1
        n0 = 1
        n1 = 1
    else
        n = (n0 + n1)
        n1 = n0
        n0 = n
    end
    if input > 20
        if !long
            puts "Generating a long list of numbers. Outputting last 5 steps."
            long = true
        end
    else
        puts "#{i}: #{n0} + #{n1} = #{n}"
    end
    if i > input - 5 && long
        puts "#{i}: #{n0} + #{n1} = #{n}"
    end
end

# 222232244629420445529739893461909967206666939096499764990979600
# 222232244629420445529739893461909967206666939096499764990979600 