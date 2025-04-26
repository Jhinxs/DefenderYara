
rule TrojanDropper_Win32_Rustock_B{
	meta:
		description = "TrojanDropper:Win32/Rustock.B,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {80 38 00 0f 84 ?? ?? 00 00 80 38 00 74 ?? 81 38 65 6d 33 32 74 03 40 eb } //1
		$a_03_1 = {66 c7 44 10 ff 5f 00 6a 01 68 ?? ?? 40 00 68 ?? ?? 40 00 ff 15 8c 80 40 00 6a 00 68 80 00 00 00 6a 02 6a 00 6a 00 68 00 00 00 40 68 ?? ?? 40 00 ff 15 ?? ?? 40 00 83 f8 ff 75 14 6a 01 68 ?? ?? 40 00 68 ?? ?? 40 00 ff 15 ?? ?? 40 00 eb } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}