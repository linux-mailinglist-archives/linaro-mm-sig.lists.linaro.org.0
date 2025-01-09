Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0D8A07869
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jan 2025 15:02:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9BE8F44972
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jan 2025 14:02:13 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2053.outbound.protection.outlook.com [40.107.237.53])
	by lists.linaro.org (Postfix) with ESMTPS id 8410044121
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jan 2025 14:02:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="s/j5gsfL";
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.237.53 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CnsQocUuNR9t29WP9ngsDzVEo1NLrJYzsQwUp7IkgiCKHWvN6GghrOH1z7zvlDxiT22aYnM0QDYrbR8aC8BKOXTd7oQ7qXavp0rrKMcyeNKUnVbxyh9rGkZRPfNhBuHLpNZ7ixdxiOtf5A+R6s6bBMF07Wb+PoO7tYNdXkHKzgW7RIuYmB7jHK5/i5Y10aais2BfjFS6bIhpaGBDNtReexPkiTc97OJ3RN7swk7igAUmo2h4u8kmChHqm4Uyp9aMfumrjAws9wjFL/tFPR04LVwpGA87SNoA9H2ojhnGo2dnMx4Z4WGxxCqBZa9LzwBDA3yl76hDjc2VFWmd+r7nnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IKg1a7lJhVVLRXTkR+NNWnM+hjksSljw2HtNVuowqQc=;
 b=THjMMSxDkTd7koJ9kseZPiZg03vY4gI650cOC3ZWjVZt+ywsmvLS4XdRYWddeaKtdWk61EBN6pIIdXT1qnmCnEi2JcQpnHkQSogAZwd2i5crCVJzFfsjGjV3YRWe7vfbH4j+06ma+Y4po4QSkoTYm4lS8TevVo7OKPINQpofoE2FpLFPEFgzk9Pi4lTZ/zRCLFiDq+V/el1gAZzlDQ2sliVR3hWDF0fd3vDQ20zS99r4U+DcAoQbz7wf7RoLXjSHy/WVcm5jamcnTgXOJkFcFYSNSCn/fV8kl/3Y5e6/mI8k1eratn2pSqnRt5QZBdexOqpDqhMC8kLSqI6QIYHB0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IKg1a7lJhVVLRXTkR+NNWnM+hjksSljw2HtNVuowqQc=;
 b=s/j5gsfLi3dG5F8tw7/HT4yutD8tj3KdqQFrjZAN1DWOJd7ypoIzZgMZFFRB/W0jdI6L4x1PGgwN9EybLGLaAhU8QixX9cpV+d+6f3zQRi4w7b4jJPjwTUchzRVXSGN3PfYU8f+p52kU6BPrtAaWBHLx/0u9aGtnZwTfGjP94xs=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by BL3PR12MB6571.namprd12.prod.outlook.com (2603:10b6:208:38e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.13; Thu, 9 Jan
 2025 14:02:04 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8335.010; Thu, 9 Jan 2025
 14:02:03 +0000
Message-ID: <a52651d1-16c3-4038-bea8-c6ec1812eb3d@amd.com>
Date: Thu, 9 Jan 2025 15:01:56 +0100
User-Agent: Mozilla Thunderbird
To: Philipp Stanner <phasta@kernel.org>, Luben Tuikov <ltuikov89@gmail.com>,
 Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>,
 Philipp Stanner <pstanner@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>
References: <20250109133710.39404-2-phasta@kernel.org>
 <20250109133710.39404-4-phasta@kernel.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250109133710.39404-4-phasta@kernel.org>
X-ClientProxiedBy: FR0P281CA0190.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ab::15) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|BL3PR12MB6571:EE_
X-MS-Office365-Filtering-Correlation-Id: 9c0da7f4-7290-429b-f7ad-08dd30b631fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|7416014|1800799024|366016|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?UmJDMFRWT3M2bFd0SkdWamh5dEl4U1c0dmRXWUtZU2JnU2crQ25jbzU1YnMx?=
 =?utf-8?B?VmZSQncyQzUrUWZsQjJrUFN0SGw2ZU9xMEQ5MkRpa0dlYndvTTI0SDdTdWRW?=
 =?utf-8?B?WEVudVNLN3hOa3AydlcvaVc4ZUJiYU9sOGRzQ2VUdTNYRDhIYUh0Z2c4c2sv?=
 =?utf-8?B?ejAxUloyWjNoT2xkODRqeHpuK0ozemJSUzM1YndvVHdxdXM1ZmVqa3UwZ1Ev?=
 =?utf-8?B?WU5LM1NaS3Q0K253enlmWHZBV0xDOTM1NWUyTE1JQklTdUwweS9uZldrVjFi?=
 =?utf-8?B?R05naFZTTXhoMERSekhvVFFCMjcxVi9idTR4eHZpYVUvU0YxNDdUR24yU212?=
 =?utf-8?B?cStVZGEvWVFoTG9lNFhlYkpaT01nd3FDc2ZEQjd1QzJDd1NNaU5va0lYeDli?=
 =?utf-8?B?NjFIanEwb3dFU2toRkFCQTlQb2t3bmhJcDExdmZZUmRwUGNHRVNqdHZHNFNz?=
 =?utf-8?B?ckwrNEtXMjBXODV2ajFtWnpxbHkxd0EzS3lJeHpsYmdPd0VZTVB0Q0puaWx3?=
 =?utf-8?B?Y0FObWFib1NrNGhYbWJqaDZJTjE5dzVBSzZUMy83VEc2a1d1WTBoS2M5d0Zk?=
 =?utf-8?B?ZUwwWjRESXpuQmNBem10bklqTThLU05rU2sxZ0dJZWltd3BWaTNIbi92OXQv?=
 =?utf-8?B?cWNEejdwMzRDbDZGaEEyemRHNHQzVWFsSzQ0V2xSbkNVL21vOWF5a0k1QmRp?=
 =?utf-8?B?Z1E0M2dsU2VGTndTNjZIcEtXMGVEM2ZXL1lIaXdpelRVOVJ0OTdJODV3dGxv?=
 =?utf-8?B?ZDdiRUh6ZWJiUGk0VHYrakpDTjdOV2xQVVBad0JseGh5NThlcmhaWWdxSG05?=
 =?utf-8?B?OWlNUGNIbEtLTjJIdTZsMERRdWdSSmhTaExUWldDbWVjOERES1ZvY3IrTmgr?=
 =?utf-8?B?UDZUcHBFemlETXpSem5DRnNja2RaYno5ZHBoZFRZQmdQbnVjZkN4R3JrVVNP?=
 =?utf-8?B?N2xqYnRmNitsMkpRUEpWajVFS0tjMnhNTmtyY2R2MGhyWWtwcG1JTmJmb3Ni?=
 =?utf-8?B?cWtTdDZFMDJKYUNOYnBCUmtWR1FFai9FR2gyTm14NUtEK21vVnBleDRIY2pt?=
 =?utf-8?B?dlkrckxWWVRWMkNZS1U5R3JFL2Z4OG5JaUl2Yk1LWFI3LzZhLzBlNGxLeU1a?=
 =?utf-8?B?VmNWS2lGSU9xWkd6MDhNTGZIN2d4ODZ5Tk1pUEViTFNuYnFiTnYzK3k5RnlK?=
 =?utf-8?B?NUROU1o2OEZ2K2FWQXRhYm5oYVl0cURTbWZlVzJFbTlaT2lMaWRWQU1LS0gv?=
 =?utf-8?B?b1lFQkdQaTQ1dW5sY3h2STBJZkQrR0tSc3krWjdqTFVrQVJlclZEUVZVcTFH?=
 =?utf-8?B?U0VWU3JoS1hSRFFaMDMvd3pJV0NYeFE4OHNyckNvK2tZQ3dhd3lWeWdHWW02?=
 =?utf-8?B?NTQ5SG5VSy9ZMTFLeVNsakZvdnF5SmdpRnBhZW0rNDM1aUtZSm82djdER1Rl?=
 =?utf-8?B?UlI1dTJLWHFxUUNMSndZMi9LYSt6Y2FiRjc5MG11NUExY3grRWxaUFQ2cnRn?=
 =?utf-8?B?cHdGbjNJaGdpOGZKcXhVblAyRHAzSFFDQVNBUHd5OXRsbThjQld0ZnRRL1hD?=
 =?utf-8?B?OTNCOVhHaFIvdldKK0ZzWGNtWWNKQXkvN1VmUmozbnJMeFRiNGVOK3czSUlS?=
 =?utf-8?B?dXFyRSs3RkYvbGdlVzhoT1NCdy9xVFZ6bzdCY1ZCWlJlV0x0T3dmLzgwc1lW?=
 =?utf-8?B?Q3ZmV0xONDlINmtuVndiOUxvejdrd1hqZ0NJOEU4N0l6VndRZnlwNExqZHlr?=
 =?utf-8?B?TzJzcVd5blNubE4wTklPWDRMTFlNR2RZczJHK1VjalZJdmd5OGtLZC9xblgx?=
 =?utf-8?B?YUVkdnZRamVuRHh0cit2TE9HdXFub29QQ3dxT2ZyY3ByV2lkeFpxdklQc0Nt?=
 =?utf-8?B?OFhMRU9MaStoc1ludTUxODB0RnpyUk9rS282aHBITVQ2QUNZSVQrNHkydWdw?=
 =?utf-8?Q?yoAaunqCats=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dGprTENRZjI3cUNTSlRpMDU0enVETWpCbk1iN0xlUk15cXNvdGV1VEhrSGZW?=
 =?utf-8?B?RS93R2E5Wng1MkxVN0Q0RGNUYTFSZWsrbzNnV21DdW12cEwxdVVteVNpeUUx?=
 =?utf-8?B?MjFzOE05TUpiRzdBSGxvSVpmTXlMR0tYQWg4TEcrMGl1UmI2THUrb3hxQy90?=
 =?utf-8?B?L0dUMFh2QmlINXREMzROQ2E3WXlKZmpEeU5yNlpZcklsa3UydlAxT2grbnEr?=
 =?utf-8?B?S0pxZnZJVkZkUWdFSHI1NWlwajhzdzdnMWFBUkpMSTJ3djZKNUR1OVJNYjRM?=
 =?utf-8?B?T0hzRXFYTVMySk0xdi91WldVYXgyUnFOc1VlSVFqSUZNOUNMbkJ1d2crZzkz?=
 =?utf-8?B?L3Jxa2Roalc2V3F0REJPVms4QWlCSWJ4cGdzRmhVUnN4Y0ZJUlJGc3hBd3U1?=
 =?utf-8?B?V2hjUVFmaU9MRUJTc1ZJbzdSYWJZeitBWE43NU83bDdWaDNkU0pXYnZLNm4x?=
 =?utf-8?B?WEVZZVNsSnI1QXRXcVBabzRkZ3ZrMy9yQm9xVVY1UHBuSTRZQXZHTmoyVkwx?=
 =?utf-8?B?R2cvb3FUSVkvc3dTL0V0c1ZDWkZYb1FST09LOTArWi8zelYyNHhkejJxcGY3?=
 =?utf-8?B?azEzL2tYM1l4ZlVaNVJma0c4UzYrYm1pTXhjandPNWcvOThMMzFNS2tvZTNE?=
 =?utf-8?B?cTF6cTl2bkFtNS9DWG04cUpLOUt3a0pMeXdhcS96MDlNQnZRWGJ3SHFCbFg3?=
 =?utf-8?B?aDdKZEtKOWxXam5XTStXRlR6Z1ZzdmxYS2FlRmFVRDVIOXAwNjlMNGZoN2pL?=
 =?utf-8?B?WnNPaHg0bFVzZUVhWktrUXo4WW9QMU1hK0xUcjhJNlhYVzhiSThxTitJL0lS?=
 =?utf-8?B?Y21mbHRCeUhtYk8rZW4vWTNxdkJjeFZ1NCszQS9WSVhnOWRlT0JrMVB0cWVL?=
 =?utf-8?B?ZWpxM3c3MjJMek9yV1A0QnQwNlNscm1ia0htelErVWxTWTdmMktBKzNhRkY3?=
 =?utf-8?B?SFQyYSsvSE5UdERZUDMvdmlGR0p5anErWERvZ3VXOWYrWnF2TEtXczd4MzV6?=
 =?utf-8?B?ajhSRzdTTVU0V0JSQmJNb1JkL0Znb1hqOFdDQXZvQ0l2dzFDTVQ0bDFvWVhX?=
 =?utf-8?B?U1o5djZJODM1K3FpaUdudkdneXREL1Fnd1N5TzFzcmpuaTd1V1B4N21DSjRi?=
 =?utf-8?B?S0pHNzhtMGJ5OGZkbWlCS0U0T2xCRlQyMDVwb1E4V251RlEzSHI4R2FNUVZT?=
 =?utf-8?B?aVRmbDhRbVRSZStpUjRiM1BJdFYydTllV2FlREhEQUR4TWozeHBEMmgvT1hB?=
 =?utf-8?B?c0FhZXU4UTFhK2krdEgvYnh6SEJ6c1lTa2N1VjdDclB2K084eTVVVVBsYVNs?=
 =?utf-8?B?UkdINUdQemYvTEFBL3lNb1ZkTWdIUlZvMWJ1aTMrY0FVelhYUWk3ZDU3TmVl?=
 =?utf-8?B?eEg4V2Rud21QNWRVK1ZNMXJicklxRUZZMlJ2Z2oyWmE4TFNiS29IK2dHSlFv?=
 =?utf-8?B?U2lLQjZrdlhLYlB5c3JFZ1Z5MTFCa0xVOTRWNTJ4NlhRZ1JKbDF5VkROUXhz?=
 =?utf-8?B?MmxQQ1FmZVBDTUxhdTJVZi8yM0s2TVY5c3pGRFF4MUJ5eXVibDc1S2RxaGlU?=
 =?utf-8?B?MzlraHZSc1ZXa21KdTE3TWUyVlZUOXhoK1pmWDQ3Qm1hYmpmZm9lR0JKMmxZ?=
 =?utf-8?B?bDBhbjVxWUI5YXpqOUNoeWxqcnFCY29FUTBqK0U3eFN0c3hEait1eW5PN3NQ?=
 =?utf-8?B?enkvRThESDQ4LzZ1MS90S2FndzJJeHUzb1lHRlZJblZJYWxFRTYza1NnbFFy?=
 =?utf-8?B?SFpFNkZ1RUp2emVFRlZpdENoTk1sbW5KVGhYZHVWZWhuQkRHZnZWQWhLdmxt?=
 =?utf-8?B?SVV3bXdIcExlVWVOYUdOSG5xSzl3ck9wNy9tV2RWdGkzN3o0MDJtNXVSK1hz?=
 =?utf-8?B?UzRsTGxCL0tMdzNtTDB5QllPUDZwU0dTV1JhdkpYZnoxUEhBd0plTm1jK0hm?=
 =?utf-8?B?RVU5ek1tRmI1d2VvU1FkVU5HU0NnRHQ5bHJsWmN1cjFmKzFWaEhoZEFvN0Yv?=
 =?utf-8?B?aDdLQkg5Y2lISnFlYk9OS1BaVlNhNHpBeGFoZHp6UnJLZDB6eFFwQzNkeFFx?=
 =?utf-8?B?Z0lkQXRHOVVZM0NHMFBzYlNlTldsQUJMMUpaYTd5eHlyNUFLVmlNcmZUWVpJ?=
 =?utf-8?Q?mmd+QW0yC+4xjc43xw4KXnxL2?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c0da7f4-7290-429b-f7ad-08dd30b631fb
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2025 14:02:03.8806
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WA9TmdmLrgK1o2LpY8LfxJp6ce1BaFNDVYB9Yh1NJ9wxp6MRpsQOAjsnqhfxahNC
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR12MB6571
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8410044121
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.237.53:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,intel.com,redhat.com,linux.intel.com,suse.de,ffwll.ch,linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.237.53:from];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: GVDRFEEORZ3TOLKMIB6XMF3TIWCXLEF3
X-Message-ID-Hash: GVDRFEEORZ3TOLKMIB6XMF3TIWCXLEF3
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/3] drm/sched: Document run_job() refcount hazard
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GVDRFEEORZ3TOLKMIB6XMF3TIWCXLEF3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDkuMDEuMjUgdW0gMTQ6Mzcgc2NocmllYiBQaGlsaXBwIFN0YW5uZXI6DQo+IEZyb206IFBo
aWxpcHAgU3Rhbm5lciA8cHN0YW5uZXJAcmVkaGF0LmNvbT4NCj4NCj4gZHJtX3NjaGVkX2JhY2tl
bmRfb3BzLnJ1bl9qb2IoKSByZXR1cm5zIGEgZG1hX2ZlbmNlIGZvciB0aGUgc2NoZWR1bGVyLg0K
PiBUaGF0IGZlbmNlIGlzIHNpZ25hbGxlZCBieSB0aGUgZHJpdmVyIG9uY2UgdGhlIGhhcmR3YXJl
IGNvbXBsZXRlZCB0aGUNCj4gYXNzb2NpYXRlZCBqb2IuIFRoZSBzY2hlZHVsZXIgZG9lcyBub3Qg
aW5jcmVtZW50IHRoZSByZWZlcmVuY2UgY291bnQgb24NCj4gdGhhdCBmZW5jZSwgYnV0IGltcGxp
Y2l0bHkgZXhwZWN0cyB0byBpbmhlcml0IHRoaXMgZmVuY2UgZnJvbSBydW5fam9iKCkuDQo+DQo+
IFRoaXMgaXMgcmVsYXRpdmVseSBzdWJ0bGUgYW5kIHByb25lIHRvIG1pc3VuZGVyc3RhbmRpbmdz
Lg0KPg0KPiBUaGlzIGltcGxpZXMgdGhhdCwgdG8ga2VlcCBhIHJlZmVyZW5jZSBmb3IgaXRzZWxm
LCBhIGRyaXZlciBuZWVkcyB0bw0KPiBjYWxsIGRtYV9mZW5jZV9nZXQoKSBpbiBhZGRpdGlvbiB0
byBkbWFfZmVuY2VfaW5pdCgpIGluIHRoYXQgY2FsbGJhY2suDQo+DQo+IEl0J3MgZnVydGhlciBj
b21wbGljYXRlZCBieSB0aGUgZmFjdCB0aGF0IHRoZSBzY2hlZHVsZXIgZXZlbiBkZWNyZW1lbnRz
DQo+IHRoZSByZWZjb3VudCBpbiBkcm1fc2NoZWRfcnVuX2pvYl93b3JrKCkgc2luY2UgaXQgY3Jl
YXRlZCBhIG5ldw0KPiByZWZlcmVuY2UgaW4gZHJtX3NjaGVkX2ZlbmNlX3NjaGVkdWxlZCgpLiBJ
dCBkb2VzLCBob3dldmVyLCBzdGlsbCB1c2UNCj4gaXRzIHBvaW50ZXIgdG8gdGhlIGZlbmNlIGFm
dGVyIGNhbGxpbmcgZG1hX2ZlbmNlX3B1dCgpIC0gd2hpY2ggaXMgc2FmZQ0KPiBiZWNhdXNlIG9m
IHRoZSBhZm9yZW1lbnRpb25lZCBuZXcgcmVmZXJlbmNlLCBidXQgYWN0dWFsbHkgc3RpbGwgdmlv
bGF0ZXMNCj4gdGhlIHJlZmNvdW50aW5nIHJ1bGVzLg0KPg0KPiBJbXByb3ZlIHRoZSBleHBsYW5h
dG9yeSBjb21tZW50IGZvciB0aGF0IGRlY3JlbWVudC4NCj4NCj4gTW92ZSB0aGUgY2FsbCB0byBk
bWFfZmVuY2VfcHV0KCkgdG8gdGhlIHBvc2l0aW9uIGJlaGluZCB0aGUgbGFzdCB1c2FnZQ0KPiBv
ZiB0aGUgZmVuY2UuDQo+DQo+IERvY3VtZW50IHRoZSBuZWNlc3NpdHkgdG8gaW5jcmVtZW50IHRo
ZSByZWZlcmVuY2UgY291bnQgaW4NCj4gZHJtX3NjaGVkX2JhY2tlbmRfb3BzLnJ1bl9qb2IoKS4N
Cj4NCj4gU2lnbmVkLW9mZi1ieTogUGhpbGlwcCBTdGFubmVyIDxwc3Rhbm5lckByZWRoYXQuY29t
Pg0KPiAtLS0NCj4gICBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyB8IDEw
ICsrKysrKystLS0NCj4gICBpbmNsdWRlL2RybS9ncHVfc2NoZWR1bGVyLmggICAgICAgICAgICB8
IDE5ICsrKysrKysrKysrKysrKy0tLS0NCj4gICAyIGZpbGVzIGNoYW5nZWQsIDIyIGluc2VydGlv
bnMoKyksIDcgZGVsZXRpb25zKC0pDQo+DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
c2NoZWR1bGVyL3NjaGVkX21haW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRf
bWFpbi5jDQo+IGluZGV4IDU3ZGE4NDkwODc1Mi4uNWY0NmMwMWViMDFlIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYw0KPiBAQCAtMTIxOCwxNSArMTIxOCwxOSBA
QCBzdGF0aWMgdm9pZCBkcm1fc2NoZWRfcnVuX2pvYl93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAq
dykNCj4gICAJZHJtX3NjaGVkX2ZlbmNlX3NjaGVkdWxlZChzX2ZlbmNlLCBmZW5jZSk7DQo+ICAg
DQo+ICAgCWlmICghSVNfRVJSX09SX05VTEwoZmVuY2UpKSB7DQo+IC0JCS8qIERyb3AgZm9yIG9y
aWdpbmFsIGtyZWZfaW5pdCBvZiB0aGUgZmVuY2UgKi8NCj4gLQkJZG1hX2ZlbmNlX3B1dChmZW5j
ZSk7DQo+IC0NCj4gICAJCXIgPSBkbWFfZmVuY2VfYWRkX2NhbGxiYWNrKGZlbmNlLCAmc2NoZWRf
am9iLT5jYiwNCj4gICAJCQkJCSAgIGRybV9zY2hlZF9qb2JfZG9uZV9jYik7DQo+ICAgCQlpZiAo
ciA9PSAtRU5PRU5UKQ0KPiAgIAkJCWRybV9zY2hlZF9qb2JfZG9uZShzY2hlZF9qb2IsIGZlbmNl
LT5lcnJvcik7DQo+ICAgCQllbHNlIGlmIChyKQ0KPiAgIAkJCURSTV9ERVZfRVJST1Ioc2NoZWQt
PmRldiwgImZlbmNlIGFkZCBjYWxsYmFjayBmYWlsZWQgKCVkKVxuIiwgcik7DQo+ICsNCj4gKwkJ
LyoNCj4gKwkJICogc19mZW5jZSB0b29rIGEgbmV3IHJlZmVyZW5jZSB0byBmZW5jZSBpbiB0aGUg
Y2FsbCB0bw0KPiArCQkgKiBkcm1fc2NoZWRfZmVuY2Vfc2NoZWR1bGVkKCkgYWJvdmUuIFRoZSBy
ZWZlcmVuY2UgcGFzc2VkIGJ5DQo+ICsJCSAqIHJ1bl9qb2IoKSBhYm92ZSBpcyBub3cgbm90IG5l
ZWRlZCBhbnkgbG9uZ2VyLiBEcm9wIGl0Lg0KPiArCQkgKi8NCj4gKwkJZG1hX2ZlbmNlX3B1dChm
ZW5jZSk7DQo+ICAgCX0gZWxzZSB7DQo+ICAgCQlkcm1fc2NoZWRfam9iX2RvbmUoc2NoZWRfam9i
LCBJU19FUlIoZmVuY2UpID8NCj4gICAJCQkJICAgUFRSX0VSUihmZW5jZSkgOiAwKTsNCj4gZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaCBiL2luY2x1ZGUvZHJtL2dwdV9z
Y2hlZHVsZXIuaA0KPiBpbmRleCA5NWUxNzUwNGU0NmEuLmQ1Y2QyYTc4ZjI3YyAxMDA2NDQNCj4g
LS0tIGEvaW5jbHVkZS9kcm0vZ3B1X3NjaGVkdWxlci5oDQo+ICsrKyBiL2luY2x1ZGUvZHJtL2dw
dV9zY2hlZHVsZXIuaA0KPiBAQCAtNDIwLDEwICs0MjAsMjEgQEAgc3RydWN0IGRybV9zY2hlZF9i
YWNrZW5kX29wcyB7DQo+ICAgCQkJCQkgc3RydWN0IGRybV9zY2hlZF9lbnRpdHkgKnNfZW50aXR5
KTsNCj4gICANCj4gICAJLyoqDQo+IC0gICAgICAgICAqIEBydW5fam9iOiBDYWxsZWQgdG8gZXhl
Y3V0ZSB0aGUgam9iIG9uY2UgYWxsIG9mIHRoZSBkZXBlbmRlbmNpZXMNCj4gLSAgICAgICAgICog
aGF2ZSBiZWVuIHJlc29sdmVkLiAgVGhpcyBtYXkgYmUgY2FsbGVkIG11bHRpcGxlIHRpbWVzLCBp
Zg0KPiAtCSAqIHRpbWVkb3V0X2pvYigpIGhhcyBoYXBwZW5lZCBhbmQgZHJtX3NjaGVkX2pvYl9y
ZWNvdmVyeSgpDQo+IC0JICogZGVjaWRlcyB0byB0cnkgaXQgYWdhaW4uDQo+ICsJICogQHJ1bl9q
b2I6IENhbGxlZCB0byBleGVjdXRlIHRoZSBqb2Igb25jZSBhbGwgb2YgdGhlIGRlcGVuZGVuY2ll
cw0KPiArCSAqIGhhdmUgYmVlbiByZXNvbHZlZC4gVGhpcyBtYXkgYmUgY2FsbGVkIG11bHRpcGxl
IHRpbWVzLCBpZg0KPiArCSAqIHRpbWVkb3V0X2pvYigpIGhhcyBoYXBwZW5lZCBhbmQgZHJtX3Nj
aGVkX2pvYl9yZWNvdmVyeSgpIGRlY2lkZXMgdG8NCj4gKwkgKiB0cnkgaXQgYWdhaW4uDQoNCkkg
anVzdCBjYW1lIHRvIHJlYWxpemUgdGhhdCB0aGlzIGhhY2sgd2l0aCBjYWxsaW5nIHJ1bl9qb2Ig
bXVsdGlwbGUgDQp0aW1lcyB3b24ndCB3b3JrIGFueSBtb3JlIHdpdGggdGhpcyBwYXRjaCBoZXJl
Lg0KDQpUaGUgYmFja2dyb3VuZCBpcyB0aGF0IHlvdSBjYW4ndCBhbGxvY2F0ZSBtZW1vcnkgZm9y
IGEgbmV3bHkgcmV0dXJuZWQgDQpmZW5jZSBhbmQgYXMgZmFyIGFzIEkga25vdyBubyBkcml2ZXIg
cHJlIGFsbG9jYXRlcyBtdWx0aXBsZSBIVyBmZW5jZXMgDQpmb3IgYSBqb2IuDQoNClNvIGF0IGxl
YXN0IGFtZGdwdSB1c2VkIHRvIHJlLXVzZSB0aGUgc2FtZSBIVyBmZW5jZSBhcyByZXR1cm4gb3Zl
ciBhbmQgDQpvdmVyIGFnYWluLCBqdXN0IHJlLWluaXRpYWxpemVkIHRoZSByZWZlcmVuY2UgY291
bnQuIEkgcmVtb3ZlZCB0aGF0IGhhY2sgDQpmcm9tIGFtZGdwdSwgYnV0IGp1c3QgRllJIGl0IGNv
dWxkIGJlIHRoYXQgb3RoZXIgZHJpdmVyIGRpZCB0aGUgc2FtZS4NCg0KQXBhcnQgZnJvbSB0aGF0
IGNvbmNlcm4gSSB0aGluayB0aGF0IHRoaXMgcGF0Y2ggaXMgcmVhbGx5IHRoZSByaWdodCANCnRo
aW5nIGFuZCB0aGF0IGRyaXZlciBoYWNrcyByZWx5aW5nIG9uIHRoZSBvcmRlciBvZiBkcm9wcGlu
ZyByZWZlcmVuY2VzIA0KYXJlIGZ1bmRhbWVudGFsbHkgYnJva2VuIGFwcHJvYWNoZXMuDQoNClNv
IGZlZWwgZnJlZSB0byBhZGQgUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4uDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gKwkgKg0KPiAr
CSAqIEBzY2hlZF9qb2I6IHRoZSBqb2IgdG8gcnVuDQo+ICsJICoNCj4gKwkgKiBSZXR1cm5zOiBk
bWFfZmVuY2UgdGhlIGRyaXZlciBtdXN0IHNpZ25hbCBvbmNlIHRoZSBoYXJkd2FyZSBoYXMNCj4g
KwkgKgljb21wbGV0ZWQgdGhlIGpvYiAoImhhcmR3YXJlIGZlbmNlIikuDQo+ICsJICoNCj4gKwkg
KiBOb3RlIHRoYXQgdGhlIHNjaGVkdWxlciBleHBlY3RzIHRvICdpbmhlcml0JyBpdHMgb3duIHJl
ZmVyZW5jZSB0bw0KPiArCSAqIHRoaXMgZmVuY2UgZnJvbSB0aGUgY2FsbGJhY2suIEl0IGRvZXMg
bm90IGludm9rZSBhbiBleHRyYQ0KPiArCSAqIGRtYV9mZW5jZV9nZXQoKSBvbiBpdC4gQ29uc2Vx
dWVudGx5LCB0aGlzIGNhbGxiYWNrIG11c3QgdGFrZSBhDQo+ICsJICogcmVmZXJlbmNlIGZvciB0
aGUgc2NoZWR1bGVyLCBhbmQgYWRkaXRpb25hbCBvbmVzIGZvciB0aGUgZHJpdmVyJ3MNCj4gKwkg
KiByZXNwZWN0aXZlIG5lZWRzLg0KPiAgIAkgKi8NCj4gICAJc3RydWN0IGRtYV9mZW5jZSAqKCpy
dW5fam9iKShzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAqc2NoZWRfam9iKTsNCj4gICANCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
