#!/bin/bash

function gt  () { git "$@";           };
function gta () { git add "$@";       };
function gtc () { git commit "$@";    };
function gtcm() { git commit -m "$1"; };
function gtpl() { git pull "$@";      };
function gtpu() { git push "$@";      };
function gtr () { git remote "$@";    };
function gts () { git status "$@";    };
function gtl () { git log "$@";       };
function gtb () { git branch "$@";    };

function gthelp() {
  echo -e "Git Shorthands";
  echo -e "  $(magenta "gt")   $(grey "|") git           $(grey "|") \`$(green "git {\$@}")\`          ";
  echo -e "  $(magenta "gta")  $(grey "|") git add       $(grey "|") \`$(green "git add {\$@}")\`      ";
  echo -e "  $(magenta "gtc")  $(grey "|") git commit    $(grey "|") \`$(green "git commit {\$@}")\`   ";
  echo -e "  $(magenta "gtcm") $(grey "|") git commit -m $(grey "|") \`$(green "git commit -m {\$1}")\`";
  echo -e "  $(magenta "gtpl") $(grey "|") git pull      $(grey "|") \`$(green "git pull {\$@}")\`     ";
  echo -e "  $(magenta "gtpu") $(grey "|") git push      $(grey "|") \`$(green "git push {\$@}")\`     ";
  echo -e "  $(magenta "gtr")  $(grey "|") git remote    $(grey "|") \`$(green "git remote {\$@}")\`   ";
  echo -e "  $(magenta "gts")  $(grey "|") git status    $(grey "|") \`$(green "git status {\$@}")\`   ";
  echo -e "  $(magenta "gtl")  $(grey "|") git log       $(grey "|") \`$(green "git log {\$@}")\`      ";
  echo -e "  $(magenta "gtb")  $(grey "|") git branch    $(grey "|") \`$(green "git branch {\$@}")\`   ";
}

wjshHelpInfo "git Shorthands" "gthelp";
