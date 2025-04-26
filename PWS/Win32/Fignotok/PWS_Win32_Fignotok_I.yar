
rule PWS_Win32_Fignotok_I{
	meta:
		description = "PWS:Win32/Fignotok.I,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {3f 61 63 74 69 6f 6e 3d 61 64 64 26 61 3d } //1 ?action=add&a=
		$a_03_1 = {2c 30 80 eb 30 88 5d ?? b3 0a f6 eb 80 ea 30 02 c2 8a d3 f6 ea c1 e9 02 2a 84 0d } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}