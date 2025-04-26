
rule TrojanSpy_Win32_Bancos_AAR{
	meta:
		description = "TrojanSpy:Win32/Bancos.AAR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {0f b7 44 50 fe 03 45 ?? b9 ff 00 00 00 99 f7 f9 89 55 ?? 8b 45 ?? 3b 45 ?? 7d 05 ff 45 ?? eb 07 c7 45 ?? 01 00 00 00 8b 45 ?? 8b 55 ?? 0f b7 44 50 fe 31 45 } //2
		$a_00_1 = {5c 00 62 00 6f 00 62 00 2e 00 74 00 78 00 74 00 } //1 \bob.txt
		$a_00_2 = {49 00 6e 00 65 00 74 00 55 00 52 00 4c 00 3a 00 2f 00 31 00 2e 00 30 00 } //1 InetURL:/1.0
		$a_00_3 = {45 00 61 00 73 00 79 00 50 00 61 00 67 00 6f 00 73 00 2e 00 41 00 63 00 74 00 75 00 61 00 6c 00 69 00 7a 00 61 00 45 00 73 00 74 00 61 00 64 00 6f 00 43 00 61 00 73 00 68 00 2f 00 70 00 6f 00 73 00 74 00 2e 00 61 00 73 00 70 00 } //1 EasyPagos.ActualizaEstadoCash/post.asp
	condition:
		((#a_03_0  & 1)*2+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}