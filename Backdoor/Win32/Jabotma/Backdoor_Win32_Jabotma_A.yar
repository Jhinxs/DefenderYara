
rule Backdoor_Win32_Jabotma_A{
	meta:
		description = "Backdoor:Win32/Jabotma.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {5f 76 62 73 5f 6a 61 6d 61 } //1 _vbs_jama
		$a_01_1 = {44 6f 45 78 65 63 32 } //1 DoExec2
		$a_01_2 = {2d 20 2d 2d 2d 20 73 65 6e 74 3a 20 2d 2d 2d 20 2d } //1 - --- sent: --- -
		$a_03_3 = {2f 62 6f 74 6e 65 74 7a 3f 61 3d [0-0a] 26 67 75 69 64 3d } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}