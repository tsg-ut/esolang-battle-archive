class M{
static void Main(string[]a){
string s = System.Console.ReadLine();
for(int i = 0; i < 50; i++)
  if(i < 33 && s[i] == '1' && s[i+5] == '1' && s[i+12] == '1' && s[i+17] == '1') 
    System.Console.Write(1);
  else
    System.Console.Write(0);
}
}