import dd from 'ddeyes'
import path from 'path'
import fs from 'fs'

export default read = (
  src
  str
  Obj
) =>

  urlConf = JSON.stringify Obj.urlConf
  if Obj.other?
    others = Obj.other
  else
    others = ''


  result = ((
    fs.readFileSync src, 'utf-8'
  ).split '\n'
  .reduce (r, c, i) =>
    [
      r...
      if c is str
        [
          c
          "#{others} #{urlConf}"
        ].toString()
        .replace ',', '\n'
      else c
    ]
  , []).join '\n'

  fs.writeFileSync src, result, 'utf-8'