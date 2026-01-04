{ pkgs, ... }:

{
  home.packages = with pkgs; [
          
        gnomeExtensions.arcmenu
        firefox 
  ];
}
