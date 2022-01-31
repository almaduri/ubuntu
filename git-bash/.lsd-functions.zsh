# Show only hidden files
function lh() {
  if [ $# -eq 0 ];
  then
    unset TERM
    lsd -ld .* --blocks=permission,name --color=always
    export TERM=xterm-256color
  fi
}

function l() {
  if [ $# -eq 0 ];
  then
    unset TERM
    lsd -l --color=always --blocks=permission,name
    export TERM=xterm-256color
  fi
}

function la() {
  if [ $# -eq 0 ];
  then
    unset TERM
    lsd -A1 --color=always --blocks=permission,name
    export TERM=xterm-256color
  fi
}

function ld() {
  if [ $# -eq 0 ];
  then
    unset TERM
    lsd -ld */ --color=always --blocks=permission,name
    export TERM=xterm-256color
  fi
}

function ll() {
  if [ $# -eq 0 ];
  then
    unset TERM
    lsd -lA --color=always
    export TERM=xterm-256color
  fi
}

function lt() {
  if [ $# -eq 0 ];
  then
    unset TERM
    lsd --tree --color=always
    export TERM=xterm-256color
  else
    unset TERM
    lsd --tree --color=always $1
    export TERM=xterm-256color
  fi
}