"""sample_pkg — a deliberately clean package that passes the full fleet floor.

Exists only so fleet-floor-workflows can prove (on real CI) that its 5 reusable
workflows go green against well-formed code. Keep it boring and clean.
"""

__all__ = ["add", "greet"]


def add(a: int, b: int) -> int:
    """Return the sum of two integers."""
    return a + b


def greet(name: str) -> str:
    """Return a friendly greeting."""
    return f"Hello, {name}!"
