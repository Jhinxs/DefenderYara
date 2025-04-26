
rule Virus_Win32_Nemim_gen_A{
	meta:
		description = "Virus:Win32/Nemim.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 08 00 00 "
		
	strings :
		$a_01_0 = {3d f8 00 00 00 73 0a be fd ff ff ff e9 e5 03 00 00 3d 00 00 80 0c 76 0a be f6 ff ff ff e9 d4 03 00 00 8b 4d 00 3b cf 75 04 } //1
		$a_01_1 = {f3 a5 b9 4d 5a 00 00 66 39 08 74 0a be } //1
		$a_01_2 = {68 00 80 00 00 6a 00 8b 85 6c fd ff ff 50 ff 95 c8 fa ff ff 8b 4d f4 51 ff 95 c4 fe ff ff ff 95 e0 fb ff ff 33 c0 8b e5 } //1
		$a_01_3 = {66 69 7c 66 73 65 66 62 5c 65 6a 65 00 } //1
		$a_01_4 = {89 4d dc 8a 4d dc 88 4d eb eb ae 8b 55 08 03 55 e4 8a 45 eb 88 02 eb 83 8b 4d fc 83 e9 01 89 4d fc eb 09 8b 55 fc 83 ea 01 } //1
		$a_01_5 = {88 0a eb cd 8b 55 ec 83 c2 04 89 55 ec 8b 85 c4 fa ff ff 89 85 98 fa ff ff c7 85 9c fa ff ff 00 00 00 00 } //1
		$a_01_6 = {83 f9 36 75 20 8b 95 b8 fe ff ff 0f be 42 01 83 f8 2a 75 11 8b 8d b8 fe ff ff 0f be 51 02 83 fa 23 75 02 } //1
		$a_01_7 = {83 fa 3a 0f 84 ac 00 00 00 8b 85 d0 fe ff ff 8b 8d b8 fe ff ff 8a 11 88 94 05 e0 fe ff ff 8b 85 b8 fe ff ff 0f be 08 83 f9 2e 0f 85 80 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=3
 
}