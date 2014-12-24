main = interact respondPalindromes
-- interact returns IO action, which gets a function such as String -> String
-- , and it applies the function to input and return response

respondPalindromes :: String -> String
respondPalindromes =
    unlines .
    map (\xs -> if isPal xs then "palindrome" else "not a palindrome") .
    lines

isPal :: String -> Bool
isPal xs = xs == reverse xs
