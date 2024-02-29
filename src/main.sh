
VERSION="Cask 0.1.0 (2022-11-16)"

main() {
  local ssh_user

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

  echo "${ssh_user}@${ssh_host}" -p "${ssh_port:-22}"
}
