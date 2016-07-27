data DividedResult =
  Result Integer
  | DividedByZero
  deriving Show

type Numerator = Integer
type Denominator = Integer
type Quotient = Integer


-- should this be using more function composition?
dividedBy :: Numerator -> Denominator -> DividedResult
dividedBy n d
  | d == 0 || n == 0                     = DividedByZero
  | (d > 0 && n > 0) || (d < 0 && n < 0) = Result $ go n d
  | otherwise                            = Result $ negate $ go (abs n) (abs d)
  where
    go n d
      | d > n = 0
      | otherwise = 1 + go (n - d) d

-- dividedBy :: Integral a => a -> a -> (a, a)
-- dividedBy num denom = go num denom 0
--   where go n d count
--     | n < d = (count, n)
--     | otherwise = go (n - d) d (count + 1)
