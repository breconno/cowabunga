# 02-context-conversations: Reference multiple files to understand data flow
# Auto-generated from demos.json - Real copilot execution

Output ./02-context-conversations/assets/multi-file-demo.gif

Set FontSize 18
Set Width 1000
Set Height 600
Set Theme "Dracula"
Set Padding 20
Set BorderRadius 8
Set Margin 10
Set MarginFill "#282a36"
Set Framerate 10

# Human typing speed
Set TypingSpeed 60ms

# Launch copilot
Type "copilot"
Enter

# Wait for copilot to start
Sleep 5s

# Execute the prompt
Type "@samples/pizza-recipe-project/pizza_app.py @samples/pizza-recipe-project/pizza_recipe.py @samples/pizza-recipe-project/utils.py How do these files work together? Trace the current call from pizza_app.py into pizza_recipe.py, and why no recipe data reaches utils.py yet."
Sleep 3s
Enter

# Wait for response (with periodic nudges to keep input visible)
Sleep 3s
Hide
Type " "
Backspace
Show
Sleep 3s
Hide
Type " "
Backspace
Show
Sleep 3s
Hide
Type " "
Backspace
Show
Sleep 3s
Hide
Type " "
Backspace
Show
Sleep 3s
Hide
Type " "
Backspace
Show
Sleep 3s
Hide
Type " "
Backspace
Show
Sleep 3s
Hide
Type " "
Backspace
Show
Sleep 3s
Hide
Type " "
Backspace
Show
Sleep 3s
Hide
Type " "
Backspace
Show
Sleep 3s
Hide
Type " "
Backspace
Show
Sleep 3s
Hide
Type " "
Backspace
Show
Sleep 3s
Hide
Type " "
Backspace
Show
Sleep 3s
Hide
Type " "
Backspace
Show
Sleep 1s

# Nudge TUI to scroll to input area
Type " "
Backspace
Sleep 3s

# Exit cleanly
Ctrl+C
Sleep 1s
