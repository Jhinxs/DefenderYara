
rule Worm_Win32_Gamarue_AM{
	meta:
		description = "Worm:Win32/Gamarue.AM,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 "
		
	strings :
		$a_01_0 = {b9 50 4b 00 00 66 3b c1 75 32 } //2
		$a_01_1 = {81 39 2e 74 65 78 } //1
		$a_01_2 = {35 63 6a 6e 69 } //1 5cjni
		$a_01_3 = {35 63 72 73 00 } //1
		$a_01_4 = {b8 00 68 6e 70 } //1
		$a_01_5 = {35 4e 1a 4d a5 } //1
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=4
 
}