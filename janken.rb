def janken
  puts "じゃんけん・・・" 
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  select_number = gets.to_i
  if !(select_number == 0 || select_number == 1 || select_number ==2)
    select_number = 3
  end
  random_number = rand(3)
  jankens = ["グー","チョキ","パー","戦わない"]
  puts "あなたは#{jankens[select_number]}です 相手は#{jankens[random_number]}です"
  puts"------------------------------" 

  if select_number ==3 || random_number == 3
    puts"ゲームを終了します。"
    exit
  end
  number = select_number - random_number
  if number == 0
    puts "あいこです。もう一度じゃんけんをします。"
    return false
  elsif number == 1 || number == -2
    puts"じゃんけんに負けました。あっちむいて・・・"
    return true
  elsif number == -1 || number == 2
    puts "じゃんけんに勝ちました。あっちむいて・・・"
    return true
  end 
end

def acchimuite_hoi
  puts "0(上)1(下)2(左)3(右)"
  select_number2 = gets.to_i
  random_number2 =rand(3)
  directions = ["上","下","左","右"]
  puts"ホイ！"
  puts "あなた：#{directions[select_number2]} 相手：#{directions[random_number2]}"
  puts"------------------------------"
  if select_number2 == random_number2
  true
  else
  false
  end
end

f1 = nil

loop do
  f1 = janken
  if f1
    loop do
      f2 = acchimuite_hoi
      if f2
      puts"勝敗がつきました"
      isBreak = true
      break
      else
      next
      end
    end
    break
  else
    next
  end
end

if f1
  puts"あなたの勝ちです"
else 
  puts"あなたの負けです"
end