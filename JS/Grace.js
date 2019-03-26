var A = "var f = String.fromCharCode; var fs = require('fs');fs.writeFile('./Grace_kid.js', 'var A = ' + f(34) + A + f(34) + ';' + f(10) + 'var B = A;' + f(10) + 'var C = A;' + f(10) + 'eval(A);' + f(10) + '//comment' + f(10), () => {});";
var B = A;
var C = A;
eval(A);
//comment
