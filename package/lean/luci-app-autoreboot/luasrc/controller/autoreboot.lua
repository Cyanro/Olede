module("luci.controller.autoreboot",package.seeall)
function index()
    entry({"admin", "services", "autoreboot"}, cbi("autoreboot"), _("Scheduled Reboot"),88)
end
