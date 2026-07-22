gwc() {
  if [[ $# -ne 1 || -z $1 ]]; then
    echo "Usage: gwc <worktree-substring>" >&2
    return 2
  fi

  local target
  target=$(GIT_WORKTREE_PATH_CALLER=gwc command git-worktree-path "$1") || return $?
  builtin cd -- "$target"
}
