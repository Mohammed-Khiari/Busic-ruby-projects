
#Implement a method #stock_picker that takes in an array of stock prices, one for each 
#hypothetical day. It should return a pair of days representing the best day to buy and 
#the best day to sell. Days start at 0.

def stock_picker(prices)
    min_p = prices[0]
    min_i = 0
  
    profit = 0
    days = [0, 0]
  #Iterate over pices array
    prices.each_with_index do |p, i|
        #determine minimum price to compare with the next price values
      if p < min_p
        min_p = p
        min_i = i
        next     # next for escape this iteration if codition is true
      end
      #determine thé maximum profit
      if p - min_p > profit
        profit = p - min_p
        days = [min_i, i]
      end
    end
    
    days
  end
  
  array = [17, 3, 6, 9, 15, 8, 5, 1, 10]
  
  p stock_picker(array)