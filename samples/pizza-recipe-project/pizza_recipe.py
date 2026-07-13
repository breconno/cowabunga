"""Starter scaffold for the TMNT pizza recipe project.

Learners will complete this file progressively in future lessons.
"""

from dataclasses import dataclass


@dataclass(frozen=True)
class PizzaRecipe:
    """Describe a pizza recipe."""

    name: str
    ingredients: tuple[str, ...]


# TODO: Add three TMNT-themed PizzaRecipe values in a future lesson.
RECIPES: tuple[PizzaRecipe, ...] = ()


def list_recipes() -> list[PizzaRecipe]:
    """Return all available recipes after this stub is implemented."""
    raise NotImplementedError("Complete list_recipes() in a future lesson.")


def find_recipe(name: str) -> PizzaRecipe | None:
    """Find a recipe by name after this stub is implemented."""
    raise NotImplementedError("Complete find_recipe() in a future lesson.")
