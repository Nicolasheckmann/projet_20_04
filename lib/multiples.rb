def is_multiple_of_3_or_5?(current_number)
    current_number % 3 == 0 || current_number % 5 == 0 ? true : false
end

def sum_of_3_or_5_multiples(final_number)
    if final_number.class == Integer && final_number >= 0 
        (1...final_number).reduce(0) { |sum , num| is_multiple_of_3_or_5?(num) ? sum + num : sum } 
    else
        'Yo ! Je ne prends que les entiers naturels. TG'
    end
end