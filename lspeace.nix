{
  pkgs ? import <nixpkgs> { },
}:
pkgs.mkShell {
  buildInputs = with pkgs; [
    # postgresql_17
    zig
    lua
  ];

  shellHook = ''
    cd ${toString ./.}
    nvim
  '';
}
