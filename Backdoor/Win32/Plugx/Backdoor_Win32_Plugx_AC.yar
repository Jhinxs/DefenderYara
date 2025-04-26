
rule Backdoor_Win32_Plugx_AC{
	meta:
		description = "Backdoor:Win32/Plugx.AC,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 43 00 4c 00 41 00 53 00 53 00 45 00 53 00 5c 00 4d 00 4a 00 5c 00 50 00 52 00 4f 00 58 00 59 00 } //1 Software\CLASSES\MJ\PROXY
		$a_01_1 = {47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 44 00 65 00 6c 00 53 00 65 00 6c 00 66 00 28 00 25 00 38 00 2e 00 38 00 58 00 29 00 } //1 Global\DelSelf(%8.8X)
		$a_01_2 = {5c 77 6f 72 6b 5c 70 6c 75 67 34 2e 30 28 73 68 65 6c 6c 63 6f 64 65 29 } //1 \work\plug4.0(shellcode)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}