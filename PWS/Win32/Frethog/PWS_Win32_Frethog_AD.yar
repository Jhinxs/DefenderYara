
rule PWS_Win32_Frethog_AD{
	meta:
		description = "PWS:Win32/Frethog.AD,SIGNATURE_TYPE_PEHSTR,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {c1 eb 02 8b 4d 14 33 d2 8b 04 96 41 83 e1 1f d3 c0 33 c7 89 04 96 42 3b d3 75 ed 61 5f 5e 5b 5d } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}