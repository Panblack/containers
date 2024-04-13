#!/bin/bash
for x in *; do
  echo $x;
  cd $x; pwd
  _title=`jq --raw-output .page_data.download_subtitle entry.json`
  _title=${_title//\(/}
  _title=${_title//\)/}
  _title=${_title//\[/}
  _title=${_title//\]/}
  _title=${_title//\{/}
  _title=${_title//\}/}
  _title=${_title//\\/}
  _title=${_title//\//}
  _title=${_title//\*/}
  _title=${_title//\?/}
  _title=${_title//\'/}
  _title=${_title//\"/}
  _title=${_title//:/}
  _title=${_title//-/_}
  _title=${_title//  / }
  _title=${_title//  / }
  _title=${_title// /_}
  echo ${_title}
  if [[ -n ${_title} ]];then
    find -name audio.m4s -exec ffmpeg -i {} -acodec libmp3lame "../${_title}.mp3" \;
  else
    echo "title empty"
  fi
  cd ..
  unset _download_subtitle
  unset _title
done
