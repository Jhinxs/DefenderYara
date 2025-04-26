
rule PWS_Win32_Dyzap_C{
	meta:
		description = "PWS:Win32/Dyzap.C,SIGNATURE_TYPE_PEHSTR,04 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {5c 44 59 52 45 5c 52 65 6c 65 61 73 65 5c 69 65 62 61 74 74 6c 65 2e 70 64 62 } //1 \DYRE\Release\iebattle.pdb
		$a_01_1 = {5c 00 5c 00 2e 00 5c 00 70 00 69 00 70 00 65 00 5c 00 52 00 61 00 6e 00 67 00 69 00 73 00 50 00 69 00 70 00 65 00 } //1 \\.\pipe\RangisPipe
		$a_01_2 = {2f 25 73 2f 25 73 2f 31 34 2f 65 72 72 6f 72 2f 25 73 } //1 /%s/%s/14/error/%s
		$a_01_3 = {3c ff 75 0d 80 7f 01 25 75 07 8b 47 02 8b 00 eb 19 3c e9 75 09 8b 4f 01 8d 44 39 05 eb 0c 3c eb } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}