"""Pytest Configuration and Fixtures."""

from pathlib import Path

import ucdp as u
from pytest import fixture

import ucdp_regf

EXAMPLES_PATH = Path(ucdp_regf.__file__).parent / "examples"


@fixture
def example_simple():
    """Add access to ``examples/simple``."""
    example_path = EXAMPLES_PATH / "simple"
    with u.extend_sys_path((example_path,)):
        yield example_path
