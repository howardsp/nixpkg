{
  description = "Reproducible Nix-as-primary setup for Linux Packages with Home Manager";

  inputs = {  
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    home-manager.url = "github:nix-community/home-manager/release-25.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux"; 
      username = "howardsp"; 
      homeDir = "/home/${username}";
    in
    {
      homeConfigurations.${username} = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs { inherit system; };
        modules = [
          ./home/home.nix
          { home.username = username; home.homeDirectory = homeDir; }
        ];
      };
    };
}