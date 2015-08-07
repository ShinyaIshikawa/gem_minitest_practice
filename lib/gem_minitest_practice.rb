# -*- coding: utf-8 -*-
#module MiniTestPractice
#class MiniTestPractice
class EnpitTdd
  # Your code goes here...
  def odd(inputNumber)
    return inputNumber.odd?
  end
  def check_number(inputNumber)
    ret = false
    checkNumber = inputNumber.to_i;
    #四桁の整数でない場合はfalse
    if(checkNumber.to_s.length == 4) then
      #偶数の場合はtrue
      if(checkNumber.even?) then
        ret = true
      else
      #奇数の場合はfalse
        ret = false
      end
    end
    return ret
  end
  def testTest()

  end
  def enough_length(targetString)
    ret = false
    length = targetString.split(//u).length
    if(length < 3) then
      ret = false
    elsif(8 < length) then
      ret = false
    else
      ret = true
    end
    return ret
  end
  def divide(dividend,divisor)
    return dividend/divisor
  end
  def fizz_buzz(number)
    ret = ''
    if(number%3==0 && number%5==0) then
      ret = 'FizzBuzz'
    elsif(number%3==0) then
      ret = 'Fizz'
    elsif(number%5==0) then
      ret = 'Buzz'
    end
    return ret
  end
  def hello()
    puts("Hello")
  end
end
#end
