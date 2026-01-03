{ config, pkgs, ... }:

{
  home.stateVersion = "24.11";

  # Make nix feel like your "primary" package manager:
  # - install tools via home.packages
  # - manage dotfiles + shells here
  imports = [
    ./packages.nix
    #./git.nix
    #./zsh.nix
  ];

  programs.home-manager.enable = true;

  # Quality-of-life defaults
  programs.direnv.enable = true;
  programs.direnv.nix-direnv.enable = true;

  programs.starship.enable = true;

  # Put user-level binaries first
  home.sessionPath = [
    "${config.home.homeDirectory}/.nix-profile/bin"
    "${config.home.homeDirectory}/.local/bin"
  ];

  # Example: environment variables
  home.sessionVariables = {
    EDITOR = "vim";
  };

  # Example dotfile (managed)
  home.file.".config/nixpkgs/README".text = ''
    This directory is managed by home-manager.
  '';
}
