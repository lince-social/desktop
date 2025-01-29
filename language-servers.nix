{
  pkgs ? import <nixpkgs> { },
}:
pkgs.mkShell {
  buildInputs = with pkgs; [
    # postgresql_17
    zig
    zls
    nixfmt-rfc-style
    nil
    lua
    marksman
    markdown-oxide
    tailwindcss-language-server
  ];

  shellHook = ''
    cd ${toString ./.}
    nvim
  '';
}
