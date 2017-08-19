using System;

public class Test
{
	public static void Main()
	{	
		String[] hoge = {
			"00000000",
			"00000001",
			"00000011",
			"00000110",
			"00001010",
			"00001111",
			"00010101",
			"00011100",
			"00100100",
			"00101101",
			"00110111",
			"01000010",
			"01001110",
			"01011011",
			"01101001",
			"01111000",
			"10001000",
			"10011001",
			"10101011",
			"10111110",
			"11010010",
			"11100111",
			"11111101"
		};
		for (int i = 0; i < 50; i++) {
			String s = Console.ReadLine();
			int t = 0;
			for (int j = 0; j < 23; j++) {
				if (s == hoge[j]) t++;
			}
			if (t > 0) {
				Console.WriteLine("1");
			} else {
				Console.WriteLine("0");
			}
		}
	}
}