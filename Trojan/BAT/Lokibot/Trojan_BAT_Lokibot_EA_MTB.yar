
rule Trojan_BAT_Lokibot_EA_MTB{
	meta:
		description = "Trojan:BAT/Lokibot.EA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_81_0 = {54 65 73 74 2d 4e 65 74 43 6f 6e 6e 65 63 74 69 6f 6e 20 2d 54 72 61 63 65 52 6f 75 74 65 20 67 6f 6f 67 6c 65 2e 63 6f 6d } //1 Test-NetConnection -TraceRoute google.com
		$a_81_1 = {70 6f 77 65 72 73 68 65 6c 6c } //1 powershell
		$a_81_2 = {57 69 6e 64 6f 77 73 46 6f 72 6d 73 41 70 70 } //1 WindowsFormsApp
		$a_81_3 = {52 65 76 65 72 73 65 } //1 Reverse
		$a_81_4 = {2f 2f 63 64 6e 2e 64 69 73 63 6f 72 64 61 70 70 2e 63 6f 6d 2f 61 74 74 61 63 68 6d 65 6e 74 73 2f } //1 //cdn.discordapp.com/attachments/
		$a_81_5 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //1 DownloadData
		$a_03_6 = {43 6f 6e 73 6f 6c 65 41 70 70 [0-05] 2e 65 78 65 } //1
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_03_6  & 1)*1) >=7
 
}