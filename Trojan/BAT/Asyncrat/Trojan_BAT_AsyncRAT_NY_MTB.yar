
rule Trojan_BAT_AsyncRAT_NY_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.NY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 "
		
	strings :
		$a_03_0 = {28 6b 00 00 0a 25 26 6f ?? ?? ?? 0a 25 26 13 67 11 67 14 20 ?? ?? ?? 00 28 ?? ?? ?? 06 25 26 16 28 ?? ?? ?? 06 } //5
		$a_01_1 = {43 72 79 70 74 6f 4f 62 66 75 73 63 61 74 6f 72 5f 4f 75 74 70 75 74 } //1 CryptoObfuscator_Output
		$a_01_2 = {76 34 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //1 v4.My.Resources
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=7
 
}