
rule Ransom_MSIL_Cryptolocker_PDO_MTB{
	meta:
		description = "Ransom:MSIL/Cryptolocker.PDO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_81_0 = {41 6c 6c 20 59 6f 75 72 20 46 69 6c 65 73 20 45 6e 63 72 79 70 74 65 64 } //1 All Your Files Encrypted
		$a_81_1 = {4a 65 73 75 73 20 52 61 6e 73 6f 6d } //1 Jesus Ransom
		$a_81_2 = {45 6e 63 72 79 70 74 69 6f 6e 20 43 6f 6d 70 6c 65 74 65 64 } //1 Encryption Completed
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1) >=3
 
}
rule Ransom_MSIL_Cryptolocker_PDO_MTB_2{
	meta:
		description = "Ransom:MSIL/Cryptolocker.PDO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_81_0 = {45 6e 63 72 79 70 74 69 6f 6e 4e 6f 74 43 6f 6d 70 6c 65 74 } //1 EncryptionNotComplet
		$a_81_1 = {57 72 69 74 65 46 69 6c 65 } //1 WriteFile
		$a_81_2 = {6c 6f 6b 6a 68 67 66 64 65 72 } //1 lokjhgfder
		$a_81_3 = {44 65 62 75 67 67 65 72 20 44 65 74 65 63 74 65 64 } //1 Debugger Detected
		$a_81_4 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 ToBase64String
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=5
 
}
rule Ransom_MSIL_Cryptolocker_PDO_MTB_3{
	meta:
		description = "Ransom:MSIL/Cryptolocker.PDO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_81_0 = {44 69 73 61 62 6c 65 54 61 73 6b 4d 67 72 } //1 DisableTaskMgr
		$a_81_1 = {44 69 73 61 62 6c 65 52 65 67 69 73 74 72 79 54 6f 6f 6c 73 } //1 DisableRegistryTools
		$a_81_2 = {47 65 74 46 69 6c 65 73 } //1 GetFiles
		$a_81_3 = {50 72 6f 63 65 73 73 68 61 63 6b 65 72 } //1 Processhacker
		$a_81_4 = {70 6f 77 65 72 73 68 65 6c 6c } //1 powershell
		$a_81_5 = {41 6d 6f 6e 67 55 73 48 6f 72 72 6f 72 45 64 69 74 69 6f 6e } //1 AmongUsHorrorEdition
		$a_81_6 = {41 63 76 69 20 63 71 61 71 6c 74 67 66 20 6a 6a 20 64 67 6f 65 } //1 Acvi cqaqltgf jj dgoe
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=7
 
}