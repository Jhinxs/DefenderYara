
rule Worm_Win32_Makeup_gen_B{
	meta:
		description = "Worm:Win32/Makeup.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0a 00 03 00 00 "
		
	strings :
		$a_00_0 = {73 68 65 6c 6c 5c 69 6e 66 65 63 74 65 64 5c 63 6f 6d 6d 61 6e 64 3d 25 73 } //1 shell\infected\command=%s
		$a_00_1 = {00 6f 70 65 6e 00 } //1 漀数n
		$a_03_2 = {83 f8 02 75 34 89 5c 24 08 ba 05 00 00 00 b8 ?? ?? ?? ?? 89 54 24 14 31 ff be ?? ?? ?? ?? 89 7c 24 10 89 74 24 0c 89 44 24 04 c7 04 24 00 00 00 00 } //10
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_03_2  & 1)*10) >=10
 
}