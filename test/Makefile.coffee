import dd from 'ddeyes'
import read from '../src'
import env from './env'

{
  urlConf
} = env()

read '../target/index.js', 0, urlConf