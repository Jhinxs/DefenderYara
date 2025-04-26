
rule Backdoor_MacOS_Keydnap_A_MTB{
	meta:
		description = "Backdoor:MacOS/Keydnap.A!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_00_0 = {0f b6 0b 44 01 f1 44 31 f9 88 0b 48 ff c3 48 ff c8 75 ed } //2
		$a_00_1 = {0f 84 4a 04 00 00 c6 41 08 3d 48 b8 48 49 53 54 46 49 4c 45 48 89 01 45 31 f6 44 88 71 09 48 89 cf e8 02 11 00 00 48 8d 5d b0 44 88 73 18 48 b8 62 63 70 29 68 73 6a 6a 48 89 43 10 0f 28 05 07 64 00 00 0f 29 03 be 02 00 00 00 ba 04 00 00 00 48 89 df e8 a9 fd ff ff 48 89 df e8 c8 10 00 00 48 b8 69 6a 69 6c 3b 5f 6a 71 48 8d 5d 90 } //2
		$a_00_2 = {60 6c 63 63 20 2c 2e 2f 33 00 } //2 池捣Ⱐ⼮3
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*2+(#a_00_2  & 1)*2) >=4
 
}