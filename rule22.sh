#!/bin/bash

# check for compliance with rule 22
check_compliance () {

if [ "$(sysctl $1)" == "$1 = $2" ]
then
    echo [OK] $1
else
    echo [KO] $1
fi

}

# No routing between interfaces
check_compliance net.ipv4.ip_forward 0

# Reverse path filtering
check_compliance net.ipv4.conf.all.rp_filter 1
check_compliance net.ipv4.conf.default.rp_filter 1

# Do not send ICMP redirects
check_compliance net.ipv4.conf.all.send_redirects 0
check_compliance net.ipv4.conf.default.send_redirects 0

# Deny source routing packets
check_compliance net.ipv4.conf.all.accept_source_route 0
check_compliance net.ipv4.conf.default.accept_source_route 0

# Do not accept ICMPs of redirect type
check_compliance net.ipv4.conf.all.accept_redirects 0
check_compliance net.ipv4.conf.all.secure_redirects 0
check_compliance net.ipv4.conf.default.accept_redirects 0
check_compliance net.ipv4.conf.default.secure_redirects 0

# Log packets with abnormal IPs
check_compliance net.ipv4.conf.all.log_martians 1

# RFC 1337
check_compliance net.ipv4.tcp_rfc1337 1

# Ignore responses that do not comply with RFC 1122
check_compliance net.ipv4.icmp_ignore_bogus_error_responses 1

# Increase the range for ephemeral ports
check_compliance net.ipv4.ip_local_port_range "32768 65535"

# Use SYN cookies
check_compliance net.ipv4.tcp_syncookies 1

# Disable support for "router solicitations"
check_compliance net.ipv6.conf.all.router_solicitations 0
check_compliance net.ipv6.conf.default.router_solicitations 0

# Do not accept "router preferences" by "router advertisements" 
check_compliance net.ipv6.conf.all.accept_ra_rtr_pref 0 
check_compliance net.ipv6.conf.default.accept_ra_rtr_pref 0

# No auto configuration of prefixes by router advertisements 
check_compliance net.ipv6.conf.all.accept_ra_pinfo 0
check_compliance net.ipv6.conf.default.accept_ra_pinfo 0

# No default router learning by router advertisements
check_compliance net.ipv6.conf.all.accept_ra_defrtr 0
check_compliance net.ipv6.conf.default.accept_ra_defrtr 0

# No auto configuration of addresses from "routers advertisements"
check_compliance net.ipv6.conf.all.autoconf 0
check_compliance net.ipv6.conf.default.autoconf 0

# Do not accept ICMPs of redirect type
check_compliance net.ipv6.conf.all.accept_redirects 0 
check_compliance net.ipv6.conf.default.accept_redirects 0

# Deny routing source packets
check_compliance net.ipv6.conf.all.accept_source_route 0 
check_compliance net.ipv6.conf.default.accept_source_route 0

# Maximum number of autoconfigured addresses per interface 
check_compliance net.ipv6.conf.all.max_addresses 1
check_compliance net.ipv6.conf.default.max_addresses 1