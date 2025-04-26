
rule Backdoor_Linux_Chaos_A_MTB{
	meta:
		description = "Backdoor:Linux/Chaos.A!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {76 69 63 74 69 6d 53 69 7a 65 } //1 victimSize
		$a_01_1 = {55 73 65 72 41 67 65 6e 74 } //1 UserAgent
		$a_01_2 = {73 65 73 73 69 6f 6e 49 64 } //1 sessionId
		$a_01_3 = {75 72 6c 2e 55 73 65 72 69 6e 66 6f } //1 url.Userinfo
		$a_01_4 = {68 74 74 70 2e 66 61 6b 65 4c 6f 63 6b 65 72 } //1 http.fakeLocker
		$a_01_5 = {46 6f 72 63 65 41 74 74 65 6d 70 74 48 54 54 50 32 } //1 ForceAttemptHTTP2
		$a_01_6 = {6d 61 69 6e 2e 53 65 72 76 65 72 41 64 64 72 65 73 73 3d } //1 main.ServerAddress=
		$a_01_7 = {74 69 61 67 6f 72 6c 61 6d 70 65 72 74 2f 43 48 41 4f 53 2f 63 6c 69 65 6e 74 } //1 tiagorlampert/CHAOS/client
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}