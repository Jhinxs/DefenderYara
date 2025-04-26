
rule Ransom_Win32_Conti_MB_MTB{
	meta:
		description = "Ransom:Win32/Conti.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,23 00 23 00 04 00 00 "
		
	strings :
		$a_03_0 = {69 0a 95 e9 d1 5b 83 c2 [0-01] 69 ff [0-04] 8b c1 c1 e8 [0-01] 33 c1 69 c8 90 1b 01 33 f9 83 eb 01 75 } //10
		$a_01_1 = {65 78 70 61 6e 64 20 33 32 2d 62 79 74 65 20 6b } //10 expand 32-byte k
		$a_01_2 = {65 78 70 61 6e 64 20 31 36 2d 62 79 74 65 20 6b } //10 expand 16-byte k
		$a_81_3 = {2e 4a 56 55 41 45 } //5 .JVUAE
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_81_3  & 1)*5) >=35
 
}