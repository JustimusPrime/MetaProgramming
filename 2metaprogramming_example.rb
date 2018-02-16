class String
  def censor(bad_word)
    self.gsub! "#{bad_word}", "CENSORED"
  end

  def num_of_chars
    size
  end
end


p "I'll sandwich you right in the sandwich if you sandwich my sister again".censor("sandwich")
