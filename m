Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CD7C91FED
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Nov 2025 13:31:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2BF113F8F4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Nov 2025 12:31:44 +0000 (UTC)
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012045.outbound.protection.outlook.com [52.101.53.45])
	by lists.linaro.org (Postfix) with ESMTPS id BB2303F6F2
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Nov 2025 12:31:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=Kt05Na8K;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.53.45 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y+kUG/aZCNoYHHSo8Mdgkjv5HVCuEI4Ilq/U6yMS7TcfBP/rP7rI8mFSFyt0Z7ZUFSxsFJI5I1Tlo3BiVR59ADFKCbIyeO/66TSbMUfFR2krnDSMld656OGEIe8G32nRl+2OnLXlU/q6IredYK0UCSOKzX/VMDObBUQLPfb76mItzJogVkh+CaS3nDZaHwWjAc9aWKq9OMll7Lg9LlZh6GMkB21zWAT6puwzDGgV0KVpkQSuvrJnacj2jVQlgW6Lmz+0pJ4HoSPZ6DkiT0daHTmhogTm2Ch7M8Wm333pXEN76333aEC7zWJ660bAnmq+RCJHiX4kq4XlflphCVctiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+7Su7l980YiqkMklDCxRb7I7fehxwbwVr4zwL+fx3zY=;
 b=yN3COJQQ4tagP3SkA6V2ZX0dKZZipvxIFLAEfAnMvlf3g6DHl4IZElM8ID0xGNziNn2nXKIRAATv6H8Ze0UVs5pP1I9+cdmIXbqBgFuCMjj8vQtljySGMmVVHHuJzgefyrWWyX3PA+q9QUoxQ41sM9Y8JRW8hnaFFQIyvGzBY9bO7heyRjb8FdVLR2m9zXp+zi8vAaB/atL7qci0UC5LGNm68NgWdSYsO6Nf/vllSXnHakoPwk6VihhkeHMsNpK3KbnuhlPwE1mffb67x5wesO4VoMkJFzV8VoZTpbCUoyu9p3n1cYAKcGsISZ+IpL/Qu/XC21/c+Q9pceq8Um42Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+7Su7l980YiqkMklDCxRb7I7fehxwbwVr4zwL+fx3zY=;
 b=Kt05Na8KHEEvReCP0RJGwCHHcv2uFkGuUpbN1fRtuObRQw87jaKp0J1tCAVtyXAxY9rQrc9Xszwn9Q0elc1D9JQ7vhdhrszDvTopvrvJAn05cL9qY+kg8uw04p2hXOtoBMvTl78MW73eaaeneGjRa4dYOm9AWXaJC+8yMpUlOkQ=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by BY5PR12MB4162.namprd12.prod.outlook.com (2603:10b6:a03:201::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Fri, 28 Nov
 2025 12:31:23 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9366.012; Fri, 28 Nov 2025
 12:31:22 +0000
Message-ID: <c668f830-206c-4540-add9-ce857712775d@amd.com>
Date: Fri, 28 Nov 2025 13:31:18 +0100
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, alexdeucher@gmail.com, simona.vetter@ffwll.ch,
 tursulin@ursulin.net, matthew.brost@intel.com,
 dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org
References: <20251113145332.16805-1-christian.koenig@amd.com>
 <20251113145332.16805-6-christian.koenig@amd.com>
 <f5d3be540586a471a008a730b56da26f0966f159.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <f5d3be540586a471a008a730b56da26f0966f159.camel@mailbox.org>
X-ClientProxiedBy: BN9PR03CA0224.namprd03.prod.outlook.com
 (2603:10b6:408:f8::19) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|BY5PR12MB4162:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ab40708-b19e-4e3c-9776-08de2e7a0a2d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?T3V4UmV6YjdXaHMyZWdRSGhGL0Zwc3NuQm96M3lZWnZPdi9uSzZBai9hYXdM?=
 =?utf-8?B?cTY3MTlDZWVoRE9tMFFvL2xJTHVYc2UzOVAza25jT3dMTk9COU55SjB0Y25n?=
 =?utf-8?B?cWk4VVpuQWdyVUtlenhkdWFaZUhpNHFFMDVnOG11ejEyZ2trZ3ZtZ2F6VjBt?=
 =?utf-8?B?SlkvQ29qNnNkSzUvRWphTFdQTWNnd2FaRmVCWFJZbHN0OWZ1dEFSZzVOZk1L?=
 =?utf-8?B?YWFDdU5VMlV3Y0NoNEFYbHhYVFRFd3JhcjFkd1pzYTVSSTJuUVY3cE9jS3lu?=
 =?utf-8?B?M1ZCZUl2M3VVRWJlOExMazJEUVFuMFdWcUpqZFgvanEzWmg5NFIwK0Z2bFR5?=
 =?utf-8?B?enN0cFp5YU15SDFnamFYMlhvdktTVmg5U2ZuR3ZTYXA3emJyaWVqNU1JNWFF?=
 =?utf-8?B?Ti9UM3h0K0FiTzZ3cjNZS1pJWExQbWsySGxJb3ljaWZWWFU4RUhvazQ0TTdm?=
 =?utf-8?B?MGQ0REVZU0ttdFNMdktvYmd5KzJ3SFFQbGZKYWowbnd5dFg3OGc4b2ZLLzhm?=
 =?utf-8?B?UDZSOFJCY1lXR0VpZmFhQVlmV25mb2VlSGZFa3Bhb1p2d3JmOHE0ZU5NOEpF?=
 =?utf-8?B?M3o1SUlFTnBHSlE4Mi9tVDk1RjBLK3B0QlBJSHBNM0lZdTd3YnE3bWtLUU83?=
 =?utf-8?B?VzhEOTZ2QVQzSG1zQVF5N0JQbGNvWmREOFlaUUQxL3lJSlc0aGVvcmxMVDNh?=
 =?utf-8?B?V0pIRnJGSGc0UlE1QU5QVlNBVFRUNkQ4OGlOZTMvUUxzRkRuVjk1dVBWZDY3?=
 =?utf-8?B?cXVnRWxkaFVRZ1d1SXNjMXI0Sk5URldhTXV5NzlPSlFRSE5HWE14V0hkRlg5?=
 =?utf-8?B?d0xnWStWTzdHaDE1ck05OC9HcXluWWlRVjZZYXVIc2UzWmdlNW5rM3cvU1dp?=
 =?utf-8?B?L05IMUU1Y0l2UUhJNVlIdUxQa21LRnFZQ1h6MitEVjc2TGFFY0xHb2FYbFJK?=
 =?utf-8?B?RGs3bWhOZ0UzVlRZazB3M3JySkhmQjBWSW5NZ0Z1blVoMVVvRmJPUWJqdVBN?=
 =?utf-8?B?RmljRlRkOHhtOHFPWERza1VYQWk0WEVFZG9JMDlRem9YMndDem9TbTZ1Njdh?=
 =?utf-8?B?RzhySjNGRFlwRlFMQ0VXYkZQV2hTRUtWTFh5VHFlbzZ6d0t5VFR2dW1ud2Nr?=
 =?utf-8?B?M2VyakpKSVdBNXFwQkFVMnlya1YxOE9WQ1k4SkVsd245RC9ZaThmTmNuVzQr?=
 =?utf-8?B?ZHJWRHNWTXpQSU05RTBaa0tSUldMTkFVd2dRbVBxRTZOWTB0YWc2SjZxR2xQ?=
 =?utf-8?B?MDloNUNrMWR5R25YRVJRRzU2OGp3SlBzVjNsRkN1VlZJc21IdlowNjJ3aFZ1?=
 =?utf-8?B?bTA0RStkdnM0dklheURFclhoYmJRVWI1ZDAzYkVhQ0pvOEk3Qkg5QjU2RW1P?=
 =?utf-8?B?QnpoTFhWM1VocUE4N3pDZFJLU1JWSnpBd2NXK2lQdEJHMVFlSUp6Rzc3aktT?=
 =?utf-8?B?NDRkZmd0d2drY1M1amJYeWJVekRZWkFseHloYXlNQnUwcTVWS3MveTlUbFdn?=
 =?utf-8?B?T0JrTGhCei9WZWpsSGluUkZOZUU1VFFXOGxFNURhZiszbXh0aE84TWFHYjFo?=
 =?utf-8?B?NFZhb0w1Y25uS3VUWXR3TUs2TGVqMU9MTThmVjBlcFlkZXdTckx3aGJWMGhD?=
 =?utf-8?B?RGg1M3ZzU3JITEc2QXhlaUZZOG8vSUFON2VhYll1WGxKdmloNTd1QXJyZDdi?=
 =?utf-8?B?cmlKYXp1WkNFRFFBd0E4TEpBMzJIU0tqVExnRkQ2QUl6K1BYdFlDeHVNMllu?=
 =?utf-8?B?RURaeDFJcUdKNWFEZHlGQTFGdDNEQUt3WVZCajJzQTg0OWdWb1JsSk44eTVJ?=
 =?utf-8?B?NU9LTW9wVVZTSE8xdnYzVUxYbkVRZFBVUTJJR2VtU0dVS2cxVCsyOXRFcTBX?=
 =?utf-8?B?YUtBZVI0b3EwZG1FV21RNXN1cXNBTlpIb3V5VWpUNTlqK1o3YitLS0JlRFhs?=
 =?utf-8?Q?pV6ZopQTX/NlGSH/SRGkYC+7BAluivZ5?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RVMwQVdYTHZmVVVRVmxLMTRORHlXM3FNTDNsZGFjdjUyVFJ6RDRwaXY2Tkla?=
 =?utf-8?B?RVB5VEJTaUZhWmJzZE9Wc1cvQS9tTjhhdEhPNXEyaHorbVFrUHZQZDRncERt?=
 =?utf-8?B?T3VwcThVNldGN0RFYmxscVpsN2Nibjl4Y1NvWms2cmJuTFcyRmFGb0JLa2h3?=
 =?utf-8?B?Q1E2ZU9KU1l5WEZwSkRkUnBuck9VSC9GVHU1bmREd2Q4QkxWaHhvSzlCN2wr?=
 =?utf-8?B?ZXllSVkyL25kaTV4Mzd3VEkxQ2k4bWFBQkNWRW93dFF3T0pVWUtLL3ppTC85?=
 =?utf-8?B?TytLdUxSZWRSKzRjNjI0TklnMDkxazd2eHBKT3RISm1kMHdaNG82TU5TenAx?=
 =?utf-8?B?U0hBU1BnOEJHak9MMlM4b1NHc01oNEN1Zm5XeFg1UGVCYmtUTExYUm84SkdQ?=
 =?utf-8?B?VEtLNkdpcjUwa2dlRTRTSWxueGJUTmhDY01JTVJlY3FlWWZNRU02Z3hPVzE3?=
 =?utf-8?B?YVN3bWxLWDMyWXRzYUlYYjdlSjVaeUQxc2czT0RXWTRNSU83LzVLQldjZDFC?=
 =?utf-8?B?UmF6dHFZc0MweDhYeG1Qb2Q3Smh5ZkdnM3V6Smw5bWZXSDFMeHR4ZFkyME1w?=
 =?utf-8?B?L1NOZ0tGZ09rTXJKZnNUbWdiTGJwM20velZ4YUExbnMrS0VwTXpJejBoUGZv?=
 =?utf-8?B?c2tvSzVKWSs2ZmRkVG9pUmN4VlVQWHRFK3FuVTE5aEJjS0dPMC9LUzA5d1Bh?=
 =?utf-8?B?c0JkdXRhb290c3AwUmNtbXNyK2l5SW1XM2VvaDBBYXBrTllhZWtkTGJMOFhS?=
 =?utf-8?B?Y3BxdjRXcEFUalkzODlWc0VIVmpTZzhlMWMxR21DYVhLcHdvdmlaVWx3d21P?=
 =?utf-8?B?UldIUktYWG1nZThYbWFoWCs4VE5UUFBEL00yM0lsYXNjM2lFSGkwSDZWK2l1?=
 =?utf-8?B?MkxEWGgzK0pLeDVNRVdJbFVtdzRVUEhQVUM1djI4dnNmRlV6TXVSVW5ETllo?=
 =?utf-8?B?ZHVYeUZsYXlXOU9NTjNHaU1zUE1rVWVNMVRaTzRBem90OFkrd3dkcEs4bElo?=
 =?utf-8?B?YVA2dDB3TmJZNysvelZ0UFdvanVwNjdJMy9wMTgxWERobmhkWEYvWlBvbVJF?=
 =?utf-8?B?RGVIVjc1T2RydWZjL0NGOHM3aTZtS21JQ3NLVVZlanVyUUNrZ21sWDlWRStU?=
 =?utf-8?B?ZnlYMVVLYzBVaGdzdVRlWGdNQkViandzdkZCQlVFekttNWloaDNkd2d6dEtZ?=
 =?utf-8?B?VWtxZnBzTjFJNlFEaEZUSGpTMjE4M0g0VnppNVJYUVE0ayt1dW1PTW4wdGVu?=
 =?utf-8?B?Y2hNQ09Lc3lPZXBFUlgvUHI3cFhkOHhONDF2R1FFZlA3NTE1Y0JxT1lyS1RK?=
 =?utf-8?B?d0dqMkp6bnM2dTNSVTJuVks3b0pCSWpVU0FhZzR6bDJLaE5qa3JnWFp6V2VO?=
 =?utf-8?B?YStGNmhCeHRqVkI3Z3pBOGFDL1M2NTUrSmU2NmY0L0ZTOE5MMjQ5c3plNEZk?=
 =?utf-8?B?K3FDQ1BWT3N4OVVHdkdKV3pXYklkN2JwNnpXYVcxQ2cxZUlwbTFhR0c4alZR?=
 =?utf-8?B?bXphcmI4c3BLK0lSc1pmNXcvdjNTTW01Vlc5KzVvMjRxZnNLRm1BUjJQdmph?=
 =?utf-8?B?V1BkMGREY2xOeDAvZmZqVWgxOTJqbTFNWDQ4TlVDTjJ6R0VQUWV0aG8wd3hi?=
 =?utf-8?B?RkJobTdEOEwvNkdSblNta1hHSlN6TkRrM2FseG9RVTdvNWNGOEZYTHhrUzhj?=
 =?utf-8?B?MENCZWtjMmdJM1p5a282d1RtMFVNZmxHTW4raE9RWUZBL2M0UlNtY0RrZlph?=
 =?utf-8?B?N1ZDWXN2Z2gvRnZnUXJ4NXVqWi90SnYyRWZnNFk0ZVdwdDVZK1BkcDRlR0tN?=
 =?utf-8?B?SWpMTys4SDA4WmZVUm1xeDhOSnlWWVQzU1p3dmRRMnlJckEwQkpSNXRuRjFD?=
 =?utf-8?B?N1BKa01IazloeEdONFk4Z0pPTnhLdW0yeUhQTUxrWFE5S1hTYWUyeU1ubEp5?=
 =?utf-8?B?cUxUaWl4NWR2Q1BmcVkvRTd3OFFHV0x0THBmQk1Zd29UamQ1QitRdC9iUXdW?=
 =?utf-8?B?cy9wcUk1dlA5Y3dIRGVPbHhGSjJZZjRJWWZwQjE3WkhqWit5aXJGaEJOKytB?=
 =?utf-8?B?eWlWSXU0QllWS2JDUGw3NzNqdjhMLzFuMDlHYWVwUXJZNmxETU95cjdYQ1pB?=
 =?utf-8?Q?u1hE=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ab40708-b19e-4e3c-9776-08de2e7a0a2d
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2025 12:31:22.8338
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dNfwwGas7qTbB9m/rjMxq8vBpqIlW1apYwMhnXBK7yGjLCuzQ9v/xceq1Be+8jRo
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4162
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.53.45:from];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BB2303F6F2
X-Spamd-Bar: -----
Message-ID-Hash: D5UKCKGPMHSEADO5EJFMWZDP7MW7637V
X-Message-ID-Hash: D5UKCKGPMHSEADO5EJFMWZDP7MW7637V
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 05/18] dma-buf: use inline lock for the stub fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D5UKCKGPMHSEADO5EJFMWZDP7MW7637V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMjcvMjUgMTE6NTAsIFBoaWxpcHAgU3Rhbm5lciB3cm90ZToNCj4gT24gVGh1LCAyMDI1
LTExLTEzIGF0IDE1OjUxICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gVXNpbmcg
dGhlIGlubGluZSBsb2NrIGlzIG5vdyB0aGUgcmVjb21tZW5kZWQgd2F5IGZvciBkbWFfZmVuY2Ug
aW1wbGVtZW50YXRpb25zLg0KPj4NCj4+IFNvIHVzZSB0aGlzIGFwcHJvYWNoIGZvciB0aGUgZnJh
bWV3b3JrIGludGVybmFsIGZlbmNlcyBhcyB3ZWxsLg0KPiANCj4gbml0Og0KPiBzL2ZyYW1ld29y
ay9mcmFtZXdvcmsncw0KPiANCj4+DQo+PiBBbHNvIHNhdmVzIGFib3V0IDQgYnl0ZXMgZm9yIHRo
ZSBleHRlcm5hbCBzcGlubG9jay4NCj4gDQo+IE9uIGFsbCBwbGF0Zm9ybXMgb3IganVzdCBBTUQ2
ND8NCg0KSSB0aGluayBtb3N0IGlmIG5vdCBhbGwgcGxhdGZvcm1zLiBPciBpcyBhbnlib2R5IHJl
YWxseSB1c2luZyA2NGJpdHMgZm9yIGEgc3BpbmxvY2s/DQoNCkNocmlzdGlhbi4NCg0KPiANCj4+
DQo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+DQo+PiBSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGln
YWxpYS5jb20+DQo+PiAtLS0NCj4+IMKgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIHwgMjAg
KysrKy0tLS0tLS0tLS0tLS0tLS0NCj4+IMKgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KSwgMTYgZGVsZXRpb25zKC0pDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPj4gaW5kZXggOWE1YWE5
ZTQ0ZTEzLi5lNmQyNmMyZTAzOTEgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLmMNCj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPj4gQEAgLTI0
LDcgKzI0LDYgQEAgRVhQT1JUX1RSQUNFUE9JTlRfU1lNQk9MKGRtYV9mZW5jZV9lbWl0KTsNCj4+
IMKgRVhQT1JUX1RSQUNFUE9JTlRfU1lNQk9MKGRtYV9mZW5jZV9lbmFibGVfc2lnbmFsKTsNCj4+
IMKgRVhQT1JUX1RSQUNFUE9JTlRfU1lNQk9MKGRtYV9mZW5jZV9zaWduYWxlZCk7DQo+PiDCoA0K
Pj4gLXN0YXRpYyBERUZJTkVfU1BJTkxPQ0soZG1hX2ZlbmNlX3N0dWJfbG9jayk7DQo+PiDCoHN0
YXRpYyBzdHJ1Y3QgZG1hX2ZlbmNlIGRtYV9mZW5jZV9zdHViOw0KPj4gwqANCj4+IMKgLyoNCj4+
IEBAIC0xMjMsMTIgKzEyMiw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyBk
bWFfZmVuY2Vfc3R1Yl9vcHMgPSB7DQo+PiDCoA0KPj4gwqBzdGF0aWMgaW50IF9faW5pdCBkbWFf
ZmVuY2VfaW5pdF9zdHViKHZvaWQpDQo+PiDCoHsNCj4+IC0JZG1hX2ZlbmNlX2luaXQoJmRtYV9m
ZW5jZV9zdHViLCAmZG1hX2ZlbmNlX3N0dWJfb3BzLA0KPj4gLQkJwqDCoMKgwqDCoMKgICZkbWFf
ZmVuY2Vfc3R1Yl9sb2NrLCAwLCAwKTsNCj4+IC0NCj4+IC0Jc2V0X2JpdChETUFfRkVOQ0VfRkxB
R19FTkFCTEVfU0lHTkFMX0JJVCwNCj4+IC0JCSZkbWFfZmVuY2Vfc3R1Yi5mbGFncyk7DQo+IA0K
PiBUaGF0IGNoYW5nZSBpcyB1bnJlbGF0ZWQsIGlzbid0IGl0PyBFbmxhcmdlcyB0aGUgZGlmZiBh
bmQgYnJlYWtzIGdpdC0NCj4gYmxhbWUuDQo+IA0KPj4gLQ0KPj4gKwlkbWFfZmVuY2VfaW5pdCgm
ZG1hX2ZlbmNlX3N0dWIsICZkbWFfZmVuY2Vfc3R1Yl9vcHMsIE5VTEwsIDAsIDApOw0KPj4gKwlz
ZXRfYml0KERNQV9GRU5DRV9GTEFHX0VOQUJMRV9TSUdOQUxfQklULCAmZG1hX2ZlbmNlX3N0dWIu
ZmxhZ3MpOw0KPj4gwqAJZG1hX2ZlbmNlX3NpZ25hbCgmZG1hX2ZlbmNlX3N0dWIpOw0KPj4gwqAJ
cmV0dXJuIDA7DQo+PiDCoH0NCj4+IEBAIC0xNjAsMTYgKzE1NSw5IEBAIHN0cnVjdCBkbWFfZmVu
Y2UgKmRtYV9mZW5jZV9hbGxvY2F0ZV9wcml2YXRlX3N0dWIoa3RpbWVfdCB0aW1lc3RhbXApDQo+
PiDCoAlpZiAoZmVuY2UgPT0gTlVMTCkNCj4+IMKgCQlyZXR1cm4gTlVMTDsNCj4+IMKgDQo+PiAt
CWRtYV9mZW5jZV9pbml0KGZlbmNlLA0KPj4gLQkJwqDCoMKgwqDCoMKgICZkbWFfZmVuY2Vfc3R1
Yl9vcHMsDQo+PiAtCQnCoMKgwqDCoMKgwqAgJmRtYV9mZW5jZV9zdHViX2xvY2ssDQo+PiAtCQnC
oMKgwqDCoMKgwqAgMCwgMCk7DQo+PiAtDQo+PiAtCXNldF9iaXQoRE1BX0ZFTkNFX0ZMQUdfRU5B
QkxFX1NJR05BTF9CSVQsDQo+PiAtCQkmZmVuY2UtPmZsYWdzKTsNCj4gDQo+IFNhbWUuDQo+IA0K
Pj4gLQ0KPj4gKwlkbWFfZmVuY2VfaW5pdChmZW5jZSwgJmRtYV9mZW5jZV9zdHViX29wcywgTlVM
TCwgMCwgMCk7DQo+PiArCXNldF9iaXQoRE1BX0ZFTkNFX0ZMQUdfRU5BQkxFX1NJR05BTF9CSVQs
ICZmZW5jZS0+ZmxhZ3MpOw0KPj4gwqAJZG1hX2ZlbmNlX3NpZ25hbF90aW1lc3RhbXAoZmVuY2Us
IHRpbWVzdGFtcCk7DQo+PiAtDQo+IA0KPiBJIHdvdWxkbid0IHJlbW92ZSB0aGF0IGVtcHR5IGxp
bmUgKG5pdCkuDQo+IA0KPj4gwqAJcmV0dXJuIGZlbmNlOw0KPj4gwqB9DQo+PiDCoEVYUE9SVF9T
WU1CT0woZG1hX2ZlbmNlX2FsbG9jYXRlX3ByaXZhdGVfc3R1Yik7DQo+IA0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
