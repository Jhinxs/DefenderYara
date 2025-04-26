
rule TrojanDownloader_Win32_Somex_A{
	meta:
		description = "TrojanDownloader:Win32/Somex.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 05 00 00 "
		
	strings :
		$a_00_0 = {25 73 5c 25 73 65 78 2e 64 6c 6c } //1 %s\%sex.dll
		$a_00_1 = {4d 61 6e 61 67 65 73 20 74 68 65 20 52 50 43 20 6e 61 6d 65 20 73 65 72 76 69 63 65 20 6c 6f 61 64 } //1 Manages the RPC name service load
		$a_01_2 = {00 42 49 4e 00 53 65 72 76 69 63 65 44 6c 6c 00 } //1 䈀义匀牥楶散汄l
		$a_00_3 = {4f 70 65 6e 53 43 4d 61 6e 61 67 65 72 41 } //1 OpenSCManagerA
		$a_00_4 = {43 72 65 61 74 65 53 65 72 76 69 63 65 41 } //1 CreateServiceA
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=4
 
}
rule TrojanDownloader_Win32_Somex_A_2{
	meta:
		description = "TrojanDownloader:Win32/Somex.A,SIGNATURE_TYPE_PEHSTR,05 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {25 73 25 73 3f 6d 78 64 75 3d 25 73 26 6d 78 64 70 3d 25 73 26 70 32 3d 25 64 26 42 32 3d 25 64 26 4e 3d 25 73 26 51 3d 25 64 26 4b 65 79 3d 25 64 26 6c 61 6e 67 3d 25 64 } //1 %s%s?mxdu=%s&mxdp=%s&p2=%d&B2=%d&N=%s&Q=%d&Key=%d&lang=%d
		$a_01_1 = {2f 43 6f 75 6e 74 2e 61 73 70 3f 6d 61 63 3d 25 73 26 76 65 72 3d 25 73 26 6f 73 3d 25 73 26 6c 61 6e 67 3d 25 64 } //1 /Count.asp?mac=%s&ver=%s&os=%s&lang=%d
		$a_01_2 = {41 67 65 6e 74 25 6c 64 } //1 Agent%ld
		$a_01_3 = {49 6e 6a 65 63 74 44 6c 6c 20 66 6c 75 6e 6b } //1 InjectDll flunk
		$a_01_4 = {70 6f 6c 2e 65 78 65 } //1 pol.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}