Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 485B996D12B
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Sep 2024 10:02:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5182B40D56
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Sep 2024 08:02:14 +0000 (UTC)
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (mail-bn8nam04on2086.outbound.protection.outlook.com [40.107.100.86])
	by lists.linaro.org (Postfix) with ESMTPS id 9837D4043F
	for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Sep 2024 08:02:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=k5yTlluH;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.100.86 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K+3aY0kDRJ8EL+y2OjpjSxniUT1NjFrnPwJAILpCN0cbXSCcOsgdgLyG58+X/aBp9AwTr2IBaKKlJnUMLPEyc+PYSu/5CVk2a4cwXmPM1L9s+xzIEVUFJ5s1e83NzlkDQv72KvRf8D6fAw0x5egfvk/7L37vfgZXfy4j0AtTlQFuoqsaOpsjXtd+7oFBY1jWm33hbtVKZYoOB10LECJ07fmHQH9sFYWD9kZm7eOZ/amGp3RBiZDP5pjyN4+yBf/rsu2bE3I40++pthvfzLEQyGdyWZE3h7asP5XugAB7wCGHe6nZs6qeV0SUQ3SfZJQ/Iqx/7kOgTikwqObJBlRyVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nmVgUUC8bvTAABlhnT+6PBVSYHvqWkU945pV7Pd2RnI=;
 b=L54/sv/PGg1peoqgLLIQtGLwtTomw4+HacZTXX6PARRNXpUEYnQXY4ti5LuHVQS2/087nqC1Gc48IZnT3pwRxzjfZsFM8CHmtqR+Cl9cW3DvvbDSNJ4gjJC4Fw/feHMuQ9qVoJ0781AUkaHnJlnncTuAdZolVo2HZoI1QBA7w/JOqmmpe6g7hIzOGzb0mgscNoEbyewo7sR1d+xYdsAZFpI/7Fjplm5JWK63UzdTpyTmn7iUjTcXzfXIknl0ChO2nSoDnH7i+baQJnRk3imCTNfStBXpE1Q1hgXU1q7sd3gwiyerS7r5Q/73etNFtLH5Zbdiv1e9l5VVrrZVweBamg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nmVgUUC8bvTAABlhnT+6PBVSYHvqWkU945pV7Pd2RnI=;
 b=k5yTlluHRYwArtIxdV3CHsF+TB3Tkghd3mwUkBoAXLj4JE78wzhJ+Er/kUL/vmT8ZxyCfK3OaKGtypQXpTW/vP1sUxGtBKv/eDPb0aBerYCQx08tlLXsjWw8lMJi9aN3KpCNEGNCtZTFj4wZrtNTKGBSsYGVITwKU5AZ9HIC3q4=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CYXPR12MB9339.namprd12.prod.outlook.com (2603:10b6:930:d5::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.28; Thu, 5 Sep
 2024 08:02:07 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.7918.024; Thu, 5 Sep 2024
 08:02:07 +0000
Message-ID: <30aa1b85-5c38-4e96-9217-7e0208fd0f6b@amd.com>
Date: Thu, 5 Sep 2024 10:01:59 +0200
User-Agent: Mozilla Thunderbird
To: Jens Wiklander <jens.wiklander@linaro.org>
References: <20240830070351.2855919-1-jens.wiklander@linaro.org>
 <20240830070351.2855919-2-jens.wiklander@linaro.org>
 <4a498990-2d9e-4555-85f3-d1d22e26b9dd@amd.com>
 <CAHUa44G9yF2GoQD8XrE=agkGCditH1v+NYm16WpdORX4aRixYg@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAHUa44G9yF2GoQD8XrE=agkGCditH1v+NYm16WpdORX4aRixYg@mail.gmail.com>
X-ClientProxiedBy: FR0P281CA0064.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::8) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CYXPR12MB9339:EE_
X-MS-Office365-Filtering-Correlation-Id: b5714079-a33e-48de-2436-08dccd810946
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7416014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?SXV0Z1VwU3J6enlsY3c3WFF5V0dFOVc0aVNNbDViZ0RRUUhoVklCOUdmL1dV?=
 =?utf-8?B?ck5haWI1Njk0a3FXc2puSGIxczc5cS8weG84aXRFV1k1T250OUhIQ2dHd016?=
 =?utf-8?B?M0gwQnJMcFo5NHVMd1ZKM1l5R1BLN0xiZUJVV2lXWE1hWnVlTUpyOEU2M3Z5?=
 =?utf-8?B?cUllc2s0bDBFdnVyNFh4c2FaNzlvSlF4bUluMnFmcjViQVF6Z1VlVDhZNzBI?=
 =?utf-8?B?YW8xa095YXFaQW52dk5hd2QwcFdEdDFYWEcrV3JZVmczODNydGp4cWlTUENQ?=
 =?utf-8?B?WnMyVlczaEk3ZEdVeHdTRXR1djVyNlNITnJqbnFKVFp4YVVSdWtldDZxQnN6?=
 =?utf-8?B?dkxydXdEc1Mvb2w5V2FtbWozLzhlZlVheEdjMzRXZkhsRERDZGxxSjJudi9j?=
 =?utf-8?B?RElJcFhUbmhCZXBaYzFFTm96UGdNOG1wbVNTaEdxWXROam1qSmt0dk1TK1Vs?=
 =?utf-8?B?b1NYRHNLbXlhcldyN2ErdklHaVZKc0pzaSttQllQV3EzbmZONEJRazRoZE91?=
 =?utf-8?B?ZjA0dE1nOWlTeEQ3czNsS09PUWJtVWdCNjI5UlRjbGNnWUtXajZ0MTQzOGtt?=
 =?utf-8?B?bUJia3ZaWWhRMFpwbWNBZktTQmRNdWlxZUlWTmZZSmo0QmhuSGxQaVpFVzJt?=
 =?utf-8?B?SXVjcmpycDBzOE5URm9vby9hc0VZR0diVXF3c2p1NE83TUdQR1dlL2tFeEgx?=
 =?utf-8?B?QTZxZzV2RS9QZnRycm9hdjQyeGU4U0JMVmNGVUNmZlE3Wml6R0E1U1l4S1NQ?=
 =?utf-8?B?Y2RpUnR1U0RjZ0wvOGd1d0dxak11WUFhSnlYblE0TThEYm8rTytZRUpQa1Ro?=
 =?utf-8?B?bnBLWnBPNGNhT3B2REFhQ1VzaFRsdFBKZVA1ZmlYN2pNZTg3VjBRaDRDVzZZ?=
 =?utf-8?B?RHMrUElvV2I0NlI3RGkydkJBenhucjFwMEdtSnZJTU1JVkpmV1liQnRNT1Ur?=
 =?utf-8?B?UXJZWEY1b3ptQmN1TjN3cHcyalpvQUhtdUVWN3ZOL2Fzc2YvS1lOaGx5aEoz?=
 =?utf-8?B?NUFMWkZLK0NCR2xuQVpmVmdwZzUrTEc4YTFoUDBxaU9DOTVlWUM4bXdiNEt0?=
 =?utf-8?B?MFNPdnp5WWNLa1N3bmxLbDNndEgvdDRGOUc3d042L09qQnJIZXU0ZE93NVVL?=
 =?utf-8?B?bk5uaUlkTmFqRmFvd2FxZndjWjRNblBZVkJSVW9JVnFBUWpYSFhtdWRIQWZE?=
 =?utf-8?B?amxSREsreTJIK2xpcjhaZ0RuN0pFd3o4dFZXdFJhaVhmc0t5VTlWV0trTFM2?=
 =?utf-8?B?UyttYUp4WWduR2g3dENxNTZjUnE1M0dHS1NSOU1uUldMVHZqTkZxdUJCMVVL?=
 =?utf-8?B?Y09MTzlhdG83VnlXYkNkY3Z5WmQ5NHEyU3hWL2kyMXZ6ZFYzaTM4WGVPSDRW?=
 =?utf-8?B?MDlmU05sMnBrWU9PTUNTWU8yc1dMNE42Vk15V0FXeDJkcitjbEthZzJYQmp3?=
 =?utf-8?B?eklXVVF4Z2NHdGhvLzlIak1vVFErdlBxY1Y0V2kyWmxiR1ViTDhLU1lSOFZN?=
 =?utf-8?B?NlhFeFFsT2gxSmVIKzRmc3pmOXVCTzR0ZHQwZHA5YVNGWWJoVy9UQ3Z4OXJx?=
 =?utf-8?B?ZzNNWk1KbmUwbE44SGdsVG9OK3dpN0xsdWFtNGYrSUZMcnR1UzB1WnBQQUhO?=
 =?utf-8?B?bGZ0cUZ0L3dWTURYS0hhOG1LQ0ZKbDJFSWdnMmN3NXdPTERJeWY3bVFGOTFr?=
 =?utf-8?B?d1I5L2t5V0d2YTRBVVF5MGFxekxRa1JpR2Q0azhtU0NXMC9SS1h5VEdVN2xX?=
 =?utf-8?B?UnArNHo3Wk02a3RGM2JzSks1MXg2VGFNaGpSM1RadU9lTmxqNHdRVnJvNjJu?=
 =?utf-8?B?MnJ3cWEvTVZQdUZSUWxUZz09?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(7416014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NmdCcGJSdE9hUjJzcnREbmh6TmZ2aHJ5MURYTmFGSXJWZERoL0FOWDlmRHJO?=
 =?utf-8?B?ajB1WFlIL002Ulk2OXZQVFIxZkREeFBRcEhoTmN5OEhCQjJFYVFJOS9WUGdW?=
 =?utf-8?B?c1Zud0JPb2IzU3ZJeGJrZHVTRHU4OFZSOTIvY2xxVkhaYzJJT3Y5N0dlT2Vn?=
 =?utf-8?B?OG1zckplYnV0VGxuS2pQMXBqSXcwYUhRVmxuaWxDOFpvT0s2WCtLNkJXWTJM?=
 =?utf-8?B?T29GNUZBZVBXU1F0dFpRVFZOb21CcGIrTnpZcHVLYW1Nd0syQ2h2VXdROFY5?=
 =?utf-8?B?cXQ3bVkrYzZzc09WTlFQVk1EMFZnalQwTCtheWJ4c0c5T2Y3Szc3eFpvbG1N?=
 =?utf-8?B?TGRpV0lLNHgzQUtEQnM1d0dzTTNqKzVmbDBWOGNEWTFrWkszV1BoMkVXOCt3?=
 =?utf-8?B?TllJSklGeFlHOFdmdlBQMU5nYTlpSTdxZmJSSC9mMTVIOHFCNGZ5UXRNbzFZ?=
 =?utf-8?B?U2lxQkpuL2RybElIcmU0R3B6Zk9WNzBiVXVJQTluRnlSQ2ZyQXhRZTE2ZlNj?=
 =?utf-8?B?aWt4NnlnSy82ZjBWdCtONnJPOUduR01USXlROUhmQUNKelRUWXMxWlpPeExG?=
 =?utf-8?B?Zk1HK0hQN0wxRzdMZzhUdHNIcmJsUmdNMXV2Z092blNXSnpWQWdzTHdvMUgr?=
 =?utf-8?B?UkJjaTBsNGxmODZPNzB2QWJPamsxeUUzcHdMTnIvWENzYlZGeTFvVHpyK2Qr?=
 =?utf-8?B?V2xjUmV1Wm14S1lVYU1WNStXcTVXTjVIZytQUGlKcXFNNzkvR1hESDQvanRp?=
 =?utf-8?B?byt2dWhnNldQMXdtb09GR1ljNGhKMUc1R3pqZjRrRVBhRG4rd0FaTjNRcWFJ?=
 =?utf-8?B?Ukw3ZUh4RnhVYWE2bDh4bWNhekJBYmcrQUZFMHhHZUIwWUhYeVhFM083enhx?=
 =?utf-8?B?eGdCdlVuMTlFd3JIWEcveE9nUzVjemJHckdpblhXOWE3aXB6VTBkV056R0V2?=
 =?utf-8?B?MkVUcTFyNDVjSjhOZWRGV0lxZFlzeTFUWkdZeTZFUGNTMkY2b2N3ajcrV1FU?=
 =?utf-8?B?SkFJdnh0Q3RwaStkZzYyNkxMUXdCYU5sSk5xMGxIYWdoWko4bjJWa1hnVnJH?=
 =?utf-8?B?UzFRTTAxVWhQN3d2WGdzaDZvYnBpRURSd1EvN25HTVFoOXdJOXJCV1JlT3dG?=
 =?utf-8?B?cnRSNFl6YVQ1L0pWT3g1clNWUXdoSUZ4OFlock1USkhmOGRXdkFUZS9seUQx?=
 =?utf-8?B?dWhRTGlvekttTGtwVitzUGttY0hOeFhjeWhURTZCc0x6ckdjdm5KMjI2UlVT?=
 =?utf-8?B?eXplYW5uRUNGMVgwemhLckxqSmVhaU5tZElhNHBXZEF2YkkxZkZEc1IxYXE4?=
 =?utf-8?B?c2ljd2ZCZTArejZScU56TWptRHp1K1pYaHY1V2wyWEY1RUNOWGdhMEJCcTVv?=
 =?utf-8?B?RVpaS0ZFZmROQTlDc3dHbFRXcXc0T3RhdFB6TzFGL1BiUWtVNG80Wkt0cDdD?=
 =?utf-8?B?VTFIZWIydFpzYzcxdU1DWDhTQVowOHo5NGVxdWZXL3dRQkMrZFYzN2U3djJZ?=
 =?utf-8?B?SGpUNWpLYjZjVENpK3VpS0M0eE8zVVJZOFk0T0lCVE9sUnZLUjN2VXRqUStr?=
 =?utf-8?B?bVFhWFZHWVFXYytuWlpxSVFmNHY3eVFxYmkzYVFITDhVa3ZIRlVCSys2VmZF?=
 =?utf-8?B?TmxnekdtcW0wMDY3ZlVJUFpUU01yRnQra09JSTFLTm5tVFIrVmZOY1NZbHJ3?=
 =?utf-8?B?QS8rOVBWZVVlL1g2LzAwRWpUbXZlR0ZMTTBuYy9OZUF3TVZjZ3dkT3RXN3Yw?=
 =?utf-8?B?VGwyaFZWOGZxNW41VTcrL1VWYk1tOHNGOXdCVWhNZFdsRWFESHRaYmxUMDFV?=
 =?utf-8?B?TXRPLzRBRmx0MnM5dzVzamI5MHJKbHZMVzlkVDFiQVMrQXg1NUZGK3FKTkdO?=
 =?utf-8?B?c2t5L1R4QWgzMFZjVmJ1NkN0ZFp0OXRYK082VGJZRXNBRkVwNUVCMnhiNEJx?=
 =?utf-8?B?dkV1anpIZEpIUytiYzJRV0w1eU1tcGpEWSs3RWUwRGpuelZGTEJocXc1T2ll?=
 =?utf-8?B?TlNCaURwdFYrOHppa1QyeFowckxRZlA2TW5KVW1SeXJ1eDRrYldVQWkxYkJa?=
 =?utf-8?B?akVLdkVTaSt4dWlWcm5temNqQXE5eWtiWFZBN1RmUEtpcVU3ZCtUTnBBY3V2?=
 =?utf-8?Q?BiR95xVrknPWE4YwHx3T97kid?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5714079-a33e-48de-2436-08dccd810946
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2024 08:02:07.0913
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D+t4H0XkRrzEgtGB56MVBcSORS52nxzPnrqsEoHwICCXrNbD5OS2ioKg4n0Py5rz
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR12MB9339
X-Rspamd-Action: no action
X-Spamd-Bar: -------
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9837D4043F
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.100.86:from];
	RCPT_COUNT_TWELVE(0.00)[23];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	URIBL_BLOCKED(0.00)[linaro.org:email,amd.com:dkim,amd.com:mid,amd.com:email,mail-bn8nam04on2086.outbound.protection.outlook.com:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: 6WHFER6FRSX4HPDT474WPNI4FL3QVCLX
X-Message-ID-Hash: 6WHFER6FRSX4HPDT474WPNI4FL3QVCLX
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 1/4] dma-buf: heaps: restricted_heap: add no_map attribute
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6WHFER6FRSX4HPDT474WPNI4FL3QVCLX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDUuMDkuMjQgdW0gMDg6NTYgc2NocmllYiBKZW5zIFdpa2xhbmRlcjoNCj4gT24gRnJpLCBB
dWcgMzAsIDIwMjQgYXQgMTA6NDfigK9BTSBDaHJpc3RpYW4gS8O2bmlnDQo+IDxjaHJpc3RpYW4u
a29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPj4gQW0gMzAuMDguMjQgdW0gMDk6MDMgc2NocmllYiBK
ZW5zIFdpa2xhbmRlcjoNCj4+PiBBZGQgYSBub19tYXAgYXR0cmlidXRlIHRvIHN0cnVjdCByZXN0
cmljdGVkX2hlYXBfYXR0YWNobWVudCBhbmQgc3RydWN0DQo+Pj4gcmVzdHJpY3RlZF9oZWFwIHRv
IHNraXAgdGhlIGNhbGwgdG8gZG1hX21hcF9zZ3RhYmxlKCkgaWYgc2V0LiBUaGlzDQo+Pj4gYXZv
aWRzIHRyeWluZyB0byBtYXAgYSBkbWEtYnVmIHRoYXQgZG9lbnMndCByZWZlciB0byBtZW1vcnkg
YWNjZXNzaWJsZQ0KPj4+IGJ5IHRoZSBrZXJuZWwuDQo+PiBZb3Ugc2VlbSB0byBoYXZlIGEgbWlz
dW5kZXJzdGFuZGluZyBoZXJlIGRtYV9tYXBfc2d0YWJsZSgpIGlzIGNhbGxlZCB0bw0KPj4gbWFw
IGEgdGFibGUgaW50byBJT01NVSBhbmQgbm90IGFueSBrZXJuZWwgYWRkcmVzcyBzcGFjZS4NCj4+
DQo+PiBTbyBwbGVhc2UgZXhwbGFpbiB3aHkgeW91IG5lZWQgdGhhdD8NCj4gWW91J3JlIHJpZ2h0
LCBJIGhhZCBtaXN1bmRlcnN0b29kIGRtYV9tYXBfc2d0YWJsZSgpLiBUaGVyZSdzIG5vIG5lZWQN
Cj4gZm9yIHRoZSBub19tYXAgYXR0cmlidXRlLCBzbyBJJ2xsIHJlbW92ZSBpdC4NCj4NCj4gUGVy
aGFwcyB5b3UgaGF2ZSBhIHN1Z2dlc3Rpb24gb24gaG93IHRvIGZpeCBhIHByb2JsZW0gd2hlbiB1
c2luZw0KPiBkbWFfbWFwX3NndGFibGUoKT8NCj4NCj4gV2l0aG91dCBpdCwgSSdsbCBoYXZlIHRv
IGFzc2lnbiBhIHBvaW50ZXIgdG8gdGVlZGV2LT5kZXYuZG1hX21hc2sgd2hlbg0KPiB1c2luZyB0
aGUgcmVzdHJpY3RlZCBoZWFwIHdpdGggdGhlIE9QLVRFRSBkcml2ZXIgb3IgdGhlcmUgd2lsbCBi
ZSBhDQo+IHdhcm5pbmcgaW4gX19kbWFfbWFwX3NnX2F0dHJzKCkgZW5kaW5nIHdpdGggYSBmYWls
dXJlIHdoZW4gdHJ5aW5nIHRvDQo+IHJlZ2lzdGVyIHRoZSBkbWEtYnVmIGZkLiBPUC1URUUgaXMg
cHJvYmVkIHdpdGggYSBwbGF0Zm9ybSBkZXZpY2UsIGFuZA0KPiB0YWtpbmcgdGhlIGRtYV9tYXNr
IHBvaW50ZXIgZnJvbSB0aGF0IGRldmljZSB3b3Jrcy4gSXMgdGhhdCBhIGdvb2QNCj4gYXBwcm9h
Y2ggb3IgaXMgdGhlcmUgYSBiZXR0ZXIgd2F5IG9mIGFzc2lnbmluZyBkbWFfbWFzaz8NCg0KTWht
LCBJIGRvbid0IGtub3cgdGhlIGZ1bGwgcGljdHVyZSBzbyBJIGhhdmUgdG8gbWFrZSBzb21lIGFz
c3VtcHRpb25zLg0KDQpUaGUgdGVlZGV2IGlzIGp1c3QgYSB2aXJ0dWFsIGRldmljZSB3aGljaCBy
ZXByZXNlbnRzIHRoZSByZXN0cmljdGVkIA0KbWVtb3J5IGFjY2VzcyBwYXRocyBvZiBhIHJlYWwg
ZGV2aWNlPw0KDQpJZiB0aGF0IGlzIHRydWUgdGhlbiB0YWtpbmcgdGhlIGRtYS1tYXNrIGZyb20g
dGhlIHJlYWwgZGV2aWNlIGlzIG1vc3QgDQpsaWtlbHkgdGhlIHJpZ2h0IHRoaW5nIHRvIGRvLg0K
DQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+IFRoYW5rcywNCj4gSmVucw0KPg0KPj4gUmVn
YXJkcywNCj4+IENocmlzdGlhbi4NCj4+DQo+Pj4gU2lnbmVkLW9mZi1ieTogSmVucyBXaWtsYW5k
ZXIgPGplbnMud2lrbGFuZGVyQGxpbmFyby5vcmc+DQo+Pj4gLS0tDQo+Pj4gICAgZHJpdmVycy9k
bWEtYnVmL2hlYXBzL3Jlc3RyaWN0ZWRfaGVhcC5jIHwgMTcgKysrKysrKysrKysrKy0tLS0NCj4+
PiAgICBkcml2ZXJzL2RtYS1idWYvaGVhcHMvcmVzdHJpY3RlZF9oZWFwLmggfCAgMiArKw0KPj4+
ICAgIDIgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4+
Pg0KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvcmVzdHJpY3RlZF9oZWFw
LmMgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvcmVzdHJpY3RlZF9oZWFwLmMNCj4+PiBpbmRleCA4
YmM4YTVlM2Y5NjkuLjRiZjI4ZTM3MjdjYSAxMDA2NDQNCj4+PiAtLS0gYS9kcml2ZXJzL2RtYS1i
dWYvaGVhcHMvcmVzdHJpY3RlZF9oZWFwLmMNCj4+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvaGVh
cHMvcmVzdHJpY3RlZF9oZWFwLmMNCj4+PiBAQCAtMTYsNiArMTYsNyBAQA0KPj4+ICAgIHN0cnVj
dCByZXN0cmljdGVkX2hlYXBfYXR0YWNobWVudCB7DQo+Pj4gICAgICAgIHN0cnVjdCBzZ190YWJs
ZSAgICAgICAgICAgICAgICAgKnRhYmxlOw0KPj4+ICAgICAgICBzdHJ1Y3QgZGV2aWNlICAgICAg
ICAgICAgICAgICAgICpkZXY7DQo+Pj4gKyAgICAgYm9vbCBub19tYXA7DQo+Pj4gICAgfTsNCj4+
Pg0KPj4+ICAgIHN0YXRpYyBpbnQNCj4+PiBAQCAtNTQsNiArNTUsOCBAQCByZXN0cmljdGVkX2hl
YXBfbWVtb3J5X2ZyZWUoc3RydWN0IHJlc3RyaWN0ZWRfaGVhcCAqcmhlYXAsIHN0cnVjdCByZXN0
cmljdGVkX2J1Zg0KPj4+ICAgIHN0YXRpYyBpbnQgcmVzdHJpY3RlZF9oZWFwX2F0dGFjaChzdHJ1
Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2htZW50
KQ0KPj4+ICAgIHsNCj4+PiAgICAgICAgc3RydWN0IHJlc3RyaWN0ZWRfYnVmZmVyICpyZXN0cmlj
dGVkX2J1ZiA9IGRtYWJ1Zi0+cHJpdjsNCj4+PiArICAgICBzdHJ1Y3QgZG1hX2hlYXAgKmhlYXAg
PSByZXN0cmljdGVkX2J1Zi0+aGVhcDsNCj4+PiArICAgICBzdHJ1Y3QgcmVzdHJpY3RlZF9oZWFw
ICpyaGVhcCA9IGRtYV9oZWFwX2dldF9kcnZkYXRhKGhlYXApOw0KPj4+ICAgICAgICBzdHJ1Y3Qg
cmVzdHJpY3RlZF9oZWFwX2F0dGFjaG1lbnQgKmE7DQo+Pj4gICAgICAgIHN0cnVjdCBzZ190YWJs
ZSAqdGFibGU7DQo+Pj4NCj4+PiBAQCAtNzAsNiArNzMsNyBAQCBzdGF0aWMgaW50IHJlc3RyaWN0
ZWRfaGVhcF9hdHRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGRtYV9idWZfYXR0
YWNobQ0KPj4+ICAgICAgICBzZ19kbWFfbWFya19yZXN0cmljdGVkKHRhYmxlLT5zZ2wpOw0KPj4+
ICAgICAgICBhLT50YWJsZSA9IHRhYmxlOw0KPj4+ICAgICAgICBhLT5kZXYgPSBhdHRhY2htZW50
LT5kZXY7DQo+Pj4gKyAgICAgYS0+bm9fbWFwID0gcmhlYXAtPm5vX21hcDsNCj4+PiAgICAgICAg
YXR0YWNobWVudC0+cHJpdiA9IGE7DQo+Pj4NCj4+PiAgICAgICAgcmV0dXJuIDA7DQo+Pj4gQEAg
LTkyLDkgKzk2LDEyIEBAIHJlc3RyaWN0ZWRfaGVhcF9tYXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1
Zl9hdHRhY2htZW50ICphdHRhY2htZW50LA0KPj4+ICAgICAgICBzdHJ1Y3Qgc2dfdGFibGUgKnRh
YmxlID0gYS0+dGFibGU7DQo+Pj4gICAgICAgIGludCByZXQ7DQo+Pj4NCj4+PiAtICAgICByZXQg
PSBkbWFfbWFwX3NndGFibGUoYXR0YWNobWVudC0+ZGV2LCB0YWJsZSwgZGlyZWN0aW9uLCBETUFf
QVRUUl9TS0lQX0NQVV9TWU5DKTsNCj4+PiAtICAgICBpZiAocmV0KQ0KPj4+IC0gICAgICAgICAg
ICAgcmV0dXJuIEVSUl9QVFIocmV0KTsNCj4+PiArICAgICBpZiAoIWEtPm5vX21hcCkgew0KPj4+
ICsgICAgICAgICAgICAgcmV0ID0gZG1hX21hcF9zZ3RhYmxlKGF0dGFjaG1lbnQtPmRldiwgdGFi
bGUsIGRpcmVjdGlvbiwNCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBE
TUFfQVRUUl9TS0lQX0NQVV9TWU5DKTsNCj4+PiArICAgICAgICAgICAgIGlmIChyZXQpDQo+Pj4g
KyAgICAgICAgICAgICAgICAgICAgIHJldHVybiBFUlJfUFRSKHJldCk7DQo+Pj4gKyAgICAgfQ0K
Pj4+ICAgICAgICByZXR1cm4gdGFibGU7DQo+Pj4gICAgfQ0KPj4+DQo+Pj4gQEAgLTEwNiw3ICsx
MTMsOSBAQCByZXN0cmljdGVkX2hlYXBfdW5tYXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRh
Y2htZW50ICphdHRhY2htZW50LCBzdHJ1Y3Qgc2dfdA0KPj4+DQo+Pj4gICAgICAgIFdBUk5fT04o
YS0+dGFibGUgIT0gdGFibGUpOw0KPj4+DQo+Pj4gLSAgICAgZG1hX3VubWFwX3NndGFibGUoYXR0
YWNobWVudC0+ZGV2LCB0YWJsZSwgZGlyZWN0aW9uLCBETUFfQVRUUl9TS0lQX0NQVV9TWU5DKTsN
Cj4+PiArICAgICBpZiAoIWEtPm5vX21hcCkNCj4+PiArICAgICAgICAgICAgIGRtYV91bm1hcF9z
Z3RhYmxlKGF0dGFjaG1lbnQtPmRldiwgdGFibGUsIGRpcmVjdGlvbiwNCj4+PiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpOw0KPj4+ICAgIH0N
Cj4+Pg0KPj4+ICAgIHN0YXRpYyBpbnQNCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVm
L2hlYXBzL3Jlc3RyaWN0ZWRfaGVhcC5oIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3Jlc3RyaWN0
ZWRfaGVhcC5oDQo+Pj4gaW5kZXggN2RlYzRiOGE0NzFiLi45NGNjMDg0MmY3MGQgMTAwNjQ0DQo+
Pj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3Jlc3RyaWN0ZWRfaGVhcC5oDQo+Pj4gKysr
IGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3Jlc3RyaWN0ZWRfaGVhcC5oDQo+Pj4gQEAgLTI3LDYg
KzI3LDggQEAgc3RydWN0IHJlc3RyaWN0ZWRfaGVhcCB7DQo+Pj4gICAgICAgIHVuc2lnbmVkIGxv
bmcgICAgICAgICAgIGNtYV9wYWRkcjsNCj4+PiAgICAgICAgdW5zaWduZWQgbG9uZyAgICAgICAg
ICAgY21hX3NpemU7DQo+Pj4NCj4+PiArICAgICBib29sICAgICAgICAgICAgICAgICAgICBub19t
YXA7DQo+Pj4gKw0KPj4+ICAgICAgICB2b2lkICAgICAgICAgICAgICAgICAgICAqcHJpdl9kYXRh
Ow0KPj4+ICAgIH07DQo+Pj4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
