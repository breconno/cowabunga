"""Entry point for previewing the TMNT pizza recipe starter."""

import pizza_recipe
from utils import print_recipes


def main() -> None:
    """Load recipes from the starter module and display them."""
    try:
        recipes = pizza_recipe.list_recipes()
    except NotImplementedError as error:
        print(f"Pizza recipes are not ready yet: {error}")
        return

    print_recipes(recipes)


if __name__ == "__main__":
    main()
