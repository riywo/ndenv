#!/usr/bin/env bash
set -e

YARN_SHIM_PATH="$SHIM_PATH/yarn"

command -p cat > "$YARN_SHIM_PATH" <<SH
#!/usr/bin/env bash
set -e
[ -n "\$NDENV_DEBUG" ] && set -x

program="\${0##*/}"
export NDENV_ROOT="$NDENV_ROOT"
"$(command -v ndenv)" exec "\$program" "\$@"
rc=\$?
for arg in \$W
do
  case \$arg in
    '-h'|'--help'|'--version')
      exit \$rc
    ;;
  esac
done
"$(command -v ndenv)" rehash
exit \$rc
SH

command -p chmod +x "$YARN_SHIM_PATH"
