
rule Trojan_Win32_Noon_FB_MTB{
	meta:
		description = "Trojan:Win32/Noon.FB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 07 00 00 "
		
	strings :
		$a_81_0 = {55 72 6c 43 6f 6d 70 61 72 65 57 } //3 UrlCompareW
		$a_81_1 = {53 48 52 65 67 44 65 6c 65 74 65 45 6d 70 74 79 55 53 4b 65 79 57 } //3 SHRegDeleteEmptyUSKeyW
		$a_81_2 = {6d 69 64 69 4f 75 74 43 61 63 68 65 50 61 74 63 68 65 73 } //3 midiOutCachePatches
		$a_81_3 = {49 6e 74 65 72 6e 65 74 55 6e 6c 6f 63 6b 52 65 71 75 65 73 74 46 69 6c 65 } //3 InternetUnlockRequestFile
		$a_81_4 = {50 61 72 73 65 58 35 30 39 45 6e 63 6f 64 65 64 43 65 72 74 69 66 69 63 61 74 65 46 6f 72 4c 69 73 74 42 6f 78 45 6e 74 72 79 } //3 ParseX509EncodedCertificateForListBoxEntry
		$a_81_5 = {62 70 75 7a 70 6c 6f 7a 6a } //3 bpuzplozj
		$a_81_6 = {68 77 68 6f 79 64 } //3 hwhoyd
	condition:
		((#a_81_0  & 1)*3+(#a_81_1  & 1)*3+(#a_81_2  & 1)*3+(#a_81_3  & 1)*3+(#a_81_4  & 1)*3+(#a_81_5  & 1)*3+(#a_81_6  & 1)*3) >=21
 
}