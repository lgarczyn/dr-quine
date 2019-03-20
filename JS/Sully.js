function main()
{
    var i = 5;
    var m = main.toString();
    //contradictory rules with stupid correction
    if (require('fs').existsSync('Sully_5.js')) {
        m = m.replace(i, i - 1);
        i--;
        if (i < 0)
            return;
    }
    
    var fs = require('fs');
    fs.writeFile('./Sully_' + i + '.js', m + "\nmain();\n", () => {});

    var ex = require('child_process').exec;
    var child = ex('node Sully_' + i + '.js');
}
main();
