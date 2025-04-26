
rule TrojanSpy_Win32_Rumish_B{
	meta:
		description = "TrojanSpy:Win32/Rumish.B,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {5c 42 72 6f 77 73 65 72 2e 48 65 6c 70 [0-03] 5c 42 72 6f 77 73 65 72 2e 48 65 6c 70 5c 52 65 6c 65 61 73 65 5c 72 76 72 73 2e 70 64 62 } //1
		$a_01_1 = {26 62 72 77 73 76 3d 00 26 62 72 77 73 3d 00 00 26 69 65 3d 38 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}