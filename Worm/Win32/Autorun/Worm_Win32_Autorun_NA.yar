
rule Worm_Win32_Autorun_NA{
	meta:
		description = "Worm:Win32/Autorun.NA,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {73 68 65 6c 6c 65 78 65 63 75 74 65 3d 73 76 68 6f 73 74 2e 65 78 65 00 } //1
		$a_00_1 = {5b 61 75 74 6f 72 75 6e 5d 00 } //1 慛瑵牯湵]
		$a_03_2 = {b8 19 00 00 00 e8 ?? ?? ?? ?? 83 c0 05 99 3b 15 ?? ?? ?? ?? 75 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}