
rule Backdoor_Win32_ProxyBot_D{
	meta:
		description = "Backdoor:Win32/ProxyBot.D,SIGNATURE_TYPE_PEHSTR_EXT,08 00 07 00 09 00 00 "
		
	strings :
		$a_01_0 = {3f 70 6f 72 74 5f 49 50 3d 25 64 26 70 6f 72 74 5f 50 49 3d 25 64 26 76 65 72 3d } //1 ?port_IP=%d&port_PI=%d&ver=
		$a_01_1 = {7c 65 64 75 7c 67 6f 76 7c 69 6e 66 6f 7c 69 6e 74 7c 6a 6f 62 73 7c 6d 69 6c 7c } //1 |edu|gov|info|int|jobs|mil|
		$a_01_2 = {5c 2a 2e 64 6c 6c 00 00 2e 65 78 65 00 } //1
		$a_01_3 = {65 6d 61 69 6c 53 65 61 72 63 68 65 72 00 } //1 浥楡卬慥捲敨r
		$a_01_4 = {73 6d 77 63 6f 72 65 00 } //1 浳捷牯e
		$a_01_5 = {62 6f 74 50 72 6f 78 79 00 } //1
		$a_01_6 = {42 4f 54 5f 49 50 00 } //1
		$a_01_7 = {4b 69 6c 6c 32 35 } //1 Kill25
		$a_01_8 = {3a 35 35 35 2f 73 6f 72 74 74 61 62 6c 65 2e 6a 73 3e 3c 2f 73 63 72 69 70 74 3e } //1 :555/sorttable.js></script>
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=7
 
}
rule Backdoor_Win32_ProxyBot_D_2{
	meta:
		description = "Backdoor:Win32/ProxyBot.D,SIGNATURE_TYPE_PEHSTR,18 00 14 00 08 00 00 "
		
	strings :
		$a_01_0 = {42 50 52 3a 42 6f 74 20 69 64 3a 25 78 28 25 64 29 20 74 69 6d 3a 25 64 20 25 73 } //10 BPR:Bot id:%x(%d) tim:%d %s
		$a_01_1 = {4c 6f 6f 73 65 20 62 6f 74 20 64 65 6c 61 79 3a 25 64 } //10 Loose bot delay:%d
		$a_01_2 = {73 74 72 69 6b 65 43 6f 75 6e 74 } //1 strikeCount
		$a_01_3 = {62 6f 74 43 6f 75 6e 74 } //1 botCount
		$a_01_4 = {62 6f 74 50 72 6f 78 79 } //1 botProxy
		$a_01_5 = {70 6f 72 74 53 65 61 72 63 68 65 72 } //1 portSearcher
		$a_01_6 = {65 6d 61 69 6c 53 65 61 72 63 68 65 72 } //1 emailSearcher
		$a_01_7 = {70 72 6f 78 79 43 68 65 63 6b 65 72 } //1 proxyChecker
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=20
 
}