With Ada.Text_IO; Use Ada.Text_IO;  
With Ada.Integer_Text_IO; Use Ada.Integer_Text_IO;

procedure Program is
   type Binary_array is array(0..99) of Integer;
   type Decimal_array is array(0..33) of Integer;
   bin: Binary_array;
   dec: Decimal_array;
   dec_len: Integer := 0;
   num: Integer := 0;
   char: String := "A";
begin
  -- your code goes here
  for i in 0..99 loop
     get(char);
     if char = "0" then
         bin(i) := 0;
      else
         bin(i) := 1;
      end if;
  end loop;
  
  for i in 0..33 loop
     num := 0;
     for j in 0..99 loop
        num := num * 2;
        num := num + bin(j);
        bin(j) := num / 10;
        num := num rem 10;
     end loop;
     
     dec(i) := num;
  end loop;
  
  for i in 0..33 loop
     put(dec(33 - i), 0);
  end loop;
end Program;