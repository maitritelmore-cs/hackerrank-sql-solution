-- Profitable Stocks - HackerRank SQL Basic
SELECT 
  s.stock_code
FROM price_today pt
JOIN price_tomorrow ptm ON pt.stock_code = ptm.stock_code
JOIN stocks s ON pt.stock_code = s.stock_code
WHERE ptm.price > pt.price
ORDER BY s.stock_code;
