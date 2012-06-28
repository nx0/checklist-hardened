detectOS() {
	if [ -f "/etc/gentoo-release" ]; then
		OPSYS="gentoo";
	fi
	if [ -f "/etc/debian_version" ]; then
		OPSYS="gentoo";
	fi
	if [ -f "/etc/redhat-release" ]; then
		OPSYS="centos";
	fi
}
