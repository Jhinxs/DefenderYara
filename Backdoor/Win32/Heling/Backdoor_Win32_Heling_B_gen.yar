
rule Backdoor_Win32_Heling_B_gen{
	meta:
		description = "Backdoor:Win32/Heling.B.gen!dha,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 0b 00 00 "
		
	strings :
		$a_00_0 = {5b 55 70 64 61 74 65 57 65 62 5d } //1 [UpdateWeb]
		$a_00_1 = {5b 46 61 6b 65 44 6f 6d 61 69 6e 5d } //1 [FakeDomain]
		$a_00_2 = {5b 4c 69 73 74 65 6e 4d 6f 64 65 5d } //1 [ListenMode]
		$a_00_3 = {2f 2f 31 32 33 34 2f 63 6f 6e 66 69 67 2e 68 74 6d } //1 //1234/config.htm
		$a_00_4 = {78 73 6c 20 65 78 65 20 73 65 72 76 69 63 65 20 67 6c 6f 62 61 6c 20 65 76 65 6e 74 } //2 xsl exe service global event
		$a_00_5 = {78 73 6c 20 64 6c 6c 20 73 65 72 76 69 63 65 20 67 6c 6f 62 61 6c 20 65 76 65 6e 74 } //2 xsl dll service global event
		$a_00_6 = {6e 6f 77 3a 25 64 20 73 74 61 72 74 3a 25 64 20 65 6e 64 3a 25 64 } //1 now:%d start:%d end:%d
		$a_00_7 = {57 69 6e 64 6f 77 73 20 4e 54 20 35 2e 31 3b 20 53 56 31 3b 20 4d 61 78 74 68 6f 6e 3b 20 58 53 4c 3a } //1 Windows NT 5.1; SV1; Maxthon; XSL:
		$a_80_8 = {58 53 4c 43 6d 64 } //XSLCmd  1
		$a_80_9 = {58 53 4c 50 6c 75 67 } //XSLPlug  1
		$a_80_10 = {58 53 4c 41 75 74 6f } //XSLAuto  1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*2+(#a_00_5  & 1)*2+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_80_8  & 1)*1+(#a_80_9  & 1)*1+(#a_80_10  & 1)*1) >=5
 
}