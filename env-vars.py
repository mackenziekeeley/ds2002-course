#!/Users/mackenzie/anaconda3/bin/python3

import os

os.environ["YEAR"] = "Third-year"
os.environ["MAJOR"] = "ETP"
os.environ["TRANSFER_STUDENT"] = "True"

YEAR = input('What year are you in? ')
MAJOR = input('What is your major? ')
TRANSFER_STUDENT = input('Are you a transfer student? ')

print(YEAR)
print(MAJOR)
print(TRANSFER_STUDENT)

