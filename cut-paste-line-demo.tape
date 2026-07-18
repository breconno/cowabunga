Output cut-paste-line-demo.gif

Set Shell bash
Set FontSize 18
Set Width 1000
Set Height 600
Set Theme {"name":"Dojo","black":"#0a1f16","red":"#c23b3b","green":"#7cff6b","yellow":"#e8a33d","blue":"#4a8a72","purple":"#5ee3a0","cyan":"#7cff6b","white":"#d7ffe0","brightBlack":"#123222","brightRed":"#e05a5a","brightGreen":"#aaffb0","brightYellow":"#ffe08a","brightBlue":"#7cb8a2","brightPurple":"#9dffce","brightCyan":"#aaffb0","brightWhite":"#f4fbf5","background":"#0c231c","foreground":"#d7ffe0","cursor":"#7cff6b","selection":"#1a4a30"}
Set Padding 20
Set BorderRadius 12
Set Margin 10
Set MarginFill "#03100e"
Set Framerate 10
Set TypingSpeed 60ms

# Open the file in the pager
Type "less samples/tmnt-stub/pizza_recipe_app.py"
Enter
Sleep 1s

# Scroll down to line 42, one line at a time (visible scroll in the GIF)
Down 42
Sleep 1s

# Set the clipboard to line 42's actual text
Copy "./this/is/my/script.sh"

# Quit the pager
Type "q"
Sleep 500ms

# Paste the copied path back at the shell prompt and run it
Paste
Sleep 500ms
Enter
Sleep 2s
