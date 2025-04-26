
rule Trojan_MacOS_IceFog_A_MTB{
	meta:
		description = "Trojan:MacOS/IceFog.A!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,07 00 07 00 04 00 00 "
		
	strings :
		$a_01_0 = {2f 43 6f 6e 74 65 6e 74 73 2f 52 65 73 6f 75 72 63 65 73 2f 2e 6c 61 75 6e 63 68 64 2e 61 70 70 } //5 /Contents/Resources/.launchd.app
		$a_01_1 = {2f 43 6f 6e 74 65 6e 74 73 2f 52 65 73 6f 75 72 63 65 73 2f 49 6d 67 32 69 63 6e 73 2e 61 70 70 } //1 /Contents/Resources/Img2icns.app
		$a_00_2 = {61 70 70 73 74 30 72 65 2e 6e 65 74 } //1 appst0re.net
		$a_00_3 = {55 43 48 6f 73 74 49 6e 66 } //1 UCHostInf
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=7
 
}