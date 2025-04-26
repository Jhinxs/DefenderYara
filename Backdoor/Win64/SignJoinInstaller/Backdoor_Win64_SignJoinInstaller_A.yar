
rule Backdoor_Win64_SignJoinInstaller_A{
	meta:
		description = "Backdoor:Win64/SignJoinInstaller.A,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {c1 e1 03 48 8b [0-06] 48 d3 ea 48 8b ca 0f b6 c9 33 c1 } //1
		$a_01_1 = {4f 44 53 65 63 75 72 69 74 79 2e 64 6c 6c 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 00 6d 73 78 6d 6c 33 2e 64 6c 6c } //-1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*-1) >=1
 
}