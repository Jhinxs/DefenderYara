
rule Ransom_Win32_Sodinokibi{
	meta:
		description = "Ransom:Win32/Sodinokibi,SIGNATURE_TYPE_CMDHSTR_EXT,0b 00 0b 00 03 00 00 "
		
	strings :
		$a_00_0 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 52 00 65 00 61 00 6c 00 74 00 69 00 6d 00 65 00 4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 69 00 6e 00 67 00 20 00 24 00 74 00 72 00 75 00 65 00 } //10 DisableRealtimeMonitoring $true
		$a_00_1 = {5c 00 6b 00 77 00 6f 00 72 00 6b 00 69 00 6e 00 67 00 5c 00 61 00 67 00 65 00 6e 00 74 00 2e 00 65 00 78 00 65 00 } //1 \kworking\agent.exe
		$a_00_2 = {61 00 67 00 65 00 6e 00 74 00 2e 00 63 00 72 00 74 00 } //1 agent.crt
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=11
 
}