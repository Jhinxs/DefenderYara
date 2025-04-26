
rule Trojan_Win32_Dokgirat_A{
	meta:
		description = "Trojan:Win32/Dokgirat.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {5c 46 69 6e 61 6c 31 73 74 73 70 79 5c 4c 6f 61 64 44 6c 6c 5c 52 65 6c 65 61 73 65 5c 4c 6f 61 64 44 6c 6c 2e 70 64 62 } //1 \Final1stspy\LoadDll\Release\LoadDll.pdb
		$a_03_1 = {8a 14 39 80 c2 ?? 80 f2 ?? 88 14 39 41 3b ce 7c } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}