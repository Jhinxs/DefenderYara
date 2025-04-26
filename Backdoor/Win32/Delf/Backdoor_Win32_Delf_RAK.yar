
rule Backdoor_Win32_Delf_RAK{
	meta:
		description = "Backdoor:Win32/Delf.RAK,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 "
		
	strings :
		$a_00_0 = {30 78 25 2e 32 78 25 2e 32 78 25 2e 32 78 25 2e 32 78 25 2e 32 78 25 2e 32 78 } //1 0x%.2x%.2x%.2x%.2x%.2x%.2x
		$a_00_1 = {53 65 74 20 63 64 61 75 64 69 6f 20 64 6f 6f 72 20 6f 70 65 6e 20 77 61 69 74 } //1 Set cdaudio door open wait
		$a_00_2 = {44 4f 4d 00 ff ff ff ff 04 00 00 00 46 52 45 45 } //1
		$a_02_3 = {89 45 fc 33 c0 55 68 ?? ?? ?? ?? 64 ff 30 64 89 20 ba ?? ?? ?? ?? 8b 45 fc e8 ?? ?? ?? ?? 33 c9 ba ?? ?? ?? ?? 8b 45 fc e8 ?? ?? ?? ?? 84 c0 74 0d ba ?? ?? ?? ?? 8b 45 fc e8 ?? ?? ?? ?? 8b 45 fc e8 ?? ?? ?? ?? 33 c0 5a 59 59 64 89 10 } //5
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_02_3  & 1)*5) >=8
 
}