const http = require("http")

http
  .createServer((_req, res) => {
    res.statusCode = 200
    res.end("Hello world!")
  })
  .listen(3000, () => {
    console.log("Server up on port 3000")
  })
