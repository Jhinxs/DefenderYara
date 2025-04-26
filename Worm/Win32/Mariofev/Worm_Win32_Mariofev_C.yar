
rule Worm_Win32_Mariofev_C{
	meta:
		description = "Worm:Win32/Mariofev.C,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {00 64 6c 6c 63 61 63 68 65 5c 75 73 65 72 33 32 2e 64 6c 6c 00 } //1
		$a_00_1 = {00 20 70 20 69 20 6e 20 69 20 74 20 5f 20 64 20 6c 20 6c 20 73 } //1
		$a_02_2 = {6e 76 72 73 ?? 6c [0-02] 2e 64 6c 6c [0-04] 6e 76 72 73 } //1
		$a_00_3 = {57 69 6e 64 6f 77 73 20 4e 54 5c 43 55 52 52 45 4e 54 56 45 52 53 49 4f 4e 5c 57 49 4e 44 4f 57 53 } //1 Windows NT\CURRENTVERSION\WINDOWS
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}