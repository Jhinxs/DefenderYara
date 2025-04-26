
rule Trojan_BAT_Nanocore_ABAP_MTB{
	meta:
		description = "Trojan:BAT/Nanocore.ABAP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {0a 11 0b 09 18 6f ?? ?? ?? 0a 11 0b 09 18 6f ?? ?? ?? 0a 8e 69 5d 91 09 17 6f ?? ?? ?? 0a 11 0b 91 61 9c 11 0b 17 d6 13 0b 11 0b 11 0a 31 cb } //1
		$a_01_1 = {53 00 47 00 42 00 49 00 54 00 50 00 6c 00 61 00 63 00 65 00 6d 00 65 00 6e 00 74 00 4d 00 61 00 6e 00 61 00 67 00 65 00 6d 00 65 00 6e 00 74 00 53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //1 SGBITPlacementManagementSystem.Resources
		$a_01_2 = {4b 00 65 00 6e 00 50 00 68 00 61 00 73 00 46 00 75 00 63 00 6b 00 65 00 64 00 6b 00 73 00 61 00 6a 00 64 00 34 00 34 00 } //1 KenPhasFuckedksajd44
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}