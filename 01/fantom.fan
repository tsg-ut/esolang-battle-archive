using [java] java.lang
using [java] java.math
using [java] java.io

class FantomSay {
	Void main(Str[] args) {
		// your code goes here
		BufferedReader input :=
			BufferedReader(InputStreamReader(System.in))
		Str str := input.readLine()
		BigInteger d := BigInteger(str, 2)
		System.out.println(d.toString())
	}
}