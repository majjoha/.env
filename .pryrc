def pbcopy(input)
  str = String(input)
  IO.popen("pbcopy", "w") {|f| f << str }
  str
end

def pbpaste
  `pbpaste`
end
