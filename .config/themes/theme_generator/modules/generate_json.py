import json
import os

THEMES = ["catppuccin", "nord", "vaporwave"]  ## TODO: add matrix
FILENAME = "colors.json"


def generate_colorscheme(colors: dict[str, str]) -> bool:
    CONFIG_DIR = os.getenv("XDG_CONFIG_HOME")

    if not CONFIG_DIR:
        return False

    for theme in THEMES:
        path = os.path.join(CONFIG_DIR, theme, "colorschemes", FILENAME)

        try:
            with open(path, "w", encoding="UTF-8") as f:
                json.dump(colors.get(theme), f)
        except IOError:
            print("[!] ERROR: unable to write to file: ", path)
            return False

    return True
