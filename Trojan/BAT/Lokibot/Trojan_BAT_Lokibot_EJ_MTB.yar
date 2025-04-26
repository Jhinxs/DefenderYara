
rule Trojan_BAT_Lokibot_EJ_MTB{
	meta:
		description = "Trojan:BAT/Lokibot.EJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_81_0 = {2f 2f 63 64 6e 2e 64 69 73 63 6f 72 64 61 70 70 2e 63 6f 6d 2f 61 74 74 61 63 68 6d 65 6e 74 73 2f } //1 //cdn.discordapp.com/attachments/
		$a_81_1 = {45 65 67 72 44 6f 77 45 65 67 72 6e 6c 45 65 67 72 6f 61 64 44 45 65 67 72 61 74 61 45 65 67 72 } //1 EegrDowEegrnlEegroadDEegrataEegr
		$a_81_2 = {70 6f 77 65 72 73 68 65 6c 6c } //1 powershell
		$a_81_3 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //1 get_CurrentDomain
		$a_81_4 = {57 69 6e 64 6f 77 73 46 6f 72 6d 73 41 70 70 } //1 WindowsFormsApp
		$a_81_5 = {52 65 76 65 72 73 65 } //1 Reverse
		$a_81_6 = {42 75 6c 6b 20 45 6d 61 69 6c 20 53 6f 66 74 77 61 72 65 } //1 Bulk Email Software
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=7
 
}