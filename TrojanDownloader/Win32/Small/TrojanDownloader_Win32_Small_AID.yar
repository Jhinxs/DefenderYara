
rule TrojanDownloader_Win32_Small_AID{
	meta:
		description = "TrojanDownloader:Win32/Small.AID,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {c0 ea 04 08 10 40 c0 e1 04 88 08 ba 02 00 00 00 eb 19 } //1
		$a_00_1 = {c0 ea 02 08 10 40 c0 e1 06 88 08 ba 03 00 00 00 eb 05 08 08 } //1
		$a_01_2 = {25 00 73 00 5c 00 61 00 70 00 70 00 25 00 64 00 2e 00 74 00 6d 00 70 00 } //1 %s\app%d.tmp
		$a_01_3 = {6f 00 6f 00 6b 00 65 00 66 00 64 00 73 00 61 00 66 00 64 00 72 00 69 00 6e 00 66 00 64 00 61 00 66 00 64 00 73 00 61 00 6f 00 68 00 64 00 73 00 61 00 66 00 64 00 73 00 61 00 6c 00 6e 00 66 00 64 00 6c 00 73 00 61 00 66 00 64 00 73 00 61 00 } //1 ookefdsafdrinfdafdsaohdsafdsalnfdlsafdsa
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}