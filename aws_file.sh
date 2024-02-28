#!/bin/bash

clear 

read -p "What is the file URL? " URL
read -p "What is the bucket? " BUCKET
read -p "What is the file name? " FILE

curl $URL > $FILE
aws s3 cp $FILE s3://$BUCKET/
aws s3 presign --expires-in 604800 s3://$BUCKET/$FILE

#I'm a little confused by the instructions but here is the presigned url I generated https://ds2002-spr2kv1.s3.us-east-1.amazonaws.com/rotunda4.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=ASIAZI2LH3N7BNOT2IIS%2F20240228%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240228T010824Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Security-Token=FwoGZXIvYXdzEAgaDNn7lgQw5UNDU7J3qSLEAUB617%2BURYdmhndwi%2BA8OOTBKJ%2Bqe74TAk65eFwFtE5v1osmRbC5B03aUplwpGFHdg9g4s9oYGUzNEL4jPuObfege%2BeMpIDmsw4ek0UMsWO4ODpBUR5Es5CfrFCo2fFfyyrT63qGTdpBnSMZICeYN9M0yiYfRBdD3aJLSu6L3DP1qYwPal%2BbvrolEyiyNjgFnZM26RboJkQ%2F4VN8dRmuJV4oKrh%2FbueV8FrAF8tgz68zx12M0LSIZYY%2FBEYJiqr%2BcnWOdVoohr%2F5rgYyLS3kHOEnu21a1zdRPhK635nh4e9OdwwrJYLq%2BeepIJdxbVH%2FjwM%2BY3BisfLTlw%3D%3D&X-Amz-Signature=f8f5f238eabe94d0d6495091c601eccab1a2e83ff8c4ab10c674e86aa88a1e8a
