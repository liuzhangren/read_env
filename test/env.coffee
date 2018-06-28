import dd from 'ddeyes'
import dotenv from 'dotenv'
import Path from 'path'

process.on 'WITHOUT_ENV_CONF'
, =>
  console.log 'WITHOUT_ENV_CONF'

env = =>

  dotenv.config
    path: Path.join __dirname, '../.env'

  unless process.env?.host?
    process.kill process.pid
    , 'WITHOUT_ENV_CONF'

export default =>

  env()

  {
    host
    port
    prefix
  } = process.env

  urlConf: {
    host
    port
    prefix
  }
