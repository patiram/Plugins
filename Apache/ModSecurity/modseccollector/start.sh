#!/bin/sh

export MOJO_BASE=/usr/share/ossim/modseccollector
export MOJO_CONFIG=$MOJO_BASE/modsec_collector.conf
export PERLLIB=$MOJO_BASE

/usr/local/bin/hypnotoad $MOJO_BASE/modsec_collector.pl
