
rule HackTool_BAT_LazyCat_YA_MTB{
	meta:
		description = "HackTool:BAT/LazyCat.YA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {4c 00 61 00 7a 00 79 00 43 00 61 00 74 00 2e 00 64 00 6c 00 6c 00 } //1 LazyCat.dll
		$a_01_1 = {56 00 69 00 72 00 74 00 75 00 61 00 6c 00 53 00 69 00 74 00 65 00 3a 00 20 00 7b 00 30 00 7d 00 2c 00 20 00 41 00 64 00 64 00 72 00 65 00 73 00 73 00 3a 00 20 00 7b 00 31 00 3a 00 58 00 31 00 36 00 7d 00 2c 00 20 00 4e 00 61 00 6d 00 65 00 3a 00 20 00 7b 00 32 00 7d 00 2c 00 20 00 48 00 61 00 6e 00 64 00 6c 00 65 00 3a 00 20 00 7b 00 33 00 3a 00 58 00 31 00 36 00 7d 00 2c 00 20 00 4c 00 6f 00 67 00 50 00 61 00 74 00 68 00 3a 00 20 00 7b 00 34 00 7d 00 } //1 VirtualSite: {0}, Address: {1:X16}, Name: {2}, Handle: {3:X16}, LogPath: {4}
		$a_01_2 = {4c 61 7a 79 43 61 74 2e 6c 6f 63 61 6c 5f 70 72 69 76 69 6c 65 67 65 5f 65 73 63 61 6c 61 74 69 6f 6e 2e 72 6f 74 74 65 6e 5f 70 6f 74 61 74 6f } //1 LazyCat.local_privilege_escalation.rotten_potato
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}