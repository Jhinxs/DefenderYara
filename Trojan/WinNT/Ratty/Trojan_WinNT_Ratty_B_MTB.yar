
rule Trojan_WinNT_Ratty_B_MTB{
	meta:
		description = "Trojan:WinNT/Ratty.B!MTB,SIGNATURE_TYPE_JAVAHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {64 65 2f 73 6f 67 6f 6d 6e 2f 72 61 74 2f 52 61 74 74 79 43 6c 69 65 6e 74 } //1 de/sogomn/rat/RattyClient
		$a_00_1 = {6b 65 79 6c 6f 67 67 65 72 } //1 keylogger
		$a_00_2 = {61 64 64 54 6f 53 74 61 72 74 75 70 } //1 addToStartup
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}