
rule Worm_Win32_Autorun_EB{
	meta:
		description = "Worm:Win32/Autorun.EB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {6b f6 3c 55 03 f0 ff 15 ?? ?? ?? ?? 2b c6 50 e8 5c 06 00 00 59 83 f8 1e 59 } //1
		$a_00_1 = {6c 6f 67 2e 65 78 65 } //1 log.exe
		$a_00_2 = {5c 64 72 69 76 65 72 73 5c 73 6d 63 69 6c 69 62 2e 73 79 73 } //1 \drivers\smcilib.sys
		$a_00_3 = {73 65 61 72 63 68 2e 64 6c 6c } //1 search.dll
		$a_00_4 = {51 4d 73 67 2e 44 4c 4c } //1 QMsg.DLL
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}