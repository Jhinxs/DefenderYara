
rule Misleading_Linux_MechBot_DS_MTB{
	meta:
		description = "Misleading:Linux/MechBot.DS!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_00_0 = {53 50 59 4c 49 53 54 } //1 SPYLIST
		$a_00_1 = {69 6e 69 74 3a 20 45 6e 65 72 67 79 4d 65 63 68 20 72 75 6e 6e 69 6e 67 2e 2e 2e } //1 init: EnergyMech running...
		$a_00_2 = {4e 6f 20 62 6f 74 73 20 69 6e 20 74 68 65 20 63 6f 6e 66 69 67 66 69 6c 65 } //1 No bots in the configfile
		$a_00_3 = {72 75 6e 20 2e 2f 67 65 6e 75 73 65 72 20 25 73 } //1 run ./genuser %s
		$a_00_4 = {73 70 79 6d 73 67 } //1 spymsg
		$a_00_5 = {44 65 6c 65 74 69 6e 67 20 62 6f 74 20 25 73 } //1 Deleting bot %s
		$a_00_6 = {70 72 6f 63 65 73 73 5f 69 6e 63 6f 6d 69 6e 67 5f 63 68 61 74 } //1 process_incoming_chat
		$a_00_7 = {63 68 65 63 6b 5f 61 6c 6c 5f 73 74 65 61 6c } //1 check_all_steal
		$a_00_8 = {73 65 6e 64 5f 73 70 79 } //1 send_spy
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1) >=9
 
}