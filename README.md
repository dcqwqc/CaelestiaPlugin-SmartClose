# Caelestia Smart Close

Small Hyprland/Caelestia helper for the existing `Super+Q` close binding.

## Behaviour

- First `Super+Q`: normal Hyprland close request.
- If Kitty responds with its **Close OS window** yes/no overlay, the next
  `Super+Q` accepts **Yes**.
- Enter is injected only when the exact Kitty `ask --type=yesno` overlay with
  title `Close OS window` is a descendant of the active Kitty process.
- Other applications keep the normal close behaviour.
- Moonlight keeps the existing Kagami exception.

This deliberately does not disable Kitty's protection and does not use a timing
heuristic, so a second key press cannot accidentally submit the focused app.

## Install

Clone this repository to:

    ~/.local/share/caelestia/plugins/smart-close

Then run:

    ./install.sh

The installer points the existing `kagami-smart-close` command at the plugin.
The current Kagami Hyprland configuration already binds `SUPER + Q` to that
command, so no duplicate key binding is added.

## Debug

    scripts/smart-close --probe

prints the active window and whether the exact Kitty close overlay is detected
without changing anything.
