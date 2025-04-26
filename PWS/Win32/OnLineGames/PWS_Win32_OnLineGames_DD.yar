
rule PWS_Win32_OnLineGames_DD{
	meta:
		description = "PWS:Win32/OnLineGames.DD,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {c2 81 64 cc 0f c1 6a 80 30 56 eb 0f 89 ef 4d } //1
		$a_03_1 = {3b c3 0f 85 a3 00 00 00 c7 05 ?? ?? 00 10 79 3a 40 00 eb 21 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}