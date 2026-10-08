# Caelestia Smart Close

Small Hyprland/Caelestia helper for the existing `Super+Q` close binding.

- Normal applications receive the compositor's standard close request.
- Moonlight is deliberately protected from the generic close binding so an
  accidental `Super+Q` does not tear down an active remote-desktop stream.
- Ghostty needs no terminal-specific close workaround.

Install with `./install.sh`; it points `~/.local/bin/kagami-smart-close` at the
plugin script. `scripts/smart-close --probe` prints the active window and
whether it is protected.
