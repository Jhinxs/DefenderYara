
rule Backdoor_Win32_Yonsole_B{
	meta:
		description = "Backdoor:Win32/Yonsole.B,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0a 00 05 00 00 "
		
	strings :
		$a_01_0 = {76 0c 8a 06 32 c2 02 c2 88 06 46 49 75 f4 } //1
		$a_01_1 = {b8 12 00 cd 10 bd 18 7c b9 18 00 b8 01 13 bb 0c 00 ba 1d 0e cd 10 e2 fe 3d 3d 3d } //10
		$a_01_2 = {83 c0 fd 83 f8 36 0f 87 } //1
		$a_03_3 = {3d 03 02 00 00 0f 87 ?? ?? ?? ?? 0f 84 ?? ?? ?? ?? 3d 05 01 00 00 77 ?? 74 ?? 2d 00 01 00 00 74 0c 48 74 ?? 83 e8 03 0f 85 } //1
		$a_01_4 = {47 65 74 50 6c 75 67 69 6e 52 65 73 75 6c 74 00 } //1 敇側畬楧剮獥汵t
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1) >=10
 
}