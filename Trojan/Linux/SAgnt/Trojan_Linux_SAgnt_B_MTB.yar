
rule Trojan_Linux_SAgnt_B_MTB{
	meta:
		description = "Trojan:Linux/SAgnt.B!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {42 6f 74 73 43 6f 6e 6e 65 63 74 65 64 } //1 BotsConnected
		$a_01_1 = {42 4f 54 4b 49 4c 4c } //1 BOTKILL
		$a_01_2 = {4b 49 4c 4c 41 54 54 4b } //1 KILLATTK
		$a_01_3 = {42 6f 74 4c 69 73 74 65 6e 65 72 } //1 BotListener
		$a_01_4 = {42 6f 74 57 6f 72 6b 65 72 } //1 BotWorker
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}