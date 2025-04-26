
rule Trojan_Win64_Dridex_EC_MTB{
	meta:
		description = "Trojan:Win64/Dridex.EC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_01_0 = {45 32 f6 33 ff 42 8b 94 28 88 00 00 00 41 89 d2 46 8b 8c 28 8c 00 00 00 44 03 ca 43 8b 44 2a 20 47 8b 44 2a 24 49 03 c5 4d 03 c5 } //5
	condition:
		((#a_01_0  & 1)*5) >=5
 
}
rule Trojan_Win64_Dridex_EC_MTB_2{
	meta:
		description = "Trojan:Win64/Dridex.EC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {7c 61 6a 67 7a 26 } //1 |ajgz&
		$a_01_1 = {72 65 77 65 72 74 77 65 72 } //1 rewertwer
		$a_01_2 = {6e 37 33 34 35 37 33 34 6d 37 33 34 35 } //1 n7345734m7345
		$a_01_3 = {4c 6f 67 6f 6e 55 73 65 72 45 78 57 } //1 LogonUserExW
		$a_01_4 = {69 73 61 6c 6e 75 6d } //1 isalnum
		$a_01_5 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 45 78 } //1 VirtualProtectEx
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}
rule Trojan_Win64_Dridex_EC_MTB_3{
	meta:
		description = "Trojan:Win64/Dridex.EC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 06 00 00 "
		
	strings :
		$a_81_0 = {72 72 70 69 6f 64 65 2e 70 64 62 } //3 rrpiode.pdb
		$a_81_1 = {47 65 74 4e 4c 53 56 65 72 73 69 6f 6e } //3 GetNLSVersion
		$a_81_2 = {49 63 6d 70 53 65 6e 64 45 63 68 6f 32 } //3 IcmpSendEcho2
		$a_81_3 = {6d 61 6c 6c 6f 63 } //3 malloc
		$a_81_4 = {4f 4c 45 41 55 54 33 32 2e 64 6c 6c } //3 OLEAUT32.dll
		$a_81_5 = {47 65 74 4c 61 73 74 45 72 72 6f 72 } //3 GetLastError
	condition:
		((#a_81_0  & 1)*3+(#a_81_1  & 1)*3+(#a_81_2  & 1)*3+(#a_81_3  & 1)*3+(#a_81_4  & 1)*3+(#a_81_5  & 1)*3) >=18
 
}
rule Trojan_Win64_Dridex_EC_MTB_4{
	meta:
		description = "Trojan:Win64/Dridex.EC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 08 00 00 "
		
	strings :
		$a_80_0 = {72 72 70 69 6f 64 65 2e 70 64 62 } //rrpiode.pdb  3
		$a_80_1 = {6f 6e 75 70 6b 72 65 61 73 6f 6e 69 6e 67 43 68 72 6f 6d 65 32 52 4c 5a 63 49 6e 74 65 72 6e 65 74 32 30 30 38 2e 32 38 } //onupkreasoningChrome2RLZcInternet2008.28  3
		$a_80_2 = {6d 6f 64 65 66 72 6f 6d 41 62 72 6f 77 73 65 72 2e 59 47 } //modefromAbrowser.YG  3
		$a_80_3 = {75 73 61 67 65 64 61 79 2c 61 43 62 61 63 74 65 72 69 6f 6c 6f 67 79 70 68 6f 65 6e 69 78 77 } //usageday,aCbacteriologyphoenixw  3
		$a_80_4 = {4b 46 36 34 2d 62 69 74 74 6f 34 49 6e 63 6f 67 6e 69 74 6f 49 4b 69 6e 66 } //KF64-bitto4IncognitoIKinf  3
		$a_80_5 = {53 74 72 54 72 69 6d 57 } //StrTrimW  3
		$a_80_6 = {47 65 74 55 72 6c 43 61 63 68 65 45 6e 74 72 79 49 6e 66 6f 57 } //GetUrlCacheEntryInfoW  3
		$a_80_7 = {43 72 65 61 74 65 4d 65 74 61 46 69 6c 65 41 } //CreateMetaFileA  3
	condition:
		((#a_80_0  & 1)*3+(#a_80_1  & 1)*3+(#a_80_2  & 1)*3+(#a_80_3  & 1)*3+(#a_80_4  & 1)*3+(#a_80_5  & 1)*3+(#a_80_6  & 1)*3+(#a_80_7  & 1)*3) >=24
 
}