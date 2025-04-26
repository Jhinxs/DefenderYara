
rule Backdoor_Linux_Ioffer_A_xp{
	meta:
		description = "Backdoor:Linux/Ioffer.A!xp,SIGNATURE_TYPE_ELFHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_00_0 = {43 61 6e 63 65 6c 73 20 54 72 61 6e 73 66 65 72 20 77 69 74 68 20 49 44 20 3d 20 6e } //1 Cancels Transfer with ID = n
		$a_00_1 = {73 72 63 2f 69 72 6f 66 66 65 72 5f 75 70 6c 6f 61 64 2e 63 } //1 src/iroffer_upload.c
		$a_00_2 = {6c 5f 65 73 74 61 62 6c 69 73 68 63 6f 6e } //1 l_establishcon
		$a_00_3 = {6c 61 73 74 63 6f 6e 74 61 63 74 3d 25 6c 64 20 63 6f 6e 6e 65 63 74 74 69 6d 65 3d 25 6c 64 } //1 lastcontact=%ld connecttime=%ld
		$a_00_4 = {46 6c 6f 6f 64 20 50 72 6f 74 65 63 74 69 6f 6e 20 44 65 61 63 74 69 76 61 74 65 64 } //1 Flood Protection Deactivated
		$a_00_5 = {61 64 6d 69 6e 70 61 73 73 20 4a 68 47 63 37 4c 73 32 41 4f 51 53 67 } //1 adminpass JhGc7Ls2AOQSg
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}