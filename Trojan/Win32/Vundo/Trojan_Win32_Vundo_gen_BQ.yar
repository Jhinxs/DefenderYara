
rule Trojan_Win32_Vundo_gen_BQ{
	meta:
		description = "Trojan:Win32/Vundo.gen!BQ,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {8b d4 cd 2e 89 (45|85) } //3
		$a_01_1 = {43 50 4d 2e 64 6c 6c 00 61 00 73 00 } //1 偃⹍汤las
		$a_01_2 = {41 56 55 4b 2e 64 6c 6c 00 64 00 } //1
		$a_01_3 = {32 32 32 2e 64 6c 6c 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 00 44 6c 6c 47 65 74 43 6c 61 73 73 4f 62 6a 65 63 74 00 61 00 73 00 } //1 ㈲⸲汤l汄䍬湡湕潬摡潎w汄䝬瑥汃獡佳橢捥tas
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}