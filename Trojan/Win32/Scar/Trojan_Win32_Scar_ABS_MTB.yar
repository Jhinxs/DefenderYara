
rule Trojan_Win32_Scar_ABS_MTB{
	meta:
		description = "Trojan:Win32/Scar.ABS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {63 61 73 69 6e 6f 5f 65 78 74 65 6e 73 69 6f 6e 73 2e 65 78 65 } //1 casino_extensions.exe
		$a_01_1 = {4c 69 76 65 4d 65 73 73 61 67 65 43 65 6e 74 65 72 2e 65 78 65 } //1 LiveMessageCenter.exe
		$a_01_2 = {63 61 73 69 6e 6f 5f 6e 6f 74 69 66 69 63 61 74 69 6f 6e 73 2e 65 78 65 } //1 casino_notifications.exe
		$a_01_3 = {68 73 6d 68 7a 6d 72 66 76 6b 6e 68 73 6c 6b 74 6d 74 76 68 74 77 73 72 64 72 68 70 68 73 5f 75 73 65 72 73 2e 74 78 74 } //1 hsmhzmrfvknhslktmtvhtwsrdrhphs_users.txt
		$a_01_4 = {5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c } //1 \Internet Explorer\
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}