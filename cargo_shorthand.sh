#!/bin/bash

function cg () { cargo "$@";        };
function cgb() { cargo build "$@";  };
function cgr() { cargo run "$@";    };
function cga() { cargo add "$@";    };
function cgu() { cargo update "$@"; };
function cgt() { cargo test "$@";   };
function cgc() { cargo clean "$@";  };

function cghelp() {
  echo -e "Cargo Shorthands";
  echo -e "  $(magenta "cg")  $(grey "|") cargo        $(grey "|") \`$(green "cargo {\$@}")\`       ";
  echo -e "  $(magenta "cgb") $(grey "|") cargo build  $(grey "|") \`$(green "cargo build {\$@}")\` ";
  echo -e "  $(magenta "cgr") $(grey "|") cargo run    $(grey "|") \`$(green "cargo run {\$@}")\`   ";
  echo -e "  $(magenta "cga") $(grey "|") cargo add    $(grey "|") \`$(green "cargo add {\$@}")\`   ";
  echo -e "  $(magenta "cgu") $(grey "|") cargo update $(grey "|") \`$(green "cargo update {\$@}")\`";
  echo -e "  $(magenta "cgt") $(grey "|") cargo test   $(grey "|") \`$(green "cargo test {\$@}")\`  ";
  echo -e "  $(magenta "cgc") $(grey "|") cargo clean  $(grey "|") \`$(green "cargo clean {\$@}")\` ";
}

wjshHelpInfo "Cargo Shorthands" "cghelp";
