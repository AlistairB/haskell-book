mc91 :: (Ord a, Num a) => a -> a
mc91 x
  | x > 100   = x - 10
  | otherwise = mc91 . mc91 . (+11) $ x

-- why do I need the dollar sign?
