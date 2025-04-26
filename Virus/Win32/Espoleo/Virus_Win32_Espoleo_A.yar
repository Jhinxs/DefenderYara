
rule Virus_Win32_Espoleo_A{
	meta:
		description = "Virus:Win32/Espoleo.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {8b 5f 78 03 de 8b fb 8b 5f 20 03 de ba 40 02 00 00 83 c2 01 8b 04 93 03 c6 81 38 4c 6f 61 64 75 ?? 81 78 04 4c 69 62 72 75 ?? 81 78 08 61 72 79 41 75 ?? 8b ca eb ?? eb ?? ba 96 01 00 00 83 c2 01 8b 04 93 03 c6 81 38 47 65 74 50 75 ?? 81 78 04 72 6f 63 41 75 ?? 81 78 08 64 64 72 65 75 ?? 8b c2 eb ?? eb ?? 03 47 10 03 4f 10 83 e8 01 83 e9 01 8b 5f 24 03 de 50 b8 00 00 00 00 66 8b 04 4b } //1
		$a_02_1 = {68 04 01 00 00 68 ?? ?? ?? ?? 6a 00 e8 ?? ?? ff ff ff d0 c7 84 ?? ?? fb ff ff ?? ?? ?? ?? c7 84 ?? ?? fb ff ff ?? ?? ?? ?? c7 84 ?? ?? fb ff ff ?? ?? ?? ?? c7 84 ?? ?? fb ff ff ?? ?? ?? ?? 6a 00 6a 02 6a 02 6a 00 6a 00 68 00 00 00 40 53 68 ?? ?? ?? ?? 6a 00 e8 ?? ?? ff ff ff d0 8b f0 83 ec 04 8b cc 6a 00 51 68 00 50 01 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}