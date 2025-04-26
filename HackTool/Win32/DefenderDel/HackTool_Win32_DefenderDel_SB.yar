
rule HackTool_Win32_DefenderDel_SB{
	meta:
		description = "HackTool:Win32/DefenderDel.SB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0c 00 00 "
		
	strings :
		$a_80_0 = {70 32 63 73 65 72 76 } //p2cserv  10
		$a_80_1 = {64 69 73 61 62 6c 65 72 65 61 6c 74 69 6d 65 6d 6f 6e 69 74 6f 72 69 6e 67 } //disablerealtimemonitoring  1
		$a_80_2 = {64 69 73 61 62 6c 65 61 6e 74 69 76 69 72 75 73 } //disableantivirus  1
		$a_80_3 = {64 69 73 61 62 6c 65 61 6e 74 69 73 70 79 77 61 72 65 } //disableantispyware  1
		$a_80_4 = {70 72 6f 67 72 61 6d 20 66 69 6c 65 73 20 28 78 38 36 29 5c 77 69 6e 64 6f 77 73 20 64 65 66 65 6e 64 65 72 20 61 64 76 61 6e 63 65 64 20 74 68 72 65 61 74 20 70 72 6f 74 65 63 74 69 6f 6e } //program files (x86)\windows defender advanced threat protection  1
		$a_80_5 = {70 72 6f 67 72 61 6d 20 66 69 6c 65 73 5c 77 69 6e 64 6f 77 73 20 64 65 66 65 6e 64 65 72 20 61 64 76 61 6e 63 65 64 20 74 68 72 65 61 74 20 70 72 6f 74 65 63 74 69 6f 6e } //program files\windows defender advanced threat protection  1
		$a_80_6 = {70 72 6f 67 72 61 6d 64 61 74 61 5c 6d 69 63 72 6f 73 6f 66 74 5c 77 69 6e 64 6f 77 73 20 64 65 66 65 6e 64 65 72 20 61 64 76 61 6e 63 65 64 20 74 68 72 65 61 74 20 70 72 6f 74 65 63 74 69 6f 6e } //programdata\microsoft\windows defender advanced threat protection  1
		$a_80_7 = {70 72 6f 67 72 61 6d 64 61 74 61 5c 6d 69 63 72 6f 73 6f 66 74 5c 73 74 6f 72 61 67 65 20 68 65 61 6c 74 68 } //programdata\microsoft\storage health  1
		$a_80_8 = {77 64 62 6f 6f 74 2e 73 79 73 } //wdboot.sys  1
		$a_80_9 = {77 64 64 65 76 66 6c 74 2e 73 79 73 } //wddevflt.sys  1
		$a_80_10 = {77 64 66 69 6c 74 65 72 2e 73 79 73 } //wdfilter.sys  1
		$a_80_11 = {77 64 6e 69 73 64 72 76 2e 73 79 73 } //wdnisdrv.sys  1
	condition:
		((#a_80_0  & 1)*10+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1+(#a_80_4  & 1)*1+(#a_80_5  & 1)*1+(#a_80_6  & 1)*1+(#a_80_7  & 1)*1+(#a_80_8  & 1)*1+(#a_80_9  & 1)*1+(#a_80_10  & 1)*1+(#a_80_11  & 1)*1) >=15
 
}