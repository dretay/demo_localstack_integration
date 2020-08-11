#!/bin/bash
set -x
awslocal cloudformation create-stack --stack-name demo_localstack_application --template-body file:///docker-entrypoint-initaws.d/demo_stack.yaml
set +x
