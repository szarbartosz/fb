--ALGEBRAIC DATA TYPES INTRO

--data Bool = False | True

--data Int = -2147483648 | -2147483647 | ... | -1 | 0 | 1 | 2 | ... | 2147483647

data Point = Point Float Float deriving (Show)

data Shape = Circle Point Float | Rectangle Point Point deriving (Show)

surface :: Shape -> Float
surface (Circle _ r) = pi * r ^ 2
surface (Rectangle (Point x1 y1) (Point x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)

translation :: Shape -> Float -> Float -> Shape
translation (Circle (Point x y) r) a b = Circle (Point (x+a) (y+b)) r
translation (Rectangle (Point x1 y1) (Point x2 y2)) a b = Rectangle (Point (x1 + a) (y1 + b)) (Point (x2 + a) (y2 + b))


--RECORD SYNTAX
data Person = Person { firstName :: String
                     , lastName :: String
                     , age :: Int
                     , height :: Float
                     , phoneNumber :: String
                     , flavor :: String
                     } deriving (Show)


--TYPE PARAMETERS
data Vector3D a = Vector3D a a a deriving(Show)

vplus :: (Num t) => Vector3D t -> Vector3D t -> Vector3D t
(Vector3D i j k) `vplus` (Vector3D l m n) = Vector3D (i+l) (j+m) (k+n)

vtimes :: (Num t) => Vector3D t -> t -> Vector3D t
(Vector3D i j k) `vtimes` m = Vector3D (i*m) (j*m) (k*m)


--DERIVED INSTANCES
data Car = Car { company :: String  
                , model :: String  
                , year :: Int  
                } deriving (Eq, Show, Read)  

data Day = Monday | Tuesday | Wendesday | Thursday | Friday | Saturday | Sunday
           deriving (Eq, Ord, Show, Read, Bounded, Enum)


--TYPE SYNONYMS
type PhoneNumber = String  
type Name = String  
type PhoneBook = [(Name,PhoneNumber)]  

phoneBook = [("betty","555-2938")     
            ,("bonnie","452-2928")     
            ,("patsy","493-2928")     
            ,("lucille","205-2928")     
            ,("wendy","939-8282")     
            ,("penny","853-2492")     
            ]  

inPhoneBook :: Name -> PhoneNumber -> PhoneBook -> Bool
inPhoneBook name number book = (name,number) `elem` book


--RECURSIVE DATA STRUCTURES
