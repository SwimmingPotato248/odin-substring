    def substrings(word, dict)
        words = []
        if word.include?(" ")  
            words = word.split(" ") 
        else 
            words = [word]
        end
        filtered_dict = []
        words.each {|word|
        filtered_dict += dict.select {|char| word.downcase.include?(char.downcase)}
        }
        p filtered_dict.reduce(Hash.new(0)) {|a, char| 
            a[char] = a[char] + 1
            a
        }
    end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below go", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)