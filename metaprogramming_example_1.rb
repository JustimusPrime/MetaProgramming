class Baseball
end

# p Baseball.new.swing - wont work, no class method

class Baseball
  def swing
    "swing batta batta"
  end
end



# works because you can add to class by defining it again

class Baseball
  def strike
    "strike 3 yo"
  end
end

p Baseball.new.swing
p Baseball.new.strike
