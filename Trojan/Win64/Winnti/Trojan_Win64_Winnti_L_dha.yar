
rule Trojan_Win64_Winnti_L_dha{
	meta:
		description = "Trojan:Win64/Winnti.L!dha,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 "
		
	strings :
		$a_01_0 = {50 72 6f 63 65 73 73 49 44 3d 25 64 20 50 6c 75 73 3d 25 73 20 56 65 72 3d 25 64 20 43 6d 64 49 64 3d 25 64 20 47 65 74 20 53 74 75 63 6b } //1 ProcessID=%d Plus=%s Ver=%d CmdId=%d Get Stuck
		$a_01_1 = {25 73 5c 73 79 73 70 72 65 70 5c 63 72 79 70 74 62 61 73 65 2e 64 6c 6c } //1 %s\sysprep\cryptbase.dll
		$a_01_2 = {77 6f 72 6b 5f 73 74 61 72 74 00 } //1
		$a_01_3 = {77 6f 72 6b 5f 65 6e 64 00 } //1
		$a_01_4 = {6e 65 74 20 73 74 61 72 74 20 49 70 46 69 6c 74 65 72 44 72 69 76 65 72 } //1 net start IpFilterDriver
		$a_01_5 = {4e 74 4c 6f 61 64 44 72 69 76 65 72 } //1 NtLoadDriver
		$a_01_6 = {61 64 76 66 69 72 65 77 61 6c 6c 20 66 69 72 65 77 61 6c 6c 20 61 64 64 20 72 75 6c 65 20 6e 61 6d 65 3d 22 57 69 6e 64 6f 77 73 20 4d 61 6e 61 67 65 6d 65 6e 74 20 49 6e 73 74 72 75 6d 65 6e 74 61 74 69 6f 6e 20 28 52 50 43 2d 49 6e 29 22 20 64 69 72 3d 69 6e 20 61 63 74 69 6f 6e 3d 61 6c 6c 6f 77 20 6c 6f 63 61 6c 70 6f 72 74 3d 25 64 20 70 72 6f 74 6f 63 6f 6c 3d 54 43 50 } //1 advfirewall firewall add rule name="Windows Management Instrumentation (RPC-In)" dir=in action=allow localport=%d protocol=TCP
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=6
 
}