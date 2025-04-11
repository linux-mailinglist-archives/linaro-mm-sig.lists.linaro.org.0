Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 86777A8557D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Apr 2025 09:31:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 53F3C461E1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Apr 2025 07:31:06 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2065.outbound.protection.outlook.com [40.107.237.65])
	by lists.linaro.org (Postfix) with ESMTPS id 73BAC445FD
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Apr 2025 07:30:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="3gqL/1ud";
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.237.65 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xxqrjH0adnz7Mj4koymnnPer7Oh7L4F1hHcI1EML+5oySvlnL2W5VHO3KArJ/PYbNbslg7JMYEY4MXr3VOBjMg0E1q6RXDhK4g6BN0reri+t4jvKOFfS9hCHiYYv5NxJLxLuEdgicCabsIfQTCYcftHF1sK0cuItD+6P+OGKkFcxkp3OFIahRglDk3G90K6yN+b85qVVpgVjoXb3tNzVhVbhf1fWUzn0SLAibOkfZSPHI1kev8jCPvqxAB53hDgO6IHkhQfw9LoNaVhJB1XoFyjJHRczB1YbKhXq3xUPEDMTRT5+mQo25kl1sIZ91lLYvv9jCJBEpy39QMZj7nBVjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zeHsgMgMRn0QsYP6x06KhMz6+isEtC9qJSITYDZytfw=;
 b=aGzSKZCQodpEeHvvSCBwXHYnYuUsW8HuUB/VT+wZoovtH046eqn8TBBPEoHMEZY2cVgQsoVEuMYnZmUXRuZNO90fP8RRKMZth34Btifkp1Y51rkz09vzHnRIIed5HUjSpSr0Wri3Nqh3UpmlXxXzhR5NlIuA/gp9/qjcXgNOw2UuK+Bqs/wO+9dNVyMhLzkaM4CUuRUQ1rOrglgl482EAtr7a+stxqqLMoxzBJBJHvnSZ51kNOnNotjueSCinWdBEps8Ccikf1E8U8ImVdLspWIzDoRUxvysB8ADSuobfiYpkBDicoqbRQxBfBZJqeRgfRaBPtbc+bwAXeCWfp+LkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zeHsgMgMRn0QsYP6x06KhMz6+isEtC9qJSITYDZytfw=;
 b=3gqL/1ud5nmdtAh9vfhoYr+ITizaSQcxf181aevWqypUUfzCP4wXVNNv+EK1+o319do54PY9ltgI42KUGHXp6PD5JKSVn5QfrLLpxwTnf5UMS7G3uqCKujf7VqFTGrJL/liT8ChENJV+S00C9E/yUtsERFx2oVOxFnOcteobdtQ=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS7PR12MB5936.namprd12.prod.outlook.com (2603:10b6:8:7f::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8632.27; Fri, 11 Apr 2025 07:30:45 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8632.021; Fri, 11 Apr 2025
 07:30:45 +0000
Message-ID: <b596c9af-c0e3-4557-b45a-462a33179235@amd.com>
Date: Fri, 11 Apr 2025 09:30:40 +0200
User-Agent: Mozilla Thunderbird
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20250410-uio-dma-v1-0-6468ace2c786@bootlin.com>
 <09a5beeb-bae3-4a00-9aff-66adf68064e6@amd.com>
 <20250410214307.361e373f@windsurf>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250410214307.361e373f@windsurf>
X-ClientProxiedBy: FR4P281CA0107.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:bb::19) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS7PR12MB5936:EE_
X-MS-Office365-Filtering-Correlation-Id: ff21f271-0146-4dbd-be1b-08dd78cac56a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|1800799024|366016|13003099007|8096899003;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?S1NSRlRUZy9OR2UrMEFPZGtvR3oydkp1NDNmbFU0enA0Si9HUFFrUVdIT0pn?=
 =?utf-8?B?KzlrbWduYTZPcU1yaHJVR3RzSnFMcW9jcUkzU3Z6azFHek9VTHZ1bzFVdnhB?=
 =?utf-8?B?QXNQdzRkVGlxL2ZVWlM2bFpqSWIwaGsra0xOczBoYm9tRjE1SFcrTGpvOVRh?=
 =?utf-8?B?Wk50WDZ5VHdhSG9yV1JpamhlamVqR0hCekZkUDBleFV2cVZVZHlLdHNXM05w?=
 =?utf-8?B?U0RkSnNwd1BWNXJTZU5QZzVxTi9ML0NwQk1MOHpIcDI0QjJnRW91dGxXUURz?=
 =?utf-8?B?YzlQSkEwdzlFZjZCQlVxekJGZ1EwRjZNQWYxc1RJUGRZc0R0cFV5bnBLa0xD?=
 =?utf-8?B?ZXkyaHFwamszMTVlcnJLNmFoNzlQMFVoSUcwVGFkUWExckZKL2s2aFoxcjdJ?=
 =?utf-8?B?YU9vWXpoK2FZWXlHZ0JwZFc1TzQ5TERGWTVQaGFFYWJyc2JnOS9sVFhOY3hD?=
 =?utf-8?B?ZTlyWllXYmhsOXdtL1FzSkIzc0hOR1paQ3M5cUQxcEJMaFYrU0dlQ21KaGph?=
 =?utf-8?B?dnhiTDdiR0ZiN2FpRnZTVHJwekVuVzhIclFYTEhRUlZpenpZczczcW56b1V1?=
 =?utf-8?B?MmxhbGN0eW9CT1pCdDk4Q3pzbW01bURuTEFReWVKbHpDdmtnVkR1bHh3cWNr?=
 =?utf-8?B?bXZwcGdJWnorb2hxemYyRTRpek8wamNiN1hZdkd0bmE2Q0hsQSs1cm1ibkpr?=
 =?utf-8?B?WXJtVEM0K2lSTUUvbXpwNnh1cnFCMmJCTHF0N3I4SlQzTnBBSnZ5b2pHNzFm?=
 =?utf-8?B?ZjZiVk1BU2RGMDdsdWo0ZmE4WFFzaVlUU0hjMjF6SE5qYXE4WFRVMExOdHBj?=
 =?utf-8?B?T29iSlhBamx2YWszbE5oMnhMZm1MaVhWMXoycm9wbStJelRxSzF0a2lzSzFs?=
 =?utf-8?B?S2IxR2pwYzlUMlJtaEk5RFBPQWEvcHBxVWhJNm5rS0VXNXQ5R0VpUUY0UUVY?=
 =?utf-8?B?R09Zamhkb0tTN3IzYzZ2U0hrQWRkTTAwRHhRZk9XU1VCaFRNdGZkT0lkVmJj?=
 =?utf-8?B?TkxBK09BWnZJSXhIYXMzMlI2WVlFT1hJT2dHSlpkU0JoazR2T2pHazVlcHBR?=
 =?utf-8?B?VW9nbXNHV3hFRlNSd2hLMUkyTlNDSXp3RHhnT3VXN0pscEMyVXo5SHVLaDJW?=
 =?utf-8?B?ZGJnby9YQTlxMExrc3FCbGd0SkNpR3dpdzA0Z29jUXZVY2pVTi9iTEZzSnl1?=
 =?utf-8?B?bkV2S1kxTUJaaVp1bFZ0TlRFYUtiaGNkcUVjOWwzbHRqNTl1YWY5VVNjT3Fw?=
 =?utf-8?B?MXNjTEp0cDVuaU5RdFIyVzFoV1RGSTM3NVlwOGxyeW1IZVNSNUR0bmNPRmhs?=
 =?utf-8?B?WTRSUXhSSDR3VXlkV3I2ZnczR3VRWjNxQXV2bWZCdlVNS2hJeFBCaU5pVmNN?=
 =?utf-8?B?N3Rvd0pYRVJUOVV5RTFRMDRleFBHWm96THp6MXBJZnZ1RUFKSXRSVUU5RUEw?=
 =?utf-8?B?M1hnbnNwV29OaithaGZNclFLR3prR0R2UXhMMUtQeXhUVnFKYkNrUUJZbGZZ?=
 =?utf-8?B?MXZSMmc1MStMVk9sSHV2VmFMdmJHWWd5NWhWWkIzeGhQcTBTWHBUcDRaMThl?=
 =?utf-8?B?TjlwMFZ4UHdYVjI0MmRyUlVSeDI1NWc0WWMyM21kUDkvMTI3RGdmRG82QXNv?=
 =?utf-8?B?Um8rbU1CM21Ib1ZrdlV6ZUhMWkJtTVQ5bk9yV094N09XMHQvd1d1YVd6VHBh?=
 =?utf-8?B?MDBPQlgxR1FKWllDUnh4Rlp5U2FKRG01TnJ0SFgrcCtDTW8xV3ZhZ0xiQXhj?=
 =?utf-8?B?b0tDZ09GcythVk0rQUlvcmpYaEhvM1F5bStubDNVWHpKZDJkaWxkVytrSFBP?=
 =?utf-8?Q?5tppV+XFYUG8bGFa63HofoxIxF02wqRPRUZjA=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(13003099007)(8096899003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eGNNSzErRFJUbU9hODdYZU9GbjZCdnNHbFRsd2d5dXF0M0NjQTVrYzl5REkw?=
 =?utf-8?B?TWliZ0hkOVN5U0pPSWc0RmlqeUpWZGw3bTl6TEZ2WnNrTTZvN2JTb3dseG5Y?=
 =?utf-8?B?UGR3TXpqU3pPOUZ1U1dPOTNyWTR1TGFxcWdVVXBFaGJleEgrTXYremN2TFMw?=
 =?utf-8?B?NDZNaTdMZ1daYjgvb3J2T2NOcnZtNEw2L2dteDg5Qkg5V0N3MGYxcVpJTGdr?=
 =?utf-8?B?L0hORWc4WnUyb3R1OGNxZjBKS3h1MHR3Vk5FQWlRVnBmOUhFTE1mcUdDQkRE?=
 =?utf-8?B?elByNkhwUjNjRmRJZjdiRFU2ZktGMFpCMm94MjlxWkxHdkVha0xTdWVORkdR?=
 =?utf-8?B?SnpEVHVqdVJyenIvQ2NDN2dCVk5SZDNIV2IxV2FCME12UlllVG10eDI1Q05H?=
 =?utf-8?B?MlRWMmxZblpvcUlEd2NQK1ZwenVwYlJpVXlOeWg4dzJ4QlBUTnYwNk1SZGdB?=
 =?utf-8?B?My96Y3hZWkNnbm85V1Arck1ZTnpOU0lpUjlPb09BM2g0UTFJNFpDYlorYnNL?=
 =?utf-8?B?TVBlOGJqNTRVZFdvcHRHRE1QR3hSTzc0eDVBUGI2N0Q5dnZJZm1naE4zM05Y?=
 =?utf-8?B?em10UFdlKzFYb3BwdXVYbklqeHY4bW5VNzEvVS9hSzJTOXM3R2JUQ2tWU1Ex?=
 =?utf-8?B?YU9MNVg5REFST3FDNFlNQkJicWNDQWw0OGVLYVhzcUlkWE4rZElIK0I5dUVN?=
 =?utf-8?B?K1d5WXdMWk9NNXNFdEIwdytiVW15QmVJRlM5dWhIMEdPYllYVWxQaERHM016?=
 =?utf-8?B?WFB3cVc5ZC9JU1c1WTYrMnE3R0MzdmhsSTcwaWhoMUFYVjUyeWtvdUpTby85?=
 =?utf-8?B?S0IzRldIMExRTGw0dm9ZQWVtdFBMRnpyVWNiNzZnelRFR2Q3aERxcVp2dTli?=
 =?utf-8?B?enBLMkJ0MUkxU3ZIY3JCQVFoRUsyUDFjdHN0YUVvK1V5MUNSY2hUSWlMWVZ4?=
 =?utf-8?B?ZHMyb212UDZJb3VVMWxuZ0ZIZzZOSlZORVo5V3QybWRTZVl1M1lQVkdmeU81?=
 =?utf-8?B?eU1PSDZlYVdKaVZuZG13NnVlR2hFNDhZOWFNdlN0cnRjUDlJZzBPUjJtNGE4?=
 =?utf-8?B?LzFrN0ZlNXlONnlOenJLYU9BLzJIZ3BSYUlTaWdubXIzZE43djFyOUQvVkRi?=
 =?utf-8?B?RUJYWm9ZbWNTMDhScjMrY1lTNjhlcGZiMjVvajVrYzBUcGVscEtrdWtNbjVo?=
 =?utf-8?B?N09FbXArZGZvekVjUHBwTEV6QmpxSVRjeDE4TC80eXlHeUg4TVNjL1owUjIr?=
 =?utf-8?B?eTZhR1NnZEZUK2ZXZnFYYUxHbGpqc0VCVW44c056NmpRTzdWV1RRMDhwZ1Bn?=
 =?utf-8?B?QTFsa21JL3JQaWdLcjRJSnlWbWM4Q0RnUmZHTUNMdDhpMVF5SlRvY0FOSlU1?=
 =?utf-8?B?QXlRZmpFcjlsbkZmTzgvRzVGNThWOUw4SjR0SmVKWi9uQzJpaFlYZW81V3cv?=
 =?utf-8?B?SUNmRjBMRE5VSWpCWS9VZSs1dzJ3emwyem5iQWRhL0Q3dEpVbmFDeFAxY09N?=
 =?utf-8?B?UmhUWWtRbDBSNXhCbkJQZzhPZmdmQmpTZG0yYWdIOFZuK01JWXdTQUhReFMz?=
 =?utf-8?B?Q0JNcm03NlNab3Q3cStkbnVWRE5FTGwzNzZhcWt4enhZenpNb0ZtcGlQYkVK?=
 =?utf-8?B?Ly9WUUxkK1ZEZGpzd2dBRnMydXdsdm5xTnU1REFlT2tSQ1dEUlg2Y2o2ekJV?=
 =?utf-8?B?TlB1S1JCelE0ZDRCenNiR09mSXNWTDJEbU1yTXF0Z1M4RDE5c3ZXM3BCcmVK?=
 =?utf-8?B?eC9jcXdpV25tZU0wZExYSUpETDB3eUJCSjB4WnlOQ1hyZ1Mzcjhpa05HWXJy?=
 =?utf-8?B?cEU3akxNeHJlQzJWRFk0cEdtaXhnMkNsSWt2S1l0MXRDcUZnQ2ZpaFFnZDNu?=
 =?utf-8?B?Z0gxWkUrVno5OTVvejRWSWhyOEtJdlMrczlyanQ3ejJvRk0weWtEVzBaQmFJ?=
 =?utf-8?B?cTJ4c1ZSbGlvcFlBV3VndmpIaVdrWDdGSnVNaFYvTHlGeDN4aTl3TkRFaHl5?=
 =?utf-8?B?Znl0R2hHMUZ0alppb2tUOURYTnNLSWRac0hPL294bnBUVDVhL0ZldGd1dTcr?=
 =?utf-8?B?Rk83UFdRb0JlWStsZzFyUlduWlZLZTNQN3BoZ3BxcGdmdisvbEFJL1FxZmZC?=
 =?utf-8?Q?wiPJUnwUFSqvP67C9tuVk40WY?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff21f271-0146-4dbd-be1b-08dd78cac56a
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2025 07:30:45.1109
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3o4dCsboTKKW8qWrMIykOTAllHt3WXILB/dL0bAYZ1VjPsW5K8be67rcGrPfODPX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB5936
X-Rspamd-Queue-Id: 73BAC445FD
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.237.65:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.237.65:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[40.107.237.65:from,2603:10b6:510:13c::22:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: AY2RXNKKGMWOD5VCX363HIYGUABYUR2A
X-Message-ID-Hash: AY2RXNKKGMWOD5VCX363HIYGUABYUR2A
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Bastien Curutchet <bastien.curutchet@bootlin.com>, Sumit Semwal <sumit.semwal@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/3] uio/dma-buf: Give UIO users access to DMA addresses.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AY2RXNKKGMWOD5VCX363HIYGUABYUR2A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============9093332282209591408=="

--===============9093332282209591408==
Content-Type: multipart/alternative;
 boundary="------------k3Sbn7YSVmluaFQCINjd3qdk"
Content-Language: en-US

--------------k3Sbn7YSVmluaFQCINjd3qdk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgVGhvbWFzLA0KDQpBbSAxMC4wNC4yNSB1bSAyMTo0MyBzY2hyaWViIFRob21hcyBQZXRhenpv
bmk6DQo+IEhlbGxvIENocmlzdGlhbiwNCj4NCj4gVGhhbmtzIGZvciB5b3VyIGZlZWRiYWNrIQ0K
Pg0KPiBPbiBUaHUsIDEwIEFwciAyMDI1IDE4OjI5OjEyICswMjAwDQo+IENocmlzdGlhbiBLw7Zu
aWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6DQo+DQo+Pj4gTWFueSBVSU8gdXNl
cnMgcGVyZm9ybWluZyBETUEgZnJvbSB0aGVpciBVSU8gZGV2aWNlIG5lZWQgdG8gYWNjZXNzIHRo
ZQ0KPj4+IERNQSBhZGRyZXNzZXMgb2YgdGhlIGFsbG9jYXRlZCBidWZmZXJzLiBUaGVyZSBhcmUg
b3V0LW9mLXRyZWUgZHJpdmVycw0KPj4+IHRoYXQgYWxsb3cgdG8gZG8gaXQgYnV0IG5vdGhpbmcg
aW4gdGhlIG1haW5saW5lLiAgDQo+PiBXZWxsIHRoYXQgYmFzaWNhbGx5IGRpc3F1YWxpZmllcyB0
aGlzIHBhdGNoIHNldCBpbiB0aGUgZmlyc3QgcGFyYWdyYXBoLg0KPj4NCj4+IFRvIGp1c3RpZnkg
c29tZSBrZXJuZWwgY2hhbmdlIHdlIGFsd2F5cyBuZWVkIGFuIGluIGtlcm5lbCB1c2VyIG9mIHRo
ZQ0KPj4gaW50ZXJmYWNlLCBzaW5jZSB0aGlzIGlzIHB1cmVseSBmb3Igb3V0LW9mLXRyZWUgZHJp
dmVycyB0aGlzIGlzIGENCj4+IG5vLWdvIHRvIGJlZ2luIHdpdGguDQo+IEknbSBub3Qgc3VyZSB0
byB1bmRlcnN0YW5kIHlvdXIgY29tbWVudCBoZXJlLiBUaGlzIHBhdGNoIHNlcmllcyBpcw0KPiBh
Ym91dCBleHRlbmRpbmcgdGhlIFVJTyBpbnRlcmZhY2UuLi4gd2hpY2ggaXMgYSB1c2VyLXNwYWNl
IGludGVyZmFjZS4NCj4gU28gb2J2aW91c2x5IGl0IGhhcyBubyAiaW4ta2VybmVsIHVzZXIiIGJl
Y2F1c2UgaXQncyBtZWFudCB0byBiZSB1c2VkDQo+IGZyb20gdXNlci1zcGFjZS4gQ291bGQgeW91
IGNsYXJpZnkgd2hhdCB5b3UgbWVhbnQgaGVyZT8NCg0KQmFzdGllbiB3cm90ZSBhYm91dCAib3V0
LW9mLXRyZWUgZHJpdmVycyIgd2hpY2ggaXMgc29tZXRoaW5nIHRoZSB1cHN0cmVhbSBrZXJuZWwg
ZXhwbGljaXRseSBkb2VzIG5vdCBzdXBwb3J0Lg0KDQpXaGVuIHlvdSBtYWtlIHRoYXQgVUlPIEFQ
SSBhbmQgaGF2ZSBhbiBvcGVuIHNvdXJjZSB1c2Vyc3BhY2UgZHJpdmVyIHRoZW4gdGhhdCBpcyBw
cm9iYWJseSBhIGdvb2QganVzdGlmaWNhdGlvbiB0byBkbyB0aGlzLg0KDQpXaGF0IHRoZSBrZXJu
ZWwgY29tbXVuaXR5IHRyaWVzIHRvIHByZXZlbnQgaGVyZSBpcyB0aGF0IHBlb3BsZSBzdGFydCB1
c2luZyB0aGUgVUFQSSB0byB3cml0ZSBjbG9zZWQgc291cmNlIGRyaXZlcnMgaW4gdXNlcnNwYWNl
Lg0KDQo+PiBXaGF0IHlvdSBjb3VsZCBwb3RlbnRpYWxseSBkbyBpcyB0byBjcmVhdGUgYW4gVUlP
IGRyaXZlciB3aGljaA0KPj4gaW1wb3J0cyBETUEtYnVmcywgcGlucyB0aGVtIGFuZCB0aGVuIHBy
b3ZpZGUgdGhlIERNQSBhZGRyZXNzZXMgdG8NCj4+IHVzZXJzcGFjZS4NCj4+DQo+PiBCdXQgcGxl
YXNlIGJlIGF3YXJlIHRoYXQgRE1BLWZlbmNlcyBhcmUgZnVuZGFtZW50YWxseSBpbmNvbXBhdGli
bGUNCj4+IHdpdGggVUlPLiBTbyB5b3Ugd29uJ3QgYmUgYWJsZSB0byBkbyBhbnkgZm9ybSBvZiBz
eW5jaHJvbml6YXRpb24NCj4+IHdoaWNoIHByb2JhYmx5IG1ha2VzIHRoZSBpbXBsZW1lbnRhdGlv
biBwcmV0dHkgbGltaXRlZC4NCj4gQ291bGQgeW91IGNsYXJpZnkgd2h5IERNQS1mZW5jZXMgd291
bGQgYmUgbmVlZGVkIGhlcmUsIGFuZCBmb3Igd2hhdA0KPiBzeW5jaHJvbml6YXRpb24/DQoNCklu
IGdlbmVyYWwgRE1BLWJ1ZiBpcyBhbiBpbnRlcmZhY2Ugd2hpY2ggZW5hYmxlcyB5b3UgZG8gc2hh
cmUgZGV2aWNlIHNwZWNpZmljIGJ1ZmZlcnMgYmV0d2VlbiBkaWZmZXJlbnQgZHJpdmVycyBhcyB3
ZWxsIGFzIGJldHdlZW4gdXNlcnNwYWNlIHByb2Nlc3Nlcy4NCg0KRm9yIHRoaXMgdG8gd29yayB3
aXRoIGZvciBleGFtcGxlIGNhbWVyYXMsIEdQVXMgb3IgUkRNQSBOSUNzIHlvdSBuZWVkIHRvIHNv
bWUga2luZCBvZiBzeW5jaHJvbml6YXRpb24gcHJpbWl0aXZlLCBlLmcuIGRldmljZSBBIGNhbiBv
bmx5IHN0YXJ0cyBpdCdzIERNQSB0cmFuc2FjdGlvbiB3aGVuIGRldmljZSBCIGhhcyBjb21wbGV0
ZWQgaGlzLg0KDQpUaGUgcHJvYmxlbSBpcyB0aGF0IHRoaXMgc3luY2hyb25pemF0aW9uIGFwcHJv
YWNoIGlzIGZ1bmRhbWVudGFsbHkgaW5jb21wYXRpYmxlIHdpdGggVUlPLiBTZWUgaGVyZSBmb3Ig
bW9yZSBkZXRhaWxzOiBodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL2xhdGVzdC9kcml2
ZXItYXBpL2RtYS1idWYuaHRtbCNpbmRlZmluaXRlLWRtYS1mZW5jZXMNCg0KPiBUaGUgRE1BIGJ1
ZmZlcnMgYWxsb2NhdGVkIGhlcmUgYXJlIERNQSBjb2hlcmVudCBidWZmZXJzLiBTbyB0aGUNCj4g
dXNlci1zcGFjZSBhcHBsaWNhdGlvbiB0aGF0IHVzZXMgVUlPIHdpbGwgYWxsb2NhdGUgc3VjaCBi
dWZmZXJzIG9uY2UgYXQNCj4gYXBwbGljYXRpb24gc3RhcnQsIHJldHJpZXZlIHRoZWlyIERNQSBh
ZGRyZXNzLCBhbmQgdGhlbiBwcm9ncmFtIERNQQ0KPiB0cmFuc2ZlcnMgYXMgaXQgc2VlcyBmaXQg
dXNpbmcgdGhlIG1lbW9yeS1tYXBwZWQgcmVnaXN0ZXJzIGFjY2Vzc2libGUNCj4gdGhyb3VnaCBV
SU8uIEknbSBub3Qgc3VyZSB3aGljaCBzeW5jaHJvbml6YXRpb24geW91IGFyZSByZWZlcnJpbmcg
dG8uDQo+IFdlIGFyZSBub3QgImNoYWluaW5nIiBETUEgdHJhbnNmZXJzLCB3aXRoIGZvciBleGFt
cGxlIGEgY2FtZXJhDQo+IGludGVyZmFjZSBmZWVkaW5nIGl0cyBETUEgYnVmZmVycyB0byBhbiBJ
U1Agb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4gVGhlDQo+IHR5cGljYWwgdXNlIGNhc2UgaGVyZSBp
cyBzb21lIElQIGJsb2NrIGluIGFuIEZQR0EgdGhhdCBkb2VzIERNQQ0KPiB0cmFuc2ZlcnMgdG8g
dHJhbnNmZXIgZGF0YSB0by9mcm9tIHNvbWUgc29ydCBvZiBzcGVjaWFsaXplZCBJL08NCj4gaW50
ZXJmYWNlLiBXZSBnZXQgYW4gaW50ZXJydXB0IHdoZW4gdGhlIHRyYW5zZmVyIGlzIGRvbmUsIGFu
ZCB3ZSBjYW4NCj4gcmUtdXNlIHRoZSBidWZmZXIgZm9yIHRoZSBuZXh0IHRyYW5zZmVyLg0KDQpX
ZWxsIHdoeSBkbyB5b3UgdGhlbiB3YW50IHRvIHVzZSBETUEtYnVmIGluIHRoZSBmaXJzdCBwbGFj
ZT8gQXMgZmFyIGFzIEkga25vdyB3aGF0IHlvdSBkZXNjcmliZSBjYW4gcGVyZmVjdGx5IGJlIGRv
bmUgd2l0aCB0aGUgbm9ybWFsIFVJTyBtZW1vcnkgbWFuYWdlbWVudCBpbnRlcmZhY2VzLg0KDQpE
TUEtYnVmIGlzIG9ubHkgaW50ZXJlc3Rpbmcgd2hlbiB5b3UgYWN0dWFsbHkgd2FudCB0byBzaGFy
ZSBzb21ldGhpbmcgaW4gYmV0d2VlbiBkZXZpY2VzIG9yIGJldHdlZW4gYXBwbGljYXRpb25zLg0K
DQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+IElmIHlvdSBjb3VsZCBjbGFyaWZ5IGhlcmUgYXMg
d2VsbCwgaXQgd291bGQgZGVmaW5pdGVseSBoZWxwIGluDQo+IHVuZGVyc3RhbmRpbmcgdGhlIHNo
b3J0Y29taW5ncy9saW1pdGF0aW9ucy4NCj4NCj4gVGhhbmtzIGEgbG90IQ0KPg0KPiBUaG9tYXMg
UGV0YXp6b25pDQo=

--------------k3Sbn7YSVmluaFQCINjd3qdk
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PCFET0NUWVBFIGh0bWw+PGh0bWw+PGhlYWQ+DQo8bWV0YSBodHRwLWVxdWl2PSJDb250ZW50LVR5
cGUiIGNvbnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD11dGYtOCI+DQogIDwvaGVhZD4NCiAgPGJv
ZHk+DQogICAgSGkgVGhvbWFzLDxicj4NCiAgICA8YnI+DQogICAgQW0gMTAuMDQuMjUgdW0gMjE6
NDMgc2NocmllYiBUaG9tYXMgUGV0YXp6b25pOjxicj4NCiAgICA8YmxvY2txdW90ZSB0eXBlPSJj
aXRlIiBjaXRlPSJtaWQ6MjAyNTA0MTAyMTQzMDcuMzYxZTM3M2ZAd2luZHN1cmYiPg0KICAgICAg
PHByZSBjbGFzcz0ibW96LXF1b3RlLXByZSIgd3JhcD0iIj5IZWxsbyBDaHJpc3RpYW4sDQoNClRo
YW5rcyBmb3IgeW91ciBmZWVkYmFjayENCg0KT24gVGh1LCAxMCBBcHIgMjAyNSAxODoyOToxMiAr
MDIwMA0KQ2hyaXN0aWFuIEvDtm5pZyA8YSBjbGFzcz0ibW96LXR4dC1saW5rLXJmYzIzOTZFIiBo
cmVmPSJtYWlsdG86Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tIj4mbHQ7Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tJmd0OzwvYT4gd3JvdGU6DQoNCjwvcHJlPg0KICAgICAgPGJsb2NrcXVvdGUgdHlw
ZT0iY2l0ZSI+DQogICAgICAgIDxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPg0KICAgICAgICAgIDxw
cmUgY2xhc3M9Im1vei1xdW90ZS1wcmUiIHdyYXA9IiI+TWFueSBVSU8gdXNlcnMgcGVyZm9ybWlu
ZyBETUEgZnJvbSB0aGVpciBVSU8gZGV2aWNlIG5lZWQgdG8gYWNjZXNzIHRoZQ0KRE1BIGFkZHJl
c3NlcyBvZiB0aGUgYWxsb2NhdGVkIGJ1ZmZlcnMuIFRoZXJlIGFyZSBvdXQtb2YtdHJlZSBkcml2
ZXJzDQp0aGF0IGFsbG93IHRvIGRvIGl0IGJ1dCBub3RoaW5nIGluIHRoZSBtYWlubGluZS4gIA0K
PC9wcmU+DQogICAgICAgIDwvYmxvY2txdW90ZT4NCiAgICAgICAgPHByZSBjbGFzcz0ibW96LXF1
b3RlLXByZSIgd3JhcD0iIj4NCldlbGwgdGhhdCBiYXNpY2FsbHkgZGlzcXVhbGlmaWVzIHRoaXMg
cGF0Y2ggc2V0IGluIHRoZSBmaXJzdCBwYXJhZ3JhcGguDQoNClRvIGp1c3RpZnkgc29tZSBrZXJu
ZWwgY2hhbmdlIHdlIGFsd2F5cyBuZWVkIGFuIGluIGtlcm5lbCB1c2VyIG9mIHRoZQ0KaW50ZXJm
YWNlLCBzaW5jZSB0aGlzIGlzIHB1cmVseSBmb3Igb3V0LW9mLXRyZWUgZHJpdmVycyB0aGlzIGlz
IGENCm5vLWdvIHRvIGJlZ2luIHdpdGguDQo8L3ByZT4NCiAgICAgIDwvYmxvY2txdW90ZT4NCiAg
ICAgIDxwcmUgY2xhc3M9Im1vei1xdW90ZS1wcmUiIHdyYXA9IiI+DQpJJ20gbm90IHN1cmUgdG8g
dW5kZXJzdGFuZCB5b3VyIGNvbW1lbnQgaGVyZS4gVGhpcyBwYXRjaCBzZXJpZXMgaXMNCmFib3V0
IGV4dGVuZGluZyB0aGUgVUlPIGludGVyZmFjZS4uLiB3aGljaCBpcyBhIHVzZXItc3BhY2UgaW50
ZXJmYWNlLg0KU28gb2J2aW91c2x5IGl0IGhhcyBubyAmcXVvdDtpbi1rZXJuZWwgdXNlciZxdW90
OyBiZWNhdXNlIGl0J3MgbWVhbnQgdG8gYmUgdXNlZA0KZnJvbSB1c2VyLXNwYWNlLiBDb3VsZCB5
b3UgY2xhcmlmeSB3aGF0IHlvdSBtZWFudCBoZXJlPzwvcHJlPg0KICAgIDwvYmxvY2txdW90ZT4N
CiAgICA8YnI+DQogICAgQmFzdGllbiB3cm90ZSBhYm91dCAmcXVvdDtvdXQtb2YtdHJlZSBkcml2
ZXJzJnF1b3Q7IHdoaWNoIGlzIHNvbWV0aGluZyB0aGUNCiAgICB1cHN0cmVhbSBrZXJuZWwgZXhw
bGljaXRseSBkb2VzIG5vdCBzdXBwb3J0Ljxicj4NCiAgICA8YnI+DQogICAgV2hlbiB5b3UgbWFr
ZSB0aGF0IFVJTyBBUEkgYW5kIGhhdmUgYW4gb3BlbiBzb3VyY2UgdXNlcnNwYWNlIGRyaXZlcg0K
ICAgIHRoZW4gdGhhdCBpcyBwcm9iYWJseSBhIGdvb2QganVzdGlmaWNhdGlvbiB0byBkbyB0aGlz
Ljxicj4NCiAgICA8YnI+DQogICAgV2hhdCB0aGUga2VybmVsIGNvbW11bml0eSB0cmllcyB0byBw
cmV2ZW50IGhlcmUgaXMgdGhhdCBwZW9wbGUgc3RhcnQNCiAgICB1c2luZyB0aGUgVUFQSSB0byB3
cml0ZSBjbG9zZWQgc291cmNlIGRyaXZlcnMgaW4gdXNlcnNwYWNlLjxicj4NCiAgICA8YnI+DQog
ICAgPHNwYW4gc3R5bGU9IndoaXRlLXNwYWNlOiBwcmUtd3JhcCI+DQo8L3NwYW4+DQogICAgPGJs
b2NrcXVvdGUgdHlwZT0iY2l0ZSIgY2l0ZT0ibWlkOjIwMjUwNDEwMjE0MzA3LjM2MWUzNzNmQHdp
bmRzdXJmIj4NCiAgICAgIDxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPg0KICAgICAgICA8cHJlIGNs
YXNzPSJtb3otcXVvdGUtcHJlIiB3cmFwPSIiPldoYXQgeW91IGNvdWxkIHBvdGVudGlhbGx5IGRv
IGlzIHRvIGNyZWF0ZSBhbiBVSU8gZHJpdmVyIHdoaWNoDQppbXBvcnRzIERNQS1idWZzLCBwaW5z
IHRoZW0gYW5kIHRoZW4gcHJvdmlkZSB0aGUgRE1BIGFkZHJlc3NlcyB0bw0KdXNlcnNwYWNlLg0K
DQpCdXQgcGxlYXNlIGJlIGF3YXJlIHRoYXQgRE1BLWZlbmNlcyBhcmUgZnVuZGFtZW50YWxseSBp
bmNvbXBhdGlibGUNCndpdGggVUlPLiBTbyB5b3Ugd29uJ3QgYmUgYWJsZSB0byBkbyBhbnkgZm9y
bSBvZiBzeW5jaHJvbml6YXRpb24NCndoaWNoIHByb2JhYmx5IG1ha2VzIHRoZSBpbXBsZW1lbnRh
dGlvbiBwcmV0dHkgbGltaXRlZC4NCjwvcHJlPg0KICAgICAgPC9ibG9ja3F1b3RlPg0KICAgICAg
PHByZSBjbGFzcz0ibW96LXF1b3RlLXByZSIgd3JhcD0iIj4NCkNvdWxkIHlvdSBjbGFyaWZ5IHdo
eSBETUEtZmVuY2VzIHdvdWxkIGJlIG5lZWRlZCBoZXJlLCBhbmQgZm9yIHdoYXQNCnN5bmNocm9u
aXphdGlvbj88L3ByZT4NCiAgICA8L2Jsb2NrcXVvdGU+DQogICAgPGJyPg0KICAgIEluIGdlbmVy
YWwgRE1BLWJ1ZiBpcyBhbiBpbnRlcmZhY2Ugd2hpY2ggZW5hYmxlcyB5b3UgZG8gc2hhcmUgZGV2
aWNlDQogICAgc3BlY2lmaWMgYnVmZmVycyBiZXR3ZWVuIGRpZmZlcmVudCBkcml2ZXJzIGFzIHdl
bGwgYXMgYmV0d2Vlbg0KICAgIHVzZXJzcGFjZSBwcm9jZXNzZXMuPGJyPg0KICAgIDxicj4NCiAg
ICBGb3IgdGhpcyB0byB3b3JrIHdpdGggZm9yIGV4YW1wbGUgY2FtZXJhcywgR1BVcyBvciBSRE1B
IE5JQ3MgeW91DQogICAgbmVlZCB0byBzb21lIGtpbmQgb2Ygc3luY2hyb25pemF0aW9uIHByaW1p
dGl2ZSwgZS5nLiBkZXZpY2UgQSBjYW4NCiAgICBvbmx5IHN0YXJ0cyBpdCdzIERNQSB0cmFuc2Fj
dGlvbiB3aGVuIGRldmljZSBCIGhhcyBjb21wbGV0ZWQgaGlzLjxicj4NCiAgICA8YnI+DQogICAg
VGhlIHByb2JsZW0gaXMgdGhhdCB0aGlzIHN5bmNocm9uaXphdGlvbiBhcHByb2FjaCBpcyBmdW5k
YW1lbnRhbGx5DQogICAgaW5jb21wYXRpYmxlIHdpdGggVUlPLiBTZWUgaGVyZSBmb3IgbW9yZSBk
ZXRhaWxzOg0KPGEgY2xhc3M9Im1vei10eHQtbGluay1mcmVldGV4dCIgaHJlZj0iaHR0cHM6Ly93
d3cua2VybmVsLm9yZy9kb2MvaHRtbC9sYXRlc3QvZHJpdmVyLWFwaS9kbWEtYnVmLmh0bWwjaW5k
ZWZpbml0ZS1kbWEtZmVuY2VzIj5odHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL2xhdGVz
dC9kcml2ZXItYXBpL2RtYS1idWYuaHRtbCNpbmRlZmluaXRlLWRtYS1mZW5jZXM8L2E+PGJyPg0K
ICAgIDxicj4NCiAgICA8YmxvY2txdW90ZSB0eXBlPSJjaXRlIiBjaXRlPSJtaWQ6MjAyNTA0MTAy
MTQzMDcuMzYxZTM3M2ZAd2luZHN1cmYiPg0KICAgICAgPHByZSBjbGFzcz0ibW96LXF1b3RlLXBy
ZSIgd3JhcD0iIj5UaGUgRE1BIGJ1ZmZlcnMgYWxsb2NhdGVkIGhlcmUgYXJlIERNQSBjb2hlcmVu
dCBidWZmZXJzLiBTbyB0aGUNCnVzZXItc3BhY2UgYXBwbGljYXRpb24gdGhhdCB1c2VzIFVJTyB3
aWxsIGFsbG9jYXRlIHN1Y2ggYnVmZmVycyBvbmNlIGF0DQphcHBsaWNhdGlvbiBzdGFydCwgcmV0
cmlldmUgdGhlaXIgRE1BIGFkZHJlc3MsIGFuZCB0aGVuIHByb2dyYW0gRE1BDQp0cmFuc2ZlcnMg
YXMgaXQgc2VlcyBmaXQgdXNpbmcgdGhlIG1lbW9yeS1tYXBwZWQgcmVnaXN0ZXJzIGFjY2Vzc2li
bGUNCnRocm91Z2ggVUlPLiBJJ20gbm90IHN1cmUgd2hpY2ggc3luY2hyb25pemF0aW9uIHlvdSBh
cmUgcmVmZXJyaW5nIHRvLg0KV2UgYXJlIG5vdCAmcXVvdDtjaGFpbmluZyZxdW90OyBETUEgdHJh
bnNmZXJzLCB3aXRoIGZvciBleGFtcGxlIGEgY2FtZXJhDQppbnRlcmZhY2UgZmVlZGluZyBpdHMg
RE1BIGJ1ZmZlcnMgdG8gYW4gSVNQIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuIFRoZQ0KdHlwaWNh
bCB1c2UgY2FzZSBoZXJlIGlzIHNvbWUgSVAgYmxvY2sgaW4gYW4gRlBHQSB0aGF0IGRvZXMgRE1B
DQp0cmFuc2ZlcnMgdG8gdHJhbnNmZXIgZGF0YSB0by9mcm9tIHNvbWUgc29ydCBvZiBzcGVjaWFs
aXplZCBJL08NCmludGVyZmFjZS4gV2UgZ2V0IGFuIGludGVycnVwdCB3aGVuIHRoZSB0cmFuc2Zl
ciBpcyBkb25lLCBhbmQgd2UgY2FuDQpyZS11c2UgdGhlIGJ1ZmZlciBmb3IgdGhlIG5leHQgdHJh
bnNmZXIuPC9wcmU+DQogICAgPC9ibG9ja3F1b3RlPg0KICAgIDxicj4NCiAgICBXZWxsIHdoeSBk
byB5b3UgdGhlbiB3YW50IHRvIHVzZSBETUEtYnVmIGluIHRoZSBmaXJzdCBwbGFjZT8gQXMgZmFy
DQogICAgYXMgSSBrbm93IHdoYXQgeW91IGRlc2NyaWJlIGNhbiBwZXJmZWN0bHkgYmUgZG9uZSB3
aXRoIHRoZSBub3JtYWwNCiAgICBVSU8gbWVtb3J5IG1hbmFnZW1lbnQgaW50ZXJmYWNlcy48YnI+
DQogICAgPGJyPg0KICAgIERNQS1idWYgaXMgb25seSBpbnRlcmVzdGluZyB3aGVuIHlvdSBhY3R1
YWxseSB3YW50IHRvIHNoYXJlDQogICAgc29tZXRoaW5nIGluIGJldHdlZW4gZGV2aWNlcyBvciBi
ZXR3ZWVuIGFwcGxpY2F0aW9ucy48YnI+DQogICAgPGJyPg0KICAgIFJlZ2FyZHMsPGJyPg0KICAg
IENocmlzdGlhbi48YnI+DQogICAgPGJyPg0KICAgIDxibG9ja3F1b3RlIHR5cGU9ImNpdGUiIGNp
dGU9Im1pZDoyMDI1MDQxMDIxNDMwNy4zNjFlMzczZkB3aW5kc3VyZiI+DQogICAgICA8cHJlIGNs
YXNzPSJtb3otcXVvdGUtcHJlIiB3cmFwPSIiPklmIHlvdSBjb3VsZCBjbGFyaWZ5IGhlcmUgYXMg
d2VsbCwgaXQgd291bGQgZGVmaW5pdGVseSBoZWxwIGluDQp1bmRlcnN0YW5kaW5nIHRoZSBzaG9y
dGNvbWluZ3MvbGltaXRhdGlvbnMuDQoNClRoYW5rcyBhIGxvdCENCg0KVGhvbWFzIFBldGF6em9u
aQ0KPC9wcmU+DQogICAgPC9ibG9ja3F1b3RlPg0KICAgIDxicj4NCiAgPC9ib2R5Pg0KPC9odG1s
Pg0K

--------------k3Sbn7YSVmluaFQCINjd3qdk--

--===============9093332282209591408==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============9093332282209591408==--
