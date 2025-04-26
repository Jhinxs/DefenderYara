
rule Trojan_BAT_Remcos_ABCA_MTB{
	meta:
		description = "Trojan:BAT/Remcos.ABCA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {06 8e 69 5d 91 02 08 91 61 d2 6f 19 00 00 0a 08 17 58 0c 08 02 8e 69 32 e1 07 2a } //1
		$a_01_1 = {47 65 74 52 65 73 70 6f 6e 73 65 53 74 72 65 61 6d } //1 GetResponseStream
		$a_01_2 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //1 InvokeMember
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}