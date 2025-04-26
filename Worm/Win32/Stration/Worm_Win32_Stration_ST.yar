
rule Worm_Win32_Stration_ST{
	meta:
		description = "Worm:Win32/Stration.ST,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {8d 49 00 8a 5c 04 0c 8a 4c 24 30 32 d9 88 5c 04 0c 40 83 f8 25 7c ec } //2
		$a_03_1 = {57 8d 54 24 ?? 52 33 ?? ?? 8d 44 ?? ?? 50 68 ?? ?? ?? ?? ?? ?? c7 44 ?? ?? 00 00 00 00 ff 15 ?? ?? ?? ?? 8b f8 85 ff 74 24 6a ff 57 ff 15 ?? ?? ?? ?? 8d 4c ?? ?? 51 57 ff 15 ?? ?? ?? ?? 85 c0 74 04 } //1
		$a_01_2 = {53 65 74 55 6e 68 61 6e 64 6c 65 64 45 78 63 65 70 74 69 6f 6e 46 69 6c 74 65 72 } //1 SetUnhandledExceptionFilter
	condition:
		((#a_01_0  & 1)*2+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}