Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D08B2AD05
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Aug 2025 17:43:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 804223F71E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Aug 2025 15:43:17 +0000 (UTC)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (mail-dm6nam04on2074.outbound.protection.outlook.com [40.107.102.74])
	by lists.linaro.org (Postfix) with ESMTPS id B5C153F71E
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Aug 2025 15:43:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=4OLnLZ1G;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.102.74 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ogR7VVF3PWLN0iK0SxYxBB4pYk2BonYpGiIstyEu78oTVmIedRG9LasPJZQEIh44/AXUe8sagamOwiO9ucg+xtceU33X+0SukvovSW/nNCvT0D13lEXzu8CbDlO4oCkONCJbkJIFq19kWhVF14xOY9+4FWR/puzwn+mcI5Doj+2Zfo22wRedx8P1EZ6pIxX4b3WMIl/h0CMz/66MFZK4HasMzt5Y2M3s5RdVAin/e8RBzlNFBFq3PJFzNCQ372reqKlDge1TJ1P3fRQjYgRWiUh9lPeLxs/Ng8TehWfwkYyBSIAnm0/V5xE6JtVT+HOp0jWv26AqSF//4pGcCFCYYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qG/dCZ54MUYhEKd4/WOpD4onsaBHG329usUpaRg66jM=;
 b=ClFb2oa717DZ05hHdWi0LHhmLjw0aarpVXaq/tDFlc/QVB5Ax9PLrEKuvddNJwx5wKV6pA14JZvSZGb83aWJ/oqXcfGkgiMPbrVOZnmU/p4xDMp6+K5i/hA5aQ5YLitnnibkPkzkDcN+7BvoniWN8nUbCpL+VKXyExQGCMGcV7Jzmi5hkfhRYVJXVMJVTOx5BZzAykaNtLtbZvcmMAJkoXfiHWLRdOsx1a1ZTMExOlfSGNlpjykBZQ5JGuMYTSR3rwFeCx1FFjCug+Q23rKX+WVcf39Hik2ghBJys2ODN8rR87WC5va88FzEEfdF9mNZDgOwzjcsORKk9xL/cX+Jkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qG/dCZ54MUYhEKd4/WOpD4onsaBHG329usUpaRg66jM=;
 b=4OLnLZ1GaLP9MV5E4zu9wtwCsKL8gP4bR11a+14geLtvP6sWexeR7YG8I0LkN0WIGmAXGkC+MQ2k3UA51fNwRFvc0iFu8I+e6TaPK3z/TP08mwXi6v3QeJi5iMksYhQb6ggGBqI4cjakOluTFPfaRdOBtRhgH5o//HS29E3pxQk=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DM4PR12MB6328.namprd12.prod.outlook.com (2603:10b6:8:a0::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.18; Mon, 18 Aug
 2025 15:43:05 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.9031.023; Mon, 18 Aug 2025
 15:43:05 +0000
Message-ID: <f31550b1-b89c-47d6-b012-99479ba12aeb@amd.com>
Date: Mon, 18 Aug 2025 17:43:00 +0200
User-Agent: Mozilla Thunderbird
To: Thomas Zimmermann <tzimmermann@suse.de>, sumit.semwal@linaro.org,
 oushixiong@kylinos.cn, alexander.deucher@amd.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@gmail.com,
 simona@ffwll.ch
References: <20250818151710.284982-1-tzimmermann@suse.de>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250818151710.284982-1-tzimmermann@suse.de>
X-ClientProxiedBy: FR4P281CA0247.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f5::10) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DM4PR12MB6328:EE_
X-MS-Office365-Filtering-Correlation-Id: a3ab80a1-c43f-46dd-da36-08ddde6dec36
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?RGhEdFlCQi90QUp4a0doTFFpck8wU1RHU0hKeUlvWkhmK2o0aXl6bmZPQzVz?=
 =?utf-8?B?SHJ0OW1GdEgxVXRnYytIb21xRml3MVlNS0tINkdGM2tFdnlBbGVKUFU4eUxJ?=
 =?utf-8?B?Mk1NKzc0dGxuVUI5dlVJL1NXQUZ5SVFTa3RjdmpZcFpXZnlxcVNEZnVZVVBJ?=
 =?utf-8?B?dExBMDBuQlJiN0R3UEN3aTNISndOS0lYMjdGOXo0OW1yTThlZ1hzVzhVUVFK?=
 =?utf-8?B?NnZNLzBtbS9VUWlWR1ZLejAvY2NtWURDOWlVVWN1T040cnpERnJxNTFKMkJC?=
 =?utf-8?B?a0hxakozeGMrOUdZSjZpRnVFSDN3VEkrRVRuT0piYXdXcmVJcVJDU21RVmc0?=
 =?utf-8?B?Q1krVE1pbzNnYUo4ZUF5TlhPcmtNY0pjYmVQbUpsS3FvNmxleWJSY21YTngx?=
 =?utf-8?B?MDF3Wlp3V01BOWovQmZlc3c1NExOMzdNK1JHTFhUVkoyMDBteFF0anR3R2Jh?=
 =?utf-8?B?OGo3Y2FiZC9QUHZnVkJNQ1hVQ3RrWmZmeWZ5Q09ycUtHZXI3VDdmRVVSQXlR?=
 =?utf-8?B?Vk1NRnczd1ljYThSZjJmVFFrQmNUTjBWK2NOTzdTSnBIWm5DODdWTUhnWVkz?=
 =?utf-8?B?RGRUNllmQUZiRFA1WHpXMTNaMGVTc1VIc01Ha0xnSmpaYzJFekg3UG9YNlRQ?=
 =?utf-8?B?WklLZkNrZGtnZDdncFpTODBkS3RvdCtHTG5MSWhxWUlQZzBIT1oyRmpEQlRj?=
 =?utf-8?B?alpWbnNNL0lXU1VmcDZJa2tDM0ZOdk00TnZSRlh3bW51Vk1IWllTcjNJdE9w?=
 =?utf-8?B?KytXQXlETFBTTkxCY0N3UmZYV3pRY0hhQWdNSjRVeTdxL005S3JGYTB6aXZM?=
 =?utf-8?B?SjdURTRMdFp0TjMvQU5lQUF5dGkvdGxKNTNMUzdUZm0zYzI4WE1hVWN3T0Rn?=
 =?utf-8?B?T2ZqUkYyK0VsQ0czVzBlcHdIckxrcmxGL3ZLcDlvV0drcWYwb0pCQWhpYkpq?=
 =?utf-8?B?Q3dhR3ZaSk44d0hVOG1HT3YzRFg4KzJSZTUzWUxoeWJrelNIQVRTTzYwYjJF?=
 =?utf-8?B?RUlNMU5QWTlpaDVVOFdBVjdibjRjbHI0M1dvQVRjTHhqNzM4TUppS0hZeGt2?=
 =?utf-8?B?WFc4S0RrcXdlTUZsbXpLYlBBSllNZFlYSmJUTFdzNFM1bi90dEV6aWl3clFj?=
 =?utf-8?B?clVFdzZIaHRMM3gzUC9xQ1hKNGJCa0VjT3k2Slh5UmVqMDhnYlJNNHFhT1Ny?=
 =?utf-8?B?Y2FQbHk3azhDQXV0Q3lWcmJTYmFKaStzMGFhVDBXRzlFaTR4MmFsOHFXSWxH?=
 =?utf-8?B?dEZjT1E2OXliK2RWdkNXbzR5QXRpZGJFV2JkNWhPaTE0ZDVCck9McGZ4MmdR?=
 =?utf-8?B?OUhKWnMrQU9lbnNuakFGc0o0SmI2V1JXMVN5aUROcjhFNGVxTzhkTkloNjlj?=
 =?utf-8?B?dm5rbytNa3ZMbkRDdGZOUWtLM1NNVjdmeXZDci8rVHpjSHVocDJITDJDc1BO?=
 =?utf-8?B?K0NsY1ZsekFqbGpUMGdSaDYyVUpYM3E3d294M2hRYXpKdHJ0MUkwNUhnRkg1?=
 =?utf-8?B?ZmliMWUyU1ZxUVo2bmZHWVd2UEVveHNFa0FLOWJGUE5GQzNQcmdIb2JaN2ZO?=
 =?utf-8?B?QzR6ekFIWUd6eXpsdmZUTmVYWVhNaFdpM0ZkV3dRZlQxdHlFbXIwT0VsWWFI?=
 =?utf-8?B?cGQ2QVU1eW1Icys5SUpkL1E0Y3NUWkppOTNhWk1XWFFaMnZHcTBOdnExOWZ5?=
 =?utf-8?B?YldtZi91ZUQxN1RFQ0g5bkxFR3Q3OFlWNFJWNU9zMU1pK0p0QysvYWRrd3VU?=
 =?utf-8?B?cU5FN1BmbEZMQ1U3c2pVYmZQbHhXdE5USE9wRndsM1hMbzVTbGRNQVZXd1Rk?=
 =?utf-8?B?d2hIRnY0WU9ldTFPeXBEOWZQL3JDQktMdDlWbnp6L3FUalg5eHJqRVd0aGZv?=
 =?utf-8?Q?6ANwi9j+EpRRy?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RlBXVU9jKzNPdjZkMndMT2w5bzhkT2xNZldIbFBnbGQrdkllbW9kMkhDYStx?=
 =?utf-8?B?ZTR1bVBzUTh0SEUvUUhRMStrMlV1K2E4a0J5NUJrd3FxRVBwdWRVWWozRmFB?=
 =?utf-8?B?MEdmZ2FxNWpLNGFmN3dxU05ETGlpcEI1UkEvQzV5UG5NOW8wcDFDcG5NcVVj?=
 =?utf-8?B?clNJdDRCNVUrQlZiZEdUSFlGS0tSRk5oYUg1clMzdXFnQkRoVEpiTWhPSDRJ?=
 =?utf-8?B?OVlocjQ2QjFBSzMwZ1h1a0FPRW52OXlEdUVPVHRRYy9MMWFxdVlOTUlLdU9t?=
 =?utf-8?B?WUt1bjJ5c2tOZ1QvaFJVZEgzWVEzenFJMGMrOHYyRklxUGNKeEI3YXZpYXRB?=
 =?utf-8?B?d2FGRHlOcGtpVmU4N1FFaDN6K3B1Y1ZiaUxONGlORXNRRGs1OHZoYkhLeDRX?=
 =?utf-8?B?YWdlbkxVKysraHV6QnoyS3hrdCs3YlBVcjlPZGNBRHdNNm1NZlM5VEdRN2gz?=
 =?utf-8?B?dlNnbCtHMTlCM1l5RUZDTnVUaXVFLzI0aTBFN1EwZ1VHdnpaMDVzRS9kVXVK?=
 =?utf-8?B?L1QySHJHQ1JUbEVGckh3aWxLZHErVVBjVHdBOTM2OFpYdFF6UlhkUHQyMjRo?=
 =?utf-8?B?VTYzalh3RWtFS3E3UWdJekk5S0RhSk9IMFVjTmJMV1N1QVBHTm81THp6RDlX?=
 =?utf-8?B?T09BSU55Zi9zZTBxcWFmM1d3VFhyWUlzTlk5K3p6RGVwMjhmNXdNNjQvWEtN?=
 =?utf-8?B?WkJqOWlUY1Z4QndTdUtWMWlabzIzbysyNGxaOFZ6b2plMDE3NDV6WStoenIz?=
 =?utf-8?B?MklqK3Uyd3Z6WlBjM2hNYVY4dlJ0OWNqWVRmano5L0UvSUY2ZFNKSmFQdEVX?=
 =?utf-8?B?TktMYXRnSzY4aklOM0l0VWlGQ0dhMjVuY21wTW5RQStCajlOaEFkeHZDSWdi?=
 =?utf-8?B?a3czNElubDdSTGpFNnU5OTErMG8vYWZwbjloMEx3blIzN25zTE54aHlRbUxl?=
 =?utf-8?B?VFp1eis2SFRrZDJkQVNXQUs1dXVKeXJOTytMM2FlOUVmcjNRdEcweVNrTU50?=
 =?utf-8?B?ZEdpUzczMGFTYmZxell6S1pEbTBCS1BOZkVXUG5HNG9sS01pekJYUnczSCtl?=
 =?utf-8?B?aE1pNDFqMytZbjRieWtWK2dQcW00VjlxUlJ6YURhcXRWZXpRQzlibVh3aVBQ?=
 =?utf-8?B?THMzR21NS3NkeWtYazU1cDZqOTdpOTdoSHI3V3JSWkJlc2VpbC9leCtFdFFU?=
 =?utf-8?B?c0RJMDJ2YUhFdklUV2Npd2V4YTRITTZsNDZ6RTVrcTQweUMxWGd1bndlS21F?=
 =?utf-8?B?RlJndDFFcVNlTit4aVhPRnRrRWdud2FMNkx4MThjbFZFVXFmNTdXTXRkb3NF?=
 =?utf-8?B?aWRMYjUvV242RzNOTGthT2VJd3lvQkFpVjhFQitKOHZQNVZ3MHk5YjZEQzNO?=
 =?utf-8?B?M25LWlZQcmx2aVBxQWt0WDFRejJ5dUhNbHBibE1TTnlVdkZHWUxKdlBNVDVn?=
 =?utf-8?B?dGozSXREM2tuakJMZGprbk1UUHJ5a1lBSWkreklkRTlFd3FjdzdDc3hrZ3NK?=
 =?utf-8?B?VnRHejZsVVBDTm80TS9mUGp3VnVEWmFybktVSGdEaEtUc3N0Vld1SGh0VjRP?=
 =?utf-8?B?SmtPa0Naalpma3kwVHBIT3hoclErWmhPN1V3VmhkSWhCZ1l2WTVWMGNKdmJn?=
 =?utf-8?B?TFlEeFpyMmlSYnBpYUNXK3RGSjdLYjZDUXo4a1FQVTZtR21HVVRhR1QwTy9W?=
 =?utf-8?B?WHhoSXFEM2s1OUJIM3VPMFdPNE40TkpNWERucFN0OVpkU004YXd1S0hCK1gv?=
 =?utf-8?B?dXh0WnVWUUF3b1RLbktpVDZKRzRaa2Q4TklETnlMeWZkMSt1bzBNbkZibWFv?=
 =?utf-8?B?Y01yRDJlZVZ1Rk9pTG8vMElROXlVeVhDQ3NtY2dHbUxyWlVVTTAwQ2NXKzlL?=
 =?utf-8?B?cnVzUk9ZejhvbW5sbmJMdFRkNVp4NmVaTEZSYnVwSjNWYjZVcno2b1BuN1FM?=
 =?utf-8?B?T1pXcVBUUFRwZXFMMHVvR25URi9KMHg2RWZYVG9tUGNNMnN5bEdVR2RTNmxu?=
 =?utf-8?B?ZEQyRTdaNGFkaG5XRG5HY3k0TGV3WllsYXJjYzliV0laZGhTV0NPTkgvQ0N4?=
 =?utf-8?B?RVpQaHkvQ2JVN09oRkp4TUNyNnpOdUdOLytYWXprQ0Z5OWxkR3kvOXFDOXB2?=
 =?utf-8?Q?/5KG1vWvXP4ZdNEkg1HPzsRxZ?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3ab80a1-c43f-46dd-da36-08ddde6dec36
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2025 15:43:05.4474
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Znyht2nrhWYP2fChyhX0iXyptAxXznqP4nB26aQ+onVnYmfG6ZL2KuPAMv2tZBpc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6328
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B5C153F71E
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.102.74:from];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[suse.de,linaro.org,kylinos.cn,amd.com,linux.intel.com,kernel.org,gmail.com,ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: PRSWOGW7PI7VZJBTJUAXVLHYLS4HCK62
X-Message-ID-Hash: PRSWOGW7PI7VZJBTJUAXVLHYLS4HCK62
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/amdgpu: Pin buffers while vmap'ing exported dma-buf objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PRSWOGW7PI7VZJBTJUAXVLHYLS4HCK62/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTguMDguMjUgMTc6MTcsIFRob21hcyBaaW1tZXJtYW5uIHdyb3RlOg0KPiBDdXJyZW50IGRt
YS1idWYgdm1hcCBzZW1hbnRpY3MgcmVxdWlyZSB0aGF0IHRoZSBtYXBwZWQgYnVmZmVyIHJlbWFp
bnMNCj4gaW4gcGxhY2UgdW50aWwgdGhlIGNvcnJlc3BvbmRpbmcgdnVubWFwIGhhcyBjb21wbGV0
ZWQuDQo+IA0KPiBGb3IgR0VNLVNITUVNLCB0aGlzIHVzZWQgdG8gYmUgZ3VhcmFudGVlZCBieSBh
IHBpbiBvcGVyYXRpb24gd2hpbGUgY3JlYXRpbmcNCj4gYW4gUy9HIHRhYmxlIGluIGltcG9ydC4g
R0VNLVNITUVOIGNhbiBub3cgaW1wb3J0IGRtYS1idWYgb2JqZWN0cyB3aXRob3V0DQo+IGNyZWF0
aW5nIHRoZSBTL0cgdGFibGUsIHNvIHRoZSBwaW4gaXMgbWlzc2luZy4gTGVhZHMgdG8gcGFnZS1m
YXVsdCBlcnJvcnMsDQo+IHN1Y2ggYXMgdGhlIG9uZSBzaG93biBiZWxvdy4NCj4gDQo+IFsgIDEw
Mi4xMDE3MjZdIEJVRzogdW5hYmxlIHRvIGhhbmRsZSBwYWdlIGZhdWx0IGZvciBhZGRyZXNzOiBm
ZmZmYzkwMTI3MDAwMDAwDQo+IFsuLi5dDQo+IFsgIDEwMi4xNTcxMDJdIFJJUDogMDAxMDp1ZGxf
Y29tcHJlc3NfaGxpbmUxNisweDIxOS8weDk0MCBbdWRsXQ0KPiBbLi4uXQ0KPiBbICAxMDIuMjQz
MjUwXSBDYWxsIFRyYWNlOg0KPiBbICAxMDIuMjQ1Njk1XSAgPFRBU0s+DQo+IFsgIDEwMi4yNDc3
Vjk1XSAgPyB2YWxpZGF0ZV9jaGFpbisweDI0ZS8weDVlMA0KPiBbICAxMDIuMjUxODA1XSAgPyBf
X2xvY2tfYWNxdWlyZSsweDU2OC8weGFlMA0KPiBbICAxMDIuMjU1ODA3XSAgdWRsX3JlbmRlcl9o
bGluZSsweDE2NS8weDM0MSBbdWRsXQ0KPiBbICAxMDIuMjYwMzM4XSAgPyBfX3BmeF91ZGxfcmVu
ZGVyX2hsaW5lKzB4MTAvMHgxMCBbdWRsXQ0KPiBbICAxMDIuMjY1Mzc5XSAgPyBsb2NhbF9jbG9j
a19ub2luc3RyKzB4Yi8weDEwMA0KPiBbICAxMDIuMjY5NjQyXSAgPyBfX2xvY2tfcmVsZWFzZS5p
c3JhLjArMHgxNmMvMHgyZTANCj4gWyAgMTAyLjI3NDI0Nl0gID8gbWFya19oZWxkX2xvY2tzKzB4
NDAvMHg3MA0KPiBbICAxMDIuMjc4MTc3XSAgdWRsX3ByaW1hcnlfcGxhbmVfaGVscGVyX2F0b21p
Y191cGRhdGUrMHg0M2UvMHg2ODAgW3VkbF0NCj4gWyAgMTAyLjI4NDYwNl0gID8gX19wZnhfdWRs
X3ByaW1hcnlfcGxhbmVfaGVscGVyX2F0b21pY191cGRhdGUrMHgxMC8weDEwIFt1ZGxdDQo+IFsg
IDEwMi4yOTE1NTFdICA/IGxvY2tkZXBfaGFyZGlycXNfb25fcHJlcGFyZS5wYXJ0LjArMHg5Mi8w
eDE3MA0KPiBbICAxMDIuMjk3MjA4XSAgPyBsb2NrZGVwX2hhcmRpcnFzX29uKzB4ODgvMHgxMzAN
Cj4gWyAgMTAyLjMwMTU1NF0gID8gX3Jhd19zcGluX3VubG9ja19pcnErMHgyNC8weDUwDQo+IFsg
IDEwMi4zMDU5MDFdICA/IHdhaXRfZm9yX2NvbXBsZXRpb25fdGltZW91dCsweDJiYi8weDNhMA0K
PiBbICAxMDIuMzExMDI4XSAgPyBkcm1fYXRvbWljX2hlbHBlcl9jYWxjX3RpbWVzdGFtcGluZ19j
b25zdGFudHMrMHgxNDEvMHgyMDANCj4gWyAgMTAyLjMxNzcxNF0gID8gZHJtX2F0b21pY19oZWxw
ZXJfY29tbWl0X3BsYW5lcysweDNiNi8weDEwMzANCj4gWyAgMTAyLjMyMzI3OV0gIGRybV9hdG9t
aWNfaGVscGVyX2NvbW1pdF9wbGFuZXMrMHgzYjYvMHgxMDMwDQo+IFsgIDEwMi4zMjg2NjRdICBk
cm1fYXRvbWljX2hlbHBlcl9jb21taXRfdGFpbCsweDQxLzB4YjANCj4gWyAgMTAyLjMzMzYyMl0g
IGNvbW1pdF90YWlsKzB4MjA0LzB4MzMwDQo+IFsuLi5dDQo+IFsgIDEwMi41Mjk5NDZdIC0tLVsg
ZW5kIHRyYWNlIDAwMDAwMDAwMDAwMDAwMDAgXS0tLQ0KPiBbICAxMDIuNjUxOTgwXSBSSVA6IDAw
MTA6dWRsX2NvbXByZXNzX2hsaW5lMTYrMHgyMTkvMHg5NDAgW3VkbF0NCj4gDQo+IEluIHRoaXMg
c3RhY2sgc3RyYWNlLCB1ZGwgKGJhc2VkIG9uIEdFTS1TSE1FTSkgaW1wb3J0ZWQgYW5kIHZtYXAn
ZWQgYQ0KPiBkbWEtYnVmIGZyb20gYW1kZ3B1LiBBbWRncHUgcmVsb2NhdGVkIHRoZSBidWZmZXIs
IHRoZXJlYnkgaW52YWxpZGF0aW5nIHRoZQ0KPiBtYXBwaW5nLg0KPiANCj4gUHJvdmlkZSBhIGN1
c3RvbSBkbWEtYnVmIHZtYXAgbWV0aG9kIGluIGFtZGdwdSB0aGF0IHBpbnMgdGhlIG9iamVjdCBi
ZWZvcmUNCj4gbWFwcGluZyBpdCdzIGJ1ZmZlcidzIHBhZ2VzIGludG8ga2VybmVsIGFkZHJlc3Mg
c3BhY2UuIERvIHRoZSBvcHBvc2l0ZSBpbg0KPiB2dW5tYXAuDQo+IA0KPiBOb3RlIHRoYXQgZG1h
LWJ1ZiB2bWFwIGRpZmZlcnMgZnJvbSBHRU0gdm1hcCBpbiBob3cgaXQgaGFuZGxlcyByZWxvY2F0
aW9uLg0KPiBXaGlsZSBkbWEtYnVmIHZtYXAga2VlcHMgdGhlIGJ1ZmZlciBpbiBwbGFjZSwgR0VN
IHZtYXAgcmVxdWlyZXMgdGhlIGNhbGxlcg0KPiB0byBrZWVwIHRoZSBidWZmZXIgaW4gcGxhY2Uu
IEhlbmNlLCB0aGlzIGZpeCBpcyBpbiBhbWRncHUncyBkbWEtYnVmIGNvZGUNCj4gaW5zdGVhZCBv
ZiBpdHMgR0VNIGNvZGUuDQo+IA0KPiBBIGRpc2N1c3Npb24gb2YgdmFyaW91cyBhcHByb2FjaGVz
IHRvIHNvbHZpbmcgdGhlIHByb2JsZW0gaXMgYXZhaWxhYmxlDQo+IGF0IFsxXS4NCj4gDQo+IHYy
Og0KPiAtIG9ubHkgdXNlIG1hcGFibGUgZG9tYWlucyAoQ2hyaXN0aWFuKQ0KPiAtIHRyeSBwaW5u
aW5nIHRvIGRvbWFpbnMgaW4gcHJlZmVyZWQgb3JkZXINCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFRo
b21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KPiBGaXhlczogNjYwY2Q0NDY1
OWEwICgiZHJtL3NobWVtLWhlbHBlcjogSW1wb3J0IGRtYWJ1ZiB3aXRob3V0IG1hcHBpbmcgaXRz
IHNnX3RhYmxlIikNCj4gUmVwb3J0ZWQtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFu
bkBzdXNlLmRlPg0KPiBDbG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC9i
YTFiZGZiOC1kYmY3LTQzNzItYmRjYi1kZjdlMDUxMWM3MDJAc3VzZS5kZS8NCj4gQ2M6IFNoaXhp
b25nIE91IDxvdXNoaXhpb25nQGt5bGlub3MuY24+DQo+IENjOiBUaG9tYXMgWmltbWVybWFubiA8
dHppbW1lcm1hbm5Ac3VzZS5kZT4NCj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxh
bmtob3JzdEBsaW51eC5pbnRlbC5jb20+DQo+IENjOiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtl
cm5lbC5vcmc+DQo+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAZ21haWwuY29tPg0KPiBDYzog
U2ltb25hIFZldHRlciA8c2ltb25hQGZmd2xsLmNoPg0KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1p
dC5zZW13YWxAbGluYXJvLm9yZz4NCj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPg0KPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQo+IENjOiBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcNCj4gTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVs
Lzk3OTJjNmMzLWEyYjgtNGIyYi1iNWJhLWZiYTE5YjE1M2UyMUBzdXNlLmRlLyAjIFsxXQ0KPiBT
aWduZWQtb2ZmLWJ5OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4NCj4g
LS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jIHwgNDEg
KysrKysrKysrKysrKysrKysrKystDQo+ICAxIGZpbGUgY2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X2RtYV9idWYuYw0KPiBpbmRleCA1NzQzZWJiMmYxYjcuLjQ3MWI0MWJkM2UyOSAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jDQo+IEBAIC0y
ODUsNiArMjg1LDQzIEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2RtYV9idWZfYmVnaW5fY3B1X2FjY2Vz
cyhzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1ZiwNCj4gIAlyZXR1cm4gcmV0Ow0KPiAgfQ0KPiAgDQo+
ICtzdGF0aWMgaW50IGFtZGdwdV9kbWFfYnVmX3ZtYXAoc3RydWN0IGRtYV9idWYgKmRtYV9idWYs
IHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4gK3sNCj4gKwlzdHJ1Y3QgZHJtX2dlbV9vYmplY3Qg
Km9iaiA9IGRtYV9idWYtPnByaXY7DQo+ICsJc3RydWN0IGFtZGdwdV9ibyAqYm8gPSBnZW1fdG9f
YW1kZ3B1X2JvKG9iaik7DQo+ICsJaW50IHJldDsNCj4gKw0KPiArCS8qDQo+ICsJICogUGluIHRv
IGtlZXAgYnVmZmVyIGluIHBsYWNlIHdoaWxlIGl0J3Mgdm1hcCdlZC4gVGhlIGFjdHVhbA0KPiAr
CSAqIGRvbWFpbiBpcyBub3QgdGhhdCBpbXBvcnRhbnQgYXMgbG9uZyBhcyBpdCdzIG1hcGFibGUu
IFVzaW5nDQo+ICsJICogR1RUIHNob3VsZCBiZSBjb21wYXRpYmxlIHdpdGggbW9zdCB1c2UgY2Fz
ZXMuIFZSQU0gYW5kIENQVQ0KPiArCSAqIGFyZSB0aGUgZmFsbGJhY2tzIGlmIHRoZSBidWZmZXIg
aGFzIGFscmVhZHkgYmVlbiBwaW5uZWQgdGhlcmUuDQo+ICsJICovDQo+ICsJcmV0ID0gYW1kZ3B1
X2JvX3BpbihibywgQU1ER1BVX0dFTV9ET01BSU5fR1RUKTsNCj4gKwlpZiAocmV0KSB7DQo+ICsJ
CXJldCA9IGFtZGdwdV9ib19waW4oYm8sIEFNREdQVV9HRU1fRE9NQUlOX1ZSQU0pOw0KDQpUaGF0
IG1ha2VzIGV2ZW4gbGVzcyBzZW5zZSA6KQ0KDQpUaGUgdmFsdWVzIGFyZSBhIG1hc2ssIHRyeSB0
aGlzOg0KDQpyZXQgPSBhbWRncHVfYm9fcGluKGJvLCBBTURHUFVfR0VNX0RPTUFJTl9HVFQgfCBB
TURHUFVfR0VNX0RPTUFJTl9WUkFNKTsNCg0KT3RoZXJ3aXNlIHRoZSBwaW4gY29kZSB3aWxsIHRy
eSB0byBtb3ZlIHRoZSBidWZmZXIgYXJvdW5kIHRvIHNhdGlzZnkgdGhlIGNvbnRyYWluIHlvdSBn
aXZlbi4NCg0KQW5kIGRvbid0IHVzZSB0aGUgQ1BVIGRvbWFpbiBoZXJlLCB0aGlzIHdpbGwgb3Ro
ZXJ3aXNlIHBvdGVudGlhbGx5IGJsb2NrIHN1Ym1pc3Npb24gbGF0ZXIgb24uDQoNClJlZ2FyZHMs
DQpDaHJpc3RpYW4uDQoNCj4gKwkJaWYgKHJldCkgew0KPiArCQkJcmV0ID0gYW1kZ3B1X2JvX3Bp
bihibywgQU1ER1BVX0dFTV9ET01BSU5fQ1BVKTsNCj4gKwkJCWlmIChyZXQpDQo+ICsJCQkJcmV0
dXJuIHJldDsNCj4gKwkJfQ0KPiArCX0NCj4gKwlyZXQgPSBkcm1fZ2VtX2RtYWJ1Zl92bWFwKGRt
YV9idWYsIG1hcCk7DQo+ICsJaWYgKHJldCkNCj4gKwkJYW1kZ3B1X2JvX3VucGluKGJvKTsNCj4g
Kw0KPiArCXJldHVybiByZXQ7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyB2b2lkIGFtZGdwdV9kbWFf
YnVmX3Z1bm1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1Ziwgc3RydWN0IGlvc3lzX21hcCAqbWFw
KQ0KPiArew0KPiArCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqID0gZG1hX2J1Zi0+cHJpdjsN
Cj4gKwlzdHJ1Y3QgYW1kZ3B1X2JvICpibyA9IGdlbV90b19hbWRncHVfYm8ob2JqKTsNCj4gKw0K
PiArCWRybV9nZW1fZG1hYnVmX3Z1bm1hcChkbWFfYnVmLCBtYXApOw0KPiArCWFtZGdwdV9ib191
bnBpbihibyk7DQo+ICt9DQo+ICsNCj4gIGNvbnN0IHN0cnVjdCBkbWFfYnVmX29wcyBhbWRncHVf
ZG1hYnVmX29wcyA9IHsNCj4gIAkuYXR0YWNoID0gYW1kZ3B1X2RtYV9idWZfYXR0YWNoLA0KPiAg
CS5waW4gPSBhbWRncHVfZG1hX2J1Zl9waW4sDQo+IEBAIC0yOTQsOCArMzMxLDggQEAgY29uc3Qg
c3RydWN0IGRtYV9idWZfb3BzIGFtZGdwdV9kbWFidWZfb3BzID0gew0KPiAgCS5yZWxlYXNlID0g
ZHJtX2dlbV9kbWFidWZfcmVsZWFzZSwNCj4gIAkuYmVnaW5fY3B1X2FjY2VzcyA9IGFtZGdwdV9k
bWFfYnVmX2JlZ2luX2NwdV9hY2Nlc3MsDQo+ICAJLm1tYXAgPSBkcm1fZ2VtX2RtYWJ1Zl9tbWFw
LA0KPiAtCS52bWFwID0gZHJtX2dlbV9kbWFidWZfdm1hcCwNCj4gLQkudnVubWFwID0gZHJtX2dl
bV9kbWFidWZfdnVubWFwLA0KPiArCS52bWFwID0gYW1kZ3B1X2RtYV9idWZfdm1hcCwNCj4gKwku
dnVubWFwID0gYW1kZ3B1X2RtYV9idWZfdnVubWFwLA0KPiAgfTsNCj4gIA0KPiAgLyoqDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
