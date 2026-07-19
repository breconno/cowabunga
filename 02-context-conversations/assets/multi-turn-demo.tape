# 02-context-conversations: Multi-turn conversation building on previous context
# Auto-generated from demos.json - Real copilot execution

Output ./02-context-conversations/assets/multi-turn-demo.gif

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
Sleep 2s
Enter

# Wait for copilot to start
Sleep 5s

# Prompt 1
Type "@samples/pizza-recipe-project/pizza_recipe.py What does this module do?"
Sleep 2s
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

# Prompt 2
Type "@samples/pizza-recipe-project/ Give me an overview of the code structure."
Sleep 2s
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

# Prompt 3
Type "What happens when pizza_app.py requests recipes now, and how will it send them to the terminal display after list_recipes() is implemented?"
Sleep 2s
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

# Nudge TUI to scroll to input area
Type " "
Backspace
Sleep 3s

# Exit cleanly
Ctrl+C
Sleep 1s
