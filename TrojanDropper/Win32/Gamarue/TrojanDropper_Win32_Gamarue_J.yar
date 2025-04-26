
rule TrojanDropper_Win32_Gamarue_J{
	meta:
		description = "TrojanDropper:Win32/Gamarue.J,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 47 00 6f 00 6f 00 67 00 6c 00 65 00 49 00 6e 00 63 00 00 00 } //1
		$a_03_1 = {8a 0c 38 f6 d1 80 c1 ?? 32 ca 88 0c 38 8b 85 ?? ?? ff ff 40 89 85 ?? ?? ff ff 3b 85 ?? ?? ff ff 72 de } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}