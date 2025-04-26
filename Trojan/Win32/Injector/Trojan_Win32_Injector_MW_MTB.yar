
rule Trojan_Win32_Injector_MW_MTB{
	meta:
		description = "Trojan:Win32/Injector.MW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_02_0 = {89 43 01 8b 07 89 43 05 89 1f 83 c3 0d 8b c3 2b c6 3d ?? ?? ?? ?? 7c 90 09 0d 00 c6 03 e8 8d 56 04 8b c3 [0-10] 90 18 83 c0 05 2b d0 8b c2 c3 } //1
		$a_00_1 = {46 75 6c 6c 2d 53 6f 75 72 63 65 5f 53 68 61 72 65 41 70 70 73 43 72 61 63 6b 2e 63 6f 6d } //1 Full-Source_ShareAppsCrack.com
		$a_00_2 = {43 3a 5c 55 73 65 72 73 5c 48 69 64 64 65 6e 54 61 73 6b 5c 44 6f 77 6e 6c 6f 61 64 73 } //1 C:\Users\HiddenTask\Downloads
		$a_00_3 = {55 58 54 48 45 4d 45 2e 44 4c 4c } //1 UXTHEME.DLL
		$a_00_4 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //1 SOFTWARE\Borland\Delphi\RTL
		$a_00_5 = {4d 53 48 5f 57 48 45 45 4c 53 55 50 50 4f 52 54 5f 4d 53 47 } //1 MSH_WHEELSUPPORT_MSG
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}