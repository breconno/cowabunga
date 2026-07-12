"""Temporary placeholder for a future TMNT-themed sample app."""


from typing import List


def list_pizza_recipes() -> List[str]:
    """Return beginner-friendly pizza recipe names."""
    return ["Classic Cheese", "Pepperoni Power", "Veggie Ninja"]


def print_todo_note() -> None:
    """Print a small TODO note for the future full app."""
    print("TODO: Build the full TMNT pizza recipe manager app.")


if __name__ == "__main__":
    print("Available recipes:")
    for recipe in list_pizza_recipes():
        print(f"- {recipe}")
    print_todo_note()
