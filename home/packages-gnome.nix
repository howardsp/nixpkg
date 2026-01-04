{ pkgs, ... }:

{
  home.packages = with pkgs; [
          
        gnome-extension-manager
        gnomeExtensions.arcmenu
        gnome-system-monitor
        gnomeExtensions.dash-to-panel 
        gnomeExtensions.date-menu-formatter
        gnomeExtensions.highlight-focus
        gnomeExtensions.just-perfection
        gnomeExtensions.appindicator
        gnomeExtensions.vitals
        gnomeExtensions.transparent-window-moving
        gnomeExtensions.pop-shell
        gnomeExtensions.desktop-icons-ng-ding
        gnomeExtensions.quick-settings-tweaker
        gnomeExtensions.pano
        gnomeExtensions.x11-gestures
        gnomeExtensions.caffeine
        gnomeExtensions.tiling-shell
        dconf-editor

        adwaita-icon-theme
        whitesur-icon-theme
        nordzy-icon-theme
        yaru-theme
        yaru-remix-theme
        orchis-theme
        whitesur-gtk-theme 
        whitesur-cursors
  ];
}
