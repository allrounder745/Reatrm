#!/bin/bash

mkdir -p stream

# Remove old segments
rm -f stream/*

# Start FFmpeg in foreground (no "&") — this keeps Render service alive
ffmpeg -re -i "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8" \
  -c copy -f hls -hls_time 6 -hls_list_size 6 -hls_flags delete_segments \
  -method PUT stream/stream.m3u8
