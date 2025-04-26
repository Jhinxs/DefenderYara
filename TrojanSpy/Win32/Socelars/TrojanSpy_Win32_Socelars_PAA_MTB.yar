
rule TrojanSpy_Win32_Socelars_PAA_MTB{
	meta:
		description = "TrojanSpy:Win32/Socelars.PAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {61 6c 6c 5f 70 61 79 6d 65 6e 74 5f 6d 65 74 68 6f 64 73 25 37 42 70 61 79 6d 65 6e 74 5f 6d 65 74 68 6f 64 5f 61 6c 74 70 61 79 73 25 37 42 61 63 63 6f 75 6e 74 5f 69 64 25 32 43 63 6f 75 6e 74 72 79 25 32 43 63 72 65 64 65 6e 74 69 61 6c 5f 69 64 } //1 all_payment_methods%7Bpayment_method_altpays%7Baccount_id%2Ccountry%2Ccredential_id
		$a_01_1 = {73 65 6c 65 63 74 20 2a 20 66 72 6f 6d 20 6c 6f 67 69 6e 73 20 77 68 65 72 65 20 62 6c 61 63 6b 6c 69 73 74 65 64 5f 62 79 5f 75 73 65 72 3d 30 } //1 select * from logins where blacklisted_by_user=0
		$a_01_2 = {63 6d 64 2e 65 78 65 20 2f 63 20 74 61 73 6b 6b 69 6c 6c 20 2f 66 20 2f 69 6d 20 63 68 72 6f 6d 65 2e 65 78 65 } //1 cmd.exe /c taskkill /f /im chrome.exe
		$a_01_3 = {2f 48 6f 6d 65 2f 49 6e 64 65 78 2f 6c 6b 64 69 6e 6c } //1 /Home/Index/lkdinl
		$a_01_4 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 57 } //1 URLDownloadToFileW
		$a_01_5 = {2f 6e 67 64 61 74 61 73 2e 70 77 } //1 /ngdatas.pw
		$a_01_6 = {6d 75 74 65 78 6d 75 74 65 78 } //1 mutexmutex
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}