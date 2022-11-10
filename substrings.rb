##
# Returns a hash listing substrings found in the original string, with how many
# times it was found.
def substrings (string, dictionary)
    downcase_string = string.downcase
    dictionary.reduce(Hash.new(0)) do |substrings, substring|
        occurence_index = downcase_string.index(substring)
        while occurence_index
            substrings[substring] += 1
            occurence_index = downcase_string.index(substring, occurence_index+1)
        end
        substrings
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts "below:"
puts substrings("below", dictionary)
puts "Howdy partner, sit down! How's it going?:"
puts substrings("Howdy partner, sit down! How's it going?", dictionary)