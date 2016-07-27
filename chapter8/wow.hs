cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y

-- fill in the types

flippy :: String -> String -> String
flippy = flip cattyConny

appedCatty :: String -> String
appedCatty = cattyConny "woops"

frappe :: String -> String
frappe = flippy "haha"

sumAll :: (Eq a, Num a) => a -> a
sumAll 0 = 0
sumAll a = a + sumAll (a - 1)

rs :: (Integral a) => a -> a -> a
rs _ 0 = 0
rs x y = x + rs x (y - 1)
  --
  -- go x y x
  -- where
  --   go _ _ 1 = 0
  --   go x y primary = x + x + (go x y (primary - 1))
