print gets.chop.chars.each_with_index.map{ |i,c| ((i.ord+c-64)%26+65).chr }.join