import dd from 'ddeyes'
import read from '../src'
import env from './env'
import path from 'path'

{
  urlConf
} = env()


read '../target/index.js'
, "} from 'cfx.react-redux';"
, {
    urlConf: urlConf
    other: 'var urlConf = '
  }

read '../target/index.js'
, "} from 'cfx.react-redux';"
, {
    urlConf: urlConf
  }