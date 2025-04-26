
rule PWS_Win32_Dexter_A{
	meta:
		description = "PWS:Win32/Dexter.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {55 70 64 61 74 65 4d 75 74 65 78 3a 00 [0-03] 72 65 73 70 6f 6e 73 65 3d 00 00 [0-03] 70 61 67 65 3d } //1
		$a_03_1 = {44 65 74 65 63 74 53 68 75 74 64 6f 77 6e 43 6c 61 73 73 00 64 6f 77 6e 6c 6f 61 64 2d 00 00 [0-03] 75 70 64 61 74 65 2d 00 63 68 65 63 6b 69 6e 3a } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}