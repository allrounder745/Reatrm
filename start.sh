#!/bin/bash

mkdir -p stream

ffmpeg -i "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8" \
  -c copy -f hls -hls_time 6 -hls_list_size 6 -hls_flags delete_segments \
  stream/stream.m3u8 &

# Start the Node.js server
node server.js
