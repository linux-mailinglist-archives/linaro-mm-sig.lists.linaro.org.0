Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 79441A78866
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Apr 2025 08:56:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 89933455C8
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Apr 2025 06:56:04 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2067.outbound.protection.outlook.com [40.107.237.67])
	by lists.linaro.org (Postfix) with ESMTPS id A95A44559F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Apr 2025 06:55:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=jg7hdu3F;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.237.67 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LImXpwi9DhiGzmxi7459/RNAAsIhE6uMx0/pR+hywR3MsUmggk5Ihxx0o5LfrntO23aTwLcGjMaVUdw/lZz+0CLwei6Nwol0Y5UxCv/whN/6tIuq1n/oXknmn+N7A1wEE08b/x1CWTwRciW87ex4n8DiHb33krcVv47nbkgCu3a2BwkC46ajYB4d7yOL+f+v/U2UI+bGK54adYPFXsinq6gAjlkL4pcUSkP58jt6ie3i/DiuLJi33uNc24nyLK5S0FBzsJyUFXrun/qvh2DLQ+YBcC/LL/z8sil8NQN8CVxyijGLNeXpJUE5Auyyl+oKiGiDrvh2VzyDdSro1QEItw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3mZcEHH2DqEa02GY3M32pX5rVocJ1d74cs0948Olvb8=;
 b=J8IyVIC9kg9+x7xgDllIzaJsz7YrO7kRtj4fWUSK8M+4iF08/6IF7AqCIflcuDaxV7RAt9vpo+oagMLGUEdrOMVqU5Ex0TfGB658j5B4UNwgfwuiFwgOkzrG425Jg4s5PIkBvfF4AsI0O/oBgAJOo4td31HJ6Z/mTGWU0cZQCP0Sj1uf7Rs2hJuxXnTWC9l7Ku717v0zcgQoXgPHsLjdcyndilPFmWUdbXshI/p+lDSihrvsLmVJxfqEjKr53Xw1Zqz8/7tPj/KPoArmdsk/cegc3jawOmYMO7aleE0UIDwXUE4U7hpwG1lwLItA6CLWcMJIDVv3p8vRhxpoiSvb/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3mZcEHH2DqEa02GY3M32pX5rVocJ1d74cs0948Olvb8=;
 b=jg7hdu3F2rZHOb2a/MkuWSbGF96K8BXi/6I4JgWg114hXqYokNiOhoOPjniDVrR+TN16utfbIfD2hdMe0RmtNLpzycXGJj4b4yHRJD378fMEWM/zWIIRVxpbe4N4AyEb2B7gR2cMRVQk0sugB//B12IvwO+xqlvJLSrdn8S/Cfc=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS5PPF6BCF148B6.namprd12.prod.outlook.com (2603:10b6:f:fc00::652) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8583.41; Wed, 2 Apr
 2025 06:55:20 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8534.043; Wed, 2 Apr 2025
 06:55:20 +0000
Message-ID: <b636faa5-ab31-41d6-b957-4dfe89a2b47d@amd.com>
Date: Wed, 2 Apr 2025 08:55:15 +0200
User-Agent: Mozilla Thunderbird
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
References: <20250401155758.48855-1-robdclark@gmail.com>
 <CAF6AEGsKbjq_q7ezQTn5vyAF1cjXahgbv84uYK35BJH1KBXSpw@mail.gmail.com>
 <ff614cb7-94ca-4d74-9bbb-f97c95893113@collabora.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <ff614cb7-94ca-4d74-9bbb-f97c95893113@collabora.com>
X-ClientProxiedBy: FR4P281CA0285.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e6::19) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS5PPF6BCF148B6:EE_
X-MS-Office365-Filtering-Correlation-Id: 443945f3-b028-4a7b-cc8f-08dd71b3558d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|376014|7416014|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?eTRwRERxNzJrQlJvamJCbWIzOThISDU2S1g2WVc3OWxRNHE2ZzlEWVNQb0Z4?=
 =?utf-8?B?VDQxZXpVc0xMQmtaRlljeVVQY1B0T3JVUUhYb2NObWkycnRZcC9ocjF3OVFQ?=
 =?utf-8?B?Z3hFQnlwT3Y0emc1MWxhT1pMQ1llY0FHRWI5YXgyZlAxbjJIcnh4NnplUldh?=
 =?utf-8?B?aUxWdDRrZW14c1JFL2cwd1FySGd1ZXgzeE5KTlVpZ2owTWZuek1XQ3F0aG8z?=
 =?utf-8?B?UXl0NE9MMzhUdEU4SEtmcHZBS0t2amVFaEJWWXl5OEczUEJNYXFUaHpseC9w?=
 =?utf-8?B?WGY3aHBJcUhzbDFVbmF4cHlKaHVJcDl6eUtBdU56T3pGTUIyMm5oY2JMVmZG?=
 =?utf-8?B?b0NKR1QreHdlcXJkVldCZVY5dzBJbWVIK2ZaYjhPa1kvaFZva0V4MmxmYXV5?=
 =?utf-8?B?Q01xb1ZGRFFQQ1NzTlpZM0s1bHFLLzBnZ0N5YkZBR1dkQ29Cbk1HTTM0VDA1?=
 =?utf-8?B?MUFJT2RORllPMWRNbHJpWklEQUtXQ0dZdjA0Wm1PNVh0RXlkbjFiOVIrLzhS?=
 =?utf-8?B?K00yY2s3Uk1TWDZLRWNDL1FOUDdrVUhPNmhoVGFYSEkzQ25pR1NlamZyc3hG?=
 =?utf-8?B?VW1nZndUaVRyTVFUVXFUZ3NmOEsvVmFHWFM3dE9wRHpZUkcwU1VMM2tEeE1N?=
 =?utf-8?B?M21uTzk2K05HUXRNek5yWXBOaG1TaHJrbXVSODdlN3VCWG1pNmFPQ2YveGRR?=
 =?utf-8?B?N2NtWldHb3FwcllyMkZ5NHluQkY0TFB5SnNhT1VVbHY5WlYzTXhWVU5VVHBv?=
 =?utf-8?B?b1JYRzBPUnNYUlZhSFBxd0l3aCtyT0lFWklIRytZajkvdkNjbmViSjViUXZF?=
 =?utf-8?B?a1lnK3VqRXJJVGY3ZDE0OWJ4ZTVJaVBJT2w3Nm94R2hDbHJHMm8vZGdpWFhq?=
 =?utf-8?B?dHRKMTc0N3pSVjE1UUE4Vzk1OW94a2F5dmRKck5lTEJnaVVNeDhTR3RwOVVD?=
 =?utf-8?B?eEgxRlZSOENyVXlNMDRlVmhxTWUzY3hWY1pEREFjOTdNanVNZDBUNEdTTGNx?=
 =?utf-8?B?Zi9ja0tneEFwOE5BenB1MlBzRk9TbVlRd1gzdGRJNXZYRmNXVjlLMXN4d0VZ?=
 =?utf-8?B?RkxKRXNjeG0wd3UxMldCWFErbndITG04eE04WHh3dEpyTUp6dGtqRkpxMGp5?=
 =?utf-8?B?Wldwc3B0T1M1aDJGYlNETEI1dGdNcjdocG0yTVU3N3Q2KzlEY3N0VGRzZnBt?=
 =?utf-8?B?VGI1VE1SUkNVVjhaeEI3UVNlWjZMTUlCTHZ4MndpazZNUWFPQlpLNGhOQndV?=
 =?utf-8?B?K3RSM2FRZkcvSzBjUHlwYjAxTmsrZDdyL1dPdHZ3dEJZSG1RQUZJbE1ueU5j?=
 =?utf-8?B?allMSGx5aGtYWUNQMFZ1QWdPd092aWsvUzdXTy85RXZUakY3aXlRcldpZGFv?=
 =?utf-8?B?a25Vd0tSS1k1NDV1RVNHYmEvK0VKbHR1WG9OcVUxR1p5eTArZmFGNUR1ZDg2?=
 =?utf-8?B?cnNpSUxYTnhWNkxNQW5HdHp6Ymo4MXV6Z1JjaS9oeFRNc3RsVWhnSElKZnhn?=
 =?utf-8?B?YkErMlh0QUxzekVwNXR4SlpqdjM4OGhtSFEvcUlKd21NZTBWN1E0UWFNNCtX?=
 =?utf-8?B?NTQwZEJKelBVVTBVQ245YjdPeUUzTDMxNGt4K3VYeFVPUTlFTk5KTTBTNGVk?=
 =?utf-8?B?VmtobzF3eDE2SkVWNEE3UnBPMTdSdjJNWTlhUjBicFRKVjgyVGZwNDdKelJy?=
 =?utf-8?B?RTZVQTZnOU01cDlkc2YvTkd0YzYxMVY5SnZIZU9PWDVSTWZRbEs4RDA0NTQ3?=
 =?utf-8?B?L2Q0aW5oNWVKZTRRSE1SUTl4c2pVUk5xWHJZc0NJYWJJMGJJT3pYUzVnUnJs?=
 =?utf-8?B?dHN4S0R1bEQ3OWZZblhXQT09?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?M2YzNFpYUEJUQURSWXhQcCtzZjB5YmkxeU1tbU8wdGROcUphNVVTKzVGN0lQ?=
 =?utf-8?B?aWh6YWd1UGVBVWY5SUhtbUtQQm1Lek5RMWVlQVBXWVZCTXBMOU1LZDZvZS9s?=
 =?utf-8?B?WExLWksrQUxpUjlWWDdzV3Y5SmZpVUcvNmwxTitrVkFkSGh3elpnTk5GeWxV?=
 =?utf-8?B?OVJEdncxRHhSWXF6Tmx3RGVvVDBOaGNndjNOZFlKUHhrL3VvTXIxQlFXYm5T?=
 =?utf-8?B?a0lEbjQ1cmx4TGprU284SlJiRWJVbHBVbHI0eGZCNzhYNmVoZnpJRzdlWWdI?=
 =?utf-8?B?cWwzWGoyeDVTU1VXeTBxTUdVbTUwOWJDcy91VE02akVCbUNGREk0TzhBNmRs?=
 =?utf-8?B?dlEyOUZ5NU5tYUxNc0dMeWxodmJ0Lzh3OVZNaktJL1JtYXhiMDEzMkVjbjRT?=
 =?utf-8?B?cUNRMjFPc1F6cWhublN4c1JaUENUTGdaTTFPUzFxUEtuNHJycHN6amM3Vk1o?=
 =?utf-8?B?ZmRWNEVyU2JlR1BVdXFlMHNRSm4reWlaSG5QR2NqKzlFQ0c1ZjlybThHcmlO?=
 =?utf-8?B?TWdnb25pK3I5Q3VROWVTVFFVVUw0bENCaDNEcFJwb0ZYejFUVTRWYjVzUHVl?=
 =?utf-8?B?RGNqbWd1VmFBaFlMS0FaOHlNT3ArTVprNnQvYVVMWmZHdzRLN3VzOWJCQVNJ?=
 =?utf-8?B?N2JJY0s0ZE9hK0JqazNNUjZYVHFxNk1IbFpwZnhyaTVUZG03L3Z1VWk0SVpa?=
 =?utf-8?B?T0RMMXJJcitOVXBFaXl2RWZxeTI2VXp1MkxTTDdWdUwyWVdLd2pqeTlGYTlj?=
 =?utf-8?B?bUI3bWJBem40T1RMM1MxSFVtSFJ2RkhNL3BBdE16bFJ5ZE5CQ2VHL0p6eGha?=
 =?utf-8?B?cWdzSkVSSkcrUlVSdVIvbmw5TXgzNjl1a2J1bmpzbGNGOVFnYk1GTmxMZEdz?=
 =?utf-8?B?QnZqajFNSDd0Q2d6VVNBRWlBV1ZQam5BQitMVkxJelpRVXU2dXVGdzNPUERB?=
 =?utf-8?B?czFyREUwUHIydklTaFJpT0d0MVI4ZHdDUDd6R3FkeEtrdFNHclJIZzIyY1ZK?=
 =?utf-8?B?dDFqcFZ0S0xraGtkY3VCUmFyWGJadW1BZG1meGIyQ2tGRkgxVkJMdFFRcFhu?=
 =?utf-8?B?QkREM1JhRyt4QmRrYkFoV214RVpsVzYrL3RHSVF0SlJZdjNYdmdQMkdCRm1D?=
 =?utf-8?B?MU95MXBXSjc4ZzY2cm1IL3RUdVBMRWFYTUZWT2pud3labzZwWllQRElwZGZx?=
 =?utf-8?B?S1ZxWWZLSkdiaEVUc2NGbXVIdXpLYlArdEQzdmpQbExZeHlmckVWcDNWeURJ?=
 =?utf-8?B?Y1V4SktNVHpoK3hPdlhmRFZBMUJsNjhqYUU3ajlSMUNGcEVHOEJvRmNKaEpN?=
 =?utf-8?B?dmw2bWpsZ0h1cy9pQmZIVU5OK3dITVVwRTFDQ3g3U0N1QTR2TFZRRkxoeVNv?=
 =?utf-8?B?SHFyaWxRREhYdktWSHJkbkNSQmlabnNEY2hxK3JjSUU4cmtPY1NQT3hRcnZN?=
 =?utf-8?B?U3hUQ2NuQmVhbk5pUU5EN1RMMHM2a2h1a1VFTmJFaEs2SkdrOXRqTnpWdFg5?=
 =?utf-8?B?SGdlbTMwVFBvOXZlcGZyWURsSGptL0FIc09aU2loaWhIck0zc3dWQnZZamh1?=
 =?utf-8?B?WDVQR1RTMW9GUFkyR3NRQXh0TFNndkRZeVB4MDllL0xhSE9HdzB6ZXc0TEhK?=
 =?utf-8?B?OFpOdVpkcS9yVm4xVDdsL21jN3YwRjQ4N1JVWGNBVkdIR20rQWNLcHpIU3ZW?=
 =?utf-8?B?ZjdzTnhqS3lkZjB1UkRETmFrVkUwbVVJY2ZIaUVzaFR1aGpkUThSRzZNVGsz?=
 =?utf-8?B?R21sRFZwbkhzRHh5WDZocFJoZG9KQU1PaFN5TS90cWZoL21wOWs1eG9WT1dr?=
 =?utf-8?B?NFFEd2cxNW1rRmRSVHFMeElVU1dsaStxbWpZRmdOZkhzUGo5aFIrMTZFcHZF?=
 =?utf-8?B?emNKcXU1aXpuYXk3U3l1QUlVN3lEM3ZqVVpqdHBPaFpPTTlSVlpKcUR6eXBa?=
 =?utf-8?B?clUzNER0U3RjeVFvN0s1NW40aitFWFh2Ui9FN1Uwd1I1d1hSRitRWGErZ1ND?=
 =?utf-8?B?WW1WYVZmZFJYMTBZeXR6K3VpbGdERktubkRmRndmQVpyT1dTRENYRDhuVzB0?=
 =?utf-8?B?Q1JJMUVrMzFYSWpXK2dEWjFIM1lFOTVxZndwNzl5eFVYMXd5MTJzc2EyQ21U?=
 =?utf-8?Q?SvntuFwpOUHP1rHgfYc2XLHhn?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 443945f3-b028-4a7b-cc8f-08dd71b3558d
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2025 06:55:20.7495
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6Pgu1+A0Rv2UTxaoIViXYWMPH7tcC31U1Ta9V8qspe8/3axv1Otkd61i6GP3rnjr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS5PPF6BCF148B6
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A95A44559F
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.237.67:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[collabora.com,gmail.com,lists.freedesktop.org];
	RBL_SENDERSCORE_REPUT_8(0.00)[40.107.237.67:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[chromium.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: XPW7P3WLISXLAW6LURCZHKQCRJ7HKHEV
X-Message-ID-Hash: XPW7P3WLISXLAW6LURCZHKQCRJ7HKHEV
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Clark <robdclark@chromium.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_(?:buf|fence|resv)b" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_(?:buf|fence|resv)b" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6] drm/syncobj: Extend EXPORT_SYNC_FILE for timeline syncobjs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XPW7P3WLISXLAW6LURCZHKQCRJ7HKHEV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gMDEuMDQuMjUgdW0gMjI6NDYgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+IE9uIDQvMS8y
NSAyMzo0MCwgUm9iIENsYXJrIHdyb3RlOg0KPj4gT24gVHVlLCBBcHIgMSwgMjAyNSBhdCA4OjU4
4oCvQU0gUm9iIENsYXJrIDxyb2JkY2xhcmtAZ21haWwuY29tPiB3cm90ZToNCj4+PiBGcm9tOiBS
b2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+Pj4NCj4+PiBBZGQgc3VwcG9ydCBm
b3IgZXhwb3J0aW5nIGEgZG1hX2ZlbmNlIGZkIGZvciBhIHNwZWNpZmljIHBvaW50IG9uIGENCj4+
PiB0aW1lbGluZS4gIFRoaXMgaXMgbmVlZGVkIGZvciB2dGVzdC92cGlwZVsxXVsyXSB0byBpbXBs
ZW1lbnQgdGltZWxpbmUNCj4+PiBzeW5jb2JqIHN1cHBvcnQsIGFzIGl0IG5lZWRzIGEgd2F5IHRv
IHR1cm4gYSBwb2ludCBvbiBhIHRpbWVsaW5lIGJhY2sNCj4+PiBpbnRvIGEgZG1hX2ZlbmNlIGZk
LiAgSXQgYWxzbyBjbG9zZXMgYW4gb2RkIG9taXNzaW9uIGZyb20gdGhlIHN5bmNvYmoNCj4+PiBV
QVBJLg0KPj4+DQo+Pj4gWzFdIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9tZXNhL21l
c2EvLS9tZXJnZV9yZXF1ZXN0cy8zMzQzMw0KPj4+IFsyXSBodHRwczovL2dpdGxhYi5mcmVlZGVz
a3RvcC5vcmcvdmlyZ2wvdmlyZ2xyZW5kZXJlci8tL21lcmdlX3JlcXVlc3RzLzgwNQ0KPj4+DQo+
Pj4gdjI6IEFkZCBEUk1fU1lOQ09CSl9IQU5ETEVfVE9fRkRfRkxBR1NfVElNRUxJTkUNCj4+PiB2
MzogQWRkIHVuc3RhZ2VkIHVhYmkgaGVhZGVyIGh1bmsNCj4+PiB2NDogQWxzbyBoYW5kbGUgSU1Q
T1JUX1NZTkNfRklMRSBjYXNlDQo+Pj4gdjU6IEFkZHJlc3MgY29tbWVudHMgZnJvbSBEbWl0cnkN
Cj4+PiB2NjogY2hlY2twYXRjaC5wbCBuaXRzDQo+Pj4NCj4+PiBTaWduZWQtb2ZmLWJ5OiBSb2Ig
Q2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+Pj4gUmV2aWV3ZWQtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+PiBSZXZpZXdlZC1ieTogRG1p
dHJ5IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4NCj4+PiAtLS0NCj4+
PiAgZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMgfCA0NyArKysrKysrKysrKysrKysrKysr
KysrKysrKystLS0tLS0tLQ0KPj4+ICBpbmNsdWRlL3VhcGkvZHJtL2RybS5oICAgICAgICB8ICA0
ICsrKw0KPj4+ICAyIGZpbGVzIGNoYW5nZWQsIDQxIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9u
cygtKQ0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5j
IGIvZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMNCj4+PiBpbmRleCA0ZjJhYjhhN2I1MGYu
LjYzNmNkODNjYTI5ZSAxMDA2NDQNCj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNv
YmouYw0KPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5jDQo+Pj4gQEAgLTc0
MSw3ICs3NDEsNyBAQCBzdGF0aWMgaW50IGRybV9zeW5jb2JqX2ZkX3RvX2hhbmRsZShzdHJ1Y3Qg
ZHJtX2ZpbGUgKmZpbGVfcHJpdmF0ZSwNCj4+PiAgfQ0KPj4+DQo+Pj4gIHN0YXRpYyBpbnQgZHJt
X3N5bmNvYmpfaW1wb3J0X3N5bmNfZmlsZV9mZW5jZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJp
dmF0ZSwNCj4+PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
aW50IGZkLCBpbnQgaGFuZGxlKQ0KPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBpbnQgZmQsIGludCBoYW5kbGUsIHU2NCBwb2ludCkNCj4+PiAgew0KPj4+
ICAgICAgICAgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UgPSBzeW5jX2ZpbGVfZ2V0X2ZlbmNlKGZk
KTsNCj4+PiAgICAgICAgIHN0cnVjdCBkcm1fc3luY29iaiAqc3luY29iajsNCj4+PiBAQCAtNzU1
LDE0ICs3NTUsMjQgQEAgc3RhdGljIGludCBkcm1fc3luY29ial9pbXBvcnRfc3luY19maWxlX2Zl
bmNlKHN0cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2YXRlLA0KPj4+ICAgICAgICAgICAgICAgICBy
ZXR1cm4gLUVOT0VOVDsNCj4+PiAgICAgICAgIH0NCj4+Pg0KPj4+IC0gICAgICAgZHJtX3N5bmNv
YmpfcmVwbGFjZV9mZW5jZShzeW5jb2JqLCBmZW5jZSk7DQo+Pj4gKyAgICAgICBpZiAocG9pbnQp
IHsNCj4+PiArICAgICAgICAgICAgICAgc3RydWN0IGRtYV9mZW5jZV9jaGFpbiAqY2hhaW4gPSBk
bWFfZmVuY2VfY2hhaW5fYWxsb2MoKTsNCj4+PiArDQo+Pj4gKyAgICAgICAgICAgICAgIGlmICgh
Y2hhaW4pDQo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07DQo+Pj4g
Kw0KPj4+ICsgICAgICAgICAgICAgICBkcm1fc3luY29ial9hZGRfcG9pbnQoc3luY29iaiwgY2hh
aW4sIGZlbmNlLCBwb2ludCk7DQo+Pj4gKyAgICAgICB9IGVsc2Ugew0KPj4+ICsgICAgICAgICAg
ICAgICBkcm1fc3luY29ial9yZXBsYWNlX2ZlbmNlKHN5bmNvYmosIGZlbmNlKTsNCj4+PiArICAg
ICAgIH0NCj4+PiArDQo+Pj4gICAgICAgICBkbWFfZmVuY2VfcHV0KGZlbmNlKTsNCj4+PiAgICAg
ICAgIGRybV9zeW5jb2JqX3B1dChzeW5jb2JqKTsNCj4+PiAgICAgICAgIHJldHVybiAwOw0KPj4+
ICB9DQo+Pj4NCj4+PiAgc3RhdGljIGludCBkcm1fc3luY29ial9leHBvcnRfc3luY19maWxlKHN0
cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2YXRlLA0KPj4+IC0gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBpbnQgaGFuZGxlLCBpbnQgKnBfZmQpDQo+Pj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludCBoYW5kbGUsIHU2NCBwb2ludCwgaW50ICpw
X2ZkKQ0KPj4+ICB7DQo+Pj4gICAgICAgICBpbnQgcmV0Ow0KPj4+ICAgICAgICAgc3RydWN0IGRt
YV9mZW5jZSAqZmVuY2U7DQo+Pj4gQEAgLTc3Miw3ICs3ODIsNyBAQCBzdGF0aWMgaW50IGRybV9z
eW5jb2JqX2V4cG9ydF9zeW5jX2ZpbGUoc3RydWN0IGRybV9maWxlICpmaWxlX3ByaXZhdGUsDQo+
Pj4gICAgICAgICBpZiAoZmQgPCAwKQ0KPj4+ICAgICAgICAgICAgICAgICByZXR1cm4gZmQ7DQo+
Pj4NCj4+PiAtICAgICAgIHJldCA9IGRybV9zeW5jb2JqX2ZpbmRfZmVuY2UoZmlsZV9wcml2YXRl
LCBoYW5kbGUsIDAsIDAsICZmZW5jZSk7DQo+Pj4gKyAgICAgICByZXQgPSBkcm1fc3luY29ial9m
aW5kX2ZlbmNlKGZpbGVfcHJpdmF0ZSwgaGFuZGxlLCBwb2ludCwgMCwgJmZlbmNlKTsNCj4+PiAg
ICAgICAgIGlmIChyZXQpDQo+Pj4gICAgICAgICAgICAgICAgIGdvdG8gZXJyX3B1dF9mZDsNCj4+
Pg0KPj4+IEBAIC04NjksNiArODc5LDkgQEAgZHJtX3N5bmNvYmpfaGFuZGxlX3RvX2ZkX2lvY3Rs
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsDQo+Pj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdmF0ZSkNCj4+PiAg
ew0KPj4+ICAgICAgICAgc3RydWN0IGRybV9zeW5jb2JqX2hhbmRsZSAqYXJncyA9IGRhdGE7DQo+
Pj4gKyAgICAgICB1bnNpZ25lZCBpbnQgdmFsaWRfZmxhZ3MgPSBEUk1fU1lOQ09CSl9IQU5ETEVf
VE9fRkRfRkxBR1NfVElNRUxJTkUgfA0KPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgRFJNX1NZTkNPQkpfSEFORExFX1RPX0ZEX0ZMQUdTX0VYUE9SVF9TWU5DX0ZJTEU7DQo+
Pj4gKyAgICAgICB1NjQgcG9pbnQgPSAwOw0KPj4+DQo+Pj4gICAgICAgICBpZiAoIWRybV9jb3Jl
X2NoZWNrX2ZlYXR1cmUoZGV2LCBEUklWRVJfU1lOQ09CSikpDQo+Pj4gICAgICAgICAgICAgICAg
IHJldHVybiAtRU9QTk9UU1VQUDsNCj4+PiBAQCAtODc2LDEzICs4ODksMTggQEAgZHJtX3N5bmNv
YmpfaGFuZGxlX3RvX2ZkX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEs
DQo+Pj4gICAgICAgICBpZiAoYXJncy0+cGFkKQ0KPj4+ICAgICAgICAgICAgICAgICByZXR1cm4g
LUVJTlZBTDsNCj4+Pg0KPj4+IC0gICAgICAgaWYgKGFyZ3MtPmZsYWdzICE9IDAgJiYNCj4+PiAt
ICAgICAgICAgICBhcmdzLT5mbGFncyAhPSBEUk1fU1lOQ09CSl9IQU5ETEVfVE9fRkRfRkxBR1Nf
RVhQT1JUX1NZTkNfRklMRSkNCj4+PiArICAgICAgIGlmIChhcmdzLT5mbGFncyAmIH52YWxpZF9m
bGFncykNCj4+PiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQo+Pj4NCj4+PiArICAg
ICAgIGlmIChhcmdzLT5mbGFncyAmIERSTV9TWU5DT0JKX0hBTkRMRV9UT19GRF9GTEFHU19USU1F
TElORSkNCj4+PiArICAgICAgICAgICAgICAgcG9pbnQgPSBhcmdzLT5wb2ludDsNCj4+PiArDQo+
Pj4gICAgICAgICBpZiAoYXJncy0+ZmxhZ3MgJiBEUk1fU1lOQ09CSl9IQU5ETEVfVE9fRkRfRkxB
R1NfRVhQT1JUX1NZTkNfRklMRSkNCj4+PiAgICAgICAgICAgICAgICAgcmV0dXJuIGRybV9zeW5j
b2JqX2V4cG9ydF9zeW5jX2ZpbGUoZmlsZV9wcml2YXRlLCBhcmdzLT5oYW5kbGUsDQo+Pj4gLSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZhcmdzLT5m
ZCk7DQo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHBvaW50LCAmYXJncy0+ZmQpOw0KPj4+ICsNCj4+PiArICAgICAgIGlmIChhcmdzLT5wb2lu
dCkNCj4+PiArICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQo+Pj4NCj4+PiAgICAgICAg
IHJldHVybiBkcm1fc3luY29ial9oYW5kbGVfdG9fZmQoZmlsZV9wcml2YXRlLCBhcmdzLT5oYW5k
bGUsDQo+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZhcmdzLT5m
ZCk7DQo+Pj4gQEAgLTg5Myw2ICs5MTEsOSBAQCBkcm1fc3luY29ial9mZF90b19oYW5kbGVfaW9j
dGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwNCj4+PiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2YXRlKQ0KPj4+
ICB7DQo+Pj4gICAgICAgICBzdHJ1Y3QgZHJtX3N5bmNvYmpfaGFuZGxlICphcmdzID0gZGF0YTsN
Cj4+PiArICAgICAgIHVuc2lnbmVkIGludCB2YWxpZF9mbGFncyA9IERSTV9TWU5DT0JKX0ZEX1RP
X0hBTkRMRV9GTEFHU19USU1FTElORSB8DQo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBEUk1fU1lOQ09CSl9GRF9UT19IQU5ETEVfRkxBR1NfSU1QT1JUX1NZTkNfRklMRTsN
Cj4+PiArICAgICAgIHU2NCBwb2ludCA9IDA7DQo+Pj4NCj4+PiAgICAgICAgIGlmICghZHJtX2Nv
cmVfY2hlY2tfZmVhdHVyZShkZXYsIERSSVZFUl9TWU5DT0JKKSkNCj4+PiAgICAgICAgICAgICAg
ICAgcmV0dXJuIC1FT1BOT1RTVVBQOw0KPj4gb2gsIEkgc3VwcG9zZSBJIHNob3VsZCBhZGQgYSBj
aGVjayBmb3IgRFJJVkVSX1NZTkNPQkpfVElNRUxJTkU/ICBJJ2xsDQo+PiBzZW5kIGEgdjcgYSBi
aXQgbGF0ZXINCj4gQ2hyaXN0aWFuIGFscmVhZHkgYXBwbGllZCB0byBtaXNjLXRlc3QsIHBsZWFz
ZSByZWJhc2UgYW5kIG1ha2UgaXQgYXMgYQ0KPiBuZXcgcGF0Y2gNCg0KWWVhaCwgc29ycnkgSSB3
YXMgYSBiaXQgdG8gcXVpY2sgb2J2aW91c2x5Lg0KDQpPbiB0aGUgb3RoZXIgaGFuZCBJIGRvbid0
IHNlZSBhbiBpbW1lZGlhdGUgbmVlZCBmb3IgYSBjaGVjayBmb3IgRFJJVkVSX1NZTkNPQkpfVElN
RUxJTkUgaGVyZS4NCg0KVGhlIGZ1bmN0aW9ucyBzaG91bGQgd29yayBldmVuIHdoZW4gdGhlIGRy
aXZlciBkb2Vzbid0IGhhbmRsZSB0aW1lbGluZSBzeW5jb2JqIG9uIGl0J3Mgb3duLg0KDQpSZWdh
cmRzLA0KQ2hyaXN0aWFuLg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
