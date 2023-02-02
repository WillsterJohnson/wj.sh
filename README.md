# wj.sh

An ever-increasing collection of bash micro tools.

## Installation

All in one:

```sh
git clone git@github.com:WillsterJohnson/wj.sh.git ~/.wj.sh && echo -e "\n# wj.sh\nsource ~/.wj.sh/main.sh" >> ~/.bashrc && source ~/.wj.sh/main.sh
```

Step-by-step:

Clone this repo to your home directory:

```sh
git clone git@github.com:WillsterJohnson/wj.sh.git ~/.wj.sh
```

Add the following to your `~/.bashrc`:

```sh
# wj.sh
source ~/.wj.sh/main.sh
```

Add flags to the above `source` statement to decide which tools to load.
You can always change this later, and you can see what flags are available by
running `wjshhelp`.
