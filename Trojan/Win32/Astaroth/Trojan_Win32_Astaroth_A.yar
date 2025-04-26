
rule Trojan_Win32_Astaroth_A{
	meta:
		description = "Trojan:Win32/Astaroth.A,SIGNATURE_TYPE_CMDHSTR_EXT,0f 00 0f 00 03 00 00 "
		
	strings :
		$a_00_0 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 } //5 cmd.exe
		$a_02_1 = {2e 00 6a 00 73 00 7c 00 63 00 61 00 6c 00 6c 00 20 00 25 00 ?? ?? ?? ?? ?? ?? 3a 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 3d 00 25 00 } //5
		$a_00_2 = {2e 00 6a 00 73 00 7c 00 65 00 78 00 69 00 74 00 } //5 .js|exit
	condition:
		((#a_00_0  & 1)*5+(#a_02_1  & 1)*5+(#a_00_2  & 1)*5) >=15
 
}