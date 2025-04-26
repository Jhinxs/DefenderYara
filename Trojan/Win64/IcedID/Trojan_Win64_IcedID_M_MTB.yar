
rule Trojan_Win64_IcedID_M_MTB{
	meta:
		description = "Trojan:Win64/IcedID.M!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_01_0 = {80 44 24 27 04 c6 44 24 28 1c 66 3b c0 74 57 80 44 24 2e 11 c6 44 24 2f 07 66 3b c0 74 2d 80 44 24 2d 39 c6 44 24 2e 11 66 3b c0 74 e2 } //2
		$a_01_1 = {75 61 69 73 79 64 62 76 74 61 76 73 67 68 64 6a 61 6b 73 } //1 uaisydbvtavsghdjaks
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1) >=3
 
}
rule Trojan_Win64_IcedID_M_MTB_2{
	meta:
		description = "Trojan:Win64/IcedID.M!MTB,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 04 00 00 "
		
	strings :
		$a_00_0 = {44 39 d0 0f 85 27 f9 ff ff 8b 04 24 03 04 24 ba d1 b7 ac 8d 29 c2 89 14 24 e9 12 f9 ff ff 8b 04 24 eb c2 8b 04 24 84 d2 74 32 42 8d 14 10 } //10
		$a_81_1 = {6b 65 70 74 79 75 } //3 keptyu
		$a_81_2 = {6f 72 74 70 77 } //3 ortpw
		$a_81_3 = {73 6f 72 74 79 57 } //3 sortyW
	condition:
		((#a_00_0  & 1)*10+(#a_81_1  & 1)*3+(#a_81_2  & 1)*3+(#a_81_3  & 1)*3) >=19
 
}
rule Trojan_Win64_IcedID_M_MTB_3{
	meta:
		description = "Trojan:Win64/IcedID.M!MTB,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 04 00 00 "
		
	strings :
		$a_00_0 = {49 2b fe 48 c1 ff 02 48 8b c1 48 2b c7 48 83 f8 01 72 7a 48 8d 57 01 49 2b f6 48 c1 fe 02 48 8b c6 48 d1 e8 48 2b c8 48 03 c6 4d 8b c4 48 3b ce 4c 0f 43 c0 4c 3b c2 49 0f 43 d0 48 8d 4d d8 } //10
		$a_81_1 = {61 69 76 6f 75 6f 71 } //3 aivouoq
		$a_81_2 = {61 72 6d 6d 67 79 62 } //3 armmgyb
		$a_81_3 = {45 6e 74 72 79 46 75 6e 63 74 31 } //3 EntryFunct1
	condition:
		((#a_00_0  & 1)*10+(#a_81_1  & 1)*3+(#a_81_2  & 1)*3+(#a_81_3  & 1)*3) >=19
 
}
rule Trojan_Win64_IcedID_M_MTB_4{
	meta:
		description = "Trojan:Win64/IcedID.M!MTB,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 04 00 00 "
		
	strings :
		$a_00_0 = {48 8b 75 e8 48 89 75 b0 48 8b 7d e0 4c 8b 75 d8 48 b9 ff ff ff ff ff ff ff 3f 48 85 ff 74 03 44 89 3f 48 83 c7 04 48 89 7d e0 41 ff c7 44 89 7d d0 41 83 ff 05 7d 1f } //10
		$a_81_1 = {61 62 67 6d 77 65 6c 6d 6a 73 6e 6f 6d 69 63 64 } //3 abgmwelmjsnomicd
		$a_81_2 = {45 6e 74 72 79 50 6f 69 6e 74 31 } //3 EntryPoint1
		$a_81_3 = {62 61 6c 6b 7a 71 73 7a } //3 balkzqsz
	condition:
		((#a_00_0  & 1)*10+(#a_81_1  & 1)*3+(#a_81_2  & 1)*3+(#a_81_3  & 1)*3) >=19
 
}
rule Trojan_Win64_IcedID_M_MTB_5{
	meta:
		description = "Trojan:Win64/IcedID.M!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 07 00 00 "
		
	strings :
		$a_81_0 = {64 6c 32 72 4f 30 4a 71 54 76 75 5c 36 46 45 62 41 6e 4f 70 44 6f } //3 dl2rO0JqTvu\6FEbAnOpDo
		$a_81_1 = {55 6e 6c 6f 63 6b 46 69 6c 65 45 78 } //3 UnlockFileEx
		$a_81_2 = {50 6f 73 74 4d 65 73 73 61 67 65 41 } //3 PostMessageA
		$a_81_3 = {50 6f 73 74 51 75 69 74 4d 65 73 73 61 67 65 } //3 PostQuitMessage
		$a_81_4 = {4e 52 66 70 2d 73 69 39 45 67 32 5f 47 52 4d 36 72 64 } //3 NRfp-si9Eg2_GRM6rd
		$a_81_5 = {48 69 70 70 20 66 69 72 65 62 72 61 6e } //3 Hipp firebran
		$a_81_6 = {63 6f 6e 76 6f 6c 75 74 69 6f 20 65 6e 64 75 72 65 } //3 convolutio endure
	condition:
		((#a_81_0  & 1)*3+(#a_81_1  & 1)*3+(#a_81_2  & 1)*3+(#a_81_3  & 1)*3+(#a_81_4  & 1)*3+(#a_81_5  & 1)*3+(#a_81_6  & 1)*3) >=21
 
}