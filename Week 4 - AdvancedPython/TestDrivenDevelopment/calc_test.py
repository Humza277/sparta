import pytest
import unittest

from calc import Calc


class Clac_Test(unittest.TestCase):
    simple_calc = Calc()

    def test_add(self):
        self.assertEqual(self.simple_calc.add(2, 3), 5)

    def test_sub(self):
        self.assertEqual(self.simple_calc.sub(2, 3), -1)

    def test_multi(self):
        self.assertEqual(self.simple_calc.multi(2, 3), 5)

    def test_divide(self):
        self.assertEqual(self.simple_calc.divide(10, 5), 3)
