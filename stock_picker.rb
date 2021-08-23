def stock_picker(days_prices)
  min_p = days_prices[0]
  min_i = 0

  profit = 0
  days = [0, 0]

  days_prices.each_with_index do |p, i|
    if p < min_p
      min_p = p
      min_i = i
      next
    end

    if (p - min_p) > profit
      profit = p - min_p
      days = [min_i, i]
    end
  end
  days
end

p stock_picker([17,3,6,9,15,8,6,1,10])
