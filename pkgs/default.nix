{ inputs, pkgs, config, packages, self, lib, ...}:

{
  home.packages = with pkgs; [
    typescript
    dart-sass
    matugen
    textlint
    bun
    zellij
    bottom
    markdownlint-cli
    proselint
    pyprland
    hyprnome
    nix-prefetch-git
    nix-prefetch-github
    rustc
    cargo
    nodejs_22
    texlab
    emacs-lsp-booster
    yazi
    blesh
  ];
}
