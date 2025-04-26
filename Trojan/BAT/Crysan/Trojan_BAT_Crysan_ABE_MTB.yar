
rule Trojan_BAT_Crysan_ABE_MTB{
	meta:
		description = "Trojan:BAT/Crysan.ABE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_03_0 = {2b 00 07 2a 90 0a 22 00 00 20 1d ?? ?? 00 8d 09 ?? ?? 01 25 d0 06 ?? ?? 04 28 0a ?? ?? 0a 0a 06 28 03 ?? ?? 06 0b } //1
		$a_03_1 = {06 16 73 05 ?? ?? 0a 73 06 ?? ?? 0a 0c 00 08 07 2b 03 00 2b 07 6f 07 ?? ?? 0a 2b f6 } //1
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_3 = {54 6f 41 72 72 61 79 } //1 ToArray
		$a_01_4 = {57 72 69 74 65 42 79 74 65 } //1 WriteByte
		$a_01_5 = {52 65 61 64 42 79 74 65 } //1 ReadByte
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}