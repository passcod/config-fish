# Route cooperating builds through the system-wide steve jobserver.
# Do not add -jN: explicit parallelism disables shared-jobserver use.
# The load-average brake is sized per host from its logical CPU count, so the
# same file works on machines with different core counts.
if test -e /dev/steve
    set -l steve_load_brake (math (nproc) - 1)
    set -gx MAKEFLAGS "-l$steve_load_brake --jobserver-auth=fifo:/dev/steve"
    set -gx NINJAOPTS "-l$steve_load_brake"
end
