require("dotenv").config()
const http = require("http")

const port = process.env.PORT

http
  .createServer((_req, res) => {
    res.statusCode = 200
    res.end("Hello world!")
  })
  .listen(port, () => {
    console.log(`Server up on port ${port}`)
  })
