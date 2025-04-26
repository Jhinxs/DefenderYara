
rule Trojan_Win64_IcedID_MX_MTB{
	meta:
		description = "Trojan:Win64/IcedID.MX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {41 f7 ec c1 fa ?? 8b c2 c1 e8 ?? 03 c2 48 98 48 8d 0c 40 49 63 c4 41 83 c4 01 48 8d 14 c8 48 8b 44 24 28 42 0f b6 8c 32 f0 a1 06 00 41 32 4c 00 ff 43 88 4c 18 ff 44 3b 64 24 20 72 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}
rule Trojan_Win64_IcedID_MX_MTB_2{
	meta:
		description = "Trojan:Win64/IcedID.MX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 06 00 00 "
		
	strings :
		$a_01_0 = {52 75 6e 4f 62 6a 65 63 74 } //10 RunObject
		$a_01_1 = {44 74 35 72 65 2e 64 6c 6c } //1 Dt5re.dll
		$a_01_2 = {4d 51 6a 50 64 73 57 57 } //1 MQjPdsWW
		$a_01_3 = {50 64 73 31 35 56 38 52 6e 44 } //1 Pds15V8RnD
		$a_01_4 = {55 6e 43 58 35 62 36 51 } //1 UnCX5b6Q
		$a_01_5 = {58 4e 30 6e 4c 6e 36 } //1 XN0nLn6
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=15
 
}
rule Trojan_Win64_IcedID_MX_MTB_3{
	meta:
		description = "Trojan:Win64/IcedID.MX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 02 00 00 "
		
	strings :
		$a_03_0 = {48 8b 44 24 30 48 83 c4 28 eb ?? 89 44 24 40 83 3c 24 00 7e ?? eb ?? 8b 44 24 40 89 04 24 eb ?? 48 8b 44 24 38 48 89 44 24 10 eb ?? 8a 09 88 08 eb } //10
		$a_01_1 = {54 6a 64 62 68 61 73 62 73 } //5 Tjdbhasbs
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*5) >=15
 
}