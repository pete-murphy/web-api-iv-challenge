const http = require("http")

const port = process.env.PORT || 9876

http
  .createServer((_req, res) => {
    res.statusCode = 200
    res.end("Hello world!!!")
  })
  .listen(port, () => {
    console.log(`Server up on port ${port}`)
  })
