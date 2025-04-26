
rule Trojan_Linux_Flooder_F_MTB{
	meta:
		description = "Trojan:Linux/Flooder.F!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {50 72 65 70 61 72 69 6e 67 20 70 61 79 6c 6f 61 64 } //1 Preparing payload
		$a_03_1 = {b8 e8 03 00 00 99 f7 7d ?? 69 c0 e8 03 00 00 89 c7 e8 ?? ?? ?? ?? 8b 15 ?? ?? 20 00 8b 45 ?? 0f af d0 8b 45 ?? 39 c2 76 2c 8b 05 ?? ?? 20 00 85 c0 7f 11 8b 05 ?? ?? 20 00 83 c0 64 89 05 ?? ?? 20 00 eb 46 8b 05 ?? ?? 20 00 83 e8 01 89 05 ?? ?? 20 00 eb 35 8b 05 ?? ?? 20 00 83 c0 01 89 05 ?? ?? 20 00 8b 05 ?? ?? 20 00 83 f8 19 76 11 8b 05 ?? ?? 20 00 83 e8 19 89 05 ?? ?? 20 00 eb 0a } //2
		$a_03_2 = {48 83 ec 28 48 89 7d d8 48 89 75 d0 89 55 cc 83 7d cc ?? 75 11 48 8b 45 d8 48 89 c7 e8 ?? ?? ff ff e9 ?? ?? ?? ?? e8 ?? fb ff ff 89 c1 ba 09 04 02 81 89 c8 f7 ea 8d 04 0a c1 f8 07 89 c2 89 c8 c1 f8 1f 89 d3 29 c3 [0-15] 89 cb } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*2+(#a_03_2  & 1)*1) >=3
 
}