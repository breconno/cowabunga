"""Generic reference template for a small Python application."""

from dataclasses import dataclass


@dataclass(frozen=True)
class AppItem:
    """Describe one item managed by the application."""

    name: str
    details: tuple[str, ...]


ITEMS: tuple[AppItem, ...] = (
    AppItem(
        name="Example Item",
        details=("first detail", "second detail"),
    ),
)


def list_items() -> list[AppItem]:
    """Return all available items."""
    return list(ITEMS)


def find_item(name: str) -> AppItem | None:
    """Find an item by name, ignoring capitalization and outer whitespace."""
    normalized_name = name.strip().casefold()

    for item in ITEMS:
        if item.name.casefold() == normalized_name:
            return item

    return None
