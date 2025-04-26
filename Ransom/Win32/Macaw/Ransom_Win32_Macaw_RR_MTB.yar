
rule Ransom_Win32_Macaw_RR_MTB{
	meta:
		description = "Ransom:Win32/Macaw.RR!MTB,SIGNATURE_TYPE_PEHSTR,01 00 01 00 04 00 00 "
		
	strings :
		$a_01_0 = {8b 17 66 0f bc cb 8d bf 04 00 00 00 66 d3 f0 f5 f6 d4 8d ad ff ff ff ff 8b cf 0f ba e0 29 0f b6 4c 25 00 32 cb 80 c1 98 66 0f a3 d8 66 d3 c8 f8 d0 c9 } //1
		$a_01_1 = {8b 06 fe cd d2 d1 12 cf 8d b6 04 00 00 00 0f b6 4c 25 00 81 c5 01 00 00 00 32 cb 66 f7 c6 0a 7a f9 f6 d1 80 f1 db } //1
		$a_01_2 = {33 cc d2 ed 32 d8 89 14 04 c0 dd 99 66 1b ca 66 13 cd 8b 0e 3b df 8d b6 04 00 00 00 66 85 e5 33 cb d1 c1 0f c9 f7 d9 f7 d1 f5 66 81 ff bf 57 } //1
		$a_01_3 = {52 81 ca 1f 0e f7 7d 51 52 8b 94 14 79 d0 00 82 c7 44 24 18 7c 1d 48 52 c0 b4 24 00 00 00 00 9d b9 5c 7a 43 65 51 f9 81 84 24 10 00 00 00 48 7e 0f 48 59 59 59 8d 64 24 08 9d c3 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=1
 
}