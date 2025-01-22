{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  buildInputs = with pkgs; [
    # postgresql_17
    zig
  ];

  # PGDATA = "${toString ./.}/.pg";

  shellHook = ''
    # pg_ctl stop
    # export PGHOST="$PGDATA"
    # [ ! -d $PGDATA ] && pg_ctl initdb -o "-U postgres"
    # pg_ctl -o "-p 6666 -k $PGDATA" start
    # echo "log_min_messages = warning" >> $PGDATA/postgresql.conf
    # echo "log_checkpoints = off" >> $PGDATA/postgresql.conf

    cd ${toString ./.}
  '';
}
