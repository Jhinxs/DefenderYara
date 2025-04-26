
rule Backdoor_Win64_Turla_Z_dha{
	meta:
		description = "Backdoor:Win64/Turla.Z!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {5c 00 5c 00 2e 00 5c 00 70 00 69 00 70 00 65 00 5c 00 57 00 69 00 6e 00 73 00 6f 00 63 00 6b 00 32 00 5c 00 43 00 61 00 74 00 61 00 6c 00 6f 00 67 00 43 00 68 00 61 00 6e 00 67 00 65 00 4c 00 69 00 73 00 74 00 65 00 6e 00 65 00 72 00 2d 00 46 00 46 00 46 00 46 00 2d 00 46 00 } //1 \\.\pipe\Winsock2\CatalogChangeListener-FFFF-F
		$a_01_1 = {49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 52 00 65 00 6c 00 61 00 74 00 69 00 6f 00 6e 00 73 00 3a 00 3a 00 47 00 65 00 74 00 49 00 6e 00 65 00 74 00 43 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 54 00 6f 00 47 00 61 00 7a 00 65 00 72 00 } //1 InternetRelations::GetInetConnectToGazer
		$a_01_2 = {50 00 69 00 70 00 65 00 52 00 65 00 6c 00 61 00 74 00 69 00 6f 00 6e 00 73 00 3a 00 3a 00 50 00 69 00 70 00 65 00 5f 00 4e 00 4f 00 5f 00 43 00 4f 00 4e 00 4e 00 45 00 43 00 54 00 5f 00 54 00 4f 00 5f 00 47 00 41 00 59 00 5a 00 45 00 52 00 } //1 PipeRelations::Pipe_NO_CONNECT_TO_GAYZER
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}