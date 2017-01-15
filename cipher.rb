def crypt(input,shift)
  if shift > 26
    raise "That is too big"
  end
  
  mod = "z".ord-"a".ord + 1
  crypt =""
  letters = input.split("")
  letters.each do
    |x|
    if (x.ord>64 && x.ord<91) || (x.ord>96 && x.ord<123)
    
      if x.ord > 90
        x = ((x.ord + shift-97)%mod+97).chr
      else
        x = ((x.ord + shift-65)%mod+65).chr
      end
    end
    crypt += x
  end
  puts crypt
end
