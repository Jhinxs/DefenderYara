
rule Ransom_MSIL_OnyxLocker_DA_MTB{
	meta:
		description = "Ransom:MSIL/OnyxLocker.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_81_0 = {4f 6e 79 78 4c 6f 63 6b 65 72 } //1 OnyxLocker
		$a_81_1 = {52 45 43 4f 56 45 52 59 20 49 4e 53 54 52 55 43 54 49 4f 4e 53 } //1 RECOVERY INSTRUCTIONS
		$a_81_2 = {4f 6e 79 78 4c 6f 63 6b 65 72 2e 43 6c 61 73 73 65 73 } //1 OnyxLocker.Classes
		$a_81_3 = {57 57 39 31 49 48 4e 6f 62 33 56 73 5a 43 42 79 5a 58 42 73 59 57 4e 6c 49 48 52 6f 61 58 4d 67 62 57 56 7a 63 32 46 6e 5a 53 42 33 61 58 52 6f 49 48 52 6f 5a 53 42 76 62 6d 55 67 65 57 39 31 49 48 64 68 62 6e 51 67 65 57 39 31 63 69 42 31 63 32 56 79 63 79 42 30 62 79 42 7a 5a 57 55 75 } //1 WW91IHNob3VsZCByZXBsYWNlIHRoaXMgbWVzc2FnZSB3aXRoIHRoZSBvbmUgeW91IHdhbnQgeW91ciB1c2VycyB0byBzZWUu
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}