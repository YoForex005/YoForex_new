#!/bin/bash

echo "Starting YoForex in hybrid mode..."
echo "- Express API on port 3001"
echo "- Next.js frontend on port 5000"

trap 'kill 0' SIGINT

NODE_ENV=development tsx server/index.ts &
next dev -p 5000 &

wait
