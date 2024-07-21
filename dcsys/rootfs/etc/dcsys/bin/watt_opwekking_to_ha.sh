#!/bin/bash
curl --header "Content-Type: application/json" --request POST --data '{"opwekking": '$1'}'  http://localhost:8123/api/webhook/opwekking_webhook

