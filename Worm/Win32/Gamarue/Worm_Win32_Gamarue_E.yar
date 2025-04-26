
rule Worm_Win32_Gamarue_E{
	meta:
		description = "Worm:Win32/Gamarue.E,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 "
		
	strings :
		$a_01_0 = {68 63 6c 74 2e 68 77 75 61 75 eb 0f 68 65 78 65 00 68 6f 73 74 2e 68 73 76 63 68 } //1
		$a_03_1 = {b0 68 aa 8b 45 ?? ab b0 c3 aa 8b 5d ?? 03 5b 3c } //1
		$a_00_2 = {69 64 3a 25 6c 75 7c 74 69 64 3a 25 6c 75 } //1 id:%lu|tid:%lu
		$a_03_3 = {64 8b 1d 30 00 00 00 8b 5b 0c 8b 5b 0c 8b 1b 8b 1b 83 c3 18 8b 1b e8 00 00 00 00 5a 81 ea ?? ?? ?? ?? 8d b2 ?? ?? ?? ?? 8d 7d fc } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_00_2  & 1)*1+(#a_03_3  & 1)*1) >=2
 
}