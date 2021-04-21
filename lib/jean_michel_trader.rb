def day_trader(day_prices)
    benefit_h = {}

    day_prices.combination(2) { |c| benefit_h[ c[1] - c[0] ] = c }

    buy_day = day_prices.index(benefit_h.max.flatten[1]) + 1
    sell_day = day_prices.index(benefit_h.max.flatten[2]) + 1

    "Holla Lehman Brother's! Vous avez intéret à acheter le jour #{buy_day} et à vendre le jour #{sell_day}!"
end