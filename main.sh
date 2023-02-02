ARGS=$@

if [[ "$ARGS" == *"--autoupdate"* ]]; then
  git pull origin main
  echo -e "$(cyan "[wj.sh]:") Updated wj.sh - you will need to reload your shell to use the newest features and fixes";
fi

function color_check() {
  if [[ "$ARGS" == *"--no-color"* ]]; then
    echo $2
  else
    echo "$1$2\x1b[0m"
  fi
}
function grey   () { echo -e $(color_check "\x1b[30m" "$1"); };
function red    () { echo -e $(color_check "\x1b[31m" "$1"); };
function green  () { echo -e $(color_check "\x1b[32m" "$1"); };
function yellow () { echo -e $(color_check "\x1b[33m" "$1"); };
function blue   () { echo -e $(color_check "\x1b[34m" "$1"); };
function magenta() { echo -e $(color_check "\x1b[35m" "$1"); };
function cyan   () { echo -e $(color_check "\x1b[36m" "$1"); };

function wjshHelpInfo() {
  echo -e "$(cyan "[wj.sh]:") Loaded $1 (run \`$(green $2)\` for more info)";

};

function wjshhelp() {
  echo -e "wj.sh config info";
  echo -e "USAGE: source ~/.wj.sh/main.sh [FLAGS]";
  echo -e "                          $(cyan "~~~===### General ###===~~~")"
  echo -e "  $(magenta "--autoupdate")  $(grey "|") Automatically updates wj.sh when the \`$(green "main")\` branch is updated";
  echo -e "                $(grey "|") (we will $(red "NEVER") remove any features)";
  echo -e "  $(magenta "--no-color")    $(grey "|") Disables the use of color in the output of wj.sh's tools";
  echo -e "                          $(cyan "~~~===### Tools ###===~~~")"
  echo -e "  $(magenta "--all")         $(grey "|") Enables all tools";
  echo -e "  $(magenta "--cargo")       $(grey "|") Enables \`$(green "cargo")\` shorthands";
  echo -e "  $(magenta "--git")         $(grey "|") Enables \`$(green "git")\` shorthands";
  echo -e "  $(magenta "--pnpm")        $(grey "|") Enables \`$(green "pnpm")\` shorthands";

};
function wjshelp() { wjshhelp; };


if [[ "$@" == *"--cargo"* || "$@" == *"--all"* ]]; then source ~/.wj.sh/cargo_shorthand.sh $@; fi
if [[ "$@" == *"--git"*   || "$@" == *"--all"* ]]; then source ~/.wj.sh/git_shorthand.sh $@;   fi
if [[ "$@" == *"--pnpm"*  || "$@" == *"--all"* ]]; then source ~/.wj.sh/pnpm_shorthand.sh $@;  fi


# if args empty run help
if [[ "$@" == "" ]]; then
  echo "Add flags to .bashrc:"
  wjshhelp
else
  echo -e "$(cyan "[wj.sh]:") Run \`$(green wjshhelp)\` for config info"
fi