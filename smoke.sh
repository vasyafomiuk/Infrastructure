#!/bin/sh

if curl -s --head "https://18.237.69.40:3000" 
then
  echo "It worked!"
else
  echo "It failed"
fi
