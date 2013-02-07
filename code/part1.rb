#/usr/bin/ruby

def palindrome?(str)
  # parsed_str has no spaces and is lowercase
  parsed_str = str.gsub(/[^\w*]/, "").downcase()
  return parsed_str == parsed_str.reverse
end

def foo()
  puts palindrome?("A man, a plan, a canal -- Panama")
  puts palindrome?("Madam, I'm Adam!")
  puts palindrome?("Abracadabra")
end

foo()

def count_words(str)
  # YOUR CODE HERE
end
