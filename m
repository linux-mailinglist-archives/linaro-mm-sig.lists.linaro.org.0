Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 086E8BD3D35
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Oct 2025 17:02:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8682545D84
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Oct 2025 15:02:40 +0000 (UTC)
Received: from BL2PR02CU003.outbound.protection.outlook.com (mail-eastusazon11011069.outbound.protection.outlook.com [52.101.52.69])
	by lists.linaro.org (Postfix) with ESMTPS id E673B44A39
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Oct 2025 15:02:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=j8SjoKLS;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.52.69 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RsB1AKAMj6OmcS9COx4k/Atk2aJ7XdsXoXyxtX2kaxwDj5ZEpHyGgnlihcpRn1PMF1qzZvAREyiIZmeiTWhUHLB/uieMELcqVjrWqqGPe6CJq885TI9Pex52BbZZZ1zaR5Iwe/TyF10+iMeWS0crGoIPYvQk0T2oT7Ynsw5apcySZdtW3GvkDzwxW69ACFxL5+KlW/UHjKP65/UosOPApG6Kq5HI4lZCErHXXexUp9q7XZ0fVn+4tYdwUGI+sG0wKiKANuDanZtOV26FHwDzV411G4/7UQp3aKcI0nqeE78MeZKw4CpOjsbUL6fHCpnxPvwd3en/g3v1E4JWUQGLyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G/QiR9t0SZiUp2bTwWx15C7MKrWoX3YqEqwsnO3UaVw=;
 b=oO802QaNzYWrdzQXdJCbPbnIb434tO0QI8gdBARSf+3lrjcgEthdyu+EuNtQGnNWkQlPKHPo8clibstNc6G5rc4lUlrY5GzpwxQjwPMH4O3sFRUvG8ss7PlQLrcbEsh+IBVewKobGkMeTCbHUT8tMJa8lfqT5yZVitMQYX50261NZ7ZS4Sw5rLoVPU6ZHKncGuKoujuuL4XTcIM6mJn7w55eWp2RViGxYFMw6DruH6M6DvpBrQc+nEzk2bAooe8aUZDsHhB5wQaZ0m/N+xsp8WciqRkgfR3wPsJfp6vl0M6QoOJl84DOcW6RCdQ/XvLD6i7mhwpIpuTBuPtCJds7Vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G/QiR9t0SZiUp2bTwWx15C7MKrWoX3YqEqwsnO3UaVw=;
 b=j8SjoKLS31v2twbo+TW/pXRmZ9TNSlvDkgQlsycN+UZK4HD2AXmQ9xvbnvv2DJGhQlkUVXnnkKrlGcXKjVEHY5ljTed49w53kFhxsv2jM8gstTzsIGB/qgTf7d+UGfY+jb+TPby9AXd2WdFEVaClors92YO+9dcGdXFOclQeUQY=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by BL3PR12MB6475.namprd12.prod.outlook.com (2603:10b6:208:3bb::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.12; Mon, 13 Oct
 2025 15:02:29 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9203.009; Mon, 13 Oct 2025
 15:02:29 +0000
Message-ID: <bbabd9fe-5a79-482c-b277-5547797c240c@amd.com>
Date: Mon, 13 Oct 2025 17:02:24 +0200
User-Agent: Mozilla Thunderbird
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "simona.vetter@ffwll.ch" <simona.vetter@ffwll.ch>
References: <20251006134713.1846-1-christian.koenig@amd.com>
 <20251006134713.1846-2-christian.koenig@amd.com>
 <IA1PR11MB64187AF0DC0A4A63D9930F54C1EAA@IA1PR11MB6418.namprd11.prod.outlook.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <IA1PR11MB64187AF0DC0A4A63D9930F54C1EAA@IA1PR11MB6418.namprd11.prod.outlook.com>
X-ClientProxiedBy: FR4P281CA0436.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c6::8) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|BL3PR12MB6475:EE_
X-MS-Office365-Filtering-Correlation-Id: 4cbb8386-d466-46ef-9f48-08de0a69873a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?M1pXQ1pVY2hoaVJYR2R0d1VzcWJFdXVIdEdJZCtKTWZiR2swbDA4MG5xM0ww?=
 =?utf-8?B?TmZLWjhFUTVaemp1K05lc2g4YVpKa0pDdXdJZjkvNWdqWVZ1SlhSSGFaMUxM?=
 =?utf-8?B?L1V0aThmUDVEL0h0S3V6RFdRSThzcXJ3NUJuTXBMdWVIckU0NWtjNndHVGU5?=
 =?utf-8?B?dlpOQ05SbzVvNnRlZnlIOXRuWGEyckt2WWNDRXNzdmtaSjVObEJsWDlCemlv?=
 =?utf-8?B?NENHb2NqVzFLQlQ4NG9Reit2cm9ESGZ2b25sOVJ5S1hWSTQ4Y1lmUG8yS2Jk?=
 =?utf-8?B?V2RmZ3lkSnc3TGdVNDNwQVgwa21JT0xWOFJHNmdVbVVqVm9LR3ZVcm1UbHUx?=
 =?utf-8?B?VVdVNWc4c2FXblFlaXowOFZTcldzNStXTDB2UHdBUUtnLys5Yml1eDRGNndK?=
 =?utf-8?B?RkQzL0VnTGFWcWFUZCtWVENmVkNNeVVuNjRTRDhVbDhtOFV1ZjlZb1pud0Vo?=
 =?utf-8?B?bUpUYjVJUk1BYVlWOG11UkM4dDFaencwQ2lueDlGem1DNTdhY1I0bnZGS1E0?=
 =?utf-8?B?c1AvTVNmbUFQMmtoVVJjb0laWUJBNXlvVU4rc1hCbkg2WjRMWnJSb0IrUWtr?=
 =?utf-8?B?SzVFSDlYK09aUUVZU2U5My83S2crc20veXBKSElvOW1JYndzWExCVVRoUTk0?=
 =?utf-8?B?RC9MOVhpN0NpZjI1K0pNbzkwZEdySHkzdmtpRkMydEhDR1V5RGpVMDVzZVBN?=
 =?utf-8?B?M0lFME5hekpieSs1dXdXVElVc3lVRGhUTHNKYW5EemxaUW5DQVFvaks3ODgy?=
 =?utf-8?B?VGx4TTRPcVhnTFl5YUpHNmJLeTBFNGdqanJTYXc3VnlnV2hzS0FsclNPVjdB?=
 =?utf-8?B?OU5zR2FSbmZON2NNNGxaajk4cGRibkt2MDJaRVNBSzJUbmlHZ29YY25WOWta?=
 =?utf-8?B?Ly90TGxGK3JYQ01BbWFWR2phRUJhbW9nTm5kWHFwblRjbHF0Mk5uQ1RmQkhk?=
 =?utf-8?B?ZUJQOEtRbS9sR0dRN0NoaGs5ZTBrVEhvUWdJUHEwdjYxSHNXUGVocEdGdFFq?=
 =?utf-8?B?RzdPdmV6M1IzWlVyS3FlRFc0N24xYUFOS0VtRXM5ekJkQjQ5VkhNQUFsbjdu?=
 =?utf-8?B?M2UrNkhzd2hNVytCMTdYN0p5YmpvYVNCSkVXOExJallYVEVJeXBkT2FvRGsw?=
 =?utf-8?B?U0xJYU96YVdJRlFYQjRPVDVLSWxTSzdCeE1aVkppdjJIdTc4Sm5LeWFpb3Fo?=
 =?utf-8?B?MDZROHJENkFyQVBsWGY3TEdpOUZSdXpQVVNERXBNSE5EK3FXTkwzOS81VzY1?=
 =?utf-8?B?Ylg0TGNyR3JPNFhEaE9mU3N5eWRlUjJ5R3M5cG9HdVdrTDdtTC9kYVBCYTJ4?=
 =?utf-8?B?RFV4S1FSZHJldTIxbTJPanNzcGJGRW9QYkxDQ1lxWnFQTmNmdWlkVFp3UU11?=
 =?utf-8?B?UVpma013TWNyVjNTL1M4UE44T012L3NlYzVOa2lxVkRhY2hFRGtwTk91UGV1?=
 =?utf-8?B?VTlHNS9icWt0eDFoVUdpczRNVWZrZVNibFR0Wm5sa0hrUVlWYVFsa0JyamxF?=
 =?utf-8?B?Q2pPZ0g2eSt3YTVMQmFEUms1VFkrWnExK0d3dEprMUtLTFZBZ1VyaDdMQ1lC?=
 =?utf-8?B?NzRVczZsNFZUYXR6U3NCZUN1MzgxV2N6TEorMGJvaVpMVHAzNUQvSVd5ZkdI?=
 =?utf-8?B?dE1waHlnaTJDNm9jOU5YNkEyTzVFUlhnR1F5TW5VdE5sUUk4ekp6eUJoWmda?=
 =?utf-8?B?WFByYzg1LzZ0dU02NnpjWTJ5UTZkR0NyOS9SYStsZ0VQbzh2VzBOQXFhaUt3?=
 =?utf-8?B?THh6ZEp0QTBqTGJaOTJKY0thL2pSZVpwaGlDZUtRcDc0Unhzbm52QVBTcGFM?=
 =?utf-8?B?M2d6Z3UxbTd4V0lSamFINmdVdCtTMHB4cVBUS1Q1bFVsNDRLcnIwYWRrbmpR?=
 =?utf-8?B?aWZuQzdLbzRnclk1K3BTcE5rMU1KQjBscGswazJPN2hTS2dDem4vK1E0YlhF?=
 =?utf-8?Q?w3ipSHPiy1UNX8L5HvIFcQM/vZycN9mW?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bkZSM0Q5VDRRU2RmNHd0dFltWmZROUpnSlhlTzFneXBXRHk4cGI4OWp0R240?=
 =?utf-8?B?dkJPK1l5Ukp6RlRVTUk3WjVHZDZveDQ4VTA5dmRzUVBpd0JvdUFqOW8zNDZW?=
 =?utf-8?B?OUxrckZZTEFVbnlCTmlHaDArU1piQkR0VXVSU2lDUFFWVjkxRHNFYmFUbFJL?=
 =?utf-8?B?ejlyampPeWJsd1l4Z2wydVhhS0x0Ty9naG91dlJSQTR6enhMQklvWmVPdzdE?=
 =?utf-8?B?Rk4rT3RMMm1vVHJEcFZ3K3AydVQ5c09SWDJqdHR3d1BGYW9GUEoyR0w5UGhw?=
 =?utf-8?B?SitCV1JlNE13dGtnMXNxbWtMRzlOcGJSU3JlV0c0eVl5WExYeGNSNmxNL0RN?=
 =?utf-8?B?YThrakVDL1pDVE5qUStZeTM4WEhoSTBTQUZUV1dqamgrZGFWTGFjMXVQc1Bs?=
 =?utf-8?B?UTFEV3RwUTNtc0kyR0dGTFRNRE42OHVpOWM1S2dIQXhMZDdxdTR0Snc1YWpG?=
 =?utf-8?B?WkFrUlpxckZTYlNIb0pGcUZRZ01xd3FLcExYdE92NHlwN3hGTWNFUlZuNCtM?=
 =?utf-8?B?MG53alpsMEhpUmdUazZHYlFwTUJIR3JWOFYrVkdjeTNmWXdseUpyd2hHY1BE?=
 =?utf-8?B?WUNiOFZMQnJ5ekQrZnZLL0t3djdJNWJ0bEt2WEQyY05mRVNHNTlPd2JtZ0pI?=
 =?utf-8?B?OWU3cEVoM2o2Q1VQWFo5UENqMGRScGY4U0M5OHR1NmZUeTJ3OUV4T204azhh?=
 =?utf-8?B?b2hZb1dOQlRKc1BOZzdYN1B5a2FyOUxuZktrRVB3VzNVZldvRnV2RldtUVVu?=
 =?utf-8?B?M0xqYkRuTGRSeWhLZ1hlKzFyVk56K3dzU0gwQUZNMFFEMFE4K0wyb2YzTm1I?=
 =?utf-8?B?WVJJNkhmYi9sbUl6TktEc2dNL2hQTTBHd3hoQWNLempxTFNvK0Q1QjBrUEpB?=
 =?utf-8?B?YTg5T0ZuRWtNUHRxNjl0MU1XUkUvWHdhZVhXY3A5cVhaQlJlZ1dVc0JsMm5v?=
 =?utf-8?B?U2t2SjYxekhRcjdHN0tYUThqMi9aNVhjeUdpL1hoLzAyM3kwc1lKKzdhajlK?=
 =?utf-8?B?MEc3WXNVeGVvWVdZUHNTSWNZMTVCQnREdlA2SjkrTDVnSjBYS2dpZE5WVVFp?=
 =?utf-8?B?c1M4RmlaV0thcm5kVk9MWVovbk5MTHVROC9qWDh6VzlFTmprUVRCVzR1Vmh0?=
 =?utf-8?B?bTYrM2tMbXNDYithSG5ya2Q2OUxaUXRDZW1UNHJuRFE2V2pmRktQYmQ2Z3Fz?=
 =?utf-8?B?ZnZsOWFiUkgzSzRmVUtuM0dEVGdiSm5IOXR6ejUxNlhuZzV3dExOSzgwdXIx?=
 =?utf-8?B?K090U21hZVhtSGlZV2kvQ203NXZYbWtkdTU3d2NRM1lrUGY4bVNPS0hqb3VU?=
 =?utf-8?B?bW9WdG5MT0d3UE5VZnM4UEJ2TjgwQXpGdUNxckFHcEtZL0xqTXVzL240dXB2?=
 =?utf-8?B?a0RlUGRPUVljY3lwY1pxZ0p0bjJPVzBSZG84clltRCtoYWI0d09QdUJ5Zk5l?=
 =?utf-8?B?UE1CSG5FSWx0K2FQb0R1dlFhTldoaXhUSG9qOFo0YldXUy8wbGdPdUZONUsy?=
 =?utf-8?B?L1JhT1VDRmMwQXZ2MGhGeldwK05DRlNhTHNscFBtSzNJMGgvYWZFRUl6K2Vy?=
 =?utf-8?B?WURGK3gyc0pLK2Fqdi9XZVZpSHQzWk1QN0twMHFsVmxuOHltOVBFSXVhSDRo?=
 =?utf-8?B?ZW1ZKzU5TitrNllFZXpJNWdPaEtrVnFXVkh2QnB0amVvWE5DRUdzK29BS2kr?=
 =?utf-8?B?M0NkZG9SNUxLMTNqaGhHZ0xBYmJURGsxaHQ0Q0gyVFlYSjFFMkpuSmYyOGlG?=
 =?utf-8?B?WGh1RmxwMmR0N2JHcGRoV25MNTkrWlU0OERzemVmc29MaUJRYVdLRFp5Slps?=
 =?utf-8?B?R3ZhVlpqUm9KZDhvVHpvenVUeHV3S3VDSEhIelB2YmxzeVg5Y0ZqTStkUUR3?=
 =?utf-8?B?ZWpZNHpieGFWbXFPMU5NRGx1amdEbnZoRDFlWVI0MTkvbG90dXdXRVJGM1lh?=
 =?utf-8?B?OGNqeHFvckRCODVENzNNZnN5eXFvL1hIZzc4c0IwMmx2LzBwdkR2MjVJQ2Js?=
 =?utf-8?B?R2Q3dzRKY3lHT3F1R2twZ0xlbGJTZHB5ZWJPZUkycnZxc3FiaHBLalNZNTF0?=
 =?utf-8?B?WEg5cEErT1crMVJZMWZNY1pLNkxPT3IvZFhQL3NCbnAxbGtzNkhpTTk3eVpF?=
 =?utf-8?Q?8PGRJrbAaa2R6l+IBnnRQsAw1?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cbb8386-d466-46ef-9f48-08de0a69873a
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2025 15:02:29.4498
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u8xzkKb3SDj2SXArHckLc3DY1dHgXHKgZdZrLeK6pD9ZEVRwbEBT9kWY2DOauvvY
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR12MB6475
X-Rspamd-Queue-Id: E673B44A39
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.52.69:from];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[52.101.52.69:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: OOHI7BPHHNG4JYZZGT3ZNR6ZBBPIFQK7
X-Message-ID-Hash: OOHI7BPHHNG4JYZZGT3ZNR6ZBBPIFQK7
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] dma-buf: improve sg_table debugging hack
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OOHI7BPHHNG4JYZZGT3ZNR6ZBBPIFQK7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTMuMTAuMjUgMTY6NDgsIFJ1aGwsIE1pY2hhZWwgSiB3cm90ZToNCj4+IC0tLS0tT3JpZ2lu
YWwgTWVzc2FnZS0tLS0tDQo+PiBGcm9tOiBkcmktZGV2ZWwgPGRyaS1kZXZlbC1ib3VuY2VzQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mDQo+PiBDaHJpc3RpYW4gS8O2bmlnDQo+
PiBTZW50OiBNb25kYXksIE9jdG9iZXIgNiwgMjAyNSA5OjQ3IEFNDQo+PiBUbzogc3VtaXQuc2Vt
d2FsQGxpbmFyby5vcmc7IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZzsgZHJpLQ0KPj4gZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmc7
DQo+PiBzaW1vbmEudmV0dGVyQGZmd2xsLmNoDQo+PiBTdWJqZWN0OiBbUEFUQ0ggMi8yXSBkbWEt
YnVmOiBpbXByb3ZlIHNnX3RhYmxlIGRlYnVnZ2luZyBoYWNrDQo+Pg0KPj4gSW5zdGVhZCBvZiBq
dXN0IG1hbmdsaW5nIHRoZSBwYWdlIGxpbmsgY3JlYXRlIGEgY29weSBvZiB0aGUgc2dfdGFibGUN
Cj4+IGJ1dCBvbmx5IGNvcHkgb3ZlciB0aGUgRE1BIGFkZHJlc3NlcyBhbmQgbm90IHRoZSBwYWdl
cy4NCj4gDQo+IFRoaXMgbWFkZSB0aGUgaXNzdWUgb2J2aW91cy4gIElmIEkgYWJ1c2UgdGhpcyBu
b3cgaG93IHdpbGwgSSBrbm93IEkgYW0gZG9pbmcNCj4gdGhlIHdyb25nIHRoaW5nPw0KDQpZb3Ug
Z2V0IGEgY3Jhc2ggd2hlbiB5b3UgdHJ5IHRvIHRvIGNvbnZlcnQgYSBwYWdlIGxpbmsgaW50byBh
IHN0cnVjdCBwYWdlIHBvaW50ZXIgYW5kIHRoZW4gYWNjZXNzIGZpZWxkcyBpbiB0aGF0IHN0cnVj
dCBwYWdlICh0aGUgcG9pbnRlciBpcyBOVUxMIGZvciBtb3N0IGVudHJpZXMgbm93KS4NCg0KPj4g
U3RpbGwgcXVpdGUgYSBoYWNrIGJ1dCB0aGlzIGF0IGxlYXN0IGFsbG93cyB0aGUgZXhwb3J0ZXIg
dG8gcHJvcGVybHkNCj4+IGtlZXBzIGl0J3Mgc2dfdGFibGUgaW50YWN0Lg0KPj4NCj4+IFRoaXMg
aXMgaW1wb3J0YW50IGZvciBleGFtcGxlIGZvciB0aGUgc3lzdGVtIERNQS1oZWFwIHdoaWNoIG5l
ZWRzIGl0J3MNCj4+IHNnX3RhYmxlIHRvIHN5bmMgQ1BVIHdyaXRlcyB3aXRoIGRldmljZSBhY2Nl
c3Nlcy4NCj4gDQo+IFNvIHRoZSBtYW5nbGluZyBhY3R1YWxseSBicmVha3MgYSB1c2FnZT8gIEkg
dGhvdWdodCB0aGF0IHRoZSB1c2FnZSB3YXMgaW5jb3JyZWN0Li4uaXMNCj4gdGhlIGRtYS1oZWFw
IHVzaW5nIHRoaXMgaW5jb3JyZWN0bHk/DQoNCk5vLCBkbWEtaGVhcCBhcyBhbiBleHBvcnRlciBp
cyB1c2luZyBpdCBwZXJmZWN0bHkgY29ycmVjdGx5Lg0KDQpUaGUgcHJvYmxlbSB3YXMgKG9yIHJh
dGhlciBpcykgdGhhdCBzb21lIGltcG9ydGVycyB0dXJuZWQgdGhlIHBhZ2UgbGluayBpbnRvIGEg
c3RydWN0IHBhZ2UgYWdhaW4gYW5kIHRoZW4gdHJpZWQgdG8gbW9kaWZ5IHRoYXQgc3RydWN0IHBh
Z2UsIGUuZy4gZ3JhYmJpbmcgcmVmZXJlbmNlcyB0byBpdCBvciBzaW1pbGFyLg0KDQpUaGF0IHR1
cm5lZCBpbnRvIHRvbnMgb2YgcHJvYmxlbXMgd2hlbiB0aGUgZXhwb3J0ZXIgdXNlZCBkZXZpY2Ug
cHJpdmF0ZSBwYWdlcyBhbmQgZGlkbid0IGV4cGVjdCB0aGF0IHNvbWVib2R5IG1lc3Npbmcgd2l0
aCBpdC4NCg0KVGhlIG9ubHkgcHJvcGVydHkgaW1wb3J0ZXJzIGFyZSBhbGxvd2VkIHRvIGFjY2Vz
cyBpbiB0aGUgc2dfdGFibGVzIHRoZXkgZ2V0IGZyb20gZG1hX2J1ZiBhcmUgdGhlIERNQS1hZGRy
ZXNzZXMuDQoNClRoaXMgcGF0Y2ggaGVyZSBpcyBhIGZpcnN0IHN0ZXAgdG8gcmVwbGFjZSB1c2lu
ZyBzZ190YWJsZXMgd2l0aCBzb21ldGhpbmcgZWxzZSBsaWtlIHhhcnJheSBvZiBETUEtYWRkcmVz
c2VzIG9yIHNpbWlsYXIuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gDQo+PiBTaWduZWQt
b2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+PiAt
LS0NCj4+IGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCA2OCArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrLS0tLS0NCj4+IC0tLQ0KPj4gMSBmaWxlIGNoYW5nZWQsIDU0IGluc2VydGlv
bnMoKyksIDE0IGRlbGV0aW9ucygtKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1i
dWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPj4gaW5kZXggMjMwNWJi
MmNjMWYxLi4xZmU1NzgxZDg4NjIgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jDQo+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+PiBAQCAtODI4LDIx
ICs4MjgsNTkgQEAgdm9pZCBkbWFfYnVmX3B1dChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmKQ0KPj4g
fQ0KPj4gRVhQT1JUX1NZTUJPTF9OU19HUEwoZG1hX2J1Zl9wdXQsICJETUFfQlVGIik7DQo+Pg0K
Pj4gLXN0YXRpYyB2b2lkIG1hbmdsZV9zZ190YWJsZShzdHJ1Y3Qgc2dfdGFibGUgKnNnX3RhYmxl
KQ0KPj4gK3N0YXRpYyBpbnQgZG1hX2J1Zl9tYW5nbGVfc2dfdGFibGUoc3RydWN0IHNnX3RhYmxl
ICoqc2dfdGFibGUpDQo+PiB7DQo+PiAtI2lmZGVmIENPTkZJR19ETUFCVUZfREVCVUcNCj4+IC0J
aW50IGk7DQo+PiAtCXN0cnVjdCBzY2F0dGVybGlzdCAqc2c7DQo+PiAtDQo+PiAtCS8qIFRvIGNh
dGNoIGFidXNlIG9mIHRoZSB1bmRlcmx5aW5nIHN0cnVjdCBwYWdlIGJ5IGltcG9ydGVycyBtaXgN
Cj4+IC0JICogdXAgdGhlIGJpdHMsIGJ1dCB0YWtlIGNhcmUgdG8gcHJlc2VydmUgdGhlIGxvdyBT
R18gYml0cyB0bw0KPj4gLQkgKiBub3QgY29ycnVwdCB0aGUgc2d0LiBUaGUgbWl4aW5nIGlzIHVu
ZG9uZSBvbiB1bm1hcA0KPj4gLQkgKiBiZWZvcmUgcGFzc2luZyB0aGUgc2d0IGJhY2sgdG8gdGhl
IGV4cG9ydGVyLg0KPj4gKwlzdHJ1Y3Qgc2dfdGFibGUgKnRvLCAqZnJvbSA9ICpzZ190YWJsZTsN
Cj4+ICsJc3RydWN0IHNjYXR0ZXJsaXN0ICp0b19zZywgKmZyb21fc2c7DQo+PiArCWludCBpLCBy
ZXQ7DQo+PiArDQo+PiArCWlmICghSVNfRU5BQkxFRChDT05GSUdfRE1BQlVGX0RFQlVHKSkNCj4+
ICsJCXJldHVybiAwOw0KPj4gKw0KPj4gKwkvKg0KPj4gKwkgKiBUbyBjYXRjaCBhYnVzZSBvZiB0
aGUgdW5kZXJseWluZyBzdHJ1Y3QgcGFnZSBieSBpbXBvcnRlcnMgY29weSB0aGUNCj4+ICsJICog
c2dfdGFibGUgd2l0aG91dCBjb3B5aW5nIHRoZSBwYWdlX2xpbmsgYW5kIGdpdmUgb25seSB0aGUg
Y29weSBiYWNrDQo+PiB0bw0KPj4gKwkgKiB0aGUgaW1wb3J0ZXIuDQo+PiAJICovDQo+PiAtCWZv
cl9lYWNoX3NndGFibGVfc2coc2dfdGFibGUsIHNnLCBpKQ0KPj4gLQkJc2ctPnBhZ2VfbGluayBe
PSB+MHhmZlVMOw0KPj4gLSNlbmRpZg0KPj4gKwl0byA9IGt6YWxsb2Moc2l6ZW9mKCp0byksIEdG
UF9LRVJORUwpOw0KPj4gKwlpZiAoIXRvKQ0KPj4gKwkJcmV0dXJuIC1FTk9NRU07DQo+Pg0KPj4g
KwlyZXQgPSBzZ19hbGxvY190YWJsZSh0bywgZnJvbS0+bmVudHMsIEdGUF9LRVJORUwpOw0KPj4g
KwlpZiAocmV0KQ0KPj4gKwkJZ290byBmcmVlX3RvOw0KPj4gKw0KPj4gKwl0b19zZyA9IHRvLT5z
Z2w7DQo+PiArCWZvcl9lYWNoX3NndGFibGVfZG1hX3NnKGZyb20sIGZyb21fc2csIGkpIHsNCj4+
ICsJCXNnX3NldF9wYWdlKHRvX3NnLCBOVUxMLCAwLCAwKTsNCj4+ICsgICAgICAgICAgICAgICAg
c2dfZG1hX2FkZHJlc3ModG9fc2cpID0gc2dfZG1hX2FkZHJlc3MoZnJvbV9zZyk7DQo+PiArICAg
ICAgICAgICAgICAgIHNnX2RtYV9sZW4odG9fc2cpID0gc2dfZG1hX2xlbihmcm9tX3NnKTsNCj4g
DQo+IElzIHRoZSBpbmRlbnRhdGlvbiBjb3JyZWN0IGhlcmU/DQo+IA0KPiBNDQo+IA0KPj4gKwkJ
dG9fc2cgPSBzZ19uZXh0KHRvX3NnKTsNCj4+ICsJfQ0KPj4gKw0KPj4gKwkvKg0KPj4gKwkgKiBT
dG9yZSB0aGUgb3JpZ2luYWwgc2dfdGFibGUgaW4gdGhlIGZpcnN0IHBhZ2VfbGluayBvZiB0aGUg
Y29weSBzbw0KPj4gKwkgKiB0aGF0IHdlIGNhbiByZXZlcnQgZXZlcnl0aGluZyBiYWNrIGFnYWlu
IG9uIHVubWFwLg0KPj4gKwkgKi8NCj4+ICsJdG8tPnNnbFswXS5wYWdlX2xpbmsgPSAodW5zaWdu
ZWQgbG9uZylmcm9tOw0KPj4gKwkqc2dfdGFibGUgPSB0bzsNCj4+ICsJcmV0dXJuIDA7DQo+PiAr
DQo+PiArZnJlZV90bzoNCj4+ICsJa2ZyZWUodG8pOw0KPj4gKwlyZXR1cm4gcmV0Ow0KPj4gK30N
Cj4+ICsNCj4+ICtzdGF0aWMgdm9pZCBkbWFfYnVmX2RlbWFuZ2xlX3NnX3RhYmxlKHN0cnVjdCBz
Z190YWJsZSAqKnNnX3RhYmxlKQ0KPj4gK3sNCj4+ICsJc3RydWN0IHNnX3RhYmxlICpjb3B5ID0g
KnNnX3RhYmxlOw0KPj4gKw0KPj4gKwlpZiAoIUlTX0VOQUJMRUQoQ09ORklHX0RNQUJVRl9ERUJV
RykpDQo+PiArCQlyZXR1cm47DQo+PiArDQo+PiArCSpzZ190YWJsZSA9ICh2b2lkICopY29weS0+
c2dsWzBdLnBhZ2VfbGluazsNCj4+ICsJc2dfZnJlZV90YWJsZShjb3B5KTsNCj4+ICsJa2ZyZWUo
Y29weSk7DQo+PiB9DQo+Pg0KPj4gc3RhdGljIGlubGluZSBib29sDQo+PiBAQCAtMTEzOSw3ICsx
MTc3LDkgQEAgc3RydWN0IHNnX3RhYmxlICpkbWFfYnVmX21hcF9hdHRhY2htZW50KHN0cnVjdA0K
Pj4gZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsDQo+PiAJCWlmIChyZXQgPCAwKQ0KPj4gCQkJ
Z290byBlcnJvcl91bm1hcDsNCj4+IAl9DQo+PiAtCW1hbmdsZV9zZ190YWJsZShzZ190YWJsZSk7
DQo+PiArCXJldCA9IGRtYV9idWZfbWFuZ2xlX3NnX3RhYmxlKCZzZ190YWJsZSk7DQo+PiArCWlm
IChyZXQpDQo+PiArCQlnb3RvIGVycm9yX3VubWFwOw0KPj4NCj4+IAlpZiAoSVNfRU5BQkxFRChD
T05GSUdfRE1BX0FQSV9ERUJVRykpIHsNCj4+IAkJc3RydWN0IHNjYXR0ZXJsaXN0ICpzZzsNCj4+
IEBAIC0xMjIwLDcgKzEyNjAsNyBAQCB2b2lkIGRtYV9idWZfdW5tYXBfYXR0YWNobWVudChzdHJ1
Y3QNCj4+IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KPj4NCj4+IAlkbWFfcmVzdl9hc3Nl
cnRfaGVsZChhdHRhY2gtPmRtYWJ1Zi0+cmVzdik7DQo+Pg0KPj4gLQltYW5nbGVfc2dfdGFibGUo
c2dfdGFibGUpOw0KPj4gKwlkbWFfYnVmX2RlbWFuZ2xlX3NnX3RhYmxlKCZzZ190YWJsZSk7DQo+
PiAJYXR0YWNoLT5kbWFidWYtPm9wcy0+dW5tYXBfZG1hX2J1ZihhdHRhY2gsIHNnX3RhYmxlLCBk
aXJlY3Rpb24pOw0KPj4NCj4+IAlpZiAoZG1hX2J1Zl9waW5fb25fbWFwKGF0dGFjaCkpDQo+PiAt
LQ0KPj4gMi40My4wDQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
