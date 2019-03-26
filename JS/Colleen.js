main();
// comment 1
function main() {
    function fn() {}
    fn();
    // comment 2
    console.log("main();\n// comment 1\n" + main.toString());
}
