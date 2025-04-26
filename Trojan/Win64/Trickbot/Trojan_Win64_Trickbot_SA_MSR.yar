
rule Trojan_Win64_Trickbot_SA_MSR{
	meta:
		description = "Trojan:Win64/Trickbot.SA!MSR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {55 00 70 00 64 00 61 00 74 00 65 00 20 00 79 00 6f 00 75 00 72 00 20 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 57 00 6f 00 72 00 64 00 } //1 Update your Microsoft Word
		$a_01_1 = {43 00 3a 00 5c 00 54 00 45 00 4d 00 50 00 5c 00 4d 00 48 00 6b 00 36 00 6b 00 79 00 69 00 71 00 2e 00 5a 00 36 00 4f 00 } //1 C:\TEMP\MHk6kyiq.Z6O
		$a_01_2 = {49 00 4d 00 50 00 4f 00 52 00 54 00 41 00 4e 00 54 00 } //1 IMPORTANT
		$a_01_3 = {4d 50 47 6f 6f 64 53 74 61 74 75 73 } //1 MPGoodStatus
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}