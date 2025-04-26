
rule Trojan_Win32_AveMariaRat_MW_MTB{
	meta:
		description = "Trojan:Win32/AveMariaRat.MW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {33 c9 41 6b c9 00 8b 55 94 8a 04 02 88 44 0d ?? 33 c0 40 c1 e0 00 33 c9 41 c1 e1 00 8b 55 94 8a 04 02 88 44 0d ?? 33 c0 40 d1 e0 33 c9 41 d1 e1 8b 55 94 8a 04 02 88 44 } //1
		$a_01_1 = {53 6c 65 65 70 } //1 Sleep
		$a_01_2 = {52 65 73 75 6d 65 54 68 72 65 61 64 } //1 ResumeThread
		$a_01_3 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 WriteProcessMemory
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}