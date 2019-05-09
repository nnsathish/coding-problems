
def divide(dividend, divisor)
  quotient = 0
  quotient_sign = 1
  max_result = 2**31 - 1

  if (dividend < 0 && divisor > 0) || (divisor < 0 && dividend > 0)
    quotient_sign = -1
    max_result += 1
  end
    
  divisor = divisor.abs
  dividend = dividend.abs
  return [dividend, max_result].min * quotient_sign if divisor == 1
    
  while dividend >= divisor
    dividend -= divisor
    quotient += 1
  end
  
  [quotient, max_result].min * quotient_sign
end

def divide_opt(dividend, divisor)
  quotient = []
  quotient_sign = 1
  max_result = 2**31 - 1
  if (dividend < 0 && divisor > 0) || (divisor < 0 && dividend > 0)
    quotient_sign = -1
    max_result += 1
  end
    
  divisor = divisor.abs
  dividend = dividend.abs
  return 0 if dividend < divisor
  return quotient_sign if dividend == divisor
  return [dividend, max_result].min * quotient_sign if divisor == 1
  
  dividend = dividend.to_s.chars
  while dividend.any?
    dividend_part = dividend.shift.to_i
    while dividend_part < divisor && dividend.any?
      quotient << 0
      dividend_part = (dividend_part.to_s + dividend.shift).to_i
    end
    quotient_part = 0
    while dividend_part >= divisor
      dividend_part -= divisor
      quotient_part += 1
    end
    dividend[0] = dividend_part.to_s + dividend[0] if dividend_part > 0 && dividend.any? # carry
    quotient << quotient_part
  end
  
  quotient = quotient.join.to_i
  [quotient, max_result].min * quotient_sign
end

dividend, divisor = ARGV.map(&:to_i)
puts divide_opt(dividend, divisor)
