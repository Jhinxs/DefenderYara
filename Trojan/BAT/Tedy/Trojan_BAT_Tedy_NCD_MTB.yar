
rule Trojan_BAT_Tedy_NCD_MTB{
	meta:
		description = "Trojan:BAT/Tedy.NCD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 "
		
	strings :
		$a_03_0 = {07 08 6f 32 00 00 0a 0d 06 09 28 ?? ?? 00 0a 13 04 12 04 72 ?? ?? 00 70 28 ?? ?? 00 0a 6f ?? ?? 00 0a 26 08 17 58 0c 08 07 6f ?? ?? 00 0a 32 d0 } //5
		$a_01_1 = {4c 6f 67 69 6e 20 50 61 67 65 20 44 65 73 69 67 6e 20 55 49 } //1 Login Page Design UI
		$a_01_2 = {31 00 33 00 2e 00 32 00 32 00 38 00 2e 00 37 00 37 00 2e 00 37 00 39 00 } //1 13.228.77.79
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=7
 
}