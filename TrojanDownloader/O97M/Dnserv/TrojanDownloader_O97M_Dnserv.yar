
rule TrojanDownloader_O97M_Dnserv{
	meta:
		description = "TrojanDownloader:O97M/Dnserv,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_00_0 = {3d 20 45 6e 76 69 72 6f 6e 28 22 75 73 65 72 70 22 20 26 20 22 72 6f 66 69 6c 65 22 29 20 26 20 22 5c 2e 6f 72 22 20 26 20 22 61 63 6c 65 53 65 72 76 69 63 65 73 5c 73 76 73 68 6f 73 74 5f 73 65 72 76 2e 22 20 26 20 22 65 22 20 26 20 22 78 22 20 26 20 22 65 22 } //1 = Environ("userp" & "rofile") & "\.or" & "acleServices\svshost_serv." & "e" & "x" & "e"
		$a_00_1 = {3d 20 45 6e 76 69 72 6f 6e 28 22 75 73 65 72 70 22 20 26 20 22 72 6f 66 69 6c 65 22 29 20 26 20 22 5c 2e 6f 72 61 63 6c 65 53 65 72 76 69 63 65 73 5c 73 76 73 68 6f 73 74 5f 73 65 72 76 2e 22 20 26 20 22 64 22 20 26 20 22 6f 22 20 26 20 22 63 22 } //1 = Environ("userp" & "rofile") & "\.oracleServices\svshost_serv." & "d" & "o" & "c"
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}