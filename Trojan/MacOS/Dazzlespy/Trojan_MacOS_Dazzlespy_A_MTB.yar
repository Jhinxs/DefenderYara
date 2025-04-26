
rule Trojan_MacOS_Dazzlespy_A_MTB{
	meta:
		description = "Trojan:MacOS/Dazzlespy.A!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_01_0 = {38 38 2e 32 31 38 2e 31 39 32 2e 31 32 38 3a 35 36 33 33 } //1 88.218.192.128:5633
		$a_01_1 = {63 6f 6d 2e 61 70 70 6c 65 2e 73 6f 66 74 77 61 72 65 75 70 64 61 74 65 2e 70 6c 69 73 74 } //1 com.apple.softwareupdate.plist
		$a_01_2 = {6f 73 78 72 6b } //1 osxrk
		$a_01_3 = {72 65 73 74 61 72 74 43 4d 44 } //1 restartCMD
		$a_01_4 = {75 6e 69 6e 73 74 61 6c 6c } //1 uninstall
		$a_01_5 = {61 63 63 65 70 74 46 69 6c 65 49 6e 66 6f } //1 acceptFileInfo
		$a_01_6 = {73 65 61 72 63 68 46 69 6c 65 } //1 searchFile
		$a_01_7 = {2f 2e 6c 6f 63 61 6c 2f 73 6f 66 74 77 61 72 65 75 70 64 61 74 65 } //1 /.local/softwareupdate
		$a_01_8 = {6b 69 6c 6c 61 6c 6c 20 2d 39 20 73 6f 66 74 77 61 72 65 75 70 64 61 74 65 } //1 killall -9 softwareupdate
		$a_01_9 = {2f 70 61 6e 67 75 2f 63 72 65 61 74 65 5f 73 6f 75 72 63 65 2f 70 6f 6b 65 2f } //1 /pangu/create_source/poke/
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}