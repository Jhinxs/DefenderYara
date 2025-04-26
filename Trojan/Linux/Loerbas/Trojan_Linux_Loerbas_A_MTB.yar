
rule Trojan_Linux_Loerbas_A_MTB{
	meta:
		description = "Trojan:Linux/Loerbas.A!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_00_0 = {48 81 ec 60 01 00 00 48 89 bd a8 fe ff ff 48 89 b5 a0 fe ff ff 48 8d 85 c0 fe ff ff ba 24 01 00 00 be 00 00 00 00 48 89 c7 e8 5d f2 ff ff 48 8b 85 a8 fe ff ff be 00 34 60 00 48 89 c7 b8 00 00 00 00 e8 6e 03 00 00 89 45 fc 83 7d fc } //1
		$a_00_1 = {48 89 e5 48 83 ec 70 48 89 7d a8 48 89 75 a0 48 89 55 98 89 4d 94 48 8b 45 a8 be 00 34 60 00 48 89 c7 e8 96 f8 ff ff 89 45 fc 83 7d fc 00 79 05 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}