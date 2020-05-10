"""
Module that checks if the virtual environment packages are available.
Python 3.
"""

import flask
assert(flask.__version__ == '0.12.1')
print('Import OK')
