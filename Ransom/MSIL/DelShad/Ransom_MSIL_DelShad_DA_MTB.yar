
rule Ransom_MSIL_DelShad_DA_MTB{
	meta:
		description = "Ransom:MSIL/DelShad.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_81_0 = {4c 30 4d 67 64 6e 4e 7a 59 57 52 74 61 57 34 75 5a 58 68 6c 49 47 52 6c 62 47 56 30 5a 53 42 7a 61 47 46 6b 62 33 64 7a 49 43 39 68 62 47 77 67 4c 31 46 31 61 57 56 30 } //1 L0MgdnNzYWRtaW4uZXhlIGRlbGV0ZSBzaGFkb3dzIC9hbGwgL1F1aWV0
		$a_81_1 = {4c 30 4d 67 51 6d 4e 6b 5a 57 52 70 64 43 35 6c 65 47 55 67 4c 33 4e 6c 64 43 42 37 5a 47 56 6d 59 58 56 73 64 48 30 67 63 6d 56 6a 62 33 5a 6c 63 6e 6c 6c 62 6d 46 69 62 47 56 6b 49 47 35 76 } //1 L0MgQmNkZWRpdC5leGUgL3NldCB7ZGVmYXVsdH0gcmVjb3ZlcnllbmFibGVkIG5v
		$a_81_2 = {45 6e 63 72 79 70 74 65 64 4b 65 79 } //1 EncryptedKey
		$a_81_3 = {45 6e 63 72 79 70 74 65 64 46 69 6c 65 4e 61 6d 65 } //1 EncryptedFileName
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}