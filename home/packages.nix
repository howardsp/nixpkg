{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # essentials
        conjure             # transform images
        mods                # command line AI        
        tesseract           # ocr tool            
        git                 # version control
        bash                # shell
        zsh                 # shell
        zsh-powerlevel10k   # zsh prompt tweaking
        synergy             # sharing keyboard
        tldr                # short version of man        
        bat                 # better cat   

  ];
}
