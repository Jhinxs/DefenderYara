
rule Ransom_MSIL_Cryptolocker_PDK_MTB{
	meta:
		description = "Ransom:MSIL/Cryptolocker.PDK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_81_0 = {52 61 6e 73 6f 6d 77 61 72 65 50 4f 43 } //1 RansomwarePOC
		$a_81_1 = {5f 45 6e 63 72 79 70 74 65 64 24 } //1 _Encrypted$
		$a_81_2 = {56 32 6c 75 5a 47 39 33 63 30 5a 76 63 6d 31 7a 51 58 42 77 4d 53 55 3d } //1 V2luZG93c0Zvcm1zQXBwMSU=
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1) >=3
 
}
rule Ransom_MSIL_Cryptolocker_PDK_MTB_2{
	meta:
		description = "Ransom:MSIL/Cryptolocker.PDK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_81_0 = {59 6f 75 72 20 66 69 6c 65 73 20 61 72 65 20 65 6e 63 72 79 70 74 65 64 } //1 Your files are encrypted
		$a_81_1 = {50 65 6e 74 61 20 72 61 6e 73 6f 6d 77 61 72 65 } //1 Penta ransomware
		$a_81_2 = {57 69 72 75 73 69 6b 5f 52 61 6e 73 6f 6d } //1 Wirusik_Ransom
		$a_81_3 = {44 69 73 61 62 6c 65 54 61 73 6b 4d 67 72 } //1 DisableTaskMgr
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}
rule Ransom_MSIL_Cryptolocker_PDK_MTB_3{
	meta:
		description = "Ransom:MSIL/Cryptolocker.PDK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_81_0 = {6c 6f 63 6b 65 64 2e 7a 69 70 } //1 locked.zip
		$a_81_1 = {73 65 74 5f 45 6e 63 72 79 70 74 69 6f 6e } //1 set_Encryption
		$a_81_2 = {45 6e 63 72 79 70 74 69 6f 6e 41 6c 67 6f 72 69 74 68 6d } //1 EncryptionAlgorithm
		$a_81_3 = {49 6f 6e 69 63 2e 5a 6c 69 62 } //1 Ionic.Zlib
		$a_81_4 = {47 65 74 44 69 72 65 63 74 6f 72 79 4e 61 6d 65 } //1 GetDirectoryName
		$a_81_5 = {47 65 74 44 69 72 65 63 74 6f 72 69 65 73 } //1 GetDirectories
		$a_81_6 = {57 72 69 74 65 41 6c 6c 4c 69 6e 65 73 } //1 WriteAllLines
		$a_81_7 = {42 75 69 6c 64 } //1 Build
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1) >=8
 
}