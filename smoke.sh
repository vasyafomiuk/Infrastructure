#!/bin/sh

if curl -s --head "http://34.212.135.166:3000" 
then
  echo "It worked!"
  return 0;
else
  echo "It failed"
  return 1;
fi
