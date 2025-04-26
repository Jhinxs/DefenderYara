
rule Trojan_MacOS_FlexiSpy_C_MTB{
	meta:
		description = "Trojan:MacOS/FlexiSpy.C!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,3e 00 3e 00 0a 00 00 "
		
	strings :
		$a_00_0 = {2f 42 61 63 6b 75 70 2f 46 6c 65 78 69 53 50 59 5f 6d 61 63 4f 53 } //10 /Backup/FlexiSPY_macOS
		$a_00_1 = {63 6f 6d 2e 61 70 70 6c 6c 65 2e 71 75 65 75 65 2e 6b 65 79 62 6f 61 72 64 6c 6f 67 67 65 72 } //10 com.applle.queue.keyboardlogger
		$a_00_2 = {5b 41 70 70 50 72 6f 63 65 73 73 4b 69 6c 6c 65 64 4e 6f 74 69 66 69 65 72 20 72 65 67 69 73 74 65 72 41 70 70 50 72 6f 63 65 73 73 5d } //10 [AppProcessKilledNotifier registerAppProcess]
		$a_00_3 = {5b 50 61 67 65 56 69 73 69 74 65 64 4e 6f 74 69 66 69 65 72 20 73 74 61 72 74 4e 6f 74 69 66 79 5d } //10 [PageVisitedNotifier startNotify]
		$a_00_4 = {25 40 20 7b 6d 41 70 70 42 75 6e 64 6c 65 20 3a 20 25 40 2c 20 6d 41 70 70 4e 61 6d 65 20 3a 20 25 40 2c 20 6d 4b 65 79 53 74 72 6f 6b 65 20 3a 20 25 40 2c 20 6d 4b 65 79 53 74 72 6f 6b 65 44 69 73 70 6c 61 79 20 3a 20 25 40 2c 20 6d 57 69 6e 64 6f 77 54 69 74 6c 65 20 3a 20 25 40 2c 20 6d 55 72 6c 20 3a 20 25 40 2c 20 6d 46 72 6f 6e 74 6d 6f 73 74 57 69 6e 64 6f 77 20 3a 20 25 40 7d } //10 %@ {mAppBundle : %@, mAppName : %@, mKeyStroke : %@, mKeyStrokeDisplay : %@, mWindowTitle : %@, mUrl : %@, mFrontmostWindow : %@}
		$a_00_5 = {73 65 6c 65 63 74 20 2a 20 66 72 6f 6d 20 6d 6f 7a 5f 70 6c 61 63 65 73 20 77 68 65 72 65 20 69 64 20 69 6e 20 28 73 65 6c 65 63 74 20 70 6c 61 63 65 5f 69 64 20 66 72 6f 6d 20 6d 6f 7a 5f 68 69 73 74 6f 72 79 76 69 73 69 74 73 20 77 68 65 72 65 20 76 69 73 69 74 5f 64 61 74 65 20 3d 20 28 73 65 6c 65 63 74 20 6d 61 78 28 76 69 73 69 74 5f 64 61 74 65 29 20 66 72 6f 6d 20 6d 6f 7a 5f 68 69 73 74 6f 72 79 76 69 73 69 74 73 29 29 } //10 select * from moz_places where id in (select place_id from moz_historyvisits where visit_date = (select max(visit_date) from moz_historyvisits))
		$a_00_6 = {2f 53 63 72 65 65 6e 73 68 6f 74 55 74 69 6c 73 2e 6d } //1 /ScreenshotUtils.m
		$a_00_7 = {2f 46 69 72 65 66 6f 78 55 72 6c 49 6e 66 6f 49 6e 71 75 69 72 65 72 2e 6d } //1 /FirefoxUrlInfoInquirer.m
		$a_00_8 = {2f 46 69 72 65 66 6f 78 50 72 6f 66 69 6c 65 4d 61 6e 61 67 65 72 2e 6d } //1 /FirefoxProfileManager.m
		$a_00_9 = {6b 69 6c 6c 61 6c 6c 20 2d 39 20 62 6c 62 6c 75 } //1 killall -9 blblu
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*10+(#a_00_5  & 1)*10+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1) >=62
 
}