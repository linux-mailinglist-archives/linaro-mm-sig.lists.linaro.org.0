Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C7847CBEC70
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Dec 2025 16:55:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D42A2400F5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Dec 2025 15:55:54 +0000 (UTC)
Received: from SN4PR2101CU001.outbound.protection.outlook.com (mail-southcentralusazon11012070.outbound.protection.outlook.com [40.93.195.70])
	by lists.linaro.org (Postfix) with ESMTPS id 822593F828
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 15:55:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=LglPuNZW;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.195.70 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FPgwoEnGBtDNeg3tw8mU3E/fvGSMK9GZYckfsm4qda3XNvZPcgYQCSY4GrsiFQ/A7q1cnhL20A2lS0cy2hDjS6NlnwA9oovlh+VxVdWHT1OXimXyBHF7zrpm84ZRPM5vxGEVQcqcaTRzsYVeNVk5jNxyg+r5D8IiPQLE/hkbDI9g4H59PRrp7P3Gg7SJn4lUIMqlGIChgRp1Fn6TJpebkmlJaTYmJcbqjqi39Y1azMJJs9YT5LlbSDsjhOtTV7pOgIxCCetgkf9X3WuZtnbJZ7IEpuCGnVBnVIfYp3U50KX0HCS/qxeFEKAZlxj+lOmuNU/acNpu572zzp7I5yKgFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z5gvmKBU/EL+91MmOS5LZzSnfku1VlXJVhPWVz1F3Ko=;
 b=vEWHG3H7Pxz6UxXSJqkHiVcSUVYHTJE82cb1Es4knd0L+t1E14KZEuilbosW040aMqDcl50egT9YKEERe5Xc9b4kZD6Uuur4iO1Eejvcp+WZxqyYtF743QlE4TouFtNeq91c0h3ArH5mE5o3BqCBKf+yjp6CH6iT/r1WR2/3EE+WMNqvApwl9Z4tcHGQIWZ6T5nasY3x6tQI63uGbS2FqyEXvge3nt2xer5qzqmLqFbsa+CO4PWbE2Sxa54stKSpKhmynAb2LNzjACBQTGTJo/v9pS2BN0HOCBBIhJ+vroNMNMJGfAxbZvGS/mLikX6X2gBgpx6yFw6EExrYo6dnfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z5gvmKBU/EL+91MmOS5LZzSnfku1VlXJVhPWVz1F3Ko=;
 b=LglPuNZWYtRYg8ENMoCvj0OqLA1raiGyglbFcUozt1QG0V/6qzJ0QdJnJvoQs3Ml/tp2kPzBRnaMMx7mnLotfxwmsq9Zqx/o2G2dBVuPVoIms/ih8upKZHYyPAGAwb4uMkXAtV+sTejOQKyVodimwHl6ASBK3T+rM4ePpCx8rRM=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH7PR12MB9152.namprd12.prod.outlook.com (2603:10b6:510:2ec::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 15:55:47 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 15:55:47 +0000
Message-ID: <20b229f6-dcce-4bbc-8274-7744b26bfcac@amd.com>
Date: Mon, 15 Dec 2025 16:55:41 +0100
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tursulin@ursulin.net>, phasta@mailbox.org,
 matthew.brost@intel.com, sumit.semwal@linaro.org
References: <20251211122407.1709-1-christian.koenig@amd.com>
 <20251211122407.1709-10-christian.koenig@amd.com>
 <9ef8686f-820f-41e9-985e-40411b4b9bd3@ursulin.net>
 <587fb06e-cfac-4603-b074-a9b382ecea31@amd.com>
 <e19284e2-ff38-415d-a44d-0ab610032d24@ursulin.net>
 <6e2e258a-0c20-4229-8301-5a217f29eea6@amd.com>
 <07ad04cd-de4e-4c12-823d-cb3024816382@ursulin.net>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <07ad04cd-de4e-4c12-823d-cb3024816382@ursulin.net>
X-ClientProxiedBy: YT4P288CA0050.CANP288.PROD.OUTLOOK.COM
 (2603:10b6:b01:d2::8) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH7PR12MB9152:EE_
X-MS-Office365-Filtering-Correlation-Id: 43deed12-21f5-40a8-4b11-08de3bf269a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?eFhoejR3RjAzK2NNTndnT0krSWphdlY3VXdaMXdmdjdJRTNnMU9KUzJ2NThx?=
 =?utf-8?B?U3I3SkZKdW1hK0hNZHdmUHhhckVIQjY3ZXhEaUd0ejZZNVlUSEN4Z3VtSjFH?=
 =?utf-8?B?ZkNqRXRrSXU2M0didzI0anVxL3M5V2JvMkh3cnJFa09mR2twT21lNHJFSkZY?=
 =?utf-8?B?cHNOYTA4MFB3MjVkUmpKa2xXcGhORHozdUxBWERkVEdEYm9FdEhFSDhtN1Mv?=
 =?utf-8?B?MTBSNWZwejlFWUkxWHhtZnBYbndzTU5RK1JvQjNtdGZCcUFIU0h4TjIyTTFz?=
 =?utf-8?B?RndsY1dCZVZqUUNRR0hvcit3VWpxbDJUc1hkcFRhZXFLWm9DdjhieExHeWx2?=
 =?utf-8?B?SVNJSENNY0FLOG9RMkNmZDNSMnU4VkZ4cHdaOFlaRExMaXVvdkN0QzRBMk9I?=
 =?utf-8?B?blRTeHRDYmdBRUZrbTJxOWpQUU5MbUVuNVR4YUlORVJzV1BNbVQ4aVFNbWhT?=
 =?utf-8?B?OUdMM2tOa2M1YjlhbXRmOHBNSTVZWnF1dnlNMkN6Ly80U2dTTjQvT2N6aUtY?=
 =?utf-8?B?c294cjMrck9MblV3Y05BYzFKTVd4TGkrK25zV1ZEZFlPZlhKQk9zblNCRmpw?=
 =?utf-8?B?aS90MlY5NUx0dm5vSGg0YllobjJiSk5YTVBTQThtVm54RTdLbWxDelJ5RFlh?=
 =?utf-8?B?MnRlRnduZVVRelN4cUJwcDRpMzhFcEpIS3NPVlhPc2ZIQVM2YzVxRUFZYUFO?=
 =?utf-8?B?ckc5VGtFVDBCRDI2alJ5dVRXUkdWbS8ydTlaNE93dFEwVS9kN0RoV2ZUSmNT?=
 =?utf-8?B?c2VCeXdyV0dTZ0hoV1JlUG9GRTRPK0FlRWV4TTdwZk9JMytLeEoxTFdDQ1Rk?=
 =?utf-8?B?OFF6Y1oweTAySTBQVzBwejZlbkVxSlhhTTNySWRTOVJTV2NwRVB0aVo5dE1X?=
 =?utf-8?B?M1ZveGVNMmllVVRZK3JTVWQvR2UzRXkwR01US2kxQ1gramUrMjBJc0JwMWU0?=
 =?utf-8?B?WGhRZWdvaVBIZ2xrVUlYQVRKUWlBTjJpM2pjOGZzV1QwaEUxaVV5eUdKczJ3?=
 =?utf-8?B?d3ZoYzFoNTJsZmZFbk4va0Z1V041Uld6Z1BYZXlPNTFWSU5seHVUUU9RNWJH?=
 =?utf-8?B?ZGU3b1lTeVV6QWlmYXNHeVpnVittRTlLWmFxSC9DdXJ6MDhDeEdjaThUdG9i?=
 =?utf-8?B?U2Q5NFBKVjVLNDUrZGN3WG5hSnl3ZEJZanBXdm5BODJGVGoyME92RFJYWnZH?=
 =?utf-8?B?QUFpb0h0NkYrUmUzb3F6TURlNUFSODZreWVmdmt4OUlneTRHa3VZNWRKOGRj?=
 =?utf-8?B?K3llSFpSR0JnU0x2ZFBkbW5FK1NOUXFkbUIrQUpBaWxFaXJDL21sNHk5c0gr?=
 =?utf-8?B?alpadGlWOWkzQkhCc3pHYVBpQ1U5NnBnQnN2cGtISERlMkRtdlBGN2tzTmFX?=
 =?utf-8?B?VkRIdzl6cXRXNk9EODZ2cGxZVGV5TExPaUFBOWl2cU45VFNMbnk0WXVYT095?=
 =?utf-8?B?Q3V4Ym55ZVlWbEFpRFdTNFFWb2g1Y1hRTldMNnBxOVk5dDZaeTUxazRUVWNC?=
 =?utf-8?B?SFRmUGhJNFkzOTR4T01jYVQzYjYyRmk1YXptQnRhRzd2WXRwTndUNFdwTXlB?=
 =?utf-8?B?RGNlQXVERnRyVXEvU1lLNGdEQlk0dmkvLzY0cmJrYlozUU81MlMvV01YaVRi?=
 =?utf-8?B?NjZ3OU43MVFpZGVRZkZKUHZ3d3MyZm1BbmcrT0R0TmVEc0RxUXBnc1RTeE11?=
 =?utf-8?B?ejVidW5Db0RNWE1Db0lIaVlqRjM5ZVArYmo4ZWxETHhDdk1nUElzOUIwRG0r?=
 =?utf-8?B?RXp5Sml6TUo1U1ZBbHJ2V1dIejFRNENBQ0M2dU1jcUFxV1Z3cnNmK05VZS8v?=
 =?utf-8?B?N2FRRDNRRFZFRW5TTzE2WEcxU2pOeGRrclJTUHlOQ0V0TXBiaEU0b0pqK2dV?=
 =?utf-8?B?RVFvQkpuV2czU2dOZ1NRYTZzd1pqQk5Lb0FmYVFhM041UUwwTmF6SnpvNzZU?=
 =?utf-8?Q?FdQ0HfpQD7gILjgo0uVNxq2pUcMBAgDp?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cTMrcGx2TmZvOXdRbnkzME5sYjRkQkJQckQzOFdHUXNGVkJhK2ZsZUNKTDlK?=
 =?utf-8?B?UGh2YzZ1WGpOTzMvemthcjRJOVl3dzFsSGNhcEhqMDRaT2F0L24zS2hCbEVv?=
 =?utf-8?B?WE1nVnVvdStGd0tXN3RZSTdQdUszWDlOR3ZnMS9QckpBMG9ucTd6TEZnQ3k2?=
 =?utf-8?B?MUpUbWlVMGNIZjBXc2NyWEo3VFZqekVYdWxuVGJpN3BVUjNyMXVvVHV0Vjla?=
 =?utf-8?B?R3gzQWVLZk1taU1venhscTY3ckc3bXBQTGJnTGJnY1hVeUJBZ0h2YWtNaHR4?=
 =?utf-8?B?ZjkvRThrWVMzL2M5NDdURXN4MjBEZGdqUlVDYnRpTFVDOVMwY3FudjBLUTYz?=
 =?utf-8?B?RU8rRUYzd3JyU0IzSjNQclQxSEJXdDFENzVDeG84aE5kK1NteVp2d1d5WVNv?=
 =?utf-8?B?Nk9VZkQ1aEZvREl5ZEpZUHNwdWJkQlhGWHRiZmZoYytQY1BOS3gzdW1MUkxh?=
 =?utf-8?B?OENKZEJYZzlBZ2o0dHpIMUhObFl4MWFSSmc0MnI2MmVkb25ydG00QzI3Nmlz?=
 =?utf-8?B?NXV1bDR3N1dxOWJCQ24xd0ZaWWd1MHhuUllhRmhwb2VJSUVRQnB1SVgwTW5h?=
 =?utf-8?B?N05SWEhoYjFJL0Qra1VYOVgxREVDeEZmUmM2VGl0UHFtejcrR3NMbjQxaGVO?=
 =?utf-8?B?eEdWTmxYN3hCaHBxMzNjSUkxMWZMcVZyUlJIcGZSMzdDNFcwbURnVEd5eG02?=
 =?utf-8?B?dVpSM29SaVhPcys3bm5VM252WkY1eFpEOFVPMHpsNHF1S08xYXJVODk3K2hL?=
 =?utf-8?B?djkyY2xRSUZtWnNMUnYycFowYmlNQnRwMFBqaGZMOFpmUmZIbVhMdVBHay8w?=
 =?utf-8?B?UnZ3UmpGUy9xUXFXZi9RUnpUYjVXeDVKclVDZnZvTlZiaWZZT1pGYnNOMklE?=
 =?utf-8?B?eGZhcVRkczA0cHhqeGs5SFEwQmRsYXlxZmJRT1YxV2Y1clpxZExHU3hJa1I1?=
 =?utf-8?B?M1ZaRFFSSk9UY2NROUhhT1lLUnJMNU5mWVp6ZnRIV05DMUJJNXRSU2h0OVdO?=
 =?utf-8?B?TkxXTHYvNTFmdDk1OGora2VBZVQ3QnY0cTNjNWpVWWhoZWJhenpkWnU3YS8w?=
 =?utf-8?B?R0k2aXA4dTlPTWx4U1NYcjBmU2tWTmlmNlBFcWRwZVhvUGVyQnQrYWw0ZXBY?=
 =?utf-8?B?eEZxSTdDcGJBRW9XYlJPYzNVTXYrWStsT2NIS1djUVpJY3lUYWIwWFVpdlRX?=
 =?utf-8?B?OXE0Z0VqVVp4TWY3RC9md0tGbFNyQjlRN3hsUWxYUXdPZWJuZnpzdHF0a0FD?=
 =?utf-8?B?QURBSkJsMTJ3NXFVTmhPK0xyRE02RUg1NEFQY1NiMWptQUNYUDZlbzlsK3Vy?=
 =?utf-8?B?VU1wNm9vNGRLZ3V4UlNNUFpqa081RXRuQ3lOTVVRMXVra0tkOGh4dUFCcE1w?=
 =?utf-8?B?NVZETlF0Q0tBdlJJaEZnWWlFWm9BOW5FK3dwQXk1VTBMR0dzN2VpeFpHaUVQ?=
 =?utf-8?B?L2paeC95R2MrY2g2QzdvSk1JWmpJeG5Kd0dhYTV2NjBEeWF6OXBZWG13enYw?=
 =?utf-8?B?WDhpYklXbElmK28vdmswbnIweW1va1hQWHUzNnJBWVd1SksxeUZXWXU4U2NC?=
 =?utf-8?B?MlQvQ29hN2VZWEVubXZvNXBYSUY0Z2JCUWNMNjNXQUcySzdRa1g0NWtUNWRK?=
 =?utf-8?B?RDRIYkVzOU85bjFvdWprM0dVWmc2Ukt0SnFGOXVjbmFsanNUTFNRQXg0d3Zu?=
 =?utf-8?B?aG9UaTVGSkI3VVBna0g4VGtnb3JxRkhmRFBkQ2o3Y3EzQU5lNkVEa3ora3ZP?=
 =?utf-8?B?SjZJY0Rpelg5VEkvSXVyTC82Nks4OEx5amwxRzkvNGxSUERtS1c5UFJaeWsy?=
 =?utf-8?B?b3RvZStEMmFYS2ZhMTV5RFR6d3F1cEppdWQ4UVNJc3VCNDBzUHhRVDVRQlVD?=
 =?utf-8?B?Ti8zS244Zjg0STcxODV0bmVGSDNQMGZDamdKcktGVEVMdXBKTmhYTm1keTIx?=
 =?utf-8?B?Z040UjI1U0NhT1NmZnhrS3pIL0U1SGZKeVRnWlR6SEF0TTRMSkNNVkcxa29L?=
 =?utf-8?B?VTVldklEMHpvZG85bmZJTHFLMEZscTB3OEUzRnZVUDc1U0xVVDRNblAvM21V?=
 =?utf-8?B?Q2ZZVk1QckN6YitMN1JHRU9LK1BuL01MejdpeWJsK1VtVDY4K0VXbzQ2VFox?=
 =?utf-8?Q?iAtTGXJRicQQwfCpnY1ecIm0p?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43deed12-21f5-40a8-4b11-08de3bf269a0
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2025 15:55:47.4611
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1f4E/vwnoO3drRINidl1mHDaw0p8X03Y4Wsahd4gMC/BCv9Z0fRY2ARm18QDPphm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB9152
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.195.70:from];
	TO_DN_SOME(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[40.93.195.70:server fail,2603:10b6:510:13c::22:server fail];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.80.0.0/12, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 822593F828
X-Spamd-Bar: -----
Message-ID-Hash: GQBRZDZE5IEJI74I4D63UUJGEQWOKKAV
X-Message-ID-Hash: GQBRZDZE5IEJI74I4D63UUJGEQWOKKAV
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 09/19] drm/sched: use inline locks for the drm-sched-fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GQBRZDZE5IEJI74I4D63UUJGEQWOKKAV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTIvMTUvMjUgMTY6NTMsIFR2cnRrbyBVcnN1bGluIHdyb3RlOg0KPiANCj4gT24gMTUvMTIv
MjAyNSAxNTozOCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+IE9uIDEyLzE1LzI1IDEwOjIw
LCBUdnJ0a28gVXJzdWxpbiB3cm90ZToNCj4+Pg0KPj4+IE9uIDEyLzEyLzIwMjUgMTU6NTAsIENo
cmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4+IE9uIDEyLzExLzI1IDE2OjEzLCBUdnJ0a28gVXJz
dWxpbiB3cm90ZToNCj4+Pj4+DQo+Pj4+PiBPbiAxMS8xMi8yMDI1IDEzOjE2LCBDaHJpc3RpYW4g
S8O2bmlnIHdyb3RlOg0KPj4+Pj4+IFVzaW5nIHRoZSBpbmxpbmUgbG9jayBpcyBub3cgdGhlIHJl
Y29tbWVuZGVkIHdheSBmb3IgZG1hX2ZlbmNlIGltcGxlbWVudGF0aW9ucy4NCj4+Pj4+Pg0KPj4+
Pj4+IFNvIHVzZSB0aGlzIGFwcHJvYWNoIGZvciB0aGUgc2NoZWR1bGVyIGZlbmNlcyBhcyB3ZWxs
IGp1c3QgaW4gY2FzZSBpZg0KPj4+Pj4+IGFueWJvZHkgdXNlcyB0aGlzIGFzIGJsdWVwcmludCBm
b3IgaXRzIG93biBpbXBsZW1lbnRhdGlvbi4NCj4+Pj4+Pg0KPj4+Pj4+IEFsc28gc2F2ZXMgYWJv
dXQgNCBieXRlcyBmb3IgdGhlIGV4dGVybmFsIHNwaW5sb2NrLg0KPj4+Pj4+DQo+Pj4+Pj4gU2ln
bmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0K
Pj4+Pj4+IC0tLQ0KPj4+Pj4+IMKgwqDCoCBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVk
X2ZlbmNlLmMgfCA3ICsrKy0tLS0NCj4+Pj4+PiDCoMKgwqAgaW5jbHVkZS9kcm0vZ3B1X3NjaGVk
dWxlci5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgNCAtLS0tDQo+Pj4+Pj4gwqDCoMKgIDIg
ZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPj4+Pj4+DQo+
Pj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2Uu
YyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYw0KPj4+Pj4+IGluZGV4
IDA4Y2NiZGU4YjJmNS4uNDc0NzFiOWU0M2Y5IDEwMDY0NA0KPj4+Pj4+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYw0KPj4+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYw0KPj4+Pj4+IEBAIC0xNjEsNyArMTYxLDcgQEAg
c3RhdGljIHZvaWQgZHJtX3NjaGVkX2ZlbmNlX3NldF9kZWFkbGluZV9maW5pc2hlZChzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmLA0KPj4+Pj4+IMKgwqDCoMKgwqDCoMKgIC8qIElmIHdlIGFscmVhZHkgaGF2
ZSBhbiBlYXJsaWVyIGRlYWRsaW5lLCBrZWVwIGl0OiAqLw0KPj4+Pj4+IMKgwqDCoMKgwqDCoMKg
IGlmICh0ZXN0X2JpdChEUk1fU0NIRURfRkVOQ0VfRkxBR19IQVNfREVBRExJTkVfQklULCAmZi0+
ZmxhZ3MpICYmDQo+Pj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBrdGltZV9iZWZvcmUoZmVu
Y2UtPmRlYWRsaW5lLCBkZWFkbGluZSkpIHsNCj4+Pj4+PiAtwqDCoMKgwqDCoMKgwqAgc3Bpbl91
bmxvY2tfaXJxcmVzdG9yZSgmZmVuY2UtPmxvY2ssIGZsYWdzKTsNCj4+Pj4+PiArwqDCoMKgwqDC
oMKgwqAgZG1hX2ZlbmNlX3VubG9ja19pcnFyZXN0b3JlKGYsIGZsYWdzKTsNCj4+Pj4+DQo+Pj4+
PiBSZWJhc2UgZXJyb3IgSSBndWVzcy4gUHVsbCBpbnRvIHRoZSBsb2NraW5nIGhlbHBlcnMgcGF0
Y2guDQo+Pj4+DQo+Pj4+IE5vIHRoYXQgaXMgYWN0dWFsbHkgY29tcGxldGVseSBpbnRlbnRpb25h
bCBoZXJlLg0KPj4+Pg0KPj4+PiBQcmV2aW91c2x5IHdlIGhhZCBhIHNlcGFyYXRlIGxvY2sgd2hp
Y2ggcHJvdGVjdGVkIGJvdGggdGhlIERNQS1mZW5jZXMgYXMgd2VsbCBhcyB0aGUgZGVhZGxpbmUg
c3RhdGUuDQo+Pj4+DQo+Pj4+IE5vdyB3ZSB0dXJuIHRoYXQgdXBzaWRlIGRvd24gYnkgZHJvcHBp
bmcgdGhlIHNlcGFyYXRlIGxvY2sgYW5kIHByb3RlY3RpbmcgdGhlIGRlYWRsaW5lIHN0YXRlIHdp
dGggdGhlIGRtYV9mZW5jZSBsb2NrIGluc3RlYWQuDQo+Pj4NCj4+PiBJIGRvbid0IGZvbGxvdy4g
VGhlIGNvZGUgaXMgY3VycmVudGx5IGxpa2UgdGhpczoNCj4+Pg0KPj4+IHN0YXRpYyB2b2lkIGRy
bV9zY2hlZF9mZW5jZV9zZXRfZGVhZGxpbmVfZmluaXNoZWQoc3RydWN0IGRtYV9mZW5jZSAqZiwN
Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGt0aW1lX3QgZGVhZGxpbmUpDQo+Pj4gew0KPj4+IMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX3NjaGVk
X2ZlbmNlICpmZW5jZSA9IHRvX2RybV9zY2hlZF9mZW5jZShmKTsNCj4+PiDCoMKgwqDCoMKgc3Ry
dWN0IGRtYV9mZW5jZSAqcGFyZW50Ow0KPj4+IMKgwqDCoMKgwqB1bnNpZ25lZCBsb25nIGZsYWdz
Ow0KPj4+DQo+Pj4gwqDCoMKgwqDCoHNwaW5fbG9ja19pcnFzYXZlKCZmZW5jZS0+bG9jaywgZmxh
Z3MpOw0KPj4+DQo+Pj4gwqDCoMKgwqDCoC8qIElmIHdlIGFscmVhZHkgaGF2ZSBhbiBlYXJsaWVy
IGRlYWRsaW5lLCBrZWVwIGl0OiAqLw0KPj4+IMKgwqDCoMKgwqBpZiAodGVzdF9iaXQoRFJNX1ND
SEVEX0ZFTkNFX0ZMQUdfSEFTX0RFQURMSU5FX0JJVCwgJmYtPmZsYWdzKSAmJg0KPj4+IMKgwqDC
oMKgwqDCoMKgwqAga3RpbWVfYmVmb3JlKGZlbmNlLT5kZWFkbGluZSwgZGVhZGxpbmUpKSB7DQo+
Pj4gwqDCoMKgwqDCoMKgwqDCoCBzcGluX3VubG9ja19pcnFyZXN0b3JlKCZmZW5jZS0+bG9jaywg
ZmxhZ3MpOw0KPj4+IMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuOw0KPj4+IMKgwqDCoMKgwqB9DQo+
Pj4NCj4+PiDCoMKgwqDCoMKgZmVuY2UtPmRlYWRsaW5lID0gZGVhZGxpbmU7DQo+Pj4gwqDCoMKg
wqDCoHNldF9iaXQoRFJNX1NDSEVEX0ZFTkNFX0ZMQUdfSEFTX0RFQURMSU5FX0JJVCwgJmYtPmZs
YWdzKTsNCj4+Pg0KPj4+IMKgwqDCoMKgwqBzcGluX3VubG9ja19pcnFyZXN0b3JlKCZmZW5jZS0+
bG9jaywgZmxhZ3MpOy4uLg0KPj4+DQo+Pj4gVGhlIGRpZmYgY2hhbmdlcyBvbmUgb3V0IG9mIHRo
ZSB0aHJlZSBsb2NrL3VubG9jayBvcGVyYXRpb25zLiBPdGhlciB0d28gYXJlIGNoYW5nZWQgaW4g
My8xOS4gQWxsIHRocmVlIHNob3VsZCBzdXJlbHkgYmUgY2hhbmdlZCBpbiB0aGUgc2FtZSBwYXRj
aC4NCj4+DQo+PiBXZSBjb3VsZCBjaGFuZ2UgdGhvc2Ugc3Bpbl9sb2NrL3VubG9jayBjYWxscyBp
biBwYXRjaCAjMywgYnV0IEkgZG9uJ3QgdGhpbmsgdGhhdCB0aGlzIGlzIGNsZWFuLg0KPj4NCj4+
IFNlZSB0aGUgY29kZSBoZXJlIGN1cnJlbnRseSB1c2VzIGZlbmNlLT5sb2NrIGFuZCBwYXRjaCAj
MyB3b3VsZCBjaGFuZ2UgaXQgdG8gdXNlIGZlbmNlLT5maW5pc2hlZC0+bG9jayBpbnN0ZWFkLiBU
aGF0IG1pZ2h0IGJlIHRoZSBwb2ludGVyIGF0IHRoZSBtb21lbnQsIGJ1dCB0aGF0IGlzIGp1c3Qg
YnkgY29pbmNpZGVudCBhbmQgbm90IGRlc2lnbi4NCj4+DQo+PiBPbmx5IHRoaXMgY2hhbmdlIGhl
cmUgb250b3AgbWFrZXMgaXQgaW50ZW50aW9uYWwgdGhhdCB3ZSB1c2UgZmVuY2UtPmZpbmlzaGVk
LT5sb2NrIGZvciBldmVyeXRoaW5nLg0KPiANCj4gU29ycnkgSSBzdGlsbCBkb24ndCBmb2xsb3cu
IEFmdGVyIDMvMTkgYW5kIGJlZm9yZSB0aGlzIDkvMTkgdGhlIGZ1bmN0aW9uIGxvb2tzIGxpa2Ug
dGhpczoNCj4gDQo+IHN0YXRpYyB2b2lkIGRybV9zY2hlZF9mZW5jZV9zZXRfZGVhZGxpbmVfZmlu
aXNoZWQoc3RydWN0IGRtYV9mZW5jZSAqZiwNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAga3RpbWVfdCBkZWFkbGluZSkNCj4gew0KPiDCoMKgwqDC
oHN0cnVjdCBkcm1fc2NoZWRfZmVuY2UgKmZlbmNlID0gdG9fZHJtX3NjaGVkX2ZlbmNlKGYpOw0K
PiDCoMKgwqDCoHN0cnVjdCBkbWFfZmVuY2UgKnBhcmVudDsNCj4gwqDCoMKgwqB1bnNpZ25lZCBs
b25nIGZsYWdzOw0KPiANCj4gwqDCoMKgwqBkbWFfZmVuY2VfbG9ja19pcnFzYXZlKGYsIGZsYWdz
KTsNCj4gDQo+IMKgwqDCoMKgLyogSWYgd2UgYWxyZWFkeSBoYXZlIGFuIGVhcmxpZXIgZGVhZGxp
bmUsIGtlZXAgaXQ6ICovDQo+IMKgwqDCoMKgaWYgKHRlc3RfYml0KERSTV9TQ0hFRF9GRU5DRV9G
TEFHX0hBU19ERUFETElORV9CSVQsICZmLT5mbGFncykgJiYNCj4gwqDCoMKgwqDCoMKgwqAga3Rp
bWVfYmVmb3JlKGZlbmNlLT5kZWFkbGluZSwgZGVhZGxpbmUpKSB7DQo+IMKgwqDCoMKgwqDCoMKg
IHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmZlbmNlLT5sb2NrLCBmbGFncyk7DQo+IMKgwqDCoMKg
wqDCoMKgIHJldHVybjsNCj4gwqDCoMKgwqB9DQo+IA0KPiDCoMKgwqDCoGZlbmNlLT5kZWFkbGlu
ZSA9IGRlYWRsaW5lOw0KPiDCoMKgwqDCoHNldF9iaXQoRFJNX1NDSEVEX0ZFTkNFX0ZMQUdfSEFT
X0RFQURMSU5FX0JJVCwgJmYtPmZsYWdzKTsNCj4gDQo+IMKgwqDCoMKgZG1hX2ZlbmNlX3VubG9j
a19pcnFyZXN0b3JlKGYsIGZsYWdzKTsNCj4gDQo+IE5vdGljZSB0aGUgbG9uZWx5IHNwaW5fdW5s
b2NrX2lycXJlc3RvcmUgb24gdGhlIGVhcmx5IHJldHVybiBwYXRoIHdoaWxlIG90aGVyIHR3byB1
c2UgdGhlIGRtYV9mZW5jZV8odW4pbG9jayBoZWxwZXJzLiBBbSBJIGJsaW5kIG9yIGhvdyBpcyB0
aGF0IGNsZWFuPw0KDQpPaCwgdGhhdCdzIHdoYXQgeW91IG1lYW4uIFNvcnJ5IEkgd2FzIGJsaW5k
IQ0KDQpZZWFoIHRoYXQgaXMgY2xlYXJseSB1bmludGVudGlvbmFsLg0KDQpUaGFua3MsDQpDaHJp
c3RpYW4uDQoNCj4gDQo+IFJlZ2FyZHMsDQo+IA0KPiBUdnJ0a28NCj4gDQo+Pg0KPj4gUmVnYXJk
cywNCj4+IENocmlzdGlhbi4NCj4+DQo+Pj4NCj4+PiBSZWdhcmRzLA0KPj4+DQo+Pj4gVHZydGtv
DQo+Pj4NCj4+Pj4NCj4+Pj4gUmVnYXJkcywNCj4+Pj4gQ2hyaXN0aWFuLg0KPj4+Pg0KPj4+Pj4N
Cj4+Pj4+IFJlZ2FyZHMsDQo+Pj4+Pg0KPj4+Pj4gVHZydGtvDQo+Pj4+Pg0KPj4+Pj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuOw0KPj4+Pj4+IMKgwqDCoMKgwqDCoMKgIH0NCj4+Pj4+
PiDCoMKgwqAgQEAgLTIxNyw3ICsyMTcsNiBAQCBzdHJ1Y3QgZHJtX3NjaGVkX2ZlbmNlICpkcm1f
c2NoZWRfZmVuY2VfYWxsb2Moc3RydWN0IGRybV9zY2hlZF9lbnRpdHkgKmVudGl0eSwNCj4+Pj4+
PiDCoMKgwqAgwqDCoMKgwqDCoCBmZW5jZS0+b3duZXIgPSBvd25lcjsNCj4+Pj4+PiDCoMKgwqDC
oMKgwqDCoCBmZW5jZS0+ZHJtX2NsaWVudF9pZCA9IGRybV9jbGllbnRfaWQ7DQo+Pj4+Pj4gLcKg
wqDCoCBzcGluX2xvY2tfaW5pdCgmZmVuY2UtPmxvY2spOw0KPj4+Pj4+IMKgwqDCoCDCoMKgwqDC
oMKgIHJldHVybiBmZW5jZTsNCj4+Pj4+PiDCoMKgwqAgfQ0KPj4+Pj4+IEBAIC0yMzAsOSArMjI5
LDkgQEAgdm9pZCBkcm1fc2NoZWRfZmVuY2VfaW5pdChzdHJ1Y3QgZHJtX3NjaGVkX2ZlbmNlICpm
ZW5jZSwNCj4+Pj4+PiDCoMKgwqDCoMKgwqDCoCBmZW5jZS0+c2NoZWQgPSBlbnRpdHktPnJxLT5z
Y2hlZDsNCj4+Pj4+PiDCoMKgwqDCoMKgwqDCoCBzZXEgPSBhdG9taWNfaW5jX3JldHVybigmZW50
aXR5LT5mZW5jZV9zZXEpOw0KPj4+Pj4+IMKgwqDCoMKgwqDCoMKgIGRtYV9mZW5jZV9pbml0KCZm
ZW5jZS0+c2NoZWR1bGVkLCAmZHJtX3NjaGVkX2ZlbmNlX29wc19zY2hlZHVsZWQsDQo+Pj4+Pj4g
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJmZlbmNlLT5sb2NrLCBlbnRpdHktPmZlbmNl
X2NvbnRleHQsIHNlcSk7DQo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTlVM
TCwgZW50aXR5LT5mZW5jZV9jb250ZXh0LCBzZXEpOw0KPj4+Pj4+IMKgwqDCoMKgwqDCoMKgIGRt
YV9mZW5jZV9pbml0KCZmZW5jZS0+ZmluaXNoZWQsICZkcm1fc2NoZWRfZmVuY2Vfb3BzX2Zpbmlz
aGVkLA0KPj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZmZW5jZS0+bG9jaywg
ZW50aXR5LT5mZW5jZV9jb250ZXh0ICsgMSwgc2VxKTsNCj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBOVUxMLCBlbnRpdHktPmZlbmNlX2NvbnRleHQgKyAxLCBzZXEpOw0KPj4+
Pj4+IMKgwqDCoCB9DQo+Pj4+Pj4gwqDCoMKgIMKgIG1vZHVsZV9pbml0KGRybV9zY2hlZF9mZW5j
ZV9zbGFiX2luaXQpOw0KPj4+Pj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9ncHVfc2NoZWR1
bGVyLmggYi9pbmNsdWRlL2RybS9ncHVfc2NoZWR1bGVyLmgNCj4+Pj4+PiBpbmRleCBmYjg4MzAx
YjNjNDUuLmI3N2YyNGE3ODNlMyAxMDA2NDQNCj4+Pj4+PiAtLS0gYS9pbmNsdWRlL2RybS9ncHVf
c2NoZWR1bGVyLmgNCj4+Pj4+PiArKysgYi9pbmNsdWRlL2RybS9ncHVfc2NoZWR1bGVyLmgNCj4+
Pj4+PiBAQCAtMjk3LDEwICsyOTcsNiBAQCBzdHJ1Y3QgZHJtX3NjaGVkX2ZlbmNlIHsNCj4+Pj4+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBiZWxvbmdzIHRvLg0KPj4+Pj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAqLw0KPj4+Pj4+IMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkcm1fZ3B1
X3NjaGVkdWxlcsKgwqDCoCAqc2NoZWQ7DQo+Pj4+Pj4gLcKgwqDCoMKgwqDCoMKgIC8qKg0KPj4+
Pj4+IC3CoMKgwqDCoMKgwqDCoMKgICogQGxvY2s6IHRoZSBsb2NrIHVzZWQgYnkgdGhlIHNjaGVk
dWxlZCBhbmQgdGhlIGZpbmlzaGVkIGZlbmNlcy4NCj4+Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoCAq
Lw0KPj4+Pj4+IC3CoMKgwqAgc3BpbmxvY2tfdMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbG9jazsN
Cj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qKg0KPj4+Pj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAqIEBvd25lcjogam9iIG93bmVyIGZvciBkZWJ1Z2dpbmcNCj4+Pj4+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8NCj4+Pj4+DQo+Pj4+DQo+Pj4NCj4+DQo+IA0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
