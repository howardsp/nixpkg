#!/usr/bin/env bash
set -euo pipefail

# 1) Install Nix (multi-user daemon; recommended on Linux)
if ! command -v nix >/dev/null 2>&1; then
  echo "Installing Nix..."
  sh <(curl -L https://nixos.org/nix/install) --daemon
else
  echo "Nix already installed."
fi

# 2) Enable flakes + nix-command
mkdir -p ~/.config/nix
if ! grep -q "experimental-features" ~/.config/nix/nix.conf 2>/dev/null; then
  echo "experimental-features = nix-command flakes" >> ~/.config/nix/nix.conf
fi

# 3) Load Nix into current shell (best-effort)
if [ -e /etc/profile.d/nix.sh ]; then
  # shellcheck disable=SC1091
  . /etc/profile.d/nix.sh
elif [ -e "$HOME/.nix-profile/etc/profile.d/nix.sh" ]; then
  # shellcheck disable=SC1091
  . "$HOME/.nix-profile/etc/profile.d/nix.sh"
fi

# 4) Install home-manager (flake provides it, but this ensures command exists)
echo "Installing home-manager (via nix profile)..."
nix profile install nixpkgs#home-manager || true

echo "Bootstrap complete."
echo "Next: edit flake.nix username/homeDir + home/git.nix name/email, then run:"
echo "  home-manager switch --flake .#YOUR_USER"
