
rule Trojan_Win32_Permatricks_B{
	meta:
		description = "Trojan:Win32/Permatricks.B,SIGNATURE_TYPE_CMDHSTR_EXT,0a 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {63 00 72 00 65 00 61 00 74 00 65 00 20 00 } //1 create 
		$a_02_1 = {62 00 69 00 6e 00 70 00 61 00 74 00 68 00 [0-02] 3d 00 [0-40] 72 00 77 00 64 00 72 00 76 00 2e 00 73 00 79 00 73 00 } //1
		$a_02_2 = {74 00 79 00 70 00 65 00 [0-02] 3d 00 [0-10] 6b 00 65 00 72 00 6e 00 65 00 6c 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1) >=3
 
}