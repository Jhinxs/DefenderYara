
rule Backdoor_Linux_Tsunami_Q_MTB{
	meta:
		description = "Backdoor:Linux/Tsunami.Q!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_00_0 = {50 52 49 56 4d 53 47 20 25 73 20 3a 61 74 74 61 63 6b 20 68 61 73 20 62 65 65 6e 20 73 74 61 72 74 65 64 20 6f 6e 20 25 73 } //1 PRIVMSG %s :attack has been started on %s
		$a_00_1 = {44 20 44 20 4f 20 53 20 2d 20 43 20 4f 20 4d 20 4d 20 41 20 4e 20 44 20 53 } //1 D D O S - C O M M A N D S
		$a_00_2 = {64 6f 20 6e 6f 74 20 61 74 74 61 63 6b 20 74 68 69 73 20 69 72 63 20 73 65 72 76 65 72 } //1 do not attack this irc server
		$a_00_3 = {77 65 61 70 6f 6d 69 7a 65 64 20 6d 61 6c 77 61 72 65 20 65 78 70 6c 6f 69 74 69 6e 67 20 6d 75 6c 74 69 62 6c 65 20 76 75 6c 6e 65 72 61 62 69 6c 74 79 73 } //1 weapomized malware exploiting multible vulnerabiltys
		$a_02_4 = {77 67 65 74 20 68 74 74 70 [0-12] 2e 6e 67 72 6f 6b 2e 69 6f 2f } //1
		$a_00_5 = {70 6f 6c 61 72 6d 61 6c 77 61 72 65 } //1 polarmalware
		$a_00_6 = {61 6c 6c 20 6d 6f 73 74 20 63 6f 6d 6d 6f 6e 20 6d 69 72 61 69 2c 20 71 62 6f 74 2c 20 6b 61 69 74 65 6e 20 62 6f 74 20 70 72 6f 63 63 65 73 73 65 73 } //1 all most common mirai, qbot, kaiten bot proccesses
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_02_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=7
 
}