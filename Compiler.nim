import strutils

var a = "匹配 数字"
var b = "匹配 空格"
var c = "匹配 小括号"

proc compile(param:string) = 
  var compile_result = ""
  var lex = param.split(" ")
  var what = lex[1]
  if what == "数字":
    compile_result = "[0-9]"
  if what == "空格":
    compile_result = "\\s"
  if what == "换行":
    compile_result = "\\n"
  if what == "转义":
    compile_result = "\\"
  if what == "取反":
    compile_result = "^"
  if what == "小写字母":
    compile_result = "[a-z]"
  if what == "大写字母":
    compile_result = "[A-Z]"
  if what == "字符串开始":
    compile_result = "^"
  if what == "字符串结束":
    compile_result = "$"
  if what == "任何一个字符":
    compile_result = "."
  if what == "可选字母":
    compile_result = "?"
  if what == "匹配一次或者多次":
    compile_result = "+"
  if what == "匹配零次或多次":
    compile_result = "*"
  if what == "n次":
    compile_result = "{2}"
  if what == "n次到m次":
    compile_result = "{n,m}"
  if what == "小括号":
    compile_result = "\\(|\\)"
  writeFile("out.txt",compile_result)
  echo compile_result

compile(c)