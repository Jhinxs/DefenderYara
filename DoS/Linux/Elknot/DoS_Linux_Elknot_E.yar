
rule DoS_Linux_Elknot_E{
	meta:
		description = "DoS:Linux/Elknot.E,SIGNATURE_TYPE_ELFHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {31 33 43 54 68 72 65 61 64 41 74 74 61 63 6b } //1 13CThreadAttack
		$a_01_1 = {2e 6e 64 66 73 33 30 5f 61 70 69 5f 6c 6f 67 5f 75 74 69 6c 69 74 79 5f 66 69 6c 65 5f 63 75 74 5f 61 6e 64 5f 6d 6f 76 65 } //1 .ndfs30_api_log_utility_file_cut_and_move
		$a_01_2 = {31 37 43 54 68 72 65 61 64 48 6f 73 74 53 74 61 74 75 73 } //1 17CThreadHostStatus
		$a_01_3 = {31 38 43 54 68 72 65 61 64 54 61 73 6b 4d 61 6e 61 67 65 72 } //1 18CThreadTaskManager
		$a_01_4 = {31 32 43 54 68 72 65 61 64 54 69 6d 65 72 } //1 12CThreadTimer
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}