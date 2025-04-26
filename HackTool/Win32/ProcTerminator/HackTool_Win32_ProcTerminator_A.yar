
rule HackTool_Win32_ProcTerminator_A{
	meta:
		description = "HackTool:Win32/ProcTerminator.A,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 1a 00 00 "
		
	strings :
		$a_80_0 = {56 69 72 75 73 2e 41 75 74 6f 72 75 6e } //Virus.Autorun  1
		$a_80_1 = {56 69 72 75 73 2e 44 65 6c 73 65 6c 66 } //Virus.Delself  1
		$a_80_2 = {56 69 72 75 73 2e 44 6f 77 6e } //Virus.Down  1
		$a_80_3 = {56 69 72 75 73 2e 44 61 6e 67 65 72 } //Virus.Danger  1
		$a_80_4 = {56 69 72 75 73 2e 48 69 6a 61 63 6b } //Virus.Hijack  1
		$a_80_5 = {56 69 72 75 73 2e 48 6f 6f 6b 65 72 } //Virus.Hooker  1
		$a_80_6 = {56 69 72 75 73 2e 48 6f 6d 65 70 61 67 65 } //Virus.Homepage  1
		$a_80_7 = {56 69 72 75 73 2e 49 6e 6a 65 63 74 6f 72 } //Virus.Injector  1
		$a_80_8 = {56 69 72 75 73 2e 53 79 73 62 6f 74 } //Virus.Sysbot  1
		$a_80_9 = {56 69 72 75 73 2e 4b 69 6c 6c 61 76 } //Virus.Killav  1
		$a_80_10 = {54 72 6f 6a 61 6e 2e 48 6f 6f 6b 65 72 } //Trojan.Hooker  1
		$a_80_11 = {54 72 6f 6a 61 6e 2e 41 75 74 6f 72 75 6e } //Trojan.Autorun  1
		$a_80_12 = {54 72 6f 6a 61 6e 2e 48 6f 6d 65 70 61 67 65 } //Trojan.Homepage  1
		$a_80_13 = {54 72 6f 6a 61 6e 2e 44 61 6e 67 65 72 } //Trojan.Danger  1
		$a_80_14 = {54 72 6f 6a 61 6e 2e 48 69 6a 61 63 6b } //Trojan.Hijack  1
		$a_80_15 = {54 72 6f 6a 61 6e 2e 53 79 73 62 6f 74 } //Trojan.Sysbot  1
		$a_80_16 = {54 72 6f 6a 61 6e 2e 4b 69 6c 6c 61 76 } //Trojan.Killav  1
		$a_80_17 = {4d 61 6c 77 61 72 65 43 72 65 61 74 6f 72 } //MalwareCreator  1
		$a_80_18 = {54 72 6f 6a 61 6e 44 6c 72 } //TrojanDlr  1
		$a_80_19 = {54 72 6f 6a 61 6e 2e 49 6e 6a 65 63 74 6f 72 } //Trojan.Injector  1
		$a_80_20 = {56 69 72 75 73 2e 49 6e 66 65 63 74 6f 72 } //Virus.Infector  1
		$a_80_21 = {5c 5c 2e 5c 66 69 6c 64 64 73 61 70 69 } //\\.\filddsapi  1
		$a_80_22 = {5c 64 65 76 69 63 65 5c 66 69 6c 77 66 70 } //\device\filwfp  1
		$a_80_23 = {66 69 6c 64 64 73 2e 73 79 73 } //fildds.sys  1
		$a_80_24 = {66 69 6c 6e 6b 2e 73 79 73 } //filnk.sys  1
		$a_80_25 = {66 69 6c 77 66 70 2e 73 79 73 } //filwfp.sys  1
	condition:
		((#a_80_0  & 1)*1+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1+(#a_80_4  & 1)*1+(#a_80_5  & 1)*1+(#a_80_6  & 1)*1+(#a_80_7  & 1)*1+(#a_80_8  & 1)*1+(#a_80_9  & 1)*1+(#a_80_10  & 1)*1+(#a_80_11  & 1)*1+(#a_80_12  & 1)*1+(#a_80_13  & 1)*1+(#a_80_14  & 1)*1+(#a_80_15  & 1)*1+(#a_80_16  & 1)*1+(#a_80_17  & 1)*1+(#a_80_18  & 1)*1+(#a_80_19  & 1)*1+(#a_80_20  & 1)*1+(#a_80_21  & 1)*1+(#a_80_22  & 1)*1+(#a_80_23  & 1)*1+(#a_80_24  & 1)*1+(#a_80_25  & 1)*1) >=25
 
}