puts "じゃんけん・・・・"

def janken
 puts "[0]グー[1]チョキ[2]パー"

 player = gets.to_i
 program = rand(3)

 jankens = ["グー", "チョキ","パー"]
 puts "ほい！"
 puts "---------"
 puts "あなた:#{jankens[player]}を出しました。"
 puts "相手:#{jankens[program]}を出しました。"
 puts "---------"
 
 if player == program
     puts "あいこで..."
     return true
 
 elsif (player == 0 && program == 1)||(player == 1 && program == 2)||(player == 2 && program == 0)
     puts "あっち向いて"
     puts "[0]上[1]下[2]左[3]右"
     player1 = gets.to_i
     program1 = rand(4)
     yubisasis = ["上","下","左","右"]
     puts "ほい！"
     puts "----------"
     puts "あなた:#{yubisasis[player1]}を出しました。"
     puts "相手:#{yubisasis[program1]}を出しました。"
     
     
     if player1 == program1
         puts "あなたの勝ちです！"
         return false
     else
         puts "残念。NEXT!"
         return true
     end
else
     puts "相手：あっち向いて"
     puts "[0]上[1]下[2]左[3]右"
     player2 = gets.to_i
     program2 = rand(4)
     yubisasi = ["上","下","左","右"]
     puts "ほい！"
     puts "----------"
     puts "あなた:#{yubisasi[player2]}を出しました。"
     puts "相手:#{yubisasi[program2]}を出しました。"
     if player2 == program2
         puts "あなたの負けです。"
     else
         puts "NEXT!"
     end
     return true
 end

end

next_game = true
while next_game do
  next_game = janken
end