
rule Trojan_Win32_Arvid_C_dha{
	meta:
		description = "Trojan:Win32/Arvid.C!dha,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 04 00 00 "
		
	strings :
		$a_01_0 = {61 00 64 00 76 00 74 00 72 00 61 00 76 00 65 00 6c 00 2e 00 69 00 6e 00 66 00 6f 00 } //5 advtravel.info
		$a_01_1 = {6c 00 69 00 6e 00 6b 00 73 00 69 00 73 00 2e 00 69 00 6e 00 66 00 6f 00 2f 00 73 00 79 00 73 00 2f 00 70 00 61 00 74 00 2f 00 } //5 linksis.info/sys/pat/
		$a_01_2 = {2f 00 74 00 6f 00 6f 00 6c 00 73 00 2f 00 77 00 69 00 6e 00 69 00 6e 00 73 00 74 00 6c 00 2e 00 65 00 78 00 65 00 } //2 /tools/wininstl.exe
		$a_01_3 = {2f 00 74 00 6f 00 6f 00 6c 00 73 00 2f 00 64 00 6f 00 74 00 6e 00 65 00 74 00 32 00 2e 00 65 00 78 00 65 00 } //2 /tools/dotnet2.exe
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2) >=9
 
}