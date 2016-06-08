class Bob

def has_digits(remark)
  if remark =~ /\d+/  #I got the /\d+/ off of Rubyquicktips.com, I understand it means digits.
    return true
  else
    return false
  end
end

def only_spaces(remark)
  chars = remark.chars
  chars.each do |char|
    if char ==" "
      return true
    else
      return false
  end
end
end


def hey(remark)
  case
  when remark.empty? || only_spaces(remark) || remark.include?("\t")
    "Fine. Be that way!"
  when has_digits(remark) && remark.end_with?("?") && remark.length <4
    "Sure."
  when remark.upcase == remark && has_digits(remark) && remark.end_with?("!")
    "Whoa, chill out!"
  when remark.upcase == remark && has_digits(remark)
    "Whatever."
  when remark.upcase == remark
    "Whoa, chill out!"




  when remark.end_with?("?")
    "Sure."



  else
  "Whatever."
  end
end

end




# "1, 2, 3" is returning Whoa Chill out, needs to return Whatever
