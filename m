Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 025E9C31709
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 04 Nov 2025 15:13:26 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 157C83F841
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Nov 2025 14:13:25 +0000 (UTC)
Received: from SJ2PR03CU001.outbound.protection.outlook.com (mail-westusazon11012047.outbound.protection.outlook.com [52.101.43.47])
	by lists.linaro.org (Postfix) with ESMTPS id A09283F73B
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Nov 2025 14:13:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=yCuEbFEZ;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.43.47 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WpMsHZ7CtGnyYKl9FtRGDfYnLaNK/lZ2zhpoOKGjrjvbllvdsJhTrQZU1tiRI1WaNgdjKJ6O1LdnXYw9vAHV6S7dLbJW8enmcUdMxpCpewrVjlgjn6MOzqrGpSrTZe8ioqhH2zUrCMS0aYLnRn9D1g7aGY/Xb0iIh7nt41Lph6IdPTqtyTe6qCWjOCU+AoGMByWgPf4dPhVnAkbGeIdyECIS36JGalKIXqbdIPziI29EWKeuxFCFPot1mI01NvQ2tpFAPCNO3bYMRENUf6L78gRvGAlxAzT1evGj7tW18fg8fDNhYtuZP0cHSXEYViGMw3vbVFoEUToTqXkvcW5ITQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pIZeaH2b0DzNanqeQBJ+aciF/CjScye7lkNVhm1UeJw=;
 b=DxC9pC8MItq2vUBunpsHR34xPAsaRWy/7x1KjSpGqaYaYR96y0WcShHwl2G7RVEdUzDbfkFxIHvRihtiegqRQu0F/NBdyIclsEeIIzEDmcxHC7MUgozqcHfUkYJ0q2KErPCcR3qvM1+tP7ijagf9irVTdCnvp1x6BaBgmrKDPc5SZsgKiWaV+MO2iDskO601tQpV4Qynd2VIl1adiDLK6y59TddJNoX70dSFLkZ2cp7GP0PpkzV4yYZ7XrAyVWNXA/4dJZ4MSU4M/HlgLwv7Se40lyUJ93dM5pndq00Xh5Q6uP4yOtinrJyVtTTSez7If/BHxF4jefGj3jKAVdP/lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pIZeaH2b0DzNanqeQBJ+aciF/CjScye7lkNVhm1UeJw=;
 b=yCuEbFEZ6Uemi4Pp/O1b8IYauTE0XRQUbHFMgv3eMLf5j5/TtgbwlmClp/BYmPihLdSz3ZOpKXE3+x3q2yFZwZZCR//ghGKYrwjGUKTGhYSUMqoqTzPdXTBPT0LdYc9u6jxZv1PxAcAcDiwg05gQ+Rht2f1VEtS1iHxvyxqIJRk=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CY1PR12MB9700.namprd12.prod.outlook.com (2603:10b6:930:108::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Tue, 4 Nov
 2025 14:13:07 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9275.015; Tue, 4 Nov 2025
 14:13:07 +0000
Message-ID: <4bf843a9-9727-43bc-adb2-66402338dd15@amd.com>
Date: Tue, 4 Nov 2025 15:13:02 +0100
User-Agent: Mozilla Thunderbird
To: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Felix Kuehling <Felix.Kuehling@amd.com>,
 Sumit Semwal <sumit.semwal@linaro.org>
References: <20251104083605.13677-1-pierre-eric.pelloux-prayer@amd.com>
 <20251104083605.13677-4-pierre-eric.pelloux-prayer@amd.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20251104083605.13677-4-pierre-eric.pelloux-prayer@amd.com>
X-ClientProxiedBy: LV3P220CA0022.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:408:234::23) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CY1PR12MB9700:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b19c22a-3db3-4def-b31b-08de1bac46f2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?U2FwbTQ2SE4vQWpCSDFaNzI4Q3Z3L25DWEhtWit1YnRzbDRPS29tRkc2NnBt?=
 =?utf-8?B?ekg0djMwUmdhWTA2TDN0UU5TZ1lGeDI4RS9tTDJIOGQ5ci9IOHhkdjk3WERh?=
 =?utf-8?B?SHp6UFRSVXc5cXJMK1dCRDZZN0Z3aVdQYjE5RXdvNGVxM2xLRkVjVWVlMGwx?=
 =?utf-8?B?ODJsR1pHWXNRUFNWTG9kemJWQ1VrV3lOK1RGWVJCSHpuU0RoWWhaaXpOcGt6?=
 =?utf-8?B?WC81RElZWEI5cmtRNjF5L3pOQ3ZGQ3lTMW9ucVBnbTNjU29aR0EzNHZjVDQ5?=
 =?utf-8?B?azA2SnMzSzZmYzhld2FPTmNPYXNCS3BUM0FQRnhobC9OaWEzUnBHWnNVWEZG?=
 =?utf-8?B?OWZjVGVDSmUxQWxON0FXMDFXTUNEMnh1RFBGVHlTUjlNWndCcXNTVmVvaGJN?=
 =?utf-8?B?cWFYMkVYbTUrRkx4bGVJMDIzOHB4SlRmYjJGc3V0K2Nmb2twS2RSdlAybVJ6?=
 =?utf-8?B?a3dERzFZQWZ2V1lZL1VRaVJsaWpwNjRzOVppQTJ6dzdEQmUzNlEra09VL1g0?=
 =?utf-8?B?TnZPZU1oaUl2dWxPL0ZZVG1zWTZoWnptTTVFeU8rY3pNSlpUOTJqTCsreWpq?=
 =?utf-8?B?cnBKRGh5TTVZQTJrdEpja2RZc3ZJTVFQNUx2TnNYT3VaRmtuaWJTcForbWJ3?=
 =?utf-8?B?Q0NrZFZ1bVVQeVZ2N0IvRGoydW0xb0JoOWtWL2ROOHUrNE5YcmJLYXhReTk1?=
 =?utf-8?B?TzFULzZJWlp5QjMzbHEvbndoR3FmVU8zZCtPZ0t3VjNoa1JmNzhNSnRENkZm?=
 =?utf-8?B?SFZpVjdId3pJYlVJYVdkd3BuQTBFVUw0OCsyYVI3T0xzemh5aVFQL2VYbEc5?=
 =?utf-8?B?dFFkTUJCa29RMHFERkZOcHdIYkUwajF5bmVLQkRtYVFlcUpKejVTUU1uVTY0?=
 =?utf-8?B?SnlEN2pJVlArOERoaTJadENURkptbldkZTRLdGdYeGdocXluMUxpNWpYR3NX?=
 =?utf-8?B?RHk4WFBiWXZSTjhSVFgzdU9SN005ZzlwMW5CcThwSVhRRHp1T3Jqa1pEcUJZ?=
 =?utf-8?B?R0t3RUk2dGFrMVZabktQL1g3em8rZEc4THlQS2lIZjQwQ2x5aStLS1NkUmsx?=
 =?utf-8?B?KzdmVGhZTVVpd0RmOFB2QldtM1ZvemVveDNmaGNvVC9FbktNZnJrQzYzcXJO?=
 =?utf-8?B?VWpIU3NZMThUSU5uMjF0cDNCTnZ4dTJ3SkUxVFhzblcyRG9lTGFLMUZHRzRY?=
 =?utf-8?B?Vll3TmpHcjVHMGlDREUyYTZjMEFvMkRYK1FhQkpEaFRONUNSdFhwTnNyNjJY?=
 =?utf-8?B?eDgwNmJLNHdKRHdVSXYzMEJ4WU1JcFZrYU5XZVYxYjlwdi9MNk9HbVIrTTFU?=
 =?utf-8?B?Sit3ZURDRXBXSUVRd2wrNk5nRTdUNGpvc3dzWm9qVHhWV3FqbUpzUHZDK0FO?=
 =?utf-8?B?WEhMM0pHSmNWL1RseTV3Q3ByaGNJRUhHcGxyejdkOG9XM0R3ck5FSlk2SytG?=
 =?utf-8?B?MUE1ZjRZMHovYmtCYU5NK1pmdkhzREJoZ0JOallBeFhCU0wyOUJiN1ZuU05x?=
 =?utf-8?B?Tjc1N2RhQXpRcVp0TkxPb1V4TUV5S0VJYWxsdFZMMG03ZWpZbE5odU43TGJn?=
 =?utf-8?B?YWE4R2g5QjI1cGZaMWdnRVJ5WStyd0hjRXNMcXRYRXdmSzUyaEcza3BmOTVD?=
 =?utf-8?B?VzBCaEhFZGxaU3M2cjIySTNpRVVUQ25NaUpvWm1CUHBpclFnMmQwZVp1NERk?=
 =?utf-8?B?QnJZbVcrQ2R6YnJBSE1uSlcyaEtlY1ZrYUpQeGFtNUczanQrUnlmRkcyNXFu?=
 =?utf-8?B?aWxwc1EvQ0haU1ZxQ1pQTURDRDV1WjlBSVZCY0hDY2EwdWxLUFpPUFVwcngx?=
 =?utf-8?B?c0lqdE5mbXpLZmo0cWtxQUxVMnNGY0xsZnhUdWFKancwazR1ckN1SWFiaEcr?=
 =?utf-8?B?Zm9sdm5XVlNLRG9vRTNrdlJkTTY2N3F2a2M3Y2xIZ1ZsMTdseTRYMUpvUUJ2?=
 =?utf-8?Q?G6JnSsfM0X49+jgFy2Yh+hJUo8SGz49b?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TDJWZUVtTEgxbVpiOXJYK0ZnWndWVmhtMEpqYUpYb244V2Q4R2JvbTA4Z3Ix?=
 =?utf-8?B?NGhkRDhCZlBxQ2ZoWStPQWI5c0FaRkNPa0szN2pMcXRsbVBpM1V3bnRjTVNZ?=
 =?utf-8?B?YXBiYjVSaDNYSDNwQ2laeXNiaWI1YkxMV1RDakdBcWp3RGJ6NjE2STRJSlBj?=
 =?utf-8?B?Tkl4cGIwaEJRRWVxMlNlamtmaWtqSFJDaWNoUFgvRHFud3cySEdTZE9nOUVZ?=
 =?utf-8?B?bGhTNzZYWHorekF0YW9qWnJGczJQYmFkcFJIYm1ITDRlWFRCYWVDYjB4R1hT?=
 =?utf-8?B?K2VDR0pHS3pvSEthRVlYaWNBQW5BVDBQSHI1NE9oYkkrSVBweXpnekJWTHlz?=
 =?utf-8?B?MWxZTWtLQkh1a0dYaDlKUktTdnpHMjB6cE5tQmc0Mjg2bEhpdzBuTWMzdm5J?=
 =?utf-8?B?UDBmSkVXazlZQ0w2N3hyRzFKWFhXVlpUcEtSYjZqeFpFM0o2bHFsRVJMcXBS?=
 =?utf-8?B?bmpTdVAxRnlGM1JQYXlTWW0rWjhTaWJNVWlIdDhOVmNsaUF5aUVYbUN6bDdn?=
 =?utf-8?B?cVhkblpyMkhmRWxhazZ3SHNwWUN1bFQrK1pTZmNMSS9kdStaeEtobHcvRFhZ?=
 =?utf-8?B?T01BN25ta2ozRXlPVFFueU95YWR5bVUxVjA0Q0plMFVPQlVvc3lRSWg0d1Jp?=
 =?utf-8?B?SUE4Sjk1dXpJZU1Wc3dQclYwcVFsMTlBR3ZNSVNvazNGL3A5OHFxYTRrcmp5?=
 =?utf-8?B?RDFIVHZVbndMVGYwMGV5SjlaZTZYdTFoVXlSRHBHcUhkWDJ0OXJlV1M2TW53?=
 =?utf-8?B?WTl4VjRrNjBlZ3crcXVDNlVWeSs4RkhnZk5oU082MU1SSDBVd0E1UDlLU045?=
 =?utf-8?B?OGlOUGpYb29McVBuL1duWTV6YzlJVDhhM3RHd2VLaFRiNmNhYXcvdm14UjM2?=
 =?utf-8?B?azJOU1pLSDJKc1pHbHlOcUhNaHFjaTJEdThuT1d5UVRNZXo0MjJ0dnpsdFV3?=
 =?utf-8?B?VEpOa051VU40NnIvWjg3bC94bEJraFd4YjcwN1o1MmswM0NxY1VNajgxRkxL?=
 =?utf-8?B?L2VPRm9idHhQejdzNVNsQ2grQnFGOEY5VDllRHRobElGOVd6WjZYVk5vU3Nn?=
 =?utf-8?B?RWlqYUFJUVNjN0hRTWFoVm1XQlAxWWFzakhQMzdwTDltakozZjVhMThzOTJF?=
 =?utf-8?B?a2REU1Jqck1NZnZ4bkx4YXQ3UzI2VHl6cExxbEhLQXoxZ2FFaWVLNktlQUU3?=
 =?utf-8?B?a0dtNkJnTzNkQ1F5K3hZTEFMRGJQekJaL0RHMnRIZjBjb3hlS0ZrM2phWnA0?=
 =?utf-8?B?cnAzaDlZRWhRMzdRb1RKL1FUWEx3SDZzb0hGUWF4U21weHFZTm5MVi9FZity?=
 =?utf-8?B?Q08xVXVjK1BLbTdrUVoyNVVUSS90SnVhK051OVdZbVBLQWpJdGFwRC9makNN?=
 =?utf-8?B?ZWpMSWpBUTgyaGJkUFgvR2laOGlmTW5OWHlrN1pUOGVnV2ZMNlVTZVlvc1d5?=
 =?utf-8?B?THpGRDZCSXVzWm1PbmFEeEdsVk9aTE95STUwZXQ5aW1VSHhXOW8rMHZwMEtl?=
 =?utf-8?B?Q3crVlhVWDIxLzlNOHpFeDdTSzVKNHlMZTBVanpKTFRCRWszc0xvSjdPTUNF?=
 =?utf-8?B?M21GZWpkM21YL3lPV3JpODRlUGp2c0tyeDJKZFVkeWFYS0ZuY1Y5dHFTTVlG?=
 =?utf-8?B?VlZzeFZqTXZxTnhVSURGeUJXRVFZa0dtNzBHNS8rMDdXNElRYm1VUU1nNUxm?=
 =?utf-8?B?bFYyK2VjdDdTRm4xRFZFemJZVG9PNXc2V3RoRGgwcVpvN1NiZkF4K2prOE5o?=
 =?utf-8?B?TDc1ay9raVFXZ25xY1NqcWRxSjVhYmdSKzFuVkFPcjlObTlNSkEwZGFJU1J5?=
 =?utf-8?B?bG10T255eUswNW8rbFZIaEhTOExlMGhVbzZtM2VyY2dOZTAyM3hqL3l1ZWlU?=
 =?utf-8?B?WURjRXp6WUVYV2RmWGhRaC9IUE1Wdm5Rc1pUWDBYUmgxUlQwU1ZuWWNkb200?=
 =?utf-8?B?NHhXK1QrZ2ZaWTdkQVJkVDYwRzZydGFmZTU1RmRQSDZXQlVlc08yOTR1QlRO?=
 =?utf-8?B?RGd3QklldEFsL1lzWTlYUk5maXRBeFdHbUxWdUhjZWpHUG8rQTA2RGFQNW51?=
 =?utf-8?B?OXdDQ1JXVDdzYXlDRTllaVBQNno2QlQwdEgvMlRINnpoWkQrbWZrb1pVdDBm?=
 =?utf-8?Q?wbSgl6vPmUslF3TmDrQHiQRsL?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b19c22a-3db3-4def-b31b-08de1bac46f2
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2025 14:13:07.4285
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aq6oPjjoeevJi1f4xnuEWZJ7O67VyT/dP9ouuIWEdINaFXYA4DYxx/Eh7l0KHIXK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR12MB9700
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A09283F73B
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.43.47:from];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:dkim,amd.com:email,amd.com:mid];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: UX3T5S3MCUK5UIEFNKFV6DCYYQIRZEFT
X-Message-ID-Hash: UX3T5S3MCUK5UIEFNKFV6DCYYQIRZEFT
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 03/20] drm/amdgpu: remove direct_submit arg from amdgpu_copy_buffer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UX3T5S3MCUK5UIEFNKFV6DCYYQIRZEFT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvNC8yNSAwOTozNSwgUGllcnJlLUVyaWMgUGVsbG91eC1QcmF5ZXIgd3JvdGU6DQo+IEl0
IHdhcyBhbHdheXMgZmFsc2UuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBQaWVycmUtRXJpYyBQZWxs
b3V4LVByYXllciA8cGllcnJlLWVyaWMucGVsbG91eC1wcmF5ZXJAYW1kLmNvbT4NCg0KUmV2aWV3
ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCg0KPiAt
LS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9iZW5jaG1hcmsuYyB8ICAy
ICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMgICAgICAgfCAy
MCArKysrKysrLS0tLS0tLS0tLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfdHRtLmggICAgICAgfCAgMiArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRrZmQva2Zk
X21pZ3JhdGUuYyAgICAgIHwgIDIgKy0NCj4gIDQgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9u
cygrKSwgMTYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X2JlbmNobWFyay5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X2JlbmNobWFyay5jDQo+IGluZGV4IDE5OTY5MzM2OWM3Yy4uMDJjMjQ3OWE4ODQw
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYmVuY2ht
YXJrLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2JlbmNobWFy
ay5jDQo+IEBAIC0zOSw3ICszOSw3IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2JlbmNobWFya19kb19t
b3ZlKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LCB1bnNpZ25lZCBzaXplLA0KPiAgCWZvciAo
aSA9IDA7IGkgPCBuOyBpKyspIHsNCj4gIAkJc3RydWN0IGFtZGdwdV9yaW5nICpyaW5nID0gYWRl
di0+bW1hbi5idWZmZXJfZnVuY3NfcmluZzsNCj4gIAkJciA9IGFtZGdwdV9jb3B5X2J1ZmZlcihy
aW5nLCBzYWRkciwgZGFkZHIsIHNpemUsIE5VTEwsICZmZW5jZSwNCj4gLQkJCQkgICAgICAgZmFs
c2UsIGZhbHNlLCAwKTsNCj4gKwkJCQkgICAgICAgZmFsc2UsIDApOw0KPiAgCQlpZiAocikNCj4g
IAkJCWdvdG8gZXhpdF9kb19tb3ZlOw0KPiAgCQlyID0gZG1hX2ZlbmNlX3dhaXQoZmVuY2UsIGZh
bHNlKTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90
dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYw0KPiBpbmRleCBj
NjZmMDA0MzQ5OTEuLmZjZTIyNzEyMzk2YiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV90dG0uYw0KPiBAQCAtMzU0LDcgKzM1NCw3IEBAIHN0YXRpYyBpbnQgYW1kZ3B1
X3R0bV9jb3B5X21lbV90b19tZW0oc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsDQo+ICAJCX0N
Cj4gIA0KPiAgCQlyID0gYW1kZ3B1X2NvcHlfYnVmZmVyKHJpbmcsIGZyb20sIHRvLCBjdXJfc2l6
ZSwgcmVzdiwNCj4gLQkJCQkgICAgICAgJm5leHQsIGZhbHNlLCB0cnVlLCBjb3B5X2ZsYWdzKTsN
Cj4gKwkJCQkgICAgICAgJm5leHQsIHRydWUsIGNvcHlfZmxhZ3MpOw0KPiAgCQlpZiAocikNCj4g
IAkJCWdvdG8gZXJyb3I7DQo+ICANCj4gQEAgLTIyMTEsMTYgKzIyMTEsMTMgQEAgdm9pZCBhbWRn
cHVfdHRtX3NldF9idWZmZXJfZnVuY3Nfc3RhdHVzKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2
LCBib29sIGVuYWJsZSkNCj4gIH0NCj4gIA0KPiAgc3RhdGljIGludCBhbWRncHVfdHRtX3ByZXBh
cmVfam9iKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LA0KPiAtCQkJCSAgYm9vbCBkaXJlY3Rf
c3VibWl0LA0KPiAgCQkJCSAgdW5zaWduZWQgaW50IG51bV9kdywNCj4gIAkJCQkgIHN0cnVjdCBk
bWFfcmVzdiAqcmVzdiwNCj4gIAkJCQkgIGJvb2wgdm1fbmVlZHNfZmx1c2gsDQo+ICAJCQkJICBz
dHJ1Y3QgYW1kZ3B1X2pvYiAqKmpvYiwNCj4gIAkJCQkgIGJvb2wgZGVsYXllZCwgdTY0IGtfam9i
X2lkKQ0KPiAgew0KPiAtCWVudW0gYW1kZ3B1X2liX3Bvb2xfdHlwZSBwb29sID0gZGlyZWN0X3N1
Ym1pdCA/DQo+IC0JCUFNREdQVV9JQl9QT09MX0RJUkVDVCA6DQo+IC0JCUFNREdQVV9JQl9QT09M
X0RFTEFZRUQ7DQo+ICsJZW51bSBhbWRncHVfaWJfcG9vbF90eXBlIHBvb2wgPSBBTURHUFVfSUJf
UE9PTF9ERUxBWUVEOw0KPiAgCWludCByOw0KPiAgCXN0cnVjdCBkcm1fc2NoZWRfZW50aXR5ICpl
bnRpdHkgPSBkZWxheWVkID8gJmFkZXYtPm1tYW4ubG93X3ByIDoNCj4gIAkJCQkJCSAgICAmYWRl
di0+bW1hbi5oaWdoX3ByOw0KPiBAQCAtMjI0Niw3ICsyMjQzLDcgQEAgc3RhdGljIGludCBhbWRn
cHVfdHRtX3ByZXBhcmVfam9iKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LA0KPiAgaW50IGFt
ZGdwdV9jb3B5X2J1ZmZlcihzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcsIHVpbnQ2NF90IHNyY19v
ZmZzZXQsDQo+ICAJCSAgICAgICB1aW50NjRfdCBkc3Rfb2Zmc2V0LCB1aW50MzJfdCBieXRlX2Nv
dW50LA0KPiAgCQkgICAgICAgc3RydWN0IGRtYV9yZXN2ICpyZXN2LA0KPiAtCQkgICAgICAgc3Ry
dWN0IGRtYV9mZW5jZSAqKmZlbmNlLCBib29sIGRpcmVjdF9zdWJtaXQsDQo+ICsJCSAgICAgICBz
dHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2UsDQo+ICAJCSAgICAgICBib29sIHZtX25lZWRzX2ZsdXNo
LCB1aW50MzJfdCBjb3B5X2ZsYWdzKQ0KPiAgew0KPiAgCXN0cnVjdCBhbWRncHVfZGV2aWNlICph
ZGV2ID0gcmluZy0+YWRldjsNCj4gQEAgLTIyNTYsNyArMjI1Myw3IEBAIGludCBhbWRncHVfY29w
eV9idWZmZXIoc3RydWN0IGFtZGdwdV9yaW5nICpyaW5nLCB1aW50NjRfdCBzcmNfb2Zmc2V0LA0K
PiAgCXVuc2lnbmVkIGludCBpOw0KPiAgCWludCByOw0KPiAgDQo+IC0JaWYgKCFkaXJlY3Rfc3Vi
bWl0ICYmICFyaW5nLT5zY2hlZC5yZWFkeSkgew0KPiArCWlmICghcmluZy0+c2NoZWQucmVhZHkp
IHsNCj4gIAkJZGV2X2VycihhZGV2LT5kZXYsDQo+ICAJCQkiVHJ5aW5nIHRvIG1vdmUgbWVtb3J5
IHdpdGggcmluZyB0dXJuZWQgb2ZmLlxuIik7DQo+ICAJCXJldHVybiAtRUlOVkFMOw0KPiBAQCAt
MjI2NSw3ICsyMjYyLDcgQEAgaW50IGFtZGdwdV9jb3B5X2J1ZmZlcihzdHJ1Y3QgYW1kZ3B1X3Jp
bmcgKnJpbmcsIHVpbnQ2NF90IHNyY19vZmZzZXQsDQo+ICAJbWF4X2J5dGVzID0gYWRldi0+bW1h
bi5idWZmZXJfZnVuY3MtPmNvcHlfbWF4X2J5dGVzOw0KPiAgCW51bV9sb29wcyA9IERJVl9ST1VO
RF9VUChieXRlX2NvdW50LCBtYXhfYnl0ZXMpOw0KPiAgCW51bV9kdyA9IEFMSUdOKG51bV9sb29w
cyAqIGFkZXYtPm1tYW4uYnVmZmVyX2Z1bmNzLT5jb3B5X251bV9kdywgOCk7DQo+IC0JciA9IGFt
ZGdwdV90dG1fcHJlcGFyZV9qb2IoYWRldiwgZGlyZWN0X3N1Ym1pdCwgbnVtX2R3LA0KPiArCXIg
PSBhbWRncHVfdHRtX3ByZXBhcmVfam9iKGFkZXYsIG51bV9kdywNCj4gIAkJCQkgICByZXN2LCB2
bV9uZWVkc19mbHVzaCwgJmpvYiwgZmFsc2UsDQo+ICAJCQkJICAgQU1ER1BVX0tFUk5FTF9KT0Jf
SURfVFRNX0NPUFlfQlVGRkVSKTsNCj4gIAlpZiAocikNCj4gQEAgLTIyODMsMTAgKzIyODAsNyBA
QCBpbnQgYW1kZ3B1X2NvcHlfYnVmZmVyKHN0cnVjdCBhbWRncHVfcmluZyAqcmluZywgdWludDY0
X3Qgc3JjX29mZnNldCwNCj4gIA0KPiAgCWFtZGdwdV9yaW5nX3BhZF9pYihyaW5nLCAmam9iLT5p
YnNbMF0pOw0KPiAgCVdBUk5fT04oam9iLT5pYnNbMF0ubGVuZ3RoX2R3ID4gbnVtX2R3KTsNCj4g
LQlpZiAoZGlyZWN0X3N1Ym1pdCkNCj4gLQkJciA9IGFtZGdwdV9qb2Jfc3VibWl0X2RpcmVjdChq
b2IsIHJpbmcsIGZlbmNlKTsNCj4gLQllbHNlDQo+IC0JCSpmZW5jZSA9IGFtZGdwdV9qb2Jfc3Vi
bWl0KGpvYik7DQo+ICsJKmZlbmNlID0gYW1kZ3B1X2pvYl9zdWJtaXQoam9iKTsNCj4gIAlpZiAo
cikNCj4gIAkJZ290byBlcnJvcl9mcmVlOw0KPiAgDQo+IEBAIC0yMzE1LDcgKzIzMDksNyBAQCBz
dGF0aWMgaW50IGFtZGdwdV90dG1fZmlsbF9tZW0oc3RydWN0IGFtZGdwdV9yaW5nICpyaW5nLCB1
aW50MzJfdCBzcmNfZGF0YSwNCj4gIAltYXhfYnl0ZXMgPSBhZGV2LT5tbWFuLmJ1ZmZlcl9mdW5j
cy0+ZmlsbF9tYXhfYnl0ZXM7DQo+ICAJbnVtX2xvb3BzID0gRElWX1JPVU5EX1VQX1VMTChieXRl
X2NvdW50LCBtYXhfYnl0ZXMpOw0KPiAgCW51bV9kdyA9IEFMSUdOKG51bV9sb29wcyAqIGFkZXYt
Pm1tYW4uYnVmZmVyX2Z1bmNzLT5maWxsX251bV9kdywgOCk7DQo+IC0JciA9IGFtZGdwdV90dG1f
cHJlcGFyZV9qb2IoYWRldiwgZmFsc2UsIG51bV9kdywgcmVzdiwgdm1fbmVlZHNfZmx1c2gsDQo+
ICsJciA9IGFtZGdwdV90dG1fcHJlcGFyZV9qb2IoYWRldiwgbnVtX2R3LCByZXN2LCB2bV9uZWVk
c19mbHVzaCwNCj4gIAkJCQkgICAmam9iLCBkZWxheWVkLCBrX2pvYl9pZCk7DQo+ICAJaWYgKHIp
DQo+ICAJCXJldHVybiByOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X3R0bS5oIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5o
DQo+IGluZGV4IDU3N2VlMDRjZTBiZi4uNTBlNDAzODBmZTk1IDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmgNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5oDQo+IEBAIC0xNjYsNyArMTY2LDcgQEAgdm9pZCBh
bWRncHVfdHRtX3NldF9idWZmZXJfZnVuY3Nfc3RhdHVzKHN0cnVjdCBhbWRncHVfZGV2aWNlICph
ZGV2LA0KPiAgaW50IGFtZGdwdV9jb3B5X2J1ZmZlcihzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcs
IHVpbnQ2NF90IHNyY19vZmZzZXQsDQo+ICAJCSAgICAgICB1aW50NjRfdCBkc3Rfb2Zmc2V0LCB1
aW50MzJfdCBieXRlX2NvdW50LA0KPiAgCQkgICAgICAgc3RydWN0IGRtYV9yZXN2ICpyZXN2LA0K
PiAtCQkgICAgICAgc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlLCBib29sIGRpcmVjdF9zdWJtaXQs
DQo+ICsJCSAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2UsDQo+ICAJCSAgICAgICBib29s
IHZtX25lZWRzX2ZsdXNoLCB1aW50MzJfdCBjb3B5X2ZsYWdzKTsNCj4gIGludCBhbWRncHVfdHRt
X2NsZWFyX2J1ZmZlcihzdHJ1Y3QgYW1kZ3B1X2JvICpibywNCj4gIAkJCSAgICBzdHJ1Y3QgZG1h
X3Jlc3YgKnJlc3YsDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9r
ZmRfbWlncmF0ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRrZmQva2ZkX21pZ3JhdGUuYw0K
PiBpbmRleCA0NmM4NGZjNjBhZjEuLjM3OGFmMGIyYWFhOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRrZmQva2ZkX21pZ3JhdGUuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGtmZC9rZmRfbWlncmF0ZS5jDQo+IEBAIC0xNTMsNyArMTUzLDcgQEAgc3ZtX21p
Z3JhdGVfY29weV9tZW1vcnlfZ2FydChzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwgZG1hX2Fk
ZHJfdCAqc3lzLA0KPiAgCQl9DQo+ICANCj4gIAkJciA9IGFtZGdwdV9jb3B5X2J1ZmZlcihyaW5n
LCBnYXJ0X3MsIGdhcnRfZCwgc2l6ZSAqIFBBR0VfU0laRSwNCj4gLQkJCQkgICAgICAgTlVMTCwg
Jm5leHQsIGZhbHNlLCB0cnVlLCAwKTsNCj4gKwkJCQkgICAgICAgTlVMTCwgJm5leHQsIHRydWUs
IDApOw0KPiAgCQlpZiAocikgew0KPiAgCQkJZGV2X2VycihhZGV2LT5kZXYsICJmYWlsICVkIHRv
IGNvcHkgbWVtb3J5XG4iLCByKTsNCj4gIAkJCWdvdG8gb3V0X3VubG9jazsNCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
