def word_counter(string, dictionnary)
    matching_h = {}
    for i in (0...dictionnary.length)
    matching_h[string.scan(/#{dictionnary[i]}/i).uniq.join.downcase] = string.scan(/#{dictionnary[i]}/i).size
    end
    matching_h.delete("")
    matching_h
end