
rule Trojan_Win32_PurpleWave_A_MTB{
	meta:
		description = "Trojan:Win32/PurpleWave.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_81_0 = {73 75 6d 61 6b 6f 6b 6c 2e 62 65 67 65 74 2e 74 65 63 68 2f 63 6f 6e 66 69 67 } //1 sumakokl.beget.tech/config
		$a_81_1 = {50 75 72 70 6c 65 57 61 76 65 } //1 PurpleWave
		$a_81_2 = {3a 5b 65 70 6d 61 70 70 65 72 2c 53 65 63 75 72 69 74 79 3d 49 6d 70 65 72 73 6f 6e 61 74 69 6f 6e 20 44 79 6e 61 6d 69 63 20 46 61 6c 73 65 5d } //1 :[epmapper,Security=Impersonation Dynamic False]
		$a_81_3 = {5c 48 69 73 74 6f 72 79 2e 49 45 35 5c 4d 53 48 69 73 74 } //1 \History.IE5\MSHist
		$a_81_4 = {5c 42 61 73 65 4e 61 6d 65 64 4f 62 6a 65 63 74 73 5c 47 6c 6f 62 61 6c 5c 53 76 63 63 74 72 6c 53 74 61 72 74 45 76 65 6e 74 5f 41 33 37 35 32 44 58 } //1 \BaseNamedObjects\Global\SvcctrlStartEvent_A3752DX
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=4
 
}