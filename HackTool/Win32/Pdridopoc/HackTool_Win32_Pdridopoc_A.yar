
rule HackTool_Win32_Pdridopoc_A{
	meta:
		description = "HackTool:Win32/Pdridopoc.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 "
		
	strings :
		$a_00_0 = {4d 75 73 74 20 70 72 6f 76 69 64 65 20 61 6e 20 65 78 70 6c 6f 69 74 } //1 Must provide an exploit
		$a_00_1 = {5b 2d 5d 20 45 78 70 6c 6f 69 74 20 66 61 69 6c 65 64 21 } //1 [-] Exploit failed!
		$a_00_2 = {5b 2b 5d 20 44 72 69 76 65 72 20 73 74 61 67 65 64 21 } //1 [+] Driver staged!
		$a_00_3 = {63 6f 6e 63 65 61 6c 65 64 5f 70 6f 73 69 74 69 6f 6e } //1 concealed_position
		$a_02_4 = {6c 00 70 00 74 00 31 00 3a 00 [0-04] 57 00 69 00 6e 00 50 00 72 00 69 00 6e 00 74 00 } //1
		$a_00_5 = {54 75 72 6e 20 6f 66 66 20 70 61 73 73 77 6f 72 64 20 70 72 6f 74 65 63 74 65 64 20 73 68 61 72 69 6e 67 } //1 Turn off password protected sharing
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_02_4  & 1)*1+(#a_00_5  & 1)*1) >=3
 
}