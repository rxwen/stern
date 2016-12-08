#compdef stern

# zsh completions for stern

local -a arguments

_stern() {
  typeset -A opt_args
  local context state line curcontext="$curcontext"

  local ret=1

  _arguments -C \
    {-h,--help}'[show help]' \
    {-t,--timestamps}'[Print timestamps]' \
    {-v,--version}'[print the version]' \
    {-s,--since}'[Return logs newer than a relative duration like 5s, 2m, or 3h. Defaults to all logs. (default: 0s)]' \
    '--context[Kubernetes context to use]' \
    '--kube-config[Path to kubeconfig file to use]:configfile:_path_files' \
    {-n,--namespace}'[Kubernetes namespace to use (default: "default")]' \
    {-c,--container}'[Container name when multiple containers in pod (default: ".*")]' \
  && ret=0

  return ret
}

_stern "$@"

