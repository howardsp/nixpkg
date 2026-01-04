{ pkgs, ... }:

{

    programs.vscode = {
        enable = true;
        profiles.default.extensions = with pkgs.vscode-extensions; [
        mkhl.direnv
        mattn.lisp
        redhat.java
        bbenoist.nix
        yzhang.markdown-all-in-one
        streetsidesoftware.code-spell-checker
        ];
    };  

    home.packages = with pkgs; [
          
        firefox 
        brave 
        google-chrome 
        microsoft-edge         
        zoom-us 
        webex 

        tesseract           # ocr tool            
        zsh                 # shell
        zsh-powerlevel10k   # zsh prompt tweaking
        tldr                # short version of man        
        bat                 # better cat   
        duf dust            # replacements for du and df
        fd                  # fdfind is an enhanced find
        choose              # (the basics of awk/cut)
        direnv              # load environment variables depending on the current directory
        difftastic          # diff that understands code
        httpie              # command line http client
        curlie              # frontend to curl adds ease of use
        miller              # like sed, awk, ... for formated files csv, json..
        gtop                # command line visual top
        fzf                 # fuzzy find for the command line
        gnupg

        # Development Tools (java done per/type)
        jdk
        android-tools
        cmake
        gitkraken 
        git

        #editor and command line 
        tmux 
        neovim  
        htop         
        fastfetch 
        
        xfce.thunar 
        insync
        syncthing
        flameshot
        libreoffice-fresh
        onlyoffice-bin
        inkscape 
        vlc
        gimp
        pinta
        krita 
        glib 
        photocollage 
        mpv 

        cameractrls 
        cameractrls-gtk4
  ];
}
