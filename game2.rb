def janken
    puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
    number1 = gets.to_i

    number2 = rand(3)

    jankens = ["グーを出しました", "チョキを出しました", "パーを出しました","戦わない"]
    directions = ["上","下","左","右"]

    puts "ホイ！"
    puts "----------"
    puts "あなた:#{jankens[number1]}"
    puts "相手:#{jankens[number2]}"
    puts "----------"

    if number1 == number2
      puts "あいこで・・・"
      return true
    elsif (number1 == 0 && number2 == 1) || (number1 == 1 && number2 == 2) || (number1 == 2 && number2 == 0)#自分が勝ちの時
      puts "あっち向いて〜"
      puts "0(上)1(下)2(左)3(右)"
      direction1 = gets.to_i
      direction2 = rand(4)
      puts "ホイ！"
      puts "----------"
      puts "あなた:#{directions[direction1]}"
      puts "相手:#{directions[direction2]}"
        if direction1 == direction2
          puts "あなたの勝ちです"
          return false
        else
          puts "じゃんけん・・・"
          return true
        end
    elsif(number1==0 && number2==2)||(number1==1 && number2==0)||(number1==2 && number2==1)#自分が負けた時
       puts "あっち向いて〜"
       puts "0(上)1(下)2(左)3(右)"
      direction1 = gets.to_i
      direction2 = rand(4)
      puts "ホイ！"
      puts"----------"
      puts "あなた:#{directions[direction1]}"
      puts "相手:#{directions[direction2]}"
        if direction1 == direction2
          puts "あなたの負けです"
          return false
        else
          puts "じゃんけん・・・"
          return true
        end
    elsif
      number1 == 3
      puts "あなたは戦いませんでした！平和！"
      return false
    else
      puts "エラー！0から3の数字を入力して下さい。"
      return true
  end
end

  next_game = true
  
  puts "じゃんけん・・・"

  while next_game do
    next_game = janken
  end