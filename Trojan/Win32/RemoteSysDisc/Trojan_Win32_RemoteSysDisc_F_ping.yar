
rule Trojan_Win32_RemoteSysDisc_F_ping{
	meta:
		description = "Trojan:Win32/RemoteSysDisc.F!ping,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 06 00 00 "
		
	strings :
		$a_00_0 = {20 00 70 00 69 00 6e 00 67 00 20 00 } //1  ping 
		$a_00_1 = {20 00 70 00 69 00 6e 00 67 00 2e 00 65 00 78 00 65 00 } //1  ping.exe
		$a_00_2 = {5c 00 70 00 69 00 6e 00 67 00 2e 00 65 00 78 00 65 00 } //1 \ping.exe
		$a_00_3 = {5c 00 70 00 69 00 6e 00 67 00 20 00 } //1 \ping 
		$a_00_4 = {6c 00 6f 00 63 00 61 00 6c 00 68 00 6f 00 73 00 74 00 } //-10 localhost
		$a_00_5 = {31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 } //-10 127.0.0.1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*-10+(#a_00_5  & 1)*-10) >=1
 
}