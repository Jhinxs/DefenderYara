
rule Trojan_Win32_Cueisfry_A{
	meta:
		description = "Trojan:Win32/Cueisfry.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {8a 0c 30 80 c1 7a 80 f1 17 88 0c 30 40 3b c2 7c ef } //1
		$a_01_1 = {3f 76 65 72 69 66 79 3d } //1 ?verify=
		$a_01_2 = {63 73 72 73 73 77 69 6e 6c 6f 67 6f 6e 73 65 72 76 69 63 65 73 6c 73 61 73 73 73 76 63 68 6f 73 74 73 70 6f 6f 6c 73 76 65 78 70 6c 6f 72 65 72 63 74 66 6d 6f 6e 63 6f 6e 69 6d 65 77 6d 69 70 72 76 73 65 73 79 73 74 65 6d 73 6d 73 73 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}