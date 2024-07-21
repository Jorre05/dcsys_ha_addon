#!/bin/bash
curl --header "Content-Type: application/json" --request POST --data '{"vermogen": '$1'}'  http://localhost:8123/api/webhook/vermogen_webhook

