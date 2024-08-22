Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B94BA95AFF1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Aug 2024 10:11:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5637B40F7F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Aug 2024 08:11:52 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2068.outbound.protection.outlook.com [40.107.220.68])
	by lists.linaro.org (Postfix) with ESMTPS id 8AFE73F478
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Aug 2024 08:11:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=nlTqmfIL;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.220.68 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Yog1sif5RX3eM1N9yIlQxgmWRAGxXjVkrdJLnnsRxc6PboBoCfkaieZaNVs4JN0kqi+4IheBC6xxqHyeMDV2MHH+SgOY16wGAPPZnK8D4hdRMrLwMb0kgRlkE4A+DSvjGLYlLYvMUXWuqTLGe2qLRw1DnU3mrC2PzDGyaFBE2W3p/oTUrYr2MGNCgt0KEVB7OE0IWXe5T0o4xIDUDFURD2r7u7+US0yW9rlPSPwdFrfkc5TFDPkW7ONwJ5YP9BugG3FfnPFeWuyYhr9d6WviypKjNLY0epUQ3Sc1Md9jCnxjD/q83V8U2MHWi1vOfrmGMrZuelFBmkdjM9wy0wmSNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=duvHtm8oCbdNlvxLKbdq08yhkcJQQiFUlJLFs6dRNc4=;
 b=IswMF1ydewNieW1XDxn9Fn/01rHma1hDSdQKXVwW6Zl4CXa70YK1CefYKd3/+cR3x1Gvsxw4d8jGVFbTF/747h838P7c4ji1NAfl2HT4l9C6hxsanA+BbdHvQLRctBrsDAx/n5Aot+75QPr0XADAWDdmkrJ9KL6E581HncuukccIoSx8gSA2LG2+amyBtacAJ72wyFP9u3x0dIsO3k2mIIceZNn8hOcnQTqp0sW+8Ki/QNVhHOcMTdrPL1tVodWfJtBPVAvpKUMJulUtHcGWb5Vn4TxkQt4kzETGacZolVH99Q+QpM/75x6iUiit+dGNZW0jUc7KdLY+R9wRQnOcUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=duvHtm8oCbdNlvxLKbdq08yhkcJQQiFUlJLFs6dRNc4=;
 b=nlTqmfILgXwpJa64EwILq4w9Y3hV1z5PVj5xOgoksX2WgU+hfdl25CHN2wPiYGZkPaTXeoWDcfQumwSMk3y7K5/tsNQXDFDife/Qx+5W6JNWVCAq0U7odljJhEL7m/jxltGl1y0PfMzxGdKTe/uRl7jHEumbfpHJMK4lxBnSh4c=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SA1PR12MB9245.namprd12.prod.outlook.com (2603:10b6:806:3a7::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.19; Thu, 22 Aug
 2024 08:11:47 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.7875.019; Thu, 22 Aug 2024
 08:11:47 +0000
Message-ID: <194af8a6-fd7e-4d4d-a773-305fd9fd0a4a@amd.com>
Date: Thu, 22 Aug 2024 10:11:41 +0200
User-Agent: Mozilla Thunderbird
To: Huan Yang <link@vivo.com>, "Kasireddy, Vivek"
 <vivek.kasireddy@intel.com>, Gerd Hoffmann <kraxel@redhat.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20240805032550.3912454-1-link@vivo.com>
 <20240805032550.3912454-2-link@vivo.com>
 <IA0PR11MB718542BA11A38A5BD40ECB00F8BB2@IA0PR11MB7185.namprd11.prod.outlook.com>
 <de3f3cc4-5e0a-4524-902f-4913addba227@vivo.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <de3f3cc4-5e0a-4524-902f-4913addba227@vivo.com>
X-ClientProxiedBy: FR2P281CA0148.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:98::6) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SA1PR12MB9245:EE_
X-MS-Office365-Filtering-Correlation-Id: d9204903-6c04-456b-b856-08dcc282112e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?d3F1eld6c0kvQVQvRXNyMzY1TS9lVHVJSzRvazZ0L21IdUlvbnFlZ2dvTzl3?=
 =?utf-8?B?dWpSV3RkZURzZlNCZEMvbXF4NFdhTGRmSU9CQk9SallLYXB5ZmNtQWZUeThr?=
 =?utf-8?B?ZDJXUk42QWJiYVJYakNuaEpwaG5vQ290dXNiUWNET0NDdGhqbkJLMmIvZHJX?=
 =?utf-8?B?Q3VCK0tsQVh1ZlpNaXZDZnArM296T1VyOG52cjVpNmdmNk5OeGhibjhPTFVK?=
 =?utf-8?B?SElOU0hCRVFPaUdrbE96NWhxdUlsajZNNlFBblhqd2wreXQ2WFVZQkIzTFpP?=
 =?utf-8?B?VHBoQmg2ZWMxUVJ5S0F3ZzZPZGRVdmh5UkRybUdYM1JOczBUaWZDSWF5NUpa?=
 =?utf-8?B?dnU0RnpMSFZzb2NYRVgvUzJKdGdiUHo2RXk0TDN1aHRpR0RNR0dpaG5rdkVj?=
 =?utf-8?B?TVNob2tLcnlHUVFxQ3FIeHpGb3dya1k1NjZzZkhjMnNNcGN5dHNTeElZVVcr?=
 =?utf-8?B?OHdxOXZYZUNtWVBkb0t4VERhbE1MZ1JSUmJEK1RnMFBqR29XMnR5WU01WE1p?=
 =?utf-8?B?RzJlbW03TE82VlRNUXVoSE9DSlRZcFpnODdtZ21LUXBncjlDMENGM2lhNEZF?=
 =?utf-8?B?dFF1TkY2dTJYeFA0Q3FZRUVwSE8zWVhONXZSbmNQdEtkbmRQTXM1VFVxdkZ5?=
 =?utf-8?B?OVMzY1FxMTNmQTBlaTBRU2l4N3YwaWMwSVk2SVp5dUJxVTd3akowd09NaTZw?=
 =?utf-8?B?NXBBU3BlY0M0TlEwdzRZR1BLTWQ4SG11VTkzY1JuS0hueTYxc09ZMmdjY1BO?=
 =?utf-8?B?cTNXTGg3NlhUM09Kd09KRVhwS2xXUHQ1c0JHQ21sT1NjNUdWTHQzWWNUeHVv?=
 =?utf-8?B?THlEL0Y4KzBWaVE5OEZpcmdOKzlqM1dJTzZMakEvbmVWSDM3OGdIcndvV25U?=
 =?utf-8?B?Zk1hWUlmM3VuVlFnUU9aUzRlNWFiZVhKVFc4MUFHOGllcUtRNnZpV2loWVdK?=
 =?utf-8?B?eGtNajhqU3IzNlc4NzgvMWlNemV6dDZ5RENFc1JteXI2SFRudnJ6VzZjS2F1?=
 =?utf-8?B?U2NlcjdxcWpDNG9jaFVzNUxXZFdML0tISVFuRG9hZ1c4cTI2ZDJiNG5GRGpM?=
 =?utf-8?B?NnVFVFo2R3FYYURXbjMwZnJBM3J3Zi9Jb2lielRrQ25QYXh6UlVja2VOV05m?=
 =?utf-8?B?L0ZvVTYvdFhBcVBLUzRLeGovekJMMWN5Qkx3b1loMFloUFA4RWM4bElhNlYw?=
 =?utf-8?B?Sk1FNm9hZ1FKUGlpU0lVejV2QlZnUHVJRGltM1NkUXVTbEhkLy9qU0V1c2ta?=
 =?utf-8?B?L3AzakFRaC9zc2xnWnZVbVg1bWFoVVEzRFNEb25LeHpIUGRPMDBiT3dPcHoy?=
 =?utf-8?B?cUxWdGtmdGdWZ05nU1JoNmNwWkY0azJENHh1UXVqaWtXbnpxcjZFM0F1T0Zj?=
 =?utf-8?B?UlVNMk9xQWx0RnE2elJWajBuMlpLM0xOT2tLYWFTUFNrREFraUxVMDF0b29Q?=
 =?utf-8?B?SkVPdklKaVRpYlR1R0pVbGN4RDZ1eVNtTU9pU3ExNmlEOTJMZjE0aEJRSXFT?=
 =?utf-8?B?RndGSTFHTW55MWtMTWFVM29Tb1U3RU53NE1BU3RqQ2dxdWI2bUVLSnUvVDl4?=
 =?utf-8?B?MDhUQ293RUlGWGsxTFkyMjBCV3JtUjdBOElWY1d2OGlKYUU0b01NTU1Ec1Ra?=
 =?utf-8?B?U2ZOWlBkQWU5RmVoWHpwZzluWU5JbUEzcTRWQjlRV2NEbGZVWTYvUXIzMDJr?=
 =?utf-8?B?SURsaVZSalJnSzRIRmZnNVRkZGFDN3E0QW5NQ3RmclZvbmx0SnBWSXpCL0ZS?=
 =?utf-8?B?MWtyUncreXM5VzhJaVFuY3RGcGZOWVpHWDZkODJBcERSaU4vK2loTHlyTCt6?=
 =?utf-8?B?TnlhbjR4OHMrZXFaUWFtUT09?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WFlybVA0SHBack52UXJFWTcvU05jVnY4c0tneUdQVjIwMVh1SVFXUksvRXg0?=
 =?utf-8?B?SDZRR0lDdzdMT25GdUltU1ZqUGhLaE0wczlkemF2TTgrdkl1MC9rRXdKMnZo?=
 =?utf-8?B?NHFFTjF1S244ek9LeXEyMjIxQTVlVHpUKytjdFNIdkZkMFVQbjdrVkJnb3Qr?=
 =?utf-8?B?K1NrdjhaenZCQlZodUh6WTBwMnYyZ2ZUY0RCdkVEeFNPRzRkRjA4b0tTZjlB?=
 =?utf-8?B?NisxZDJvdUtZcFBvN1ZrVVZPMjZtK0JZVkR1L0V3aXc3UC9XK2Y1dE81ZGZx?=
 =?utf-8?B?SEZWTGF5RGxMYjk3MWE2YkIyRC9tQU1BYTNZY2I1WjNSM202MytXejZoL3Fi?=
 =?utf-8?B?UFBnQWUzMjlNdTZNbmd5enU2cHNTdWJUdDVDNjkvYmhiVnpxajZSTjdzN0Zn?=
 =?utf-8?B?SUhVSVN5aEpLanZBMjJ5Qmhyc1VGWkZZaitCTGR1Y1NLZEVYZDhrdEJjdGRq?=
 =?utf-8?B?YmJkRk1nMDdFVlJOdkVqSHZMa08vdmN2SW5DNGFaRlRvUjZSdk1xV1g4Z0NC?=
 =?utf-8?B?d2JKWUZGZ0RxS3ZJSlMxc3FlWTNXRHZ4UFlTSkNxendaS1U0Q2tJODVEZFQ1?=
 =?utf-8?B?K3dmMGFkV1phOFpUS0tRWjRhZGlNUlBXVjVXY3Z6dk5DVnoyWFlwNHNTZ2Y5?=
 =?utf-8?B?Z0V6TWxMdjlEUm0rNXBGcHdPRWRGMDdKVE5Xck9mTkpQM1EzVWNhRGhBWDJq?=
 =?utf-8?B?VUM4bU1ZekNvRHBZdUxWa2RZZjRiSGVzUnZ2TlF4VEZVS3lXcjBjOS9oSGhk?=
 =?utf-8?B?Wnl1a1o2UDBOb2d2dWo2TEtpK1BKRk1kMnJ0VkZ0Y2hCb2l6OEprRFJQa2Iw?=
 =?utf-8?B?VFFsbDdpL2x4bkxwa3pkZXhqeU56WFEyZG1NV2hLNGZkbDYzcVNEbzFrQkR2?=
 =?utf-8?B?cGt2Zm9YeUJQbTQ4Q3lpSmM0VXZodmhsci82K1FjbEkwclFob2lMSkNwbVdO?=
 =?utf-8?B?Wk96dFlrYy9XazlLdzdWeTBQMWUrWHR6bkEyT2Q3VFhmZW9GZnV1ZEtjM056?=
 =?utf-8?B?aWExd1JIRnRwSFYzUEVWeDltQ1lkTzhsNVYwRUNlNjJzMzZ0c1NQMUZvNVpv?=
 =?utf-8?B?bmNET0YzVVBZZy81S0NqMkF4L0pCQVR3eU1OUDVGdmFpSjRQYVFHaittNW44?=
 =?utf-8?B?Qkc1WExiamh1WGFGZ2NNOXVHQzhDcWFFVDlteklPOVR5VVBZTUZHZjRid2pO?=
 =?utf-8?B?UW0vTDFQZTNoa1BKMVIweWZiUkJlTnkrdkpGTnVhc09mVVJBT2hsamV2bXUx?=
 =?utf-8?B?dndlc1ByY1p4Smxpb1ovSVkxOGk0V2VubzJpRjEzdHpTbEsrc0d6Qmwzd252?=
 =?utf-8?B?TjJhQXpwaWFSVDBUV0NiY1pPQTNhME9BVEJEZ0IwTmNVNERzZ1B2aDBORUR1?=
 =?utf-8?B?d2d6YnJqLzhxcDhXaGVvY0EvZzl0d01NbEN1VGk1M0JEaTdCaS9PbXJtejdP?=
 =?utf-8?B?RDZHZk5CcGJYd01CQzl5SXA1MVBRY3VoV1FuNmNRWG5aTkhFRDdobklPL0hN?=
 =?utf-8?B?b08rMnFSNVlxWko0QzhHS0NmZ0pBYzkzUDR0QlM2Z3U5RmNKajJ4VHBXVnZv?=
 =?utf-8?B?bnlES0NTbWVaaUd1YzNzVFhPL2xXZEtjY2ZPc3VSc01OUGtXMElFRnhWSnVE?=
 =?utf-8?B?V1E3cUgxR1c4UnNtYzV1UEpRcFB4RGc4NDJSQWo4VzhJOHdkSkZGOWlDOXgx?=
 =?utf-8?B?WEtlUHkweWY4bmdoeld3bjNaOXVZYzRHcUVMeGVsaFVPbDc3Nk9uRUlKREVU?=
 =?utf-8?B?bzNPWW9jbjRDTzhvYkVNMzZJc055TDQ5UjZCVmpDd0NyMFprUHQwYmxXd1ls?=
 =?utf-8?B?dmxHcW5Nd04zc1hrRG1TcE55UFNjZ3k5NW9CQ0tlVThxK3pkU1Y2cXFQWmhk?=
 =?utf-8?B?T1VyT3dYazdZcXVMVXJMSGNPYWhmUXNvNUYrbDdRU0R2dDhJNkZLVENkaHNj?=
 =?utf-8?B?MjlaSnJyYkRMKzBiTGpqMTNJNUMzSFJyMlQzZ2w3Q0hnTVBLb2xvdmVNZ1p6?=
 =?utf-8?B?bkhHRDRoeTJHd1A1NEhVTTRhcFlOelg1UURyQ0VSOFpVemdiZUFJNHZqR3Vn?=
 =?utf-8?B?WWNidmhtMEVOQTFIZVgyRDNkMGNKODdLSkJjV3hlbjAyUDBic0JzL3NKL21O?=
 =?utf-8?Q?VyV1KWOoW1xdtbfXkNm3iVFss?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9204903-6c04-456b-b856-08dcc282112e
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2024 08:11:47.0693
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /Lpze0nzJz2UH1p5DrZFcB2RvoOVJmsnfT01ea/R/fh5VKcD3Q/8LATGwX1RrJM/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB9245
X-Rspamd-Action: no action
X-Spamd-Bar: ----
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8AFE73F478
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.220.68:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: B7YKXZRYISOG62YMK3XOKELQZ5QETJB5
X-Message-ID-Hash: B7YKXZRYISOG62YMK3XOKELQZ5QETJB5
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "opensource.kernel@vivo.com" <opensource.kernel@vivo.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/4] udmabuf: cancel mmap page fault, direct map it
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B7YKXZRYISOG62YMK3XOKELQZ5QETJB5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTIuMDguMjQgdW0gMDQ6NDkgc2NocmllYiBIdWFuIFlhbmc6DQo+DQo+IOWcqCAyMDI0Lzgv
MTAgOToyOCwgS2FzaXJlZGR5LCBWaXZlayDlhpnpgZM6DQo+PiBbU29tZSBwZW9wbGUgd2hvIHJl
Y2VpdmVkIHRoaXMgbWVzc2FnZSBkb24ndCBvZnRlbiBnZXQgZW1haWwgZnJvbSANCj4+IHZpdmVr
Lmthc2lyZWRkeUBpbnRlbC5jb20uIExlYXJuIHdoeSB0aGlzIGlzIGltcG9ydGFudCBhdCANCj4+
IGh0dHBzOi8vYWthLm1zL0xlYXJuQWJvdXRTZW5kZXJJZGVudGlmaWNhdGlvbiBdDQo+Pg0KPj4g
SGkgSHVhbiwNCj4+DQo+Pj4gVGhlIGN1cnJlbnQgdWRtYWJ1ZiBtbWFwIHVzZXMgYSBwYWdlIGZh
dWx0IG1lY2hhbmlzbSB0byBwb3B1bGF0ZSB0aGUNCj4+PiB2bWEuDQo+Pj4NCj4+PiBIb3dldmVy
LCB0aGUgY3VycmVudCB1ZG1hYnVmIGhhcyBhbHJlYWR5IG9idGFpbmVkIGFuZCBwaW5uZWQgdGhl
IGZvbGlvDQo+Pj4gdXBvbiBjb21wbGV0aW9uIG9mIHRoZSBjcmVhdGlvbi5UaGlzIG1lYW5zIHRo
YXQgdGhlIHBoeXNpY2FsIG1lbW9yeSBoYXMNCj4+PiBhbHJlYWR5IGJlZW4gYWNxdWlyZWQsIHJh
dGhlciB0aGFuIGJlaW5nIGFjY2Vzc2VkIGR5bmFtaWNhbGx5LiBUaGUNCj4+PiBjdXJyZW50IHBh
Z2UgZmF1bHQgbWV0aG9kIG9ubHkgc2F2ZXMgc29tZSBwYWdlIHRhYmxlIG1lbW9yeS4NCj4+Pg0K
Pj4+IEFzIGEgcmVzdWx0LCB0aGUgcGFnZSBmYXVsdCBtZWNoYW5pc20gaGFzIGxvc3QgaXRzIHB1
cnBvc2UgYXMgYSANCj4+PiBkZW1hbmRpbmcNCj4+PiBwYWdlLiBEdWUgdG8gdGhlIGZhY3QgdGhh
dCBwYWdlIGZhdWx0IHJlcXVpcmVzIHRyYXBwaW5nIGludG8ga2VybmVsIA0KPj4+IG1vZGUNCj4+
PiBhbmQgZmlsbGluZyBpbiB3aGVuIGFjY2Vzc2luZyB0aGUgY29ycmVzcG9uZGluZyB2aXJ0dWFs
IGFkZHJlc3MgaW4gDQo+Pj4gbW1hcCwNCj4+PiB0aGlzIG1lYW5zIHRoYXQgdXNlciBtb2RlIGFj
Y2VzcyB0byB2aXJ0dWFsIGFkZHJlc3NlcyBuZWVkcyB0byB0cmFwIA0KPj4+IGludG8NCj4+PiBr
ZXJuZWwgbW9kZS4NCj4+Pg0KPj4+IFRoZXJlZm9yZSwgd2hlbiBjcmVhdGluZyBhIGxhcmdlIHNp
emUgdWRtYWJ1ZiwgdGhpcyByZXByZXNlbnRzIGENCj4+PiBjb25zaWRlcmFibGUgb3ZlcmhlYWQu
DQo+Pj4NCj4+PiBUaGUgY3VycmVudCBwYXRjaCByZW1vdmVzIHRoZSBwYWdlIGZhdWx0IG1ldGhv
ZCBvZiBtbWFwIGFuZA0KPj4+IGluc3RlYWQgZmlsbHMgaXQgZGlyZWN0bHkgd2hlbiBtbWFwIGlz
IHRyaWdnZXJlZC4NCj4+IEkgdGhpbmsgaXQgbWFrZXMgc2Vuc2UgdG8gcG9wdWxhdGUgdGhlIHZt
YSB3aGVuIHRoZSBmaXJzdCBmYXVsdCBpcyANCj4+IHRyaWdnZXJlZA0KPj4gaW5zdGVhZCBvZiBk
b2luZyBpdCBkdXJpbmcgbW1hcC4gVGhpcyBpcyBiZWNhdXNlIHRoZSB1c2Vyc3BhY2UgbWF5IGNh
bGwNCj4+IG1tYXAgYnV0IGRvZXMgbm90IGFjdHVhbGx5IHVzZSB0aGUgZGF0YS4gUWVtdSB3b3Jr
cyB0aGlzIHdheSANCj4+IGRlcGVuZGluZyBvbg0KPiBZZXMsIHRoZSBpZGVhIG9mIHRoaXMgaXMg
YWxzbyByZWxhdGVkIHRvIHRoZSBjb25jZXB0IG9mIHBhZ2UgZmF1bHQuDQo+DQo+IEhvd2V2ZXIs
IHRoZSBmb2xpbyBoYXMgYWxyZWFkeSBiZWVuIHBpbm5lZCBkdXJpbmcgY3JlYXRpb24uIEkgdGhp
bmsgDQo+IHVzaW5nIHRoZSBwYWdlIGZhdWx0DQo+DQo+IGFnYWluIGlzIHRoZW9yZXRpY2FsbHkg
c291bmQsIGJ1dCBpdCBtYXkgbm90IHNhdmUgbWVtb3J5LCBvbmx5IA0KPiBpbmNyZWFzZSBjb250
ZXh0IHN3aXRjaCBvdmVyaGVhZC4NCg0KVGhpcyBpcyBub3QgYWJvdXQgc2F2aW5nIG1lbW9yeSBi
dXQgcmF0aGVyIGNvcnJlY3RuZXNzIGFuZCBkZXNpcmVkIGhhbmRsaW5nLg0KDQpBIG1tYXAoKSBv
cGVyYXRpb24gaXMgZm9yIGNyZWF0aW5nIHRoZSBWTUEgYW5kICpub3QqIGZpbGxpbmcgdGhlIHBh
Z2UgDQp0YWJsZXMuIFRoYXQgbWlnaHQgd29yayBidXQgaXMgbm90IHJlYWxseSBhIGRlc2lyZWQg
YXBwcm9hY2guDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4NCj4+IHdoZXRoZXIgb3Bl
bmdsIGlzIGF2YWlsYWJsZSBpbiB0aGUgZW52aXJvbm1lbnQgb3Igbm90Lg0KPj4NCj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBIdWFuIFlhbmcgPGxpbmtAdml2by5jb20+DQo+Pj4gLS0tDQo+Pj4gwqAgZHJp
dmVycy9kbWEtYnVmL3VkbWFidWYuYyB8IDM5IA0KPj4+ICsrKysrKysrKysrKysrKystLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQ0KPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCsp
LCAyMyBkZWxldGlvbnMoLSkNCj4+Pg0KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYv
dWRtYWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYw0KPj4+IGluZGV4IDA0N2MzY2Qy
Y2VmZi4uNDc1MjY4ZDRlYmIxIDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi91ZG1h
YnVmLmMNCj4+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jDQo+Pj4gQEAgLTM4LDM2
ICszOCwyOSBAQCBzdHJ1Y3QgdWRtYWJ1Zl9mb2xpbyB7DQo+Pj4gwqDCoMKgwqDCoMKgIHN0cnVj
dCBsaXN0X2hlYWQgbGlzdDsNCj4+PiDCoCB9Ow0KPj4+DQo+Pj4gLXN0YXRpYyB2bV9mYXVsdF90
IHVkbWFidWZfdm1fZmF1bHQoc3RydWN0IHZtX2ZhdWx0ICp2bWYpDQo+Pj4gLXsNCj4+PiAtwqDC
oMKgwqAgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEgPSB2bWYtPnZtYTsNCj4+PiAtwqDCoMKg
wqAgc3RydWN0IHVkbWFidWYgKnVidWYgPSB2bWEtPnZtX3ByaXZhdGVfZGF0YTsNCj4+PiAtwqDC
oMKgwqAgcGdvZmZfdCBwZ29mZiA9IHZtZi0+cGdvZmY7DQo+Pj4gLcKgwqDCoMKgIHVuc2lnbmVk
IGxvbmcgcGZuOw0KPj4+IC0NCj4+PiAtwqDCoMKgwqAgaWYgKHBnb2ZmID49IHVidWYtPnBhZ2Vj
b3VudCkNCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBWTV9GQVVMVF9TSUdC
VVM7DQo+Pj4gLQ0KPj4+IC3CoMKgwqDCoCBwZm4gPSBmb2xpb19wZm4odWJ1Zi0+Zm9saW9zW3Bn
b2ZmXSk7DQo+Pj4gLcKgwqDCoMKgIHBmbiArPSB1YnVmLT5vZmZzZXRzW3Bnb2ZmXSA+PiBQQUdF
X1NISUZUOw0KPj4+IC0NCj4+PiAtwqDCoMKgwqAgcmV0dXJuIHZtZl9pbnNlcnRfcGZuKHZtYSwg
dm1mLT5hZGRyZXNzLCBwZm4pOw0KPj4+IC19DQo+Pj4gLQ0KPj4+IC1zdGF0aWMgY29uc3Qgc3Ry
dWN0IHZtX29wZXJhdGlvbnNfc3RydWN0IHVkbWFidWZfdm1fb3BzID0gew0KPj4+IC3CoMKgwqDC
oCAuZmF1bHQgPSB1ZG1hYnVmX3ZtX2ZhdWx0LA0KPj4+IC19Ow0KPj4+IC0NCj4+PiDCoCBzdGF0
aWMgaW50IG1tYXBfdWRtYWJ1ZihzdHJ1Y3QgZG1hX2J1ZiAqYnVmLCBzdHJ1Y3Qgdm1fYXJlYV9z
dHJ1Y3QNCj4+PiAqdm1hKQ0KPj4+IMKgIHsNCj4+PiDCoMKgwqDCoMKgwqAgc3RydWN0IHVkbWFi
dWYgKnVidWYgPSBidWYtPnByaXY7DQo+Pj4gK8KgwqDCoMKgIHVuc2lnbmVkIGxvbmcgYWRkcjsN
Cj4+PiArwqDCoMKgwqAgdW5zaWduZWQgbG9uZyBlbmQ7DQo+Pj4gK8KgwqDCoMKgIHVuc2lnbmVk
IGxvbmcgcGdvZmY7DQo+Pj4gK8KgwqDCoMKgIGludCByZXQ7DQo+Pj4NCj4+PiDCoMKgwqDCoMKg
wqAgaWYgKCh2bWEtPnZtX2ZsYWdzICYgKFZNX1NIQVJFRCB8IFZNX01BWVNIQVJFKSkgPT0gMCkN
Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRUlOVkFMOw0KPj4+DQo+
Pj4gLcKgwqDCoMKgIHZtYS0+dm1fb3BzID0gJnVkbWFidWZfdm1fb3BzOw0KPj4+IC3CoMKgwqDC
oCB2bWEtPnZtX3ByaXZhdGVfZGF0YSA9IHVidWY7DQo+Pj4gLcKgwqDCoMKgIHZtX2ZsYWdzX3Nl
dCh2bWEsIFZNX1BGTk1BUCB8IFZNX0RPTlRFWFBBTkQgfA0KPj4+IFZNX0RPTlREVU1QKTsNCj4+
PiArwqDCoMKgwqAgZm9yIChwZ29mZiA9IHZtYS0+dm1fcGdvZmYsIGVuZCA9IHZtYS0+dm1fZW5k
LCBhZGRyID0gdm1hLQ0KPj4+PiB2bV9zdGFydDsNCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgIGFk
ZHIgPCBlbmQ7IHBnb2ZmKyssIGFkZHIgKz0gUEFHRV9TSVpFKSB7DQo+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBzdHJ1Y3QgcGFnZSAqcGFnZSA9DQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZm9saW9fcGFnZSh1YnVmLT5mb2xpb3NbcGdvZmZdLA0K
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB1YnVmLT5vZmZzZXRzW3Bnb2ZmXSA+PiBQQUdFX1NISUZUKTsNCj4+IFBsZWFz
ZSBkb24ndCB1c2Ugc3RydWN0IHBhZ2UgcG9pbnRlcnMsIGdpdmVuIHRoZSByZWNlbnQgY29udmVy
c2lvbiB0byANCj4+IHVzZQ0KPj4gb25seSBmb2xpb3MgaW4gdWRtYWJ1ZiBkcml2ZXIuIEkgdGhp
bmsgd2hhdCB5b3UgYXJlIHRyeWluZyB0byBkbyANCj4+IGFib3ZlIGNhbg0KPj4gYmUgZG9uZSB1
c2luZyBvbmx5IGZvbGlvcy4NCj4gWWVzLCBqdXN0IHVzZSBwZm4uIENvbnNpZGVyIG9mIEhWTywg
bXVzdCB1c2UgdGhpcy4NCj4+DQo+Pj4gKw0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
cmV0ID0gcmVtYXBfcGZuX3JhbmdlKHZtYSwgYWRkciwgcGFnZV90b19wZm4ocGFnZSksDQo+Pj4g
UEFHRV9TSVpFLA0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB2bWEtPnZtX3BhZ2VfcHJvdCk7DQo+PiBDb3Vs
ZCB5b3UgcGxlYXNlIHJldGFpbiB0aGUgdXNlIG9mIHZtZl9pbnNlcnRfcGZuKCkgaGVyZSwgZ2l2
ZW4gdGhlIA0KPj4gc2ltcGxpY2l0eSwNCj4+IGFtb25nIG90aGVyIHJlYXNvbnM/DQo+IEkgd2ls
bCBtYWtlIHRoZSBjb3JyZWN0aW9uLg0KPg0KPiBUaGFua3MuDQo+Pg0KPj4gVGhhbmtzLA0KPj4g
Vml2ZWsNCj4+DQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAocmV0KQ0KPj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7DQo+Pj4g
K8KgwqDCoMKgIH0NCj4+PiArDQo+Pj4gwqDCoMKgwqDCoMKgIHJldHVybiAwOw0KPj4+IMKgIH0N
Cj4+Pg0KPj4+IC0tIA0KPj4+IDIuNDUuMg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
