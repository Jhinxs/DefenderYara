
rule Trojan_BAT_Dropper_PSK_MTB{
	meta:
		description = "Trojan:BAT/Dropper.PSK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 05 00 00 "
		
	strings :
		$a_03_0 = {81 0b 00 00 01 73 7d 00 00 0a 13 0e 11 0e 11 13 28 82 ?? ?? ?? 6f 7e ?? ?? ?? 07 11 0d 6f 7f ?? ?? ?? 73 80 ?? ?? ?? 13 14 06 6f 81 ?? ?? ?? 07 6f 82 ?? ?? ?? 16 73 83 ?? ?? ?? 13 15 } //5
		$a_01_1 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //1 DebuggingModes
		$a_01_2 = {52 53 41 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //1 RSACryptoServiceProvider
		$a_01_3 = {47 65 74 45 78 65 63 75 74 69 6e 67 41 73 73 65 6d 62 6c 79 } //1 GetExecutingAssembly
		$a_01_4 = {47 65 74 50 75 62 6c 69 63 4b 65 79 } //1 GetPublicKey
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=9
 
}