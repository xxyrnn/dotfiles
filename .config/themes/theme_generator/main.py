import json
import os
import sys

from modules import generate_json

CONFIG_DIR = os.getenv("XDG_CONFIG_HOME")


def load_colors() -> dict[str, str]:
    COLORS_FILE = CONFIG_DIR + "/themes/colors.json"

    try:
        with open(COLORS_FILE, "r", encoding="UTF-8") as f:
            colors = json.load(f)
    except IOError:
        print("[!] ERROR: unable to open colors file")
        exit(1)

    return colors


if __name__ == "__main__":
    if not CONFIG_DIR:
        print("[!] ERROR: $XDG_CONFIG_HOME not declared")
        print("\tAdd it to your shell's configuration file or run")
        print(f"\n\tXDG_CONFIG_HOME='$HOME/.config' python3 {sys.argv[0]}")
        exit(1)

    COLORS = load_colors()

    ## JSON
    if generate_json.generate_colorscheme(COLORS):
        print("[*] JSON colorschemes generated")
    else:
        print("[!] ERROR: unable to generate JSON colorschemes")
        exit(1)
