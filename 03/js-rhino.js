importPackage(java.io);
importPackage(java.lang);
const stdin = new BufferedReader(new InputStreamReader(System.in));
for (i=0;i<50;i++) {
let aLine = stdin.readLine();
print(+![0,1,3,6,10,15,21,28,36,45,55,66,78,91,105,120,136,153,171,190,210,231,253].every(function(i){return i-parseInt(aLine,2)}));
}