Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 046E4919FAB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Jun 2024 08:57:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C94DF4400F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Jun 2024 06:57:58 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2060.outbound.protection.outlook.com [40.107.92.60])
	by lists.linaro.org (Postfix) with ESMTPS id 545733ED8E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Jun 2024 06:57:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=lRK3sZe1;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.92.60 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lL4lYBfdq11US0uFE8u3uFyD1DmALQ6Y8Z8sBQHranNx6Qwtvn16HxOlniOFe2zI7kgrt2q9rBC8IkxbqqMhKyb8McjL9cRpmCHvRYn2YUNK2Zyok9VKp4GayxTeMqYMuXCkgR5NVDSasUpsiJfZ+olIZWKQGgKBjb2IyYn+mQ3eme9BX6+iKTudQDvURK2rL1A79hV7towknhLAn7VdHkWlIsS1xh2/683ZQt3NdgOnkBvgsUwttCWTcNGI3MzmlOma8tg0iOYKgv5fQUlFm7rEnr6xyNKAdemByNJk8zbkiNM6DcEBuFPt4Us7+FJAe2udFQmRz23VXW06GKbBOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ak3qtKiezV5RzRokj7/sfSKkVFJIvGj7jIBqMrXtu80=;
 b=Ub8io2TqnvMyXAG1tS1nfWgNSBfKV9oIO2tGxmUay5dSdNGw6a+zQzGojBvc5LTvOoqp5ljyNK7PJvq5gRY7+ho48lGlqx4ggaGT6BtdHkldllNCyerrtKOxRQcPebC6JcQsdchwcAZWMGsFjwCOmnCcNHquByavtwjfcj1Gs72sFPXvTrMU+2wpWR+Q0qP4S6OODXudETIYo5Hiiy6F0pQXG8RAbD1crCbKf2/7v9Ruv3Xzx9xFpuieUK5kyP9In2iJfEV10a9/mVhFTivVxqfZEMf9bUjiV2XDUgfVgNpYDTAkYVd8WibLivdX94lu38z/jeWuIkJOvUter+f4cA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ak3qtKiezV5RzRokj7/sfSKkVFJIvGj7jIBqMrXtu80=;
 b=lRK3sZe1n6TU6G1ijwD8aJ/PKJvmp5FVK35NVCAfjnR9w6xeKatq6wjpkOKEZfp3CPj+Vri+vPV/zutQz4e39GKjqPG5yf/KZ4LCZ3MGJgRZB4eTZDhsclb5k2WpR8+babO7GnkouxYu55FI6tfv628fdIFhDwb2192nGnWZrQ0=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SN7PR12MB7129.namprd12.prod.outlook.com (2603:10b6:806:2a1::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.33; Thu, 27 Jun
 2024 06:57:51 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.7698.025; Thu, 27 Jun 2024
 06:57:51 +0000
Message-ID: <5739abdb-0234-412a-9f25-49219411bbc6@amd.com>
Date: Thu, 27 Jun 2024 08:57:40 +0200
User-Agent: Mozilla Thunderbird
To: =?UTF-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?= <Jason-JH.Lin@mediatek.com>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>
References: <20240515112308.10171-1-yong.wu@mediatek.com>
 <20240515112308.10171-3-yong.wu@mediatek.com>
 <98721904-003d-4d0d-8cfe-1cecdd59ce01@amd.com>
 <779ce30a657754ff945ebd32b66e1c644635e84d.camel@mediatek.com>
 <cef8f87d-edab-41d8-8b95-f3fc39ad7f74@amd.com>
 <1050c44512374031d1349b5dced228d0efc3fbde.camel@mediatek.com>
 <3104b765-5666-44e4-8788-f1b1b296fe17@amd.com>
 <98c11bad7f40bcc79ed7a2039ddb3a46f99908f5.camel@mediatek.com>
 <75dc1136-7751-4772-9fa7-dd9124684cd2@amd.com>
 <ZnxWWtdShekGSUif@phenom.ffwll.local>
 <ae73a0203d6acf2878c9e3ae2d7554816b9c66ad.camel@mediatek.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <ae73a0203d6acf2878c9e3ae2d7554816b9c66ad.camel@mediatek.com>
X-ClientProxiedBy: FR2P281CA0104.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9c::11) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SN7PR12MB7129:EE_
X-MS-Office365-Filtering-Correlation-Id: d852d205-bfa1-44e1-af8b-08dc967675f6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?VnYzWkVCYTB6NldoN1dzNFJVdWRscU5vR3NkZW50clg2ZUtwMjkrdG1rZjFl?=
 =?utf-8?B?cmNDL0FtaXlGUHNPb3lnRVdXR0xvdjdQcUdsUjFVT282WHZSS1U1U21oeGxj?=
 =?utf-8?B?YXJ4czBVekI0WW9kU25YQ3lNWXhjSzdiZVZQZWQ4MGxBTmhlZkVGK2FVMVFK?=
 =?utf-8?B?NlhrbkUxWTBMajZ0bGZHQ2hNVERUSFZsM1ZPUWVqTnR5dkROcGVMV0srNmdN?=
 =?utf-8?B?SXNjNEJVbWlDYmozMDY2aHNGNkd2WUs3T3VwdFVCQ1R3U1YvaDVDUkp1SFAz?=
 =?utf-8?B?K0VzNXo0QzdVZzN6TWlZV25GQ0tBcG1xMUZ5N0VITExxdkxjZ1hlcW5XMFUr?=
 =?utf-8?B?Y2FyMWpnZHVxOEpDSm1rRElEcHlMcDgrUTMvMFBDYlE0bGpXeTY2UXpXbWRW?=
 =?utf-8?B?MlpWVGdKTEY3YzA5ZDI2eVhnU3pudTZGb3NhR3ZQMDBXRVkwUmFhRzFHa1Nr?=
 =?utf-8?B?ZXZ3aGZQVGp1RlNOdUR5cXdHRklOR3pwK2NjMDhMV29GeW0rUWZ5dHJCRVB6?=
 =?utf-8?B?RDBBSUQ0QW55Q3p4M3luWlFsYmZHMnJmUnd1MWJpUnlHK0RIeWIxZkpqMjlX?=
 =?utf-8?B?UEJKTEVmZXVkV29wVFJtaW1XQjh4N0w5NFpnb01GUlhoT2ZGQWFha3RSRjl1?=
 =?utf-8?B?RERLY1FadHpPbWhlamRMR3c2SkVyZDlwVW9sZjFFK3ZIRUxNdERRbDg4SzEz?=
 =?utf-8?B?M3lRQnF1cStJSHY1ZnlWa2lod1daR20zUkFHak16UG1kcEhrd3J2NVVPZnAr?=
 =?utf-8?B?RmxDVE5Xa1gvWHE1RHc2MU9EaUM2RnhNdXo5K1VSRWRvb3Zsb1Yra2dYSFNF?=
 =?utf-8?B?QUh2OGRGcmhBT2Mzc0gvN0lXRlVhVXlwQXg3UTNoWXRSMUs3RUNpdGJQc2lF?=
 =?utf-8?B?OGdHZTdKSDUxOHFkTFdqVFpOanIvcTNoMXFscjdvTy9adWhSM1JuTnpjUVJk?=
 =?utf-8?B?MG10ZWl2S0JUSS9GZnNRZmd3SURhOUpwN0lXb2o5YlJtRWg1VUpvMHlYMk1F?=
 =?utf-8?B?MXIrTEJPTGFhVmhkNUk0dHNxdUtYSzlCSVRpSW9tRUl4MEh5WFBKYVcrVjBv?=
 =?utf-8?B?Q2Uwb25IbHdjeDQ4OExISjJIU2FNNDJHVXNtNWlEN2dXckkwbXlidUtOc29l?=
 =?utf-8?B?NURXSjZTa3NyMFExdDkwUzVRclF0czFnMTIrTkx6VThnaEFCclEwRDZzQ0N3?=
 =?utf-8?B?cDIwajFDL21PdUprNXlLbW5rUGw3UFRiR2l3UnMyaFJ2SndhQ1Jjd0UxT1Jy?=
 =?utf-8?B?T0MyY1VxVjBWWWl2cEswUkZNOEpkbjFXMXRONnVEZXpmRlVKM3lPczA1TGM4?=
 =?utf-8?B?TmtFNEpPc0wvWjdhd1hPdWY5NitIMnVnck1lTHE3UVhVUmNiREVpMFJNYzBp?=
 =?utf-8?B?SDZFbGs1QmJqUEJjSkJYTEtCZllZTFgwUzA3WXQ3R3RzWUtXdHR1Sy9iYU9V?=
 =?utf-8?B?RTU0WWoyL3FIL2lZY1RsZG5MZ1J6U0tUOHN5anhGalFLTkFiSE5OQVFMR0tz?=
 =?utf-8?B?bU9CNG5IK3N5VkFQWElKNGdwaEh2L3o4SnlPVFE4Ny9FbjYrbkxSRWpoRDVG?=
 =?utf-8?B?Nm5SbTN1amY5SElrRlRWQmFCNjY2d21nb2RPaTdPOWU1U3hIa09LVHo4elJM?=
 =?utf-8?B?bTljNktCNkp0eHE3ZUZDZnhBSUxkN1hPd2xSWWtnQVhyUk5DejU3MGdQMk9y?=
 =?utf-8?B?UlJqeUhXZUhaTjJ6djdTelIveDZ0SFJjYzJoMDl6ZE16MFFyZEgrcU1rc0l3?=
 =?utf-8?Q?g9/dQ27YrpRtA2IOYE=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OS9kMk8xdlVjS1YvR1QwNGVFMjY3ejd3MVRYclZnYk1ETW9qOEpxenBxOTJL?=
 =?utf-8?B?Y2d0V2RCNmp5SGF5eFZHbzZBdFRzWWdZa0NrQnJxQ2dwKzZDcnBLNEJncWZD?=
 =?utf-8?B?cEFDekZ1QWw5OFJGazRKQWZ2b1ZxRnZSWkl2eXZUUm1aNmNyOFBHNkRYa0lY?=
 =?utf-8?B?YllGNzl6dXNuWDFKWTRxTlJTRmwrOGlPZ0x1NGo4QldNcTllWCtQeXlEN3NK?=
 =?utf-8?B?N0EyQW4yRGdub3pRV214MlpieVZJaWpDcVdLM1E4RnpaaCt2b09vZU02NFhZ?=
 =?utf-8?B?SkNwakJUOEhxaGRER1dndVZHTEV6L3J1YnFDbWZyUkdWUklrSFN3QzZZVWVx?=
 =?utf-8?B?TTZiRnNreWlHSG8yMi9pZ1JGaEVXbDNVSXc0dG1uNlZpTnhWUW0yTXp6N0hB?=
 =?utf-8?B?dzEwcS9RN1pCK2J0OEFkMm85K0hXZnNRV0ZHSlp6ZWhickxRUTdDTzViSExq?=
 =?utf-8?B?TDRKNVRBNjh2WnQrUEZSNHE3ZHlFMEVPM1drWnZuWjBNbVp2a0lsbXNZTGEx?=
 =?utf-8?B?aFdZL0lGZWVyUHJhZld2MUxlUUwwQy9lQ1dXQ1NiT2VvTkVzN0VBKzlQTSta?=
 =?utf-8?B?a2RUMVdvMWVVOGYxeE44WFh4em81ajBpOHpwOGlIY0FkbzNDSnMwa0RNekdm?=
 =?utf-8?B?ZU84RWVueWZxTnYrdTJBTnU0WVZRNUo4SHUzbGFDQWhUaTI2QlM1clN3SCsw?=
 =?utf-8?B?ZFJGNmxqNnBZVFVQb0hXaVBORHJHMlBrRkRVbVJxK3ltL2dVTHFTajFaNi91?=
 =?utf-8?B?NWtOc09jZlhSQ0I5MXdGeUtRT01FL0tNamd0L2RoQnJRR2grZWNNWjg4QXEv?=
 =?utf-8?B?YVlySEpRQTd0b1RSUy9nYTIrV1B2RUhxcmZJMWRJaDZpbitLU2pjMGg0MlY3?=
 =?utf-8?B?U3h6UjRZY2MvZ0VHY1BJQjVCUmtpSXpxZVcwOXNtVWpheFg0M2M4UEhTczN1?=
 =?utf-8?B?MzduREtzdjJRVjIvNUNXUE9CN1c0NFZtYWVvWXJzdllQQXY1b0cxQVpqSzcz?=
 =?utf-8?B?Z1poaUJva0pVMU4vVVNqeWNOaTB0ODFraWo1dXZ4V1d1Y08wUnlBVWxXN1Jz?=
 =?utf-8?B?R2J6cnNCaEFGMDZmR0VVSHFad3JVemRNcXF6bzl2KzFSU0NoWXNvWksrajBQ?=
 =?utf-8?B?VE1ORzVCSDUwNkNuMytmQ2dWYXE4b0pSTU04REdLRTRzYWVhV0VKVjFJMUZ1?=
 =?utf-8?B?T3Zjb1Z1TjBBQTVTenpNUjYxQzNHeWcwZldQQlNpdDJVTkRDWmhhdXptdjBY?=
 =?utf-8?B?WUpOS1BaWVAxNnVWai9WU0RmRzU0NVQrZ2dLeSttVWNUY2M2OWkwc3JlVTUw?=
 =?utf-8?B?NzlSMVl3dDBJVTVoaUtHeXg5ZWUrN2xqeGFzUTJzWmdXdTc3UWFXZlRmTTU1?=
 =?utf-8?B?TVk5U2V0c1U5amVGMVNTckVXcnZHSU5QYmtiRGgrb1hoNk5Ecm13alJoQTRV?=
 =?utf-8?B?WjdKSzRkdWhDNlRjU0p0RGZpa0VUNXlHUk56S2pyZ2tZNndjUi8wLzRsVFQ0?=
 =?utf-8?B?ZEI4S1NXU3ZmbFJFeFVyb2w1SURkT3VwRTVXbE5JVkRRck1kLzA2VTluUzZG?=
 =?utf-8?B?QStkZGNiZkFMTEhPU2k5V01XWlYvQTRqNk1BdnlnQ2RVeGtkUVFXMlRpZk81?=
 =?utf-8?B?cnovb0NnbVQ4YitPRSsraDI1QVBnUThKRXMwWDhKZGZMSThkR2JsWnBYRUhR?=
 =?utf-8?B?YlFUcmZ4cHgvME5pRlc1QVo3RU0zVWJxNSsreWlnM3VhSC9FOTVMc0hyTGM4?=
 =?utf-8?B?OWNIcU5tZCtnamZxUHhYU1UxVjVxV1RBeHh5WllEaXlwS2hZTmpqUGhDOHNI?=
 =?utf-8?B?bVVVQU9tNEVveXZFVTBNUjdiQzE2alREeVBFSnAralZNMUpCNlZPL3BvK3lo?=
 =?utf-8?B?cHFNeEw4dStGbi9TdUYvZTBrVit1dnJwaE9oVTg2R3Z0Q1VIempzRFM4U1JS?=
 =?utf-8?B?TG1mMjFMY1JJMzVrRHl1TC9IRU00NTJPQnN4OUlzWDVsRTljb1pqQU1nSTV2?=
 =?utf-8?B?TVZxUlFDWWorcU9sMWNaRG1nOHk3c0RxOVVrNGowTk1Dd2IzOEVnVU1BQVo0?=
 =?utf-8?B?Tkc5UFF4SjJoNkJXYktobytJNVAwWk81MVFDNHRDOVBKbkJvZ1lYaWVxeGx2?=
 =?utf-8?Q?NMw3HdG7Fa60OAVOVrmONffKU?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d852d205-bfa1-44e1-af8b-08dc967675f6
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2024 06:57:51.0697
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5um54OoMyTl8IJBagi8C2YlNgtV09gGKcs1C66dAMOmjAZ8A/hoHAfY6FU5J8d77
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB7129
X-Rspamd-Queue-Id: 545733ED8E
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.49 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.92.60:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[quicinc.com,collabora.com,linaro.org,kernel.org,google.com,mediatek.com,deltatee.com,lists.freedesktop.org,emersion.fr,gmail.com,lists.infradead.org,lists.linaro.org,infradead.org,ucw.cz,linux-foundation.org,arm.com,vger.kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: JMW6INJTD4MZC3ZIW7VDNABJNLMEXY63
X-Message-ID-Hash: JMW6INJTD4MZC3ZIW7VDNABJNLMEXY63
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "quic_vjitta@quicinc.com" <quic_vjitta@quicinc.com>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "jkardatzke@google.com" <jkardatzke@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "joakim.bech@linaro.org" <joakim.bech@linaro.org>, =?UTF-8?B?WW91bGluIFBlaSAo6KO05Y+L5p6XKQ==?= <youlin.pei@mediatek.com>, "logang@deltatee.com" <logang@deltatee.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, =?UTF-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, =?UTF-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, "contact@emersion.fr" <contact@emersion.fr>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "linar
 o-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "willy@infradead.org" <willy@infradead.org>, "pavel@ucw.cz" <pavel@ucw.cz>, "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "tjmercier@google.com" <tjmercier@google.com>, "jstultz@google.com" <jstultz@google.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "mripard@kernel.org" <mripard@kernel.org>, "robin.murphy@arm.com" <robin.murphy@arm.com>, =?UTF-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "ppaalanen@gmail.com" <ppaalanen@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/9] scatterlist: Add a flag for the restricted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JMW6INJTD4MZC3ZIW7VDNABJNLMEXY63/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjcuMDYuMjQgdW0gMDU6MjEgc2NocmllYiBKYXNvbi1KSCBMaW4gKOael+edv+elpSk6DQo+
DQo+IE9uIFdlZCwgMjAyNC0wNi0yNiBhdCAxOTo1NiArMDIwMCwgRGFuaWVsIFZldHRlciB3cm90
ZToNCj4gPiAgIA0KPiA+IEV4dGVybmFsIGVtYWlsIDogUGxlYXNlIGRvIG5vdCBjbGljayBsaW5r
cyBvciBvcGVuIGF0dGFjaG1lbnRzIHVudGlsDQo+ID4geW91IGhhdmUgdmVyaWZpZWQgdGhlIHNl
bmRlciBvciB0aGUgY29udGVudC4NCj4gPiAgT24gV2VkLCBKdW4gMjYsIDIwMjQgYXQgMTI6NDk6
MDJQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gPiA+IEFtIDI2LjA2LjI0IHVt
IDEwOjA1IHNjaHJpZWIgSmFzb24tSkggTGluICjmnpfnnb/npaUpOg0KPiA+ID4gPiA+ID4gSSB0
aGluayBJIGhhdmUgdGhlIHNhbWUgcHJvYmxlbSBhcyB0aGUgRUNDX0ZMQUcgbWVudGlvbiBpbjoN
Cj4gPiA+ID4gPiA+ID4gPiANCj4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1tZWRp
YS8yMDI0MDUxNS1kbWEtYnVmLWVjYy1oZWFwLXYxLTAtNTRjYmJkMDQ5NTExQGtlcm5lbC5vcmcv
DQo+ID4gPiA+ID4gPiA+ID4gSSB0aGluayBpdCB3b3VsZCBiZSBiZXR0ZXIgdG8gaGF2ZSB0aGUg
dXNlciBjb25maWd1cmFibGUNCj4gPiBwcml2YXRlDQo+ID4gPiA+ID4gPiBpbmZvcm1hdGlvbiBp
biBkbWEtYnVmLCBzbyBhbGwgdGhlIGRyaXZlcnMgd2hvIGhhdmUgdGhlIHNhbWUNCj4gPiA+ID4g
PiA+IHJlcXVpcmVtZW50IGNhbiBnZXQgdGhlaXIgcHJpdmF0ZSBpbmZvcm1hdGlvbiBmcm9tIGRt
YS1idWYNCj4gPiBkaXJlY3RseQ0KPiA+ID4gPiA+ID4gYW5kDQo+ID4gPiA+ID4gPiBubyBuZWVk
IHRvIGNoYW5nZSBvciBhZGQgdGhlIGludGVyZmFjZS4NCj4gPiA+ID4gPiA+ID4gPiBXaGF0J3Mg
eW91ciBvcGluaW9uIGluIHRoaXMgcG9pbnQ/DQo+ID4gPiA+ID4gID4gV2VsbCBvZiBoYW5kIEkg
ZG9uJ3Qgc2VlIHRoZSBuZWVkIGZvciB0aGF0Lg0KPiA+ID4gPiA+ID4gV2hhdCBoYXBwZW5zIGlm
IHlvdSBnZXQgYSBub24tc2VjdXJlIGJ1ZmZlciBpbXBvcnRlZCBpbiB5b3VyDQo+ID4gc2VjdXJl
DQo+ID4gPiA+ID4gZGV2aWNlPw0KPiA+ID4gPiANCj4gPiA+ID4gV2UgdXNlIHRoZSBzYW1lIG1l
ZGlhdGVrLWRybSBkcml2ZXIgZm9yIHNlY3VyZSBhbmQgbm9uLXNlY3VyZQ0KPiA+IGJ1ZmZlci4N
Cj4gPiA+ID4gSWYgbm9uLXNlY3VyZSBidWZmZXIgaW1wb3J0ZWQgdG8gbWVkaWF0ZWstZHJtIGRy
aXZlciwgaXQncyBnbyB0bw0KPiA+IHRoZQ0KPiA+ID4gPiBub3JtYWwgZmxvdyB3aXRoIG5vcm1h
bCBoYXJkd2FyZSBzZXR0aW5ncy4NCj4gPiA+ID4gDQo+ID4gPiA+IFdlIHVzZSBkaWZmZXJlbnQg
Y29uZmlndXJhdGlvbnMgdG8gbWFrZSBoYXJkd2FyZSBoYXZlIGRpZmZlcmVudA0KPiA+ID4gPiBw
ZXJtaXNzaW9uIHRvIGFjY2VzcyB0aGUgYnVmZmVyIGl0IHNob3VsZCBhY2Nlc3MuDQo+ID4gPiA+
IA0KPiA+ID4gPiBTbyBpZiB3ZSBjYW4ndCBnZXQgdGhlIGluZm9ybWF0aW9uIG9mICJ0aGUgYnVm
ZmVyIGlzIGFsbG9jYXRlZA0KPiA+IGZyb20NCj4gPiA+ID4gcmVzdHJpY3RlZF9tdGtfY21hIiB3
aGVuIGltcG9ydGluZyB0aGUgYnVmZmVyIGludG8gdGhlIGRyaXZlciwgd2UNCj4gPiB3b24ndA0K
PiA+ID4gPiBiZSBhYmxlIHRvIGNvbmZpZ3VyZSB0aGUgaGFyZHdhcmUgY29ycmVjdGx5Lg0KPiA+
ID4gDQo+ID4gPiBXaHkgY2FuJ3QgeW91IGdldCB0aGlzIGluZm9ybWF0aW9uIGZyb20gdXNlcnNw
YWNlPw0KPiA+IA0KPiA+IFNhbWUgcmVhc29uIGFtZCBhbmQgaTkxNS94ZSBhbHNvIHBhc3MgdGhp
cyBhcm91bmQgaW50ZXJuYWxseSBpbiB0aGUNCj4gPiBrZXJuZWwsIGl0J3MganVzdCB0aGF0IGZv
ciB0aG9zZSBncHVzIHRoZSByZW5kZXIgYW5kIGttcyBub2RlIGFyZSB0aGUNCj4gPiBzYW1lDQo+
ID4gZHJpdmVyIHNvIHRoaXMgaXMgZWFzeS4NCj4gPg0KDQpUaGUgcmVhc29uIEkgYXNrIGlzIHRo
YXQgZW5jcnlwdGlvbiBoZXJlIGxvb2tzIGp1c3QgbGlrZSBhbm90aGVyIA0KcGFyYW1ldGVyIGZv
ciB0aGUgYnVmZmVyLCBlLmcuIGxpa2UgZm9ybWF0LCBzdHJpZGUsIHRpbGxpbmcgZXRjLi4NCg0K
U28gaW5zdGVhZCBvZiB0aGlzIGR1cmluZyBidWZmZXIgaW1wb3J0Og0KDQptdGtfZ2VtLT5zZWN1
cmUgPSAoIXN0cm5jbXAoYXR0YWNoLT5kbWFidWYtPmV4cF9uYW1lLCAicmVzdHJpY3RlZCIsIDEw
KSk7DQptdGtfZ2VtLT5kbWFfYWRkciA9IHNnX2RtYV9hZGRyZXNzKHNnLT5zZ2wpOw0KbXRrX2dl
bS0+c2l6ZSA9IGF0dGFjaC0+ZG1hYnVmLT5zaXplOw0KbXRrX2dlbS0+c2cgPSBzZzsNCg0KWW91
IGNhbiB0cml2aWFsbHkgc2F5IGR1cmluZyB1c2UgaGV5IHRoaXMgYnVmZmVyIGlzIGVuY3J5cHRl
ZC4NCg0KQXQgbGVhc3QgdGhhdCdzIG15IDEwIG1pbGUgaGlnaCB2aWV3LCBtYXliZSBJJ20gbWlz
c2luZyBzb21lIGV4dGVuc2l2ZSANCmtleSBleGNoYW5nZSBvciBzb21ldGhpbmcgbGlrZSB0aGF0
Lg0KDQoNCj4gICANCj4gPiBCdXQgb24gYXJtIHlvdSBoYXZlIHNwbGl0IGRlc2lnbnMgZXZlcnl3
aGVyZSBhbmQgZG1hLWJ1Zg0KPiA+IGltcG9ydC9leHBvcnQsIHNvDQo+ID4gc29tZXRoaW5nIGVs
c2UgaXMgbmVlZGVkLiBBbmQgbmVpdGhlciBjdXJyZW50IGttcyB1YXBpIG5vcg0KPiA+IHByb3Rv
Y29scy9leHRlbnNpb25zIGhhdmUgcHJvdmlzaW9ucyBmb3IgdGhpcyAoYWZhaWspIGJlY2F1c2Ug
aXQNCj4gPiB3b3JrcyBvbg0KPiA+IHRoZSBiaWcgZ3B1cywgYW5kIG9uIGFuZHJvaWQgaXQncyBq
dXN0IGhhY2tlZCB1cCB3aXRoIGJhY2tjaGFubmVscy4NCj4gPiANCj4gPiBTbyB5ZWFoIGVzc2Vu
dGlhbGx5IEkgdGhpbmsgd2UgcHJvYmFibHkgbmVlZCBzb21ldGhpbmcgbGlrZSB0aGlzLCBhcw0K
PiA+IG11Y2gNCj4gPiBhcyBpdCBzdWNrcy4gSSBzZWUgaXQgc29tZXdoYXQgc2ltaWxhciB0byBo
YW5kbGluZyBwY2lwMnBkbWENCj4gPiBsaW1pdGF0aW9ucw0KPiA+IGluIHRoZSBrZXJuZWwgdG9v
Lg0KPiA+IA0KPiA+IE5vdCBzdXJlIHdoZXJlL2hvdyBpdCBzaG91bGQgYmUgaGFuZGxlZCB0aG91
Z2gsIGFuZCBtYXliZSBJJ3ZlIG1pc3NlZA0KPiA+IHNvbWV0aGluZyBhcm91bmQgcHJvdG9jb2xz
LCBpbiB3aGljaCBjYXNlIEkgZ3Vlc3Mgd2Ugc2hvdWxkIGFkZCBzb21lDQo+ID4gc2VjdXJlIGJ1
ZmZlciBmbGFncyB0byB0aGUgQURERkIyIGlvY3RsLg0KPg0KPiBUaGFua3MgZm9yIHlvdXIgaGlu
dCwgSSdsbCB0cnkgdG8gYWRkIHRoZSBzZWN1cmUgZmxhZyB0byB0aGUgQURERkIyDQo+IGlvY3Rs
LiBJZiBpdCB3b3JrcywgSSdsbCBzZW5kIHRoZSBwYXRjaC4NCg0KWWVhaCwgZXhhY3RseSB3aGF0
IEkgd291bGQgc3VnZ2VzdCBhcyB3ZWxsLg0KDQpJJ20gbm90IGFuIGV4cGVydCBmb3IgdGhhdCBw
YXJ0LCBidXQgYXMgZmFyIGFzIEkga25vdyB3ZSBhbHJlYWR5IGhhdmUgDQpidW5jaCBvZiBkZXZp
Y2Ugc3BlY2lmaWMgdGlsbGluZyBmbGFncyBpbiB0aGVyZS4NCg0KQWRkaW5nIGFuIE1US19FTkNS
WVBURUQgZmxhZyBzaG91bGQgYmUgdHJpdmlhbC4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0K
Pg0KPiBSZWdhcmRzLA0KPiBKYXNvbi1KSC5MaW4NCj4NCj4gPiAtU2ltYQ0KPg0KPiAqKioqKioq
KioqKioqIE1FRElBVEVLIENvbmZpZGVudGlhbGl0eSBOb3RpY2UgKioqKioqKioqKioqKioqKioq
KioNCj4gVGhlIGluZm9ybWF0aW9uIGNvbnRhaW5lZCBpbiB0aGlzIGUtbWFpbCBtZXNzYWdlIChp
bmNsdWRpbmcgYW55DQo+IGF0dGFjaG1lbnRzKSBtYXkgYmUgY29uZmlkZW50aWFsLCBwcm9wcmll
dGFyeSwgcHJpdmlsZWdlZCwgb3Igb3RoZXJ3aXNlDQo+IGV4ZW1wdCBmcm9tIGRpc2Nsb3N1cmUg
dW5kZXIgYXBwbGljYWJsZSBsYXdzLiBJdCBpcyBpbnRlbmRlZCB0byBiZQ0KPiBjb252ZXllZCBv
bmx5IHRvIHRoZSBkZXNpZ25hdGVkIHJlY2lwaWVudChzKS4gQW55IHVzZSwgZGlzc2VtaW5hdGlv
biwNCj4gZGlzdHJpYnV0aW9uLCBwcmludGluZywgcmV0YWluaW5nIG9yIGNvcHlpbmcgb2YgdGhp
cyBlLW1haWwgKGluY2x1ZGluZyBpdHMNCj4gYXR0YWNobWVudHMpIGJ5IHVuaW50ZW5kZWQgcmVj
aXBpZW50KHMpIGlzIHN0cmljdGx5IHByb2hpYml0ZWQgYW5kIG1heQ0KPiBiZSB1bmxhd2Z1bC4g
SWYgeW91IGFyZSBub3QgYW4gaW50ZW5kZWQgcmVjaXBpZW50IG9mIHRoaXMgZS1tYWlsLCBvciBi
ZWxpZXZlDQo+IHRoYXQgeW91IGhhdmUgcmVjZWl2ZWQgdGhpcyBlLW1haWwgaW4gZXJyb3IsIHBs
ZWFzZSBub3RpZnkgdGhlIHNlbmRlcg0KPiBpbW1lZGlhdGVseSAoYnkgcmVwbHlpbmcgdG8gdGhp
cyBlLW1haWwpLCBkZWxldGUgYW55IGFuZCBhbGwgY29waWVzIG9mDQo+IHRoaXMgZS1tYWlsIChp
bmNsdWRpbmcgYW55IGF0dGFjaG1lbnRzKSBmcm9tIHlvdXIgc3lzdGVtLCBhbmQgZG8gbm90DQo+
IGRpc2Nsb3NlIHRoZSBjb250ZW50IG9mIHRoaXMgZS1tYWlsIHRvIGFueSBvdGhlciBwZXJzb24u
IFRoYW5rIHlvdSENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
