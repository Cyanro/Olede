
. /lib/functions/leds.sh
. /lib/functions/uci-defaults.sh

board=$(board_name)

board_config_update

case $board in
asus,rt-n56u-b1)
	ucidef_set_led_netdev "lan" "LAN link" "blue:lan" "br-lan"
	ucidef_set_led_netdev "wan" "WAN link" "blue:wan" "wan"
	;;
cudy,wr2100)
	ucidef_set_led_netdev "lan1" "lan1" "green:lan1" "lan1"
	ucidef_set_led_netdev "lan2" "lan2" "green:lan2" "lan2"
	ucidef_set_led_netdev "lan3" "lan3" "green:lan3" "lan3"
	ucidef_set_led_netdev "lan4" "lan4" "green:lan4" "lan4"
	ucidef_set_led_netdev "wan" "wan" "green:wan" "wan"
	;;
d-team,newifi-d2)
	ucidef_set_led_switch "internet" "internet" "amber:internet" "switch0" "0x10"
	ucidef_set_led_netdev "wlan2g" "WiFi 2.4GHz" "blue:wlan2g" "ra0"
	ucidef_set_led_netdev "wlan5g" "WiFi 5GHz" "blue:wlan5g" "rai0"
	;;
d-team,pbr-m1|\
jcg,y2|\
raisecom,msg1500-z-00|\
xzwifi,creativebox-v1)
	ucidef_set_led_netdev "internet" "internet" "blue:internet" "wan"
	;;
dlink,dir-1960-a1|\
dlink,dir-2640-a1|\
dlink,dir-2660-a1)
	ucidef_set_led_netdev "wan" "wan" "white:net" "wan"
	;;
dlink,dir-853-a3)
	ucidef_set_led_netdev "wan" "wan" "blue:net" "wan"
	;;
dlink,dir-853-r1|\
xiaomi,mi-router-cr660x)
	ucidef_set_led_netdev "internet" "internet" "blue:net" "wan"
	;;
dlink,dir-860l-b1|\
dlink,dir-867-a1|\
dlink,dir-878-a1|\
dlink,dir-882-a1|\
dlink,dir-882-r1)
	ucidef_set_led_netdev "wan" "wan" "green:net" "wan"
	;;
gehua,ghl-r-001)
	ucidef_set_led_switch "internet" "internet" "blue:internet" "switch0" "0x10"
	;;
gnubee,gb-pc1|\
gnubee,gb-pc2)
	ucidef_set_led_netdev "lan1" "lan1" "green:lan1" "lan1"
	ucidef_set_led_netdev "lan2" "lan2" "green:lan2" "lan2"
	;;
linksys,e5600)
	ucidef_set_led_netdev "wan" "wan link" "blue:wan" "wan" "link"
	;;
linksys,ea7300-v1|\
linksys,ea7300-v2|\
linksys,ea7500-v2|\
linksys,ea8100-v1|\
linksys,ea8100-v2)
	ucidef_set_led_netdev "lan1" "lan1 link" "green:lan1" "lan1" "link"
	ucidef_set_led_netdev "lan2" "lan2 link" "green:lan2" "lan2" "link"
	ucidef_set_led_netdev "lan3" "lan3 link" "green:lan3" "lan3" "link"
	ucidef_set_led_netdev "lan4" "lan4 link" "green:lan4" "lan4" "link"
	ucidef_set_led_netdev "wan" "wan link" "green:wan" "wan" "link"
	;;
mikrotik,routerboard-760igs)
	ucidef_set_led_netdev "sfp" "SFP" "blue:sfp" "sfp"
	;;
mikrotik,routerboard-m11g)
	ucidef_set_rssimon "wlan0" "200000" "1"
	ucidef_set_led_rssi "rssilow" "RSSILOW" "green:rssi0" "wlan0" "1" "100"
	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "green:rssi1" "wlan0" "20" "100"
	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "green:rssi2" "wlan0" "40" "100"
	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "green:rssi3" "wlan0" "60" "100"
	ucidef_set_led_rssi "rssiveryhigh" "RSSIVERYHIGH" "green:rssi4" "wlan0" "80" "100"
	;;
mtc,wr1201)
	ucidef_set_led_netdev "eth_link" "LAN link" "green:eth_link" "br-lan"
	;;
netgear,r6220|\
netgear,r6260|\
netgear,r6350|\
netgear,r6850|\
netgear,wac124|\
netgear,wndr3700-v5)
	ucidef_set_led_netdev "wan" "wan" "green:wan" "wan"
	;;
netgear,r6700-v2|\
netgear,r6800)
	ucidef_set_led_netdev "wan" "WAN" "white:wan" "wan"
	ucidef_set_led_netdev "lan1" "LAN1" "white:lan1" "lan1"
	ucidef_set_led_netdev "lan2" "LAN2" "white:lan2" "lan2"
	ucidef_set_led_netdev "lan3" "LAN3" "white:lan3" "lan3"
	ucidef_set_led_netdev "lan4" "LAN4" "white:lan4" "lan4"
	;;
tplink,archer-a6-v3|\
tplink,archer-c6-v3|\
tplink,archer-c6u-v1)
	ucidef_set_led_netdev "lan" "LAN" "green:lan" "br-lan"
	ucidef_set_led_netdev "wan" "WAN" "green:wan" "wan"
	;;
tplink,re350-v1)
	ucidef_set_led_netdev "wifi2g" "Wifi 2.4G" "blue:wifi2G" "wlan0"
	ucidef_set_led_netdev "wifi5g" "Wifi 5G" "blue:wifi5G" "wlan1"
	ucidef_set_led_netdev "eth_act" "LAN act" "green:eth_act" "lan" "tx rx"
	ucidef_set_led_netdev "eth_link" "LAN link" "green:eth_link" "lan" "link"
	;;
tplink,re500-v1|\
tplink,re650-v1)
	ucidef_set_led_netdev "eth_act" "LAN act" "green:eth_act" "lan" "tx rx"
	ucidef_set_led_netdev "eth_link" "LAN link" "green:eth_link" "lan" "link"
	;;
xiaomi,mi-router-ac2100)
	ucidef_set_led_switch "wan" "wan" "blue:wan" "switch0" "0x1"
	;;
xiaomi,redmi-router-ac2100)
	ucidef_set_led_switch "wan" "wan" "white:wan" "switch0" "0x1"
	;;
youhua,wr1200js)
	ucidef_set_led_netdev "internet" "INTERNET" "green:wan" "wan"
	;;
zte,e8820s)
	ucidef_set_led_netdev "wlan2g" "WiFi 2.4GHz" "white:wlan2g" "ra0"
	ucidef_set_led_netdev "wlan5g" "WiFi 5GHz" "white:wlan5g" "rai0"
	;;
esac

board_config_flush

exit 0
