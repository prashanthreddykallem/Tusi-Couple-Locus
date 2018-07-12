-- |Haskell program for the locus of a point on the diameter of the smaller circle of a Tusi Couple

tusiCouple::(Floating a,Enum a)=>a->a->[(a,a)]
tusiCouple r d = [(x,y)|t<-[0..(2*pi)],let x = r*(cos (t))+d*(cos (t)) ,let y =  r*(sin (t))-d*(sin (t)) ]
main = do 
       putStrLn "Enter the value of radius of smaller cirlce"
       radius<-getLine 
       putStrLn "Enter the value of distance of point from center"
       dist<-getLine
       let r = (read radius::Float)
       let d = (read dist ::Float)
       print $  tusiCouple r d
         
       
    