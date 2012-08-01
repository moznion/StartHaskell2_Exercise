myNot :: Bool -> Bool
myNot True = False
myNot _    = True

myAnd :: Bool -> Bool -> Bool
myAnd True b = b
myAnd _ _    = False

myOr :: Bool -> Bool -> Bool
myOr False False = False
myOr _ _         = True

myXor :: Bool -> Bool -> Bool
myXor True b = myNot b
myXor _ b    = b
