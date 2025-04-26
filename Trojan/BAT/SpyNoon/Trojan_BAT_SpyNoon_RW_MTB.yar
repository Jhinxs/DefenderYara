
rule Trojan_BAT_SpyNoon_RW_MTB{
	meta:
		description = "Trojan:BAT/SpyNoon.RW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 08 00 00 "
		
	strings :
		$a_81_0 = {24 32 65 62 65 31 36 32 39 2d 37 36 31 39 2d 34 65 38 61 2d 39 34 35 33 2d 62 66 39 31 62 36 30 34 62 33 36 63 } //10 $2ebe1629-7619-4e8a-9453-bf91b604b36c
		$a_81_1 = {47 6f 6c 64 53 72 63 57 69 6e 64 6f 77 43 74 72 6c 73 5f 43 6c 69 63 6b } //10 GoldSrcWindowCtrls_Click
		$a_81_2 = {47 6f 6c 64 53 72 63 53 63 68 65 6d 65 2e 47 6f 6c 64 53 72 63 42 74 6e 2e 72 65 73 6f 75 72 63 65 73 } //1 GoldSrcScheme.GoldSrcBtn.resources
		$a_81_3 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerBrowsableAttribute
		$a_81_4 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //1 DebuggerBrowsableState
		$a_81_5 = {47 65 74 50 72 6f 63 65 73 73 42 79 49 64 } //1 GetProcessById
		$a_81_6 = {57 69 6e 33 32 45 78 63 65 70 74 69 6f 6e } //1 Win32Exception
		$a_81_7 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
	condition:
		((#a_81_0  & 1)*10+(#a_81_1  & 1)*10+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1) >=25
 
}