
rule Backdoor_Win32_Tofsee_MAK_MTB{
	meta:
		description = "Backdoor:Win32/Tofsee.MAK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 05 00 00 "
		
	strings :
		$a_03_0 = {8a 14 06 32 55 [0-01] 88 10 8a d1 02 55 [0-01] f6 d9 00 55 [0-01] 40 4f 75 } //1
		$a_03_1 = {8b 55 08 0f b6 14 11 33 c2 8b d0 83 e2 0f c1 e8 04 33 04 95 [0-04] 8b d0 83 e2 0f c1 e8 04 33 04 95 90 1b 00 41 3b 4d 0c 72 } //1
		$a_03_2 = {0f b6 01 8b d8 c0 e0 [0-01] c1 eb [0-01] 0a c3 32 c2 88 01 41 8a d0 3b ce 72 } //1
		$a_03_3 = {0f be 04 37 6b db [0-01] 2b 44 24 14 6a 90 1b 00 83 e8 47 99 5d f7 fd 03 da 47 3b f9 7c } //1
		$a_03_4 = {30 08 0f b6 10 8b ca c1 e9 [0-01] c0 e2 [0-01] 0a ca 88 08 80 f1 [0-01] 40 3b c6 72 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=1
 
}