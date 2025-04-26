
rule Ransom_Linux_Trigona_A_MTB{
	meta:
		description = "Ransom:Linux/Trigona.A!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 06 00 00 "
		
	strings :
		$a_00_0 = {49 53 20 4e 4f 54 20 45 4e 43 52 59 50 54 45 44 20 46 49 4c 45 20 44 45 54 45 43 54 45 44 21 } //1 IS NOT ENCRYPTED FILE DETECTED!
		$a_00_1 = {65 6e 63 72 79 70 74 20 61 6c 6c 20 64 61 74 61 20 69 6e 20 45 53 58 69 20 6d 6f 64 65 } //1 encrypt all data in ESXi mode
		$a_00_2 = {65 6e 63 72 79 70 74 20 61 6c 6c 20 64 61 74 61 20 69 6e 20 4e 41 53 20 6d 6f 64 65 } //1 encrypt all data in NAS mode
		$a_00_3 = {43 61 6e 27 74 20 65 72 61 73 65 20 61 6c 6c 20 64 61 74 61 2e 20 54 65 72 6d 69 6e 61 74 65 64 } //1 Can't erase all data. Terminated
		$a_00_4 = {65 6e 63 72 79 70 74 5f 66 69 6c 65 } //1 encrypt_file
		$a_00_5 = {46 69 6c 65 20 69 6e 20 45 53 58 69 20 65 78 63 6c 75 64 65 64 20 6c 69 73 74 } //1 File in ESXi excluded list
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=4
 
}