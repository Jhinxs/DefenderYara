
rule Worm_Win32_Bosidome_A{
	meta:
		description = "Worm:Win32/Bosidome.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {6d 42 69 74 63 6f 69 6e 4d 69 6e 61 67 65 } //1 mBitcoinMinage
		$a_01_1 = {6d 53 70 72 65 61 64 50 32 50 } //1 mSpreadP2P
		$a_01_2 = {6d 53 70 72 65 61 64 55 73 62 } //1 mSpreadUsb
		$a_01_3 = {6d 46 75 64 41 75 74 6f 72 75 6e } //1 mFudAutorun
		$a_01_4 = {4a 61 76 61 55 70 64 61 74 65 2e 65 78 65 20 2f 73 } //1 JavaUpdate.exe /s
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}