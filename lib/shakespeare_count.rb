dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
shakespeare_lifes_work = File.read("./lib/shakespeare.txt")
bad_words = File.read("./lib/bad_words.txt").split("\n")

def count_words(string, dictionnary)
    matching_h = {}
    for i in (0...dictionnary.length)
    matching_h[string.scan(/#{dictionnary[i]}/i).map { |elt| elt.downcase }.uniq.join] = string.scan(/#{dictionnary[i]}/i).size
    end
    matching_h.delete("")
    matching_h
end

puts count_words(shakespeare_lifes_work, bad_words)
puts count_words(shakespeare_lifes_work, dictionnary)