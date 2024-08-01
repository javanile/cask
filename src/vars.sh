


  if [ $# -eq 0 ]; then
    eval "set -- --help"
  fi

  variables=$(grep "^host=[a-z0-9.]* name=$1" .hosts | head -1)

  if [ -z "$variables" ]; then
    echo "No such host: $1"
    exit 1
  fi

  for variable in $variables; do
    declare "$variable"
  done

  ssh_user=${user:-root}

  if [ -n "${password}" ]; then
    clip "${password}"
  fi

  echo "${ssh_user}@${host}" -p "${ssh_port:-22}"
