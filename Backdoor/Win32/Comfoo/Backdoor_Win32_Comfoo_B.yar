
rule Backdoor_Win32_Comfoo_B{
	meta:
		description = "Backdoor:Win32/Comfoo.B,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {83 ff 08 7d 02 8b f7 33 c0 85 f6 7e 15 8a 88 ?? ?? ?? ?? 8a 54 04 14 32 d1 88 54 04 14 40 3b c6 7c eb } //1
		$a_01_1 = {5c 5c 2e 5c 44 65 76 43 74 72 6c 4b 72 6e 6c } //1 \\.\DevCtrlKrnl
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}