
def oxford_comma(array)
    if array.length == 1
        array.join
    elsif array.length == 2
        array.join(' and ')
    else
        new_array = array.each_with_index.map do |word, index|
            if index < array.length - 1
                word
            else
                "and #{word}"
            end
        end
        new_array.join(', ')
    end
end
