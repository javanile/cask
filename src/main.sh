
module apply
module clip

VERSION="Cask 0.1.0 (2022-11-16)"

usage() {
  echo "Usage: cask [COMMAND] [OPTIONS]"
  echo ""
  echo "Available commands"
  echo "  apply TARGET      Creates or updates resources according to the configuration"
}

main() {
  local command
  local hosts_file

  command=$1
  hosts_file="${HOME}/.hosts"

  case $command in
    --help|-h)
      usage
      ;;
    apply)
      cask_apply "${hosts_file}"
      ;;
    *)
      usage
      ;;
  esac
}
