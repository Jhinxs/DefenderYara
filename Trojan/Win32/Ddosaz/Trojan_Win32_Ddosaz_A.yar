
rule Trojan_Win32_Ddosaz_A{
	meta:
		description = "Trojan:Win32/Ddosaz.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {49 4d 20 4d 72 2e 46 6c 6c 65 6e } //1 IM Mr.Fllen
		$a_01_1 = {41 68 7a 73 20 44 64 6f 73 } //1 Ahzs Ddos
		$a_01_2 = {59 6f 77 21 20 42 61 64 20 68 6f 73 74 20 6c 6f 6f 6b 75 70 } //1 Yow! Bad host lookup
		$a_01_3 = {25 2e 66 7c 25 64 25 25 } //1 %.f|%d%%
		$a_01_4 = {53 79 73 74 65 6d 2e 65 78 65 } //1 System.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}