
rule TrojanSpy_Win32_Delf_DT{
	meta:
		description = "TrojanSpy:Win32/Delf.DT,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 "
		
	strings :
		$a_00_0 = {5c 48 6f 6f 6b 4c 69 62 2e 64 6c 6c } //1 \HookLib.dll
		$a_00_1 = {68 74 74 70 3a 2f 2f 77 77 77 2e 6d 61 6e 79 61 6b 70 63 2e 63 6f 6d } //1 http://www.manyakpc.com
		$a_00_2 = {0a 00 00 00 4d 50 46 53 45 52 56 49 43 45 00 00 ff ff ff ff 07 00 00 00 41 56 50 2e 45 58 45 00 ff ff ff ff 03 00 00 00 41 56 50 00 ff ff ff ff 0d 00 00 00 5c 77 69 6e 6c 6f 67 6f 6e 2e 64 6c } //5
		$a_02_3 = {8d 55 d0 a1 ?? ?? ?? ?? 8b 00 e8 ?? ?? fe ff 8b 55 d0 b8 ?? ?? ?? ?? e8 ?? ?? ff ff 6a 00 8d 85 fc fe ff ff e8 ?? ?? ff ff 8d 85 fc fe ff ff ba ?? ?? ?? ?? e8 ?? ?? f9 ff 8b 85 fc fe ff ff e8 ?? ?? f9 ff 50 8d 85 f8 fe ff ff b9 ?? ?? ?? ?? 8b 55 d4 e8 ?? ?? f9 ff 8b 85 f8 fe ff ff e8 ?? ?? f9 ff 50 e8 ?? ?? f9 ff 8d 85 f4 fe ff ff b9 ?? ?? ?? ?? 8b 55 d4 e8 ?? ?? f9 ff 8b 85 f4 fe ff ff e8 ?? ?? f9 ff 6a 01 8d 85 f0 fe ff ff e8 ?? ?? ff ff 8d 85 f0 fe ff ff ba ?? ?? ?? ?? e8 ?? ?? f9 ff 8b 85 f0 fe ff ff } //5
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*5+(#a_02_3  & 1)*5) >=12
 
}