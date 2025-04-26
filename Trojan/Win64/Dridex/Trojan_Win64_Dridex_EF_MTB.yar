
rule Trojan_Win64_Dridex_EF_MTB{
	meta:
		description = "Trojan:Win64/Dridex.EF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 "
		
	strings :
		$a_02_0 = {e9 b7 fd ff ff 90 09 31 00 48 89 15 ?? ?? ?? ?? 4c 89 05 ?? ?? ?? ?? 4c 89 0d ?? ?? ?? ?? 4c 89 25 ?? ?? ?? ?? 4c 89 2d ?? ?? ?? ?? 4c 89 35 ?? ?? ?? ?? 4c 89 3d } //10
		$a_00_1 = {48 83 c1 01 89 94 24 88 00 00 00 48 89 4c 24 50 48 83 f9 25 89 44 24 3c 0f 84 ac 00 00 00 eb 46 8b 44 24 6c 0f af c0 } //10
	condition:
		((#a_02_0  & 1)*10+(#a_00_1  & 1)*10) >=20
 
}
rule Trojan_Win64_Dridex_EF_MTB_2{
	meta:
		description = "Trojan:Win64/Dridex.EF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 07 00 00 "
		
	strings :
		$a_81_0 = {46 47 54 37 74 2e 70 64 62 } //3 FGT7t.pdb
		$a_81_1 = {43 72 79 70 74 49 6d 70 6f 72 74 50 75 62 6c 69 63 4b 65 79 49 6e 66 6f } //3 CryptImportPublicKeyInfo
		$a_81_2 = {72 61 69 73 69 6e 67 6e 35 38 37 } //3 raisingn587
		$a_81_3 = {61 69 6e 63 6c 75 64 69 6e 67 31 70 } //3 aincluding1p
		$a_81_4 = {4c 64 72 47 65 74 50 72 6f 63 65 64 75 72 65 41 64 64 72 65 73 73 } //3 LdrGetProcedureAddress
		$a_81_5 = {43 52 59 50 54 33 32 2e 64 6c 6c } //3 CRYPT32.dll
		$a_81_6 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 } //3 VirtualAlloc
	condition:
		((#a_81_0  & 1)*3+(#a_81_1  & 1)*3+(#a_81_2  & 1)*3+(#a_81_3  & 1)*3+(#a_81_4  & 1)*3+(#a_81_5  & 1)*3+(#a_81_6  & 1)*3) >=21
 
}