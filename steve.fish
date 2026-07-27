# Route all make/cargo/ninja/etc. builds through the system-wide `steve`
# jobserver, so multiple concurrent builds share one pool of tokens instead
# of each spawning nproc jobs and stampeding the CPU.
#   - service: `steve.service`, device: /dev/steve (steve:jobserver 0660)
#   - requires membership in the `jobserver` group to open the device
#
# Do NOT add -jN here: an explicit -j makes clients ignore the jobserver.
# -l13 is a secondary load-average brake (~ nproc+1 on this 12-thread box).
set -gx MAKEFLAGS "-l13 --jobserver-auth=fifo:/dev/steve"
set -gx NINJAOPTS "-l13"
