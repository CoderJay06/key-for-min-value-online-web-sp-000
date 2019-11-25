# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
# require 'benchmark'


def key_for_min_value(name_hash)
  default = 1000 
  name_val = 0
  if name_hash.empty? 
    return nil 
  else 
    name_hash.to_a.each do |value|
      if value[1] < default
        default = value[1] 
        name_val = value[0] 
      end
    end
  end
  name_val 
end


=begin
iterations = 100_000 

Benchmark.bm do |bm|
  # joining an array of strings 
  bm.report do 
    iterations.times do 
      ["The", "current", "time", "is", Time.now].join(" ")
    end 
  end
  
# using string interpolation 
  bm.report do 
    iterations.times do 
      "The current time is #{Time.now}"
    end
  end 
end 

=end    

  
  
  
  





