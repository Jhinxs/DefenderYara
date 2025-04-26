
rule Worm_Win32_Autorun_QAC{
	meta:
		description = "Worm:Win32/Autorun.QAC,SIGNATURE_TYPE_PEHSTR_EXT,1e 00 1e 00 03 00 00 "
		
	strings :
		$a_03_0 = {6b 65 79 72 65 63 6f 72 64 5f 6d 73 28 25 64 25 64 25 64 25 64 25 64 25 64 29 2e 74 78 74 [0-04] 5b 61 75 74 6f 72 75 6e 5d [0-04] 4f 50 45 4e 3d 52 65 63 79 63 6c 65 63 6c 5c 45 58 50 4c 4f 52 45 2e 45 58 45 [0-04] 73 68 65 6c 6c 5c 6f 70 65 6e 3d } //10
		$a_01_1 = {5b 6c 6f 6e 67 73 6b 79 20 73 65 72 76 65 72 3a 20 76 32 2e 30 20 74 65 73 74 20 76 65 72 73 69 6f 6e } //10 [longsky server: v2.0 test version
		$a_03_2 = {53 65 74 4b 42 48 6f 6f 6b 45 6e 40 40 59 41 5f 4e 58 5a [0-04] 3f 53 65 74 4d 53 48 6f 6f 6b 40 40 59 41 5f 4e 58 5a } //10
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*10+(#a_03_2  & 1)*10) >=30
 
}