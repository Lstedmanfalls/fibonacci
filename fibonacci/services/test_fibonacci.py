import fibonacci
import pytest


def test_get_fibonacci_series():
    result = fibonacci.get_fibonacci_series(4)
    expected = [0, 1, 1, 2, 3]
    assert result == expected


def test_get_fibonacci_series_type_error():
    with pytest.raises(TypeError):
        fibonacci.get_fibonacci_series("hello")


def test_get_fibonacci_series_value_error():
    with pytest.raises(ValueError):
        fibonacci.get_fibonacci_series(-1)
