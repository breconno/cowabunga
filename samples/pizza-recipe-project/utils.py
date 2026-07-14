"""Terminal input and display helpers for the TMNT pizza recipe app."""

from collections.abc import Sequence

from pizza_recipe import PizzaRecipe


def print_menu() -> None:
    """Display the pizza recipe app's main menu."""
    print("\n🍕 TMNT Pizza Recipe App")
    print("1. Add a pizza recipe")
    print("2. List pizza recipes")
    print("3. Find a pizza recipe")
    print("4. Remove a pizza recipe")
    print("5. Exit")


def get_user_choice() -> str:
    """Prompt the user to select a menu option."""
    return input("Choose an option (1-5): ").strip()


def get_recipe_details() -> tuple[str, tuple[str, ...]]:
    """Prompt the user for a recipe name and comma-separated ingredients."""
    name = input("Enter pizza recipe name: ").strip()
    ingredients_input = input("Enter ingredients, separated by commas: ").strip()
    ingredients = tuple(
        ingredient.strip()
        for ingredient in ingredients_input.split(",")
        if ingredient.strip()
    )

    return name, ingredients


def print_recipes(recipes: Sequence[PizzaRecipe]) -> None:
    """Display the available pizza recipes."""
    if not recipes:
        print("No pizza recipes are available.")
        return

    print("\n🍕 Pizza Recipes:")
    for index, recipe in enumerate(recipes, start=1):
        ingredients = ", ".join(recipe.ingredients)
        print(f"{index}. {recipe.name} — {ingredients}")
