# !/bin/bash

INTERFACE=wlp2s0

main() {
  iwlist $INTERFACE scan | awk -f scan_rssi.awk
}

main "$@"
