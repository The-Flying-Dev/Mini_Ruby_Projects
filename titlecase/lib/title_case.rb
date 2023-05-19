def title_case(sentence)
  # eventually put code here
  sentence.capitalize!
end

def title_case_sentence(sentence)
  sentence_split = sentence.split 
  sentence_split.each do |word|
    word.capitalize!
  end
  sentence_split.join(" ")
end