
rule Backdoor_Win32_Zoxpng_A_dha{
	meta:
		description = "Backdoor:Win32/Zoxpng.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_00_0 = {68 74 74 70 3a 2f 2f 25 73 2f 25 30 34 64 2d 25 30 32 64 2f 25 30 34 64 25 30 32 64 25 30 32 64 25 30 32 64 25 30 32 64 25 30 32 64 2e 70 6e 67 } //1 http://%s/%04d-%02d/%04d%02d%02d%02d%02d%02d.png
		$a_00_1 = {68 74 74 70 3a 2f 2f 25 73 2f 69 6d 67 72 65 73 3f 71 3d } //1 http://%s/imgres?q=
		$a_02_2 = {42 36 34 3a 5b 25 73 5d [0-10] 53 74 65 70 } //1
		$a_03_3 = {3d 00 10 06 80 76 ?? 8b 4e 04 56 89 4d f8 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1+(#a_03_3  & 1)*1) >=3
 
}