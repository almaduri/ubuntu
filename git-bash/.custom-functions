# Open in VS Code
function c() {
  if [ $# -eq 0 ];
  then
    code .
  else
    code $1
  fi
}

# Open directory using file explorer
function e() {
  if [ $# -eq 0 ];
  then
    start .
  else
    directory="$1"
    start "${directory//\//"\\\\"}"
  fi
}

# Copy .zshrc
function cprc() {
  cp ~/.zshrc /d/codes/ubuntu/git-bash
}