
rule Trojan_Win64_Splinter_MV_MSR{
	meta:
		description = "Trojan:Win64/Splinter.MV!MSR,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 "
		
	strings :
		$a_01_0 = {30 68 63 68 61 6e 4c 65 61 66 69 6e 74 65 72 66 61 63 65 6d 53 70 61 6e 44 65 61 64 70 61 6e 69 63 77 61 69 74 70 63 6c 6d 75 6c 71 64 71 70 72 65 65 6d 70 74 65 64 70 72 6f 66 42 6c 6f 63 6b 72 77 78 72 77 78 72 77 78 73 74 61 63 6b 70 6f 6f 6c 74 72 61 63 65 62 61 63 6b 77 62 75 66 53 70 61 6e 73 30 31 32 33 34 35 36 37 38 39 42 61 64 } //1 0hchanLeafinterfacemSpanDeadpanicwaitpclmulqdqpreemptedprofBlockrwxrwxrwxstackpooltracebackwbufSpans0123456789Bad
		$a_01_1 = {56 69 72 74 75 61 6c 57 53 41 52 65 63 76 57 53 41 53 65 6e 64 61 62 6f 72 74 65 64 61 6e 61 6c 79 69 73 61 6e 73 77 65 72 73 61 76 78 35 31 32 66 63 68 61 72 73 65 74 63 68 75 6e 6b 65 64 63 6f 6e 6e 65 63 74 63 6f 6e 73 6f 6c 65 63 70 75 70 72 6f 66 64 65 72 69 76 65 64 65 78 70 69 72 65 73 66 6c 61 74 74 65 6e 66 6c 6f 61 74 33 32 66 6c 6f 61 74 36 34 66 6f 72 63 65 67 63 66 72 6f 6d 73 74 72 68 74 74 70 } //1 VirtualWSARecvWSASendabortedanalyisanswersavx512fcharsetchunkedconnectconsolecpuprofderivedexpiresflattenfloat32float64forcegcfromstrhttp
		$a_01_2 = {6f 73 78 73 61 76 65 70 64 68 2e 64 6c 6c 70 72 6f 63 65 73 73 72 65 66 65 72 65 72 72 65 66 72 65 73 68 72 65 73 70 6f 6e 65 72 65 76 65 72 73 65 72 75 6e 6e 69 6e 67 73 61 6e 64 62 6f 78 73 65 72 69 61 6c } //1 osxsavepdh.dllprocessrefererrefreshresponereverserunningsandboxserial
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=1
 
}