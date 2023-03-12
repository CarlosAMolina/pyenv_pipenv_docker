"""
Module that checks if the virtual environment packages are available.
Python 3.
"""

import flask
assert(flask.__version__ == "2.2.3")
print("Fask imported OK")
