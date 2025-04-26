
rule Trojan_Win32_Zenpack_EC_MTB{
	meta:
		description = "Trojan:Win32/Zenpack.EC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_01_0 = {89 20 83 f2 07 42 01 d0 eb 30 83 f0 04 42 } //3
		$a_03_1 = {31 18 83 e8 04 01 d0 8d 05 ?? ?? ?? ?? 31 30 e9 ab fa ff ff c3 } //2
	condition:
		((#a_01_0  & 1)*3+(#a_03_1  & 1)*2) >=5
 
}
rule Trojan_Win32_Zenpack_EC_MTB_2{
	meta:
		description = "Trojan:Win32/Zenpack.EC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 01 00 00 "
		
	strings :
		$a_03_0 = {66 6a 00 2d 83 11 00 00 50 ff 14 24 89 d9 89 0d ?? ?? ?? ?? 89 f1 89 0d ?? ?? ?? ?? 89 3d ?? ?? ?? ?? 39 3d ?? ?? ?? ?? 74 bb } //7
	condition:
		((#a_03_0  & 1)*7) >=7
 
}
rule Trojan_Win32_Zenpack_EC_MTB_3{
	meta:
		description = "Trojan:Win32/Zenpack.EC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 01 00 00 "
		
	strings :
		$a_03_0 = {83 ea 05 89 e8 50 8f 05 ?? ?? ?? ?? e9 e6 f5 ff ff c3 8d 05 ?? ?? ?? ?? 31 18 01 d0 31 c2 89 f0 50 8f 05 ?? ?? ?? ?? 31 3d ?? ?? ?? ?? eb d1 } //7
	condition:
		((#a_03_0  & 1)*7) >=7
 
}
rule Trojan_Win32_Zenpack_EC_MTB_4{
	meta:
		description = "Trojan:Win32/Zenpack.EC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {6d 65 61 74 67 69 76 65 6e 2c 36 6c 69 6b 65 6e 65 73 73 5a 6a } //1 meatgiven,6likenessZj
		$a_01_1 = {7a 6d 61 6e 6b 6c 69 66 65 7a 6e 4a 31 51 } //1 zmanklifeznJ1Q
		$a_01_2 = {62 65 61 73 74 6a 68 61 76 65 2e } //1 beastjhave.
		$a_01_3 = {68 31 67 72 65 65 6e 36 74 77 6f 65 76 65 6e 69 6e 67 35 64 5a 69 } //1 h1green6twoevening5dZi
		$a_01_4 = {73 61 77 6b 49 } //1 sawkI
		$a_01_5 = {55 73 74 68 69 72 64 43 61 74 74 6c 65 67 72 65 65 6e 73 69 78 74 68 } //1 UsthirdCattlegreensixth
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}
rule Trojan_Win32_Zenpack_EC_MTB_5{
	meta:
		description = "Trojan:Win32/Zenpack.EC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {71 6d 74 68 65 72 65 74 68 65 36 73 65 74 49 73 74 61 72 73 73 6d 6f 72 6e 69 6e 67 } //1 qmtherethe6setIstarssmorning
		$a_01_1 = {31 6e 32 72 6a 39 36 77 61 73 6a } //1 1n2rj96wasj
		$a_01_2 = {4c 77 68 6f 73 65 66 6f 72 6d 75 70 6f 6e 66 6c 79 68 61 76 65 75 61 2e 74 77 6f } //1 Lwhoseformuponflyhaveua.two
		$a_01_3 = {4f 52 46 74 68 65 6d 77 61 74 65 72 73 68 74 68 65 6d 77 } //1 ORFthemwatershthemw
		$a_01_4 = {66 30 74 68 65 6d 31 70 6c 61 63 65 2e 68 69 73 6d 6f 76 65 64 2e 64 58 61 62 75 6e 64 61 6e 74 6c 79 } //1 f0them1place.hismoved.dXabundantly
		$a_01_5 = {6d 75 6c 74 69 70 6c 79 6f 70 65 6e 2e 39 } //1 multiplyopen.9
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}