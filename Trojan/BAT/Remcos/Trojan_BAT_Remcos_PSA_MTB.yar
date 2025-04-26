
rule Trojan_BAT_Remcos_PSA_MTB{
	meta:
		description = "Trojan:BAT/Remcos.PSA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {73 0f 00 00 0a 73 10 00 00 0a 28 ?? ?? ?? 0a 72 0d 00 00 70 6f ?? ?? ?? 0a 6f ?? ?? ?? 0a 0a 25 06 6f ?? ?? ?? 0a 25 18 6f ?? ?? ?? 0a 73 01 00 00 06 28 ?? ?? ?? 06 0b 6f ?? ?? ?? 0a 07 16 07 8e 69 } //1
		$a_01_1 = {4b 79 68 67 75 79 75 67 } //1 Kyhguyug
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}