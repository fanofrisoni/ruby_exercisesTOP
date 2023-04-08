def substring (word, dictionary) 
  word = word.downcase.split(/[^A-Za-z0-9]/)
  word.reject! {|w| w.empty?}
  hash = Hash.new(0)
  word = word.each do |w| 
    dictionary.each {|wordd| hash[w]+=1 if wordd==w}
  end
  p hash
  return hash

end




dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substring("Howdy howdy howdy partner, sit sit sit down! How's it going?", dictionary)