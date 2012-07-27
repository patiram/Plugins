#!/bin/sh

export COLLECTOR_LOCATION=/usr/share/ossim/modseccollector
export MOJO_CONFIG=$COLLECTOR_LOCATION/modsec_collector.conf
export PERLLIB=$COLLECTOR_LOCATION

/usr/local/bin/hypnotoad -s $COLLECTOR_LOCATION/modsec_collector.pl
