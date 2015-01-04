main :: IO ()
main = do
  print $ primes

primes :: [Integer]
primes = sieve [2..]
  where
    sieve (p:xs) = p : sieve [x|x <- xs, x `mod` p > 0]
    
-- http://en.literateprograms.org/Sieve_of_Eratosthenes_%28Haskell%29
