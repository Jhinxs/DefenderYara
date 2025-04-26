
rule VirTool_Win32_Ceeinject_NX_bit{
	meta:
		description = "VirTool:Win32/Ceeinject.NX!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {2f 64 64 65 00 00 00 64 64 65 65 78 65 63 00 5b 6f 70 65 6e 28 22 25 31 22 29 5d } //1
		$a_01_1 = {25 73 5c 73 68 65 6c 6c 5c 70 72 69 6e 74 74 6f 5c 25 73 } //1 %s\shell\printto\%s
		$a_03_2 = {8b 01 33 d2 6a ?? 5b f7 f3 80 c2 ?? 88 14 37 8b 01 33 d2 f7 f3 47 85 c0 89 01 77 } //1
		$a_03_3 = {8a 1c 30 8b 55 ?? 30 1c 32 8a 14 32 30 14 30 8a 14 30 8b 5d ?? 30 14 33 48 ff 45 ?? 8b d0 2b 55 } //1
		$a_03_4 = {41 41 eb 0d b2 ?? f6 ea 02 44 0e ?? 2c ?? 83 c1 ?? 88 47 ff c6 07 00 47 3b 4d e4 72 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}