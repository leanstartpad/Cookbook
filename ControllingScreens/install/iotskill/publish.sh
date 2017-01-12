#!/usr/bin/env bash

rm iotskill.zip
cd src
zip -X -r ../iotskill.zip *
cd ..
# aws lambda update-function-code --function-name StatePop  --zip-file fileb://iotskill.zip

aws s3 cp iotskill.zip s3://alexabucket7/bin/
aws s3 cp ../statepop.json s3://alexabucket7/cloudformation/
