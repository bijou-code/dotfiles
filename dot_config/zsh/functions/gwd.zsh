gwd() {
  local current_worktree main_worktree

  current_worktree=$(git rev-parse --show-toplevel 2>/dev/null) || {
    echo "gwd: not inside a Git repository" >&2
    return 2
  }

  main_worktree=$(GIT_WORKTREE_PATH_CALLER=gwd command git-worktree-path --main) || return $?
  command gwd "$@" || return $?

  if [[ ! -d $current_worktree ]]; then
    builtin cd -- "$main_worktree"
  fi
}
