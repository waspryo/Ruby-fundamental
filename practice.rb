
数値.times do |変数|
    処理 A
    処理 B
    処理 C

   end

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

class Animal
  def initialize(sleep)
    @sleep = sleep
  end

  def put(sleep)
    p "#{@sleep} is the same habit"
  end
end
---------------------------------------------------------------------------------------------
# inhect advance
def send_mail(who)
  puts "Send main #{who}"
end

def notification_for_slack(who)
  puts "Notification_for_slack #{who}"
end

# 無名関数
noty = -> (x, y) { send("#{x}", y)  }.curry
noty = lambda { |x, y| send("#{x}", y)  }.curry


gender = ->(x, y) { return "#{x} #{y}"}.curry
male   = gender.("Male")
female = gender.("Female")


list = [
  { gender: :male, name: :sugimoto },
  { gender: :male, name: :kuriyama },
  { gender: :female, name: :minami },
].inject([]){|res, row|
  a = (row[:gender] == :male) ? (row[:name]) : (row[:name])
  res << a
  res
}


calc = ->(a, b) { a * b }.curry

double  = calc.(2)
tripple = calc.(3)


[1,2,3,4,5].map{|a| double.(a) }
[1,2,3,4,5].map{|a| tripple.(a) }

}

