import dd from 'ddeyes'
import path from 'path'
import fs from 'fs'

export default read = (
  src
  num
  urlConf
) =>
  urlConfig = JSON.stringify urlConf
  
  array = (
    fs.readFileSync src, 'utf-8'
  ).split '\n'

  result = (
    array.reduce (r, c, i) =>
      [
        r...
        if i is num
          array[num] = "var urlConf = #{urlConfig}"
        else c
      ]
    , []
  ).join '\n'
  
  fs.writeFileSync src, result, 'utf-8'