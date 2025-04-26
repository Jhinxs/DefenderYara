
rule Worm_Win32_Vobfus_N{
	meta:
		description = "Worm:Win32/Vobfus.N,SIGNATURE_TYPE_PEHSTR_EXT,11 00 0c 00 05 00 00 "
		
	strings :
		$a_03_0 = {b9 58 00 00 00 ff 15 ?? ?? 40 00 8b 4d d0 03 8d 2c ff ff ff 88 01 c7 45 fc 04 00 00 00 c7 85 2c ff ff ff 01 00 00 00 83 bd 2c ff ff ff 41 73 } //5
		$a_03_1 = {b9 59 00 00 00 ff 15 ?? ?? 40 00 8b 55 d0 03 95 2c ff ff ff 88 02 c7 45 fc 05 00 00 00 c7 85 2c ff ff ff 02 00 00 00 83 bd 2c ff ff ff 41 73 } //5
		$a_03_2 = {b9 50 00 00 00 ff 15 ?? ?? 40 00 8b 55 d0 03 95 2c ff ff ff 88 02 c7 45 fc 09 00 00 00 c7 45 b8 06 00 00 00 c7 45 fc 0a 00 00 00 } //5
		$a_00_3 = {77 73 32 5f 33 32 00 00 0e 00 00 00 67 65 74 68 6f 73 74 62 79 6e 61 6d 65 00 } //1
		$a_00_4 = {50 72 6f 63 65 73 73 33 32 4e 65 78 74 00 } //1 牐捯獥㍳串硥t
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5+(#a_03_2  & 1)*5+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=12
 
}