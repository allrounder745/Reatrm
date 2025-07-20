const express = require('express');
const app = express();
const PORT = process.env.PORT || 10000;

app.use('/stream', express.static('stream'));

app.get('/', (req, res) => {
  res.send(`<h2>Restreaming M3U8</h2>
    <video controls autoplay width="600">
      <source src="/stream/stream.m3u8" type="application/x-mpegURL">
    </video>`);
});

app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});
