
rule Worm_Win32_Autorun_gen_BB{
	meta:
		description = "Worm:Win32/Autorun.gen!BB,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {5b 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //1 [autorun]
		$a_01_1 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 50 00 50 00 73 00 74 00 72 00 65 00 61 00 6d 00 2e 00 65 00 78 00 65 00 } //1 shell\open\Command=PPstream.exe
		$a_01_2 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 44 00 65 00 66 00 61 00 75 00 6c 00 74 00 3d 00 31 00 } //1 shell\open\Default=1
		$a_01_3 = {63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 53 00 65 00 61 00 63 00 6f 00 6e 00 2e 00 65 00 78 00 65 00 } //1 c:\windows\Seacon.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}