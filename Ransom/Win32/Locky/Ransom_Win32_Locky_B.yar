
rule Ransom_Win32_Locky_B{
	meta:
		description = "Ransom:Win32/Locky.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {89 45 bc 8b 4d bc 81 c9 aa 02 67 64 6a 68 58 33 d2 f7 f1 89 45 b8 b8 71 4b 00 00 } //1
		$a_01_1 = {6a 07 58 2b 45 a0 89 45 9c 8b 4d 08 81 c9 e4 69 a7 89 8b 45 9c 33 d2 f7 f1 89 55 98 8b 45 98 25 2c 22 00 00 } //1
		$a_01_2 = {8d 6d 00 83 c9 40 54 8f 45 84 51 83 f1 40 81 c1 da 0d 00 00 8a d2 51 ff b5 60 ff ff ff 52 5a c7 85 60 ff ff ff be e8 3b 6b } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}