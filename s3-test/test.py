import boto3
from botocore.exceptions import ClientError
from botocore.client import Config
import AUTH
import json

aws_access_key_id = AUTH.AWS_ACCESS_KEY_ID
aws_secret_access_key = AUTH.AWS_SECRET_ACCESS_KEY

session = boto3.Session(
    aws_access_key_id=aws_access_key_id,
    aws_secret_access_key=aws_secret_access_key,
    region_name = AUTH.AWS_REGION
)

s3 = session.resource('s3')
expected = 'well-s3-bucket'

for bucket in s3.buckets.all():
    if 'well-s3-bucket' in bucket.name:
        assert bucket.name == expected
        print(bucket.name + ' was created')
        print(f"S3 Bucket was created on {bucket.creation_date}")
        