def match(command):
    return ("sudo pacman -S" in command.script and 'error: target not found: ' in command.output.lower())


def get_new_command(command):
    return f'yay -S {" ".join(command.script.split(" ")[3:])}'

# Optional:
enabled_by_default = True

priority = 1000  # Lower first, default is 1000

requires_output = True