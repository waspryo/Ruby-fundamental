
数値.times do |変数|
    処理 A
    処理 B
    処理 C
   end
     
   またはdo endを省略して書くことができる
   数値.times { |変数|
    処理 A
    処理 B
    処理 C
   }
   Do ~ end で囲まれた部分をブロックと呼ぶ

   [1,2,3].each { |i|
    p i
}
{height: 180, weight: 65}.each { |i|
    p i
}