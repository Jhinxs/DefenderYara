
rule Trojan_Win32_Tibs_IF{
	meta:
		description = "Trojan:Win32/Tibs.IF,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {03 4d 0c 03 4d 08 81 e9 } //1
		$a_03_1 = {83 e8 fe 8b 28 b9 ?? ?? ?? ?? ff 94 29 ?? ?? ?? ?? [0-03] 09 d2 75 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}