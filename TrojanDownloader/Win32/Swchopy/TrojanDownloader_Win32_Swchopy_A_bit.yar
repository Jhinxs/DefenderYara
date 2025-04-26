
rule TrojanDownloader_Win32_Swchopy_A_bit{
	meta:
		description = "TrojanDownloader:Win32/Swchopy.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {63 00 69 00 6c 00 69 00 6e 00 67 00 69 00 72 00 69 00 7a 00 6d 00 69 00 72 00 2e 00 6e 00 65 00 74 00 2f 00 79 00 75 00 6e 00 75 00 73 00 2f 00 73 00 77 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //1 cilingirizmir.net/yunus/swchost.exe
		$a_01_1 = {43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 2e 00 64 00 6c 00 6c 00 } //1 C:\Windows.dll
		$a_01_2 = {43 00 3a 00 5c 00 4c 00 69 00 6e 00 71 00 42 00 72 00 69 00 64 00 67 00 65 00 2e 00 64 00 6c 00 6c 00 } //1 C:\LinqBridge.dll
		$a_01_3 = {43 00 3a 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6f 00 70 00 2e 00 4e 00 65 00 74 00 46 00 77 00 54 00 79 00 70 00 65 00 4c 00 69 00 62 00 2e 00 64 00 6c 00 6c 00 } //1 C:\Interop.NetFwTypeLib.dll
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}