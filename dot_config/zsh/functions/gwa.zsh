gwa() {
  local output exit_code last_line destination

  output=$(command gwa "$@")
  exit_code=$?
  [[ -n $output ]] && print -r -- "$output"
  (( exit_code == 0 )) || return $exit_code

  last_line=${output##*$'\n'}
  if [[ $last_line != "Worktree ready at "* ]]; then
    echo "gwa: could not determine the new worktree path" >&2
    return 1
  fi

  destination=${last_line#Worktree ready at }
  builtin cd -- "$destination"
}
