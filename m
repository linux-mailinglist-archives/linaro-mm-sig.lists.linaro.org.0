Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 44AD9A1A5D1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jan 2025 15:36:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1139D44204
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jan 2025 14:36:17 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2043.outbound.protection.outlook.com [40.107.243.43])
	by lists.linaro.org (Postfix) with ESMTPS id 34A6541272
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Jan 2025 14:35:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=WRPY3nKa;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.243.43 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YnaR4yns7O2eU5LQcJewPQJdZjEnysyNjalxRO0mTfOifEJaA8Hhmq/58Hj+EfIFY/AX6ii4rM1zf/SZhW/OfjmBIYVcdELmn/jVX4JwLyb9TSXR+KHoWXrCxZPMkYM7lAt4aH4hnU0mdcGBcl73y/BI7ezoyxmUs/6w19pxHZ6vMUndZp/cfYLxn6ZoX0bboNtXtfHtdqG+7KociPhXSwPB2VBB6fdMueCrTH0nHRIpuJEk64K2B4L3CRkpD9a71UKJqOgV3D1Wa6VAlKlwl3u/qsssHg/durJgJGOfUC5p+RwRBeZ3tiFDD8konJdaGJPmrgUXBjMcWDe7SXMqJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PBU2asAspSaoQz2L4KkCEgrslSn8uS/IBFrvCiixtz8=;
 b=zVI65BbpuJBbgClojf2FSlDJsf5CpCKvrf42eMujbrDicbQp8QKAfH3od15iSY+vfpFCHvc877t+D/5+u2zAs+JLoHk2kUwWNrxJjT3UoAjvZZ9nVJbJ1iz7EWy+oR9yTfv11h3On42eooHIys+MelFxszb1U+eu2Lq+pC+ZkmvDnZC8jKYh/eQM8F4aNf4+VwsuDCA4c5QWiY0iMLGQF/mjrJCpEb5/F4YgvI4Jq/OrOnpK5r1H6m4uLTX6AIsKbLurCvtIRTP9ofYP/SYm3k0vndAKrt1LXNFTAMMBbT5v2IBot0XmP5PUa2TgY2LRUMlB9NVi/pClfm7900FO5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PBU2asAspSaoQz2L4KkCEgrslSn8uS/IBFrvCiixtz8=;
 b=WRPY3nKagUFoc8qQj6E3jiDtqUIOPG/UpcRDd4ngLtWRbpg6g3EZknxtUOFsCX9LrHrSL28KRQMs+TZhqSv6XsaI79L5u96p1tuNRRuZylNgLmvvcQDboKRO93lnmaSZcIVWJjWHoEm+4+DAWOt6aMYLOBQvEvtIjzpaukF0/gc=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH0PR12MB8007.namprd12.prod.outlook.com (2603:10b6:510:28e::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Thu, 23 Jan
 2025 14:35:29 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%6]) with mapi id 15.20.8377.009; Thu, 23 Jan 2025
 14:35:29 +0000
Message-ID: <97db03be-df86-440d-be4a-082f94934ddf@amd.com>
Date: Thu, 23 Jan 2025 15:35:21 +0100
User-Agent: Mozilla Thunderbird
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
To: Jason Gunthorpe <jgg@nvidia.com>
References: <c10ae58f-280c-4131-802f-d7f62595d013@amd.com>
 <20250120175901.GP5556@nvidia.com> <Z46a7y02ONFZrS8Y@phenom.ffwll.local>
 <20250120194804.GT5556@nvidia.com> <Z4_HNA4QQbIsK8D9@phenom.ffwll.local>
 <20250121173633.GU5556@nvidia.com> <Z5DQsyV0vwX3Iabu@phenom.ffwll.local>
 <6612c40d-4999-41a1-a4a5-74d3ff5875c3@amd.com>
 <20250122143744.GF5556@nvidia.com>
 <827315b0-23b6-4a39-88eb-34e756298d67@amd.com>
 <20250123135946.GQ5556@nvidia.com>
 <9a36fba5-2dee-46fd-9f51-47c5f0ffc1d4@amd.com>
Content-Language: en-US
In-Reply-To: <9a36fba5-2dee-46fd-9f51-47c5f0ffc1d4@amd.com>
X-ClientProxiedBy: FR3P281CA0029.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1c::22) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH0PR12MB8007:EE_
X-MS-Office365-Filtering-Correlation-Id: 75e05991-b5c6-4494-6b46-08dd3bbb2f20
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?eEdIbzFiYmFEbXA5VnV2NHM4emlOeTNjaGtXK1VKZ0hNT3VsODlidThlRUN4?=
 =?utf-8?B?QXFSRGVmaFRuN3NMRjA2QWdacmdxWlBWVzNRbENEYkNBb0Q0c3g4STRYN0N2?=
 =?utf-8?B?U3YvQmdmdUpMWnRWamVCUGw3SkZxTEM1LytvNXFOajdZZGRwNHRIbTlPK1Zs?=
 =?utf-8?B?OGgxckM2U0o3Vm9Gc3N6V1BOTTgzN0dBMk0xKy9HVmd0OThOSVZWenh2cHNE?=
 =?utf-8?B?ZzRYYmxoUjF6K3cvdHNiWE50WEc2clJDSXptSFRBRTQxeGpHeUoxK3dmcm41?=
 =?utf-8?B?VWF5MnZzZTV3NWpLUEhlYVUyQ2t0Ukw5WGhwVjljdkt4NlpuQWRveElIdytE?=
 =?utf-8?B?SUJLQ1UwK0FLczRlWllXVnhmKzJGK2Zzd1ZOMFkzT3o3S2xMaWNjY3pCVTdX?=
 =?utf-8?B?TnRDeXE1K044TGhUdnZhTTJKOXJJZ0Vpd0M0aWFYUWNDRUdKS0tFVkoxNkZv?=
 =?utf-8?B?NVlIMFZyekxIZlpSZFNpUDk5R3IvUVVIMG1md3BKKzlFYVlSTTQzRExtSjZh?=
 =?utf-8?B?UnYrNVljK3VyUDA2L0pwL1FuczBCRDd4ZVZ5N25uaXRMYU9uOHl5N1EvVVZz?=
 =?utf-8?B?dHJMNWMrQXJLbk5ZSTN5Mlh5WlJVemo5MVRlKzNzSkRyTDV6SC9XS1lQU09t?=
 =?utf-8?B?M3BuaGRCYXlYZ2hXcGg5TmliTG5mTDVwSUU0WFFPUDFkODdNMk44U0s0ZnNw?=
 =?utf-8?B?MG5CZk9Vd3hPUERlWmVDaEhaUnRzWU1PaHM3Z2NEVUUxZUkwZnF3NzgyMWFC?=
 =?utf-8?B?alVoekEzakZncVEwaFV2Nll1VjNnV25yemNmUitvYjM1am5HdXhFaE5lNmhX?=
 =?utf-8?B?SGR3eHNpYm01RTRHQXpQcUFndTlrNW1mV1dYUjlNaUY1WTlDVjMxTW5yOG5C?=
 =?utf-8?B?ZHBRNWMvbXJFdlVGa3pmQ2R5OEJxN0l6Z0YrQnNQcENibGMxVWFPZzR2RUZJ?=
 =?utf-8?B?T0F2V3VoUVFJU0ZQREgxNWNXNWtzcFdVWlVhbmlXWVNIQTI3cGtpeGZ4dW1n?=
 =?utf-8?B?RWpNZmNMeVpLWDlzL0hobEFlaXM3aDVLc3k1S2NTOVpGMVA3cmZNM0VMOHIy?=
 =?utf-8?B?alZYaVRtUDczZ2VKbmdGem9UTk1zeUVyNjJ6N0NFbitzN1lpdHBDOGZ3bE9u?=
 =?utf-8?B?UUlXemJnVWJtY1JxMWdVaEVFZVhUOEkwYjY2ZTBGL2NzZzJ2UXFkaHpoTVcy?=
 =?utf-8?B?UEdWSVo4UWJxK1dDVEN6NUJrb0VCK3lmVDBET0d4bHQzdDc3YlBYM0taNXln?=
 =?utf-8?B?d25nM3Z3Z3cwRWh0U1ZRVnhDbHpZSmRwWENLVExVYnYya3RId1d4Mkx3dHd1?=
 =?utf-8?B?eTQxMzdjdjErTnBGUG9YajdoN3F4NzJveHlnM00vci8rQ0F6SXA4YVZLU2lD?=
 =?utf-8?B?RnB5RnV4Vks5VGdlUE5kUXlOWFo3a1JtRWZubVJrS3Z4VU9DZTdIL3RkRHdm?=
 =?utf-8?B?b1h5dHAyeWcwM1podktOU1NXZVJpSnR3Y1JJUkpzNG5MMXlEVVl6SlRBOEpr?=
 =?utf-8?B?R1VnVW83RFVHRWZRSVgzQ05nbUxjM1ZOOXpGWHZ0am4wQWNWQkpSVTE0MzZ6?=
 =?utf-8?B?b2wrTUFlMGlJbE11RnpaQ212L1lZbTRmVGc3eUZ2dGR0dHpneEtLblY4dDJT?=
 =?utf-8?B?RWkrbzkyMGQvS0xSY3dsY1ZZZjd2OXUwOG1uUUZWZVlmK01pczJXQjFSSFNy?=
 =?utf-8?B?QjFJaEtuYm82VVh2dFlCNFZCWHNpcVhkemlFekV3dnduQjRkdDh0Y01WZFBW?=
 =?utf-8?B?V0laRENlRVN4SnltTzUyWk1yeVQ1UXdyQWdvSXhydW55cVBTTUc0V2VCakpK?=
 =?utf-8?B?RlN2VEJSSU9xU0FZamJiTVpwMHBGNi92Y29vWEhMSzFMSzd0Yzh6QzQ0d3Y1?=
 =?utf-8?Q?oz9zSZ5grnQBz?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VHdickVXKzBvdHhkSHFEbFFydVlvRW9nd2c2dTF3aHdpeHVPcmpPZkNybzVM?=
 =?utf-8?B?b1psNitxbXZubHIrcFN4QkdnOHcvaWxEZ3I3bEtJNjVLZ2Yxblpjc0dNem1u?=
 =?utf-8?B?MFNocUlFSXVpQTZieUQ1ajFyeTg1OEVMNE8wajRGc1JGUzdoaUlCNFJCNWlP?=
 =?utf-8?B?VGdKbk0yT3RNTHAyL1JDOHE1cUk5bmNES3JIeWxpUjQvNG1RUTd3S1YwM0xF?=
 =?utf-8?B?VHE4NWU5YXNIUUgxZDdiL0FCbUtFaWJvbU51MHVKMDdRR2pUUzN0NnNzMTZ2?=
 =?utf-8?B?TmRnd0NoaG1ydzRTb2RsN0RQdjFFZnNYVWNwQm51V1VQSGIyZmNDcUdiZDNC?=
 =?utf-8?B?bmxvUnB0ZnFMUjNxMEcrbkZXUFNadlhHVklxd1ZlUEVObDUvM3EwOEdqSGhW?=
 =?utf-8?B?QUpRaXRMNjFzdUsvV2hsSUdIbGs1a0drbGRvTjRwcU9zT1l2QjB2MW50SXcr?=
 =?utf-8?B?ZW1heHJocGtib2lGRmNLaTJhT3BXZ1RKMEp2WXUvdGtvbUsrcmxYV3loUnM2?=
 =?utf-8?B?WHF2eTlRU1hNams4VXN3bXVRNzZOWHBKZzdkR1JCUHd1a1Nudmlxc3U3dlB2?=
 =?utf-8?B?aGlGbHBrdThBVEt2QmtMTDdmM0ZrcWR4ZEVyYlU3Q255eU5wZDlvZGRJbjVl?=
 =?utf-8?B?STdUdlQ1VXR3RWVHZlRmVnNNbVB1ZGpzYldwUzFQT1EyOXpDdG1zMVpRSExY?=
 =?utf-8?B?aXFHODJJeUhocW1EY0hqR3IyMDhOWGxyaU14T096Tkg0ckhXNlBvekhYbGRn?=
 =?utf-8?B?OVFrczdVaVlZYkN1QWg5S1dTZGtUWUg5bjR1V1lXeWdlSDR1b2FiL3Zmb3pi?=
 =?utf-8?B?QU0vL0tHeWozTVp3WVBuWUlOQklBbXhuek5tWGxObVpBZEl3MVkwY2hVTXZL?=
 =?utf-8?B?RTNoREtQUWtpQkNkcXRlMnorVk96b0Q1cGhXZkErU1c5eUc1SmNwVHBiVWdl?=
 =?utf-8?B?eUZOMHEyRC8ra0piZ2R6VnVYbDFxT05JYVczRUZYVGM0cGV6N1Q4T2Z6OUZq?=
 =?utf-8?B?U2Z0ZmJoYTNNc010cHhuYTY5aS9RM1hYSi9CTWVTbVE4OXRMUDJVWlRtN2lR?=
 =?utf-8?B?QjM2L0xrenRpNmFrTWJra0tEWVBsVm1tWEFsUGtvVFV0ejd2a3RoY25SbEwz?=
 =?utf-8?B?UFlYa1NaenlUQjJDMHRyUjdQTWFLZXNpYk1CdmVXc3YybTlDQ2Z3czd1V29j?=
 =?utf-8?B?ZlU2eDBPNlFhR0ZpbUwweUpWRXl5YnpMMHlQZng3T2lhY2hTZ3NoZDNQMzVz?=
 =?utf-8?B?N1loY3A0QjFFdWljejl4Ly80dnBBcHJDTWdhMm5hZkx4SGY2YXBFTHJMN3dK?=
 =?utf-8?B?YVJEUTMxT1RKM2M2RTVhWHRSeDJBQ1l2MnFvd2JmaFZGQm1DWTlrSjZPbVRl?=
 =?utf-8?B?SFIwcVhWMlVHWHpMOHNTM2NyMENnVHJtVFNERzlMUlFtZVU4dmJHbWI1ZUdn?=
 =?utf-8?B?VFhNT3phVEdTSUEraUVVR0VveGxWSW9VZVNCRW1BVmhZb0h0L2hHemZQcHo2?=
 =?utf-8?B?Mll6K0YwcVBESFdJblR3eTNPZTcxekZPWWhjOWZOL09Gb3Q2bkYyWTNjcTBQ?=
 =?utf-8?B?UEhpZ25yY29jcW5VaFBuK0RrSThEM2NHT0dXV0lvSnRBS2IySGRtNE10azg3?=
 =?utf-8?B?c2pyUzlSczdldlg5alRadi90SVJFcklMNVJpRlFMbzZ2STF5UW4zZk50ajgx?=
 =?utf-8?B?QjZVZVo0Z3planpMZmhRUDF3N3lKQ3RKL25ud3FkakE5YTFoU0hDQ0NjbjZ0?=
 =?utf-8?B?VmQ3eGdpWE4yazN5STlXejFGaVAzWndvY1VlVjFGckpNbnVJbGF1emI0Rm84?=
 =?utf-8?B?cnI4aUt4MXZuTDJPS2t6TDVNV2FyTzNEcmpPeCtsb3RuMlVPYUxJYUprRkls?=
 =?utf-8?B?MVZMWVNmTFFjay9wS01KNkRiZk1WT0dpZmppSFJCQmlhNUJJVnEwQ28rTjdu?=
 =?utf-8?B?UEpkWG1lU1JCZXZzMW1UakEyVXFZK0Y4bmdGVTF5L2Z0TlJzVzJIY2NTdTU2?=
 =?utf-8?B?L2UvV1NhZVA2bkd0dmp3Z3lrblBIeWg3enJJdmpzWUxDUEplNG42Zm8wN3lS?=
 =?utf-8?B?NkFtTGg3c3ZVR1JTS0pYdmNFY2pjbWJrY3prN3RtV1Z6L3YyaWRLQzV5M21J?=
 =?utf-8?Q?PrcqUxF8+rVZpFfHGIjb1tv30?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75e05991-b5c6-4494-6b46-08dd3bbb2f20
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2025 14:35:29.4933
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /0K5xjnb49a6qhjzDq+ngxjRsSFMoLxCMqgyfkvIYHha76eFjaTOgI68jOsAY3SO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB8007
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 34A6541272
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.243.43:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.243.43:from];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: U6RTHN6KQXUVUFFHIDDTZQ5TZM4T4MYO
X-Message-ID-Hash: U6RTHN6KQXUVUFFHIDDTZQ5TZM4T4MYO
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Xu Yilun <yilun.xu@linux.intel.com>, Christoph Hellwig <hch@lst.de>, Leon Romanovsky <leonro@nvidia.com>, kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, aik@amd.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U6RTHN6KQXUVUFFHIDDTZQ5TZM4T4MYO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

U2VuZGluZyBpdCBhcyB0ZXh0IG1haWwgb25jZSBtb3JlLg0KDQpBbSAyMy4wMS4yNSB1bSAxNToz
MiBzY2hyaWViIENocmlzdGlhbiBLw7ZuaWc6DQo+IEFtIDIzLjAxLjI1IHVtIDE0OjU5IHNjaHJp
ZWIgSmFzb24gR3VudGhvcnBlOg0KPj4gT24gV2VkLCBKYW4gMjIsIDIwMjUgYXQgMDM6NTk6MTFQ
TSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+Pj4+IEZvciBleGFtcGxlIHdlIGhh
dmUgY2FzZXMgd2l0aCBtdWx0aXBsZSBkZXZpY2VzIGFyZSBpbiB0aGUgc2FtZSBJT01NVSBkb21h
aW4NCj4+Pj4+IGFuZCByZS11c2luZyB0aGVpciBETUEgYWRkcmVzcyBtYXBwaW5ncy4NCj4+Pj4g
SU1ITyB0aGlzIGlzIGp1c3QgYW5vdGhlciBmbGF2b3VyIG9mICJwcml2YXRlIiBhZGRyZXNzIGZs
b3cgYmV0d2Vlbg0KPj4+PiB0d28gY29vcGVyYXRpbmcgZHJpdmVycy4NCj4+PiBXZWxsIHRoYXQn
cyB0aGUgcG9pbnQuIFRoZSBpbnBvcnRlciBpcyBub3QgY29vcGVyYXRpbmcgaGVyZS4NCj4+IElm
IHRoZSBwcml2YXRlIGFkZHJlc3MgcmVsaWVzIG9uIGEgc2hhcmVkIGlvbW11X2RvbWFpbiBjb250
cm9sbGVkIGJ5DQo+PiB0aGUgZHJpdmVyLCB0aGVuIHllcywgdGhlIGltcG9ydGVyIE1VU1QgYmUg
Y29vcGVyYXRpbmcuIEZvciBpbnN0YW5jZSwNCj4+IGlmIHlvdSBzZW5kIHRoZSBzYW1lIHByaXZh
dGUgYWRkcmVzcyBpbnRvIFJETUEgaXQgd2lsbCBleHBsb2RlIGJlY2F1c2UNCj4+IGl0IGRvZXNu
J3QgaGF2ZSBhbnkgbm90aW9uIG9mIHNoYXJlZCBpb21tdV9kb21haW4gbWFwcGluZ3MsIGFuZCBp
dA0KPj4gY2VydGFpbmx5IGRvZXNuJ3Qgc2V0dXAgYW55IHN1Y2ggc2hhcmVkIGRvbWFpbnMuDQo+
DQo+IEh1aT8gV2h5IHRoZSBoZWNrIHNob3VsZCBhIGRyaXZlciBvd24gaXQncyBpb21tdSBkb21h
aW4/DQo+DQo+IFRoZSBkb21haW4gaXMgb3duZWQgYW5kIGFzc2lnbmVkIGJ5IHRoZSBQQ0kgc3Vi
c3lzdGVtIHVuZGVyIExpbnV4Lg0KPg0KPj4+IFRoZSBpbXBvcnRlciBkb2Vzbid0IGhhdmUgdGhl
IHNsaWdodGVzdCBpZGVhIHRoYXQgaGUgaXMgc2hhcmluZyBpdCdzIERNQQ0KPj4+IGFkZHJlc3Nl
cyB3aXRoIHRoZSBleHBvcnRlci4NCj4+IE9mIGNvdXJzZSBpdCBkb2VzLiBUaGUgaW1wb3J0ZXIg
ZHJpdmVyIHdvdWxkIGhhdmUgaGFkIHRvIGV4cGxpY2l0bHkNCj4+IHNldCB0aGlzIHVwISBUaGUg
bm9ybWFsIGtlcm5lbCBiZWhhdmlvciBpcyB0aGF0IGFsbCBkcml2ZXJzIGdldA0KPj4gcHJpdmF0
ZSBpb21tdV9kb21haW5zIGNvbnRyb2xlZCBieSB0aGUgRE1BIEFQSS4gSWYgeW91ciBkcml2ZXIg
aXMNCj4+IGRvaW5nIHNvbWV0aGluZyBlbHNlICppdCBkaWQgaXQgZGVsaWJlcmF0ZWx5Ki4NCj4N
Cj4gQXMgZmFyIGFzIEkga25vdyB0aGF0IGlzIHNpbXBseSBub3QgY29ycmVjdC4gQ3VycmVudGx5
IElPTU1VIA0KPiBkb21haW5zL2dyb3VwcyBhcmUgdXN1YWxseSBzaGFyZWQgYmV0d2VlbiBkZXZp
Y2VzLg0KPg0KPiBFc3BlY2lhbGx5IG11bHRpIGZ1bmN0aW9uIGRldmljZXMgZ2V0IG9ubHkgYSBz
aW5nbGUgSU9NTVUgZG9tYWluLg0KPg0KPj4gU29tZSBvZiB0aGF0IG1lc3MgaW4gdGVncmEgaG9z
dDF4IGFyb3VuZCB0aGlzIGFyZWEgaXMgbm90IHdlbGwNCj4+IHN0cnVjdHVyZWQsIGl0IHNob3Vs
ZCBub3QgYmUgaW1wbGljaXRseSBzZXR0aW5nIHVwIGRvbWFpbnMgZm9yDQo+PiBkcml2ZXJzLiBJ
dCBpcyBvbGQgY29kZSB0aGF0IGhhc24ndCBiZWVuIHVwZGF0ZWQgdG8gdXNlIHRoZSBuZXcgaW9t
bXUNCj4+IHN1YnN5c3RlbSBhcHByb2FjaCBmb3IgZHJpdmVyIGNvbnRyb2xlZCBub24tRE1BIEFQ
SSBkb21haW5zLg0KPj4NCj4+IFRoZSBuZXcgaW9tbXUgYXJjaGl0ZWN0dXJlIGhhcyB0aGUgcHJv
YmluZyBkcml2ZXIgZGlzYWJsZSB0aGUgRE1BIEFQSQ0KPj4gYW5kIGNhbiB0aGVuIG1hbmlwdWxh
dGUgaXRzIGlvbW11IGRvbWFpbiBob3dldmVyIGl0IGxpa2VzLCBzYWZlbHkuIEllDQo+PiB0aGUg
cHJvYmluZyBkcml2ZXIgaXMgYXdhcmUgYW5kIHBhcnRpY2lhcHRpbmcgaW4gZGlzYWJsaW5nIHRo
ZSBETUENCj4+IEFQSS4NCj4NCj4gV2h5IHRoZSBoZWNrIHNob3VsZCB3ZSBkbyB0aGlzPw0KPg0K
PiBUaGF0IGRyaXZlcnMgbWFuYWdlIGFsbCBvZiB0aGF0IG9uIHRoZWlyIG93biBzb3VuZHMgbGlr
ZSBhIG1hc3NpdmUgDQo+IHN0ZXAgaW4gdGhlIHdyb25nIGRpcmVjdGlvbi4NCj4NCj4+IEFnYWlu
LCBlaXRoZXIgeW91IGFyZSB1c2luZyB0aGUgRE1BIEFQSSBhbmQgeW91IHdvcmsgaW4gZ2VuZXJp
YyB3YXlzDQo+PiB3aXRoIGdlbmVyaWMgZGV2aWNlcyBvciBpdCBpcyAicHJpdmF0ZSIgYW5kIG9u
bHkgY28tb3BlcmF0aW5nIGRyaXZlcnMNCj4+IGNhbiBpbnRlcndvcmsgd2l0aCBwcml2YXRlIGFk
ZHJlc3Nlcy4gQSBwcml2YXRlIGFkZHJlc3MgbXVzdCBub3QgZXZlcg0KPj4gYmUgc2VudCB0byBh
IERNQSBBUEkgdXNpbmcgZHJpdmVyIGFuZCB2aWNlIHZlcnNhLg0KPj4NCj4+IElNSE8gdGhpcyBp
cyBhbiBpbXBvcnRhbnQgYXJjaGl0ZWN0dXJlIHBvaW50IGFuZCB3aHkgQ2hyaXN0b3BoIHdhcw0K
Pj4gZnJvd25pbmcgb24gYWJ1c2luZyBkbWFfYWRkcl90IHRvIHJlcHJlc2VudCB0aGluZ3MgdGhh
dCBkaWQgTk9UIGNvbWUNCj4+IG91dCBvZiB0aGUgRE1BIEFQSS4NCj4+DQo+Pj4gV2UgaGF2ZSBh
IHZlcnkgbGltaXRlZCBudW1iZXIgb2YgZXhwb3J0ZXJzIGFuZCBhIGxvdCBvZiBkaWZmZXJlbnQg
aW1wb3J0ZXJzLg0KPj4+IFNvIGhhdmluZyBjb21wbGV4aXR5IGluIHRoZSBleHBvcnRlciBpbnN0
ZWFkIG9mIHRoZSBpbXBvcnRlciBpcyBhYnNvbHV0ZWx5DQo+Pj4gYmVuZWZpY2lhbC4NCj4+IElz
bid0IGV2ZXJ5IERSTSBkcml2ZXIgYm90aCBhbiBpbXBvcnRlciBhbmQgZXhwb3J0ZXI/IFRoYXQg
aXMgd2hhdCBJDQo+PiB3YXMgZXhwZWN0aW5nIGF0IGxlYXN0Li4NCj4+DQo+Pj4gSSBzdGlsbCBz
dHJvbmdseSB0aGluayB0aGF0IHRoZSBleHBvcnRlciBzaG91bGQgdGFsayB3aXRoIHRoZSBETUEg
QVBJIHRvDQo+Pj4gc2V0dXAgdGhlIGFjY2VzcyBwYXRoIGZvciB0aGUgaW1wb3J0ZXIgYW5kICpu
b3QqIHRoZSBpbXBvcnRlciBkaXJlY3RseS4NCj4+IEl0IGlzIGNvbnRyYXJ5IHRvIHRoZSBkZXNp
Z24gb2YgdGhlIG5ldyBBUEkgd2hpY2ggd2FudHMgdG8gY28tb3B0aW1pemUNCj4+IG1hcHBpbmcg
YW5kIEhXIHNldHVwIHRvZ2V0aGVyIGFzIG9uZSB1bml0Lg0KPg0KPiBZZWFoIGFuZCBJJ20gcmVh
bGx5IHF1ZXN0aW9uaW5nIHRoaXMgZGVzaWduIGdvYWwuIFRoYXQgc291bmRzIGxpa2UgDQo+IHRv
dGFsbHkgZ29pbmcgaW50byB0aGUgd3JvbmcgZGlyZWN0aW9uIGp1c3QgYmVjYXVzZSBvZiB0aGUg
UkRNQSBkcml2ZXJzLg0KPg0KPj4gRm9yIGluc3RhbmNlIGluIFJETUEgd2Ugd2FudCB0byBoaW50
IGFuZCBjb250cm9sIHRoZSB3YXkgdGhlIElPTU1VDQo+PiBtYXBwaW5nIHdvcmtzIGluIHRoZSBE
TUEgQVBJIHRvIG9wdGltaXplIHRoZSBSRE1BIEhXIHNpZGUuIEkgY2FuJ3QgZG8NCj4+IHRob3Nl
IG9wdGltaXphdGlvbnMgaWYgSSdtIG5vdCBpbiBjb250cm9sIG9mIHRoZSBtYXBwaW5nLg0KPg0K
PiBXaHk/IFdoYXQgaXMgdGhlIHRlY2huaWNhbCBiYWNrZ3JvdW5kIGhlcmU/DQo+DQo+PiBUaGUg
c2FtZSBpcyBwcm9iYWJseSB0cnVlIG9uIHRoZSBHUFUgc2lkZSB0b28sIHlvdSB3YW50IElPVkFz
IHRoYXQNCj4+IGhhdmUgdGlkeSBhbGlnbm1lbnQgd2l0aCB5b3VyIFBURSBzdHJ1Y3R1cmUsIGJ1
dCBvbmx5IHRoZSBpbXBvcnRlcg0KPj4gdW5kZXJzdGFuZHMgaXRzIG93biBIVyB0byBtYWtlIHRo
ZSBjb3JyZWN0IGhpbnRzIHRvIHRoZSBETUEgQVBJLg0KPg0KPiBZZWFoIGJ1dCB0aGVuIGV4cHJl
c3MgdGhvc2UgYXMgcmVxdWlyZW1lbnRzIHRvIHRoZSBETUEgQVBJIGFuZCBub3QgDQo+IG1vdmUg
YWxsIHRoZSBpbXBvcnRhbnQgZGVjaXNpb25zIGludG8gdGhlIGRyaXZlciB3aGVyZSB0aGV5IGFy
ZSANCj4gaW1wbGVtZW50ZWQgb3ZlciBhbmQgb3ZlciBhZ2FpbiBhbmQgcG90ZW50aWFsbHkgYnJv
a2VuIGhhbHZlIHRoZSB0aW1lLg0KPg0KPiBTZWUgZHJpdmVycyBhcmUgc3VwcG9zZWQgdG8gYmUg
c2ltcGxlLCBzbWFsbCBhbmQgc3R1cGlkLiBUaGV5IHNob3VsZCANCj4gYmUgY29udHJvbGxlZCBi
eSB0aGUgY29yZSBPUyBhbmQgbm90IGFsbG93ZWQgdG8gZG8gd2hhdGV2ZXIgdGhleSB3YW50Lg0K
Pg0KPiBEcml2ZXIgZGV2ZWxvcGVycyBhcmUgbm90IHRydXN0IGFibGUgdG8gYWx3YXlzIGdldCBl
dmVyeXRoaW5nIHJpZ2h0IGlmIA0KPiB5b3UgbWFrZSBpdCBhcyBjb21wbGljYXRlZCBhcyB0aGlz
Lg0KPg0KPiBSZWdhcmRzLA0KPiBDaHJpc3RpYW4uDQo+DQo+PiBKYXNvbg0KPg0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
