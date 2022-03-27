    def substrings(word, dict)
        dict = dict.select {|char| word.include?(char)}

        p dict.reduce(Hash.new(0)) {|a, char| 
            a[char] = a[char] + 1
            a
        }
    end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)