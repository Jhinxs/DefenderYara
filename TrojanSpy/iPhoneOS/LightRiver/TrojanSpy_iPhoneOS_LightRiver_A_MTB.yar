
rule TrojanSpy_iPhoneOS_LightRiver_A_MTB{
	meta:
		description = "TrojanSpy:iPhoneOS/LightRiver.A!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,04 00 04 00 08 00 00 "
		
	strings :
		$a_00_0 = {2f 6d 61 63 2f 68 73 2f 64 65 76 2f 69 6f 73 6d 6d 2f 6c 69 67 68 74 } //1 /mac/hs/dev/iosmm/light
		$a_00_1 = {47 65 74 50 6c 75 67 69 6e 43 6f 6d 6d 61 6e 64 49 44 } //1 GetPluginCommandID
		$a_00_2 = {47 65 74 43 6f 6d 6d 61 6e 64 53 74 61 74 75 73 } //1 GetCommandStatus
		$a_00_3 = {73 65 6e 64 43 6f 6d 6d 6e 61 64 4f 76 65 72 } //1 sendCommnadOver
		$a_00_4 = {22 63 6d 64 22 3a 25 64 2c 22 73 74 61 74 75 73 } //1 "cmd":%d,"status
		$a_03_5 = {3c 6b 65 79 3e 6b 65 79 63 68 61 69 6e 2d 61 63 63 65 73 73 2d 67 72 6f 75 70 73 3c 2f 6b 65 79 3e 90 05 15 04 09 20 0a 0d 3c 61 72 72 61 79 3e 90 05 15 04 09 20 0a 0d 3c 73 74 72 69 6e 67 3e 2a 3c 2f 73 74 72 69 6e 67 3e 90 05 15 04 09 20 0a 0d 3c 2f 61 72 72 61 79 3e } //1
		$a_00_6 = {67 65 74 43 68 72 6f 6d 65 48 69 73 74 6f 72 79 50 61 74 68 } //1 getChromeHistoryPath
		$a_00_7 = {67 65 74 53 61 66 61 72 69 48 69 73 74 6f 72 79 50 61 74 68 } //1 getSafariHistoryPath
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_03_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=4
 
}