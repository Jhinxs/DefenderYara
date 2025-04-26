
rule Ransom_Win32_Phobos_PB_MTB{
	meta:
		description = "Ransom:Win32/Phobos.PB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {69 00 6e 00 66 00 6f 00 2e 00 68 00 74 00 61 00 } //1 info.hta
		$a_01_1 = {2e 00 69 00 64 00 5b 00 41 00 44 00 45 00 34 00 33 00 44 00 35 00 33 00 2d 00 32 00 33 00 30 00 31 00 5d 00 2e 00 5b 00 68 00 61 00 6e 00 65 00 73 00 77 00 6f 00 72 00 74 00 68 00 2e 00 66 00 61 00 62 00 69 00 61 00 6e 00 40 00 61 00 6f 00 6c 00 2e 00 63 00 6f 00 6d 00 5d 00 2e 00 62 00 61 00 6e 00 6a 00 6f 00 } //1 .id[ADE43D53-2301].[hanesworth.fabian@aol.com].banjo
		$a_01_2 = {6e 65 74 73 68 20 66 69 72 65 77 61 6c 6c 20 73 65 74 20 6f 70 6d 6f 64 65 20 6d 6f 64 65 3d 64 69 73 61 62 6c 65 } //1 netsh firewall set opmode mode=disable
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule Ransom_Win32_Phobos_PB_MTB_2{
	meta:
		description = "Ransom:Win32/Phobos.PB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 03 00 00 "
		
	strings :
		$a_02_0 = {6a 2c 8d 44 24 24 6a 00 50 e8 ?? ?? ?? ff 6a 20 8d 4c 24 10 51 8d 54 24 40 52 66 c7 44 24 38 08 02 66 c7 44 24 3c 10 66 c6 44 24 40 20 e8 ?? ?? ?? ff 8b 16 83 c4 18 8d 46 04 50 6a 00 6a 00 6a 2c 8d 4c 24 30 51 52 ff 15 ?? ?? ?? 00 85 c0 75 15 ff 15 ?? ?? ?? 00 50 e8 ?? ?? ?? 00 83 c4 04 32 c0 83 c4 4c c3 } //10
		$a_02_1 = {0f b7 54 24 12 03 56 08 57 52 53 e8 ?? ?? ?? ff 83 c4 0c 8d 6e 0c 55 ff 15 ?? ?? ?? 00 e8 ?? ?? ?? ff 84 c0 74 ?? 8b 44 24 24 50 53 6a 00 6a 00 89 38 8b 46 04 6a 00 50 ff 15 ?? ?? ?? 00 85 c0 75 } //5
		$a_00_2 = {55 8b ec 51 8b 45 08 89 45 fc 8b 4d 10 8b 55 10 83 ea 01 89 55 10 85 c9 74 1e 8b 45 08 8b 4d 0c 8a 11 88 10 8b 45 08 83 c0 01 89 45 08 8b 4d 0c 83 c1 01 89 4d 0c eb d2 8b 45 fc 8b e5 5d c3 } //1
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*5+(#a_00_2  & 1)*1) >=16
 
}