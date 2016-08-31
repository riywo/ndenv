#!/usr/bin/env bash
set -e

NPM_SHIM_PATH="$SHIM_PATH/npm"

command -p cat > "$NPM_SHIM_PATH" <<SH
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
    '-h'|'--help'|'-v'|'--version'|'-l')
      exit \$rc
    ;;
  esac
done
"$(command -v ndenv)" rehash
exit \$rc
SH

command -p chmod +x "$NPM_SHIM_PATH"
