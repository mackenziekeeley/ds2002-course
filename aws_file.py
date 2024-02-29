#!//Users/mackenzie/anaconda3/bin/python

import boto3
import requests
import os

s3 = boto3.client('s3', region_name="us-east-1")

os.environ["bucket_name"] = "Gifs"
os.environ["expires"] = "604800"
os.environ["url"] = "https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExdDdrZXV4cjBrZGl5dWdja3E1aWtvNXNuYXZpNnhpbmd5djd5YTM0ciZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/7kn27lnYSAE9O/giphy.gif"

expires = input('When do you want it to expire? ')
url = input('What is the url? ')

bucket = 'ds2002-spr2kv'

s3.put_object(Bucket=bucket, Key=url, Body=url, ACL='public-read')

presign = s3.generate_presigned_url(
    'get_object',
    Params={'Bucket': bucket, 'Key': url},
    ExpiresIn=expires
)

print(presign)

#presigned url https://ds2002-spr2kv.s3.amazonaws.com/https%3A//media.giphy.com/media/v1.Y2lkPTc5MGI3NjExZHE5d2htajl3NjN4cjFsYm5iOHB6ZXo4N3BhMW44ZG5oOTAxOWFsaiZlcD12MV9naWZzX3NlYXJjaCZjdD1n/t3sZxY5zS5B0z5zMIz/giphy.gif?AWSAccessKeyId=AKIAVRUVRY2GJYCRYWOE&Signature=d4uGLCIXewObgOev6L18mPfzMgY%3D&Expires=1709847992
