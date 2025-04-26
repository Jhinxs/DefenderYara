
rule Trojan_BAT_Lokibot_MBJQ_MTB{
	meta:
		description = "Trojan:BAT/Lokibot.MBJQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {24 63 63 37 66 61 64 30 33 2d 38 31 36 65 2d 34 33 32 63 2d 39 62 39 32 2d 30 30 31 66 32 64 33 35 38 33 38 39 } //1 $cc7fad03-816e-432c-9b92-001f2d358389
		$a_01_1 = {73 65 72 76 65 72 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 } //1 server.Resources.resource
		$a_01_2 = {43 6f 6e 66 75 73 65 64 42 79 41 74 74 72 69 62 75 74 65 } //1 ConfusedByAttribute
		$a_01_3 = {49 6d 70 6f 72 74 61 6e 74 20 73 79 73 79 6d 20 66 69 6c 65 } //1 Important sysym file
		$a_01_4 = {73 65 72 76 65 72 31 2e 65 78 65 } //1 server1.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}