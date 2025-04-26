
rule TrojanSpy_Win32_Bancos_ADX{
	meta:
		description = "TrojanSpy:Win32/Bancos.ADX,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_01_0 = {76 00 58 00 6f 00 56 00 64 00 35 00 32 00 63 00 71 00 4f 00 6f 00 64 00 6d 00 59 00 47 00 65 00 76 00 58 00 6e 00 64 00 77 00 58 00 33 00 52 00 64 00 4f 00 33 00 65 00 78 00 53 00 6e 00 63 00 71 00 65 00 47 00 5a 00 30 00 59 00 32 00 63 00 79 00 39 00 6e 00 64 00 6b 00 6d 00 41 00 55 00 64 00 58 00 6c 00 56 00 43 00 65 00 47 00 58 00 48 00 39 00 30 00 56 00 } //2 vXoVd52cqOodmYGevXndwX3RdO3exSncqeGZ0Y2cy9ndkmAUdXlVCeGXH90V
		$a_01_1 = {74 78 74 50 6f 73 69 63 61 6f } //2 txtPosicao
		$a_01_2 = {54 78 74 50 61 73 73 34 } //2 TxtPass4
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2) >=6
 
}