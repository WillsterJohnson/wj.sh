#!/bin/bash

# general
function pp  () { pnpm "$@";            };
function ppi () { pnpm install "$@";    };
function ppid() { pnpm install -D "$@"; };
function pps () { pnpm search "$@";     };
function ppl () { pnpm link "$@";       };
function ppnl() { pnpm unlink "$@";     };
# monorepo
function ppr   () { pnpm -r "$@";            };
function ppc   () { pnpm -C "$@";            };
function ppir  () { pnpm -r install "$@";    };
function ppic  () { pnpm install -C "$@";    };
function ppidc () { pnpm install -D -C "$@"; };
function ppiw  () { pnpm install -w "$@";    };
function ppidw () { pnpm install -D -w "$@"; };

function pphelp() {
  echo -e "PNPM Shorthands";
  echo -e "                       $(cyan "~~~===### General ###===~~~")"
  echo -e "  $(magenta "pp")    $(grey "|") pnpm                            $(grey "|") \`$(green "pnpm {\$@}")\`                    ";
  echo -e "  $(magenta "ppi")   $(grey "|") pnpm install                    $(grey "|") \`$(green "pnpm install {\$@}")\`            ";
  echo -e "  $(magenta "ppid")  $(grey "|") pnpm install dev                $(grey "|") \`$(green "pnpm install -D {\$@}")\`         ";
  echo -e "  $(magenta "pps")   $(grey "|") pnpm search                     $(grey "|") \`$(green "pnpm search {\$@}")\`             ";
  echo -e "  $(magenta "ppl")   $(grey "|") pnpm link                       $(grey "|") \`$(green "pnpm link {\$@}")\`               ";
  echo -e "  $(magenta "ppnl")  $(grey "|") pnpm unlink                     $(grey "|") \`$(green "pnpm unlink {\$@}")\`             ";
  echo -e "                       $(cyan "~~~===### MonoRepo ###===~~~")"
  echo -e "  $(magenta "ppr")   $(grey "|") pnpm recursive                  $(grey "|") \`$(green "pnpm -r {\$@}")\`                 ";
  echo -e "  $(magenta "ppc")   $(grey "|") pnpm in workspace               $(grey "|") \`$(green "pnpm -C {\$@}")\`                 ";
  echo -e "  $(magenta "ppir")  $(grey "|") pnpm install recursive          $(grey "|") \`$(green "pnpm -r {\$1} install {\$@}")\`   ";
  echo -e "  $(magenta "ppic")  $(grey "|") pnpm install in workspace       $(grey "|") \`$(green "pnpm -C {\$1} install {\$@}")\`   ";
  echo -e "  $(magenta "ppidc") $(grey "|") pnpm install dev in workspace   $(grey "|") \`$(green "pnpm -C {\$1} install -D {\$@}")\`";
  echo -e "  $(magenta "ppiw")  $(grey "|") pnpm install workspace root     $(grey "|") \`$(green "pnpm -W {\$1} install {\$@}")\`   ";
  echo -e "  $(magenta "ppidw") $(grey "|") pnpm install dev workspace root $(grey "|") \`$(green "pnpm -W {\$1} install -D {\$@}")\`";
}

wjshHelpInfo "PNPM Shorthands" "pphelp";
