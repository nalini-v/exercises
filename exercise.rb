class Array
  def collect(&code)
    self.each_with_index do |n, i|
      self[i] = code.call(n)
    end
  end

  def inject(code)
  	result=code;
  	self.each do |ele|
   	result=yield(result,ele)
  end
  return result
end
end

 def detect1(code_blk)
   self.each do |n|
       if (code_blk.call(n) == true)
               puts "num #{n}"
          break
       else
                 next
       end
    end
  end

array = [1,2,5,1,1]

square=Proc.new do |n|
  n ** 2
end

=begin
array.collect  do |n| n+1 end
puts array.inspect

array.collect  do |n| n+2 end
puts array.inspect
=end

=begin
puts array.inject(1) { |result,element| result * element }
puts array.inject(0) { |result,element| result + element }
=end


puts array.detect { |ele| ele > 3 }
puts array.detect { |ele| ele == 2 }
#=end