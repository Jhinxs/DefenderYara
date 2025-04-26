
rule Trojan_Win32_Redaman_B{
	meta:
		description = "Trojan:Win32/Redaman.B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_02_0 = {ff 10 50 8f 05 ?? ?? ?? ?? 8d ?? ?? ?? ?? ?? c7 ?? 48 65 61 70 66 c7 ?? 04 43 72 [0-01] c7 ?? 06 65 61 [0-03] 50 ff 35 90 0a 38 00 8d 05 } //3
		$a_00_1 = {4c 69 62 72 61 72 79 41 } //1 LibraryA
		$a_00_2 = {70 72 69 74 65 50 72 6f 5f 5f 5f 5f 5f 65 5f 6f 72 79 } //1 pritePro_____e_ory
	condition:
		((#a_02_0  & 1)*3+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=5
 
}