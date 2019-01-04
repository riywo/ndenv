function __fish_ndenv_needs_command
  set cmd (commandline -opc)
  if [ (count $cmd) -eq 1 -a $cmd[1] = 'ndenv' ]
    return 0
  end
  return 1
end

function __fish_ndenv_using_command
  set cmd (commandline -opc)
  if [ (count $cmd) -gt 1 ]
    if [ $argv[1] = $cmd[2] ]
      return 0
    end
  end
  return 1
end

complete -f -c ndenv -n '__fish_ndenv_needs_command' -a '(ndenv commands)'
for cmd in (ndenv commands)
  complete -f -c ndenv -n "__fish_ndenv_using_command $cmd" -a "(ndenv completions $cmd)"
end