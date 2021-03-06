#
# MT7628 Profiles
#

Image/Build/Profile/MIWIFI-NANO=$(call BuildFirmware/Default16M/$(1),$(1),miwifi-nano,MIWIFI-NANO)
Image/Build/Profile/MT7628=$(call BuildFirmware/Default4M/$(1),$(1),mt7628,MT7628)
Image/Build/Profile/WRTNODE2P=$(call BuildFirmware/Default16M/$(1),$(1),wrtnode2p,WRTNODE2P)
Image/Build/Profile/VOCORE2=$(call BuildFirmware/Default16M/$(1),$(1),vocore2,VOCORE2)

define Image/Build/Profile/Default
	$(call Image/Build/Profile/MIWIFI-NANO,$(1))
	$(call Image/Build/Profile/MT7628,$(1))
	$(call Image/Build/Profile/WRTNODE2P,$(1))
	$(call Image/Build/Profile/VOCORE2,$(1))
endef

