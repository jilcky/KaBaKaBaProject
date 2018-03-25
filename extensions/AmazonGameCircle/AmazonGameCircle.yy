{
    "id": "2fff2f3b-e2a0-443a-acad-2a38d749aa1c",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "AmazonGameCircle",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.ACCESS_WIFI_STATE"
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "AmazonGameCircle",
    "androidinject": "<activity android:name=\"com.amazon.device.ads.AdActivity\" android:configChanges=\"keyboardHidden|orientation|screenSize\"\/>\\u000d\\u000a\\u000d\\u000a<activity android:name=\"com.amazon.ags.html5.overlay.GameCircleUserInterface\"\\u000d\\u000aandroid:theme=\"@style\/GCOverlay\"  android:hardwareAccelerated=\"false\"><\/activity>\\u000d\\u000a<activity\\u000d\\u000a  android:name=\"com.amazon.identity.auth.device.authorization.AuthorizationActivity\"\\u000d\\u000a  android:theme=\"@android:style\/Theme.NoDisplay\"\\u000d\\u000a  android:allowTaskReparenting=\"true\"\\u000d\\u000a  android:launchMode=\"singleTask\">\\u000d\\u000a  <intent-filter>\\u000d\\u000a     <action android:name=\"android.intent.action.VIEW\" \/>\\u000d\\u000a     <category android:name=\"android.intent.category.DEFAULT\" \/>\\u000d\\u000a     <category android:name=\"android.intent.category.BROWSABLE\" \/>\\u000d\\u000a     <data android:host=\"${YYAndroidPackageName}\" android:scheme=\"amzn\" \/>\\u000d\\u000a  <\/intent-filter>\\u000d\\u000a<\/activity>\\u000d\\u000a<activity android:name=\"com.amazon.ags.html5.overlay.GameCircleAlertUserInterface\"\\u000d\\u000aandroid:theme=\"@style\/GCAlert\"><\/activity>\\u000d\\u000a<receiver\\u000d\\u000a  android:name=\"com.amazon.identity.auth.device.authorization.PackageIntentReceiver\"\\u000d\\u000a  android:enabled=\"true\">\\u000d\\u000a  <intent-filter>\\u000d\\u000a     <action android:name=\"android.intent.action.PACKAGE_INSTALL\" \/>\\u000d\\u000a     <action android:name=\"android.intent.action.PACKAGE_ADDED\" \/>\\u000d\\u000a     <data android:scheme=\"package\" \/>\\u000d\\u000a  <\/intent-filter>\\u000d\\u000a<\/receiver>\\u000d\\u000a",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 562949953421320,
    "date": "2017-35-31 03:08:26",
    "description": "",
    "extensionName": "",
    "files": [
        {
            "id": "a6ef95cb-29be-4075-bdb1-41dd8d5267a0",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "261523a5-a7c9-4014-8cc2-5f49be1110d7",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "AmazonGameCircle_Achievements",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "7b636c50-9c7f-4085-b92a-d33e011ee088",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "AmazonGameCircle_Leaderboards",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "a47036b6-145e-48a0-9b35-27e7035bf611",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "AmazonGameCircle_Whispersync",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "19ad9289-33d6-49f7-aa4e-673b15008c13",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "AmazonGameCircle_Progress",
                    "hidden": false,
                    "value": "8"
                },
                {
                    "id": "c1131ed1-34e8-499a-a25b-c66447de872a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "AmazonGameCircle_IAP",
                    "hidden": false,
                    "value": "16"
                },
                {
                    "id": "44c5b1dc-76db-4e69-b51e-e83f328d5a28",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "AmazonGameCircle_IAP_Receipt",
                    "hidden": false,
                    "value": "2001"
                },
                {
                    "id": "81bb9abb-4d25-4408-bb17-a025dfbacde3",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "AmazonGameCircle_PurchaseStatus",
                    "hidden": false,
                    "value": "2002"
                },
                {
                    "id": "146ae636-e40d-411c-ab81-14dafb59b574",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "AmazonGameCircle_ProductDataResponse",
                    "hidden": false,
                    "value": "2003"
                },
                {
                    "id": "611c9e16-cf67-40ce-962d-efba63cf3d7b",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "AmazonGameCircle_UserDataResponse",
                    "hidden": false,
                    "value": "2004"
                }
            ],
            "copyToTargets": 562949955518472,
            "filename": "AmazonGameCircle.ext",
            "final": "",
            "functions": [
                {
                    "id": "cfd6df96-c3a7-4196-a70a-32e67d28af3b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "AmazonGameCircle_AchievementProgress",
                    "help": "AmazonGameCircle_AchievementProgress(achievement_id,progress)",
                    "hidden": false,
                    "kind": 11,
                    "name": "AmazonGameCircle_AchievementProgress",
                    "returnType": 2
                },
                {
                    "id": "0b36614a-b635-46e7-8c70-cf89ce7c595a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "AmazonGameCircle_ShowAchievements",
                    "help": "AmazonGameCircle_ShowAchievements()",
                    "hidden": false,
                    "kind": 11,
                    "name": "AmazonGameCircle_ShowAchievements",
                    "returnType": 2
                },
                {
                    "id": "7dc56127-5b43-4796-aa0d-07fd2c907e61",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "AmazonGameCircle_ShowLeaderboards",
                    "help": "AmazonGameCircle_ShowLeaderboards()",
                    "hidden": false,
                    "kind": 11,
                    "name": "AmazonGameCircle_ShowLeaderboards",
                    "returnType": 2
                },
                {
                    "id": "64ed7ff0-dcc2-4ae1-9496-c25005c54c36",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "AmazonGameCircle_PostLeaderboardScore",
                    "help": "AmazonGameCircle_PostLeaderboardScore(leaderboard_id,score)",
                    "hidden": false,
                    "kind": 11,
                    "name": "AmazonGameCircle_PostLeaderboardScore",
                    "returnType": 2
                },
                {
                    "id": "424236e1-0bfb-4823-9d3f-9e7b69748326",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "AmazonGameCircle_Show",
                    "help": "AmazonGameCircle_Show()",
                    "hidden": false,
                    "kind": 11,
                    "name": "AmazonGameCircle_Show",
                    "returnType": 2
                },
                {
                    "id": "e9cab031-cbee-4f43-b916-72b76e03be19",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "AmazonGameCircle_ShowLoginDialog",
                    "help": "AmazonGameCircle_ShowLoginDialog()",
                    "hidden": false,
                    "kind": 11,
                    "name": "AmazonGameCircle_ShowLoginDialog",
                    "returnType": 2
                },
                {
                    "id": "d780e854-3da4-4ac6-94c3-a6cb5dfa8483",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "AmazonGameCircle_IsSignedIn",
                    "help": "AmazonGameCircle_IsSignedIn()",
                    "hidden": false,
                    "kind": 11,
                    "name": "AmazonGameCircle_IsSignedIn",
                    "returnType": 2
                },
                {
                    "id": "7f2478e9-aac8-46b6-a0a1-1c6c795c2957",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "AmazonGameCircle_GetFriends",
                    "help": "AmazonGameCircle_GetFriends()",
                    "hidden": false,
                    "kind": 11,
                    "name": "AmazonGameCircle_GetFriends",
                    "returnType": 2
                },
                {
                    "id": "8c67e086-4b5f-4484-98f3-f886f2019a97",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "AmazonGameCircle_LoadLeaderboard",
                    "help": "AmazonGameCircle_LoadLeaderboard(leaderboard_id,startindex,endindex)",
                    "hidden": false,
                    "kind": 11,
                    "name": "AmazonGameCircle_LoadLeaderboard",
                    "returnType": 2
                },
                {
                    "id": "495cb167-4879-46c8-915c-f0c5c895919e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "AmazonGameCircle_LoadAchievements",
                    "help": "AmazonGameCircle_LoadAchievements()",
                    "hidden": false,
                    "kind": 11,
                    "name": "AmazonGameCircle_LoadAchievements",
                    "returnType": 2
                },
                {
                    "id": "3820ace3-fe7e-418c-a8d1-9717b394bb03",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "AmazonGameCircle_CloudSynchronize",
                    "help": "AmazonGameCircle_CloudSynchronize()",
                    "hidden": false,
                    "kind": 11,
                    "name": "AmazonGameCircle_CloudSynchronize",
                    "returnType": 2
                },
                {
                    "id": "24c37c17-a445-4dca-9387-fb1d4e2d1cee",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "AmazonGameCircle_CloudStringSet",
                    "help": "AmazonGameCircle_CloudStringSet(keyname,string_to_save)",
                    "hidden": false,
                    "kind": 11,
                    "name": "AmazonGameCircle_CloudStringSet",
                    "returnType": 2
                },
                {
                    "id": "be501af0-1647-48d1-8aa6-7f7e0d7205a0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "AmazonGameCircle_CloudStringGet",
                    "help": "AmazonGameCircle_CloudStringGet(key)",
                    "hidden": false,
                    "kind": 11,
                    "name": "AmazonGameCircle_CloudStringGet",
                    "returnType": 1
                },
                {
                    "id": "bc46f2dc-d60a-45fc-be12-4eebd9ce748e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "AmazonGameCircle_CloudNumberGet",
                    "help": "AmazonGameCircle_CloudNumberGet(key_name)",
                    "hidden": false,
                    "kind": 11,
                    "name": "AmazonGameCircle_CloudNumberGet",
                    "returnType": 2
                },
                {
                    "id": "5f38dd56-a787-4f5a-b656-f3bb51ae8672",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "AmazonGameCircle_CloudNumberSet",
                    "help": "AmazonGameCircle_CloudNumberSet(key_name,value)",
                    "hidden": false,
                    "kind": 11,
                    "name": "AmazonGameCircle_CloudNumberSet",
                    "returnType": 2
                },
                {
                    "id": "490bdbc6-b101-4382-a275-1aa7567b4278",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "AmazonGameCircle_AddIAP_SKU",
                    "help": "AmazonGameCircle_AddIAP_SKU(name)",
                    "hidden": false,
                    "kind": 11,
                    "name": "AmazonGameCircle_AddIAP_SKU",
                    "returnType": 2
                },
                {
                    "id": "04c37b6c-e8d1-48df-b35f-313a00cbc646",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "AmazonGameCircle_GetProductData",
                    "help": "AmazonGameCircle_GetProductData()",
                    "hidden": false,
                    "kind": 11,
                    "name": "AmazonGameCircle_GetProductData",
                    "returnType": 2
                },
                {
                    "id": "e42b1b74-3cc9-4b0e-96d5-25c590a763fe",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "AmazonGameCircle_BuyIAP_SKU",
                    "help": "AmazonGameCircle_BuyIAP_SKU(name)",
                    "hidden": false,
                    "kind": 11,
                    "name": "AmazonGameCircle_BuyIAP_SKU",
                    "returnType": 2
                },
                {
                    "id": "01b109c3-2ff8-4f6d-9cc7-a017f69baa33",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "AmazonGameCircle_NotifyFulfillment",
                    "help": "AmazonGameCircle_NotifyFulfillment(receipt_id)",
                    "hidden": false,
                    "kind": 11,
                    "name": "AmazonGameCircle_NotifyFulfillment",
                    "returnType": 2
                },
                {
                    "id": "20d233f9-bb10-4283-b837-3f4ca40c8eae",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "AmazonGameCircle_GetPurchasesData",
                    "help": "AmazonGameCircle_GetPurchasesData()",
                    "hidden": false,
                    "kind": 11,
                    "name": "AmazonGameCircle_GetPurchasesData",
                    "returnType": 2
                },
                {
                    "id": "78c6b5a0-faec-4236-a209-27c51f33c342",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "AmazonGameCircle_InitFeatures",
                    "help": "AmazonGameCircle_InitFeatures()",
                    "hidden": false,
                    "kind": 11,
                    "name": "AmazonGameCircle_InitFeatures",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 4,
            "order": [
                "cfd6df96-c3a7-4196-a70a-32e67d28af3b",
                "0b36614a-b635-46e7-8c70-cf89ce7c595a",
                "7dc56127-5b43-4796-aa0d-07fd2c907e61",
                "64ed7ff0-dcc2-4ae1-9496-c25005c54c36",
                "424236e1-0bfb-4823-9d3f-9e7b69748326",
                "e9cab031-cbee-4f43-b916-72b76e03be19",
                "d780e854-3da4-4ac6-94c3-a6cb5dfa8483",
                "7f2478e9-aac8-46b6-a0a1-1c6c795c2957",
                "8c67e086-4b5f-4484-98f3-f886f2019a97",
                "495cb167-4879-46c8-915c-f0c5c895919e",
                "3820ace3-fe7e-418c-a8d1-9717b394bb03",
                "24c37c17-a445-4dca-9387-fb1d4e2d1cee",
                "be501af0-1647-48d1-8aa6-7f7e0d7205a0",
                "bc46f2dc-d60a-45fc-be12-4eebd9ce748e",
                "5f38dd56-a787-4f5a-b656-f3bb51ae8672",
                "490bdbc6-b101-4382-a275-1aa7567b4278",
                "04c37b6c-e8d1-48df-b35f-313a00cbc646",
                "e42b1b74-3cc9-4b0e-96d5-25c590a763fe",
                "01b109c3-2ff8-4f6d-9cc7-a017f69baa33",
                "20d233f9-bb10-4283-b837-3f4ca40c8eae",
                "78c6b5a0-faec-4236-a209-27c51f33c342"
            ],
            "origname": "extensions\\AmazonGameCircle.ext",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": false,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosplistinject": "",
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "packageID": "com.yoyogames.amazonextension",
    "productID": "",
    "sourcedir": "",
    "version": "1.0.0"
}