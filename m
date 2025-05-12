Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B689AB3170
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 May 2025 10:21:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6865845536
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 May 2025 08:21:05 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2087.outbound.protection.outlook.com [40.107.237.87])
	by lists.linaro.org (Postfix) with ESMTPS id 80F6443CF9
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 May 2025 08:20:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=w9sfjBtq;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.237.87 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GR5RkY0uEPsYQ/p2w5uCHYY6rWo0qUVZLT5PXkVMMNuOwqEHocbcoCcvoGBQ5tOiK2+DGC34Xy4CC+UBHi5sVm/rEwm0rRLd4yhgxwK6hahwl41uw+hvgCjtwAZpyIoPDWJ9JpZH2I5zVkrvxEJJZnrmi4ANfD/OGOrsm0ICyf+WQn0mYWLd+CyZ0YkVRDcsVbDx3ye6Tpx638zT4yxpv0jgCP2cvqzNEcPN38JzP9/YNUbsd5enXzQ9eyy5s3CAmj3Zs2++DwQVht5f7Tc5aJ5uYt68L1qwrjzCgqBuwDvnEyhwZ662Y/RPCkJ7wrs4qmqJFjKJ1qXylUpYK2zdNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KrB+iBxg4AoW37Be0nRO10PSs0mFPrhMv8tC7BtaKVs=;
 b=nD1aezM6EWcXnSd27H1YhWToAc2CPZa7gj/fFmFOoHGLmg4d/PFiQSp8DseJu1HXWb5b8O/7NODUf9DPhokTobDbjd+g8p9Dzr9pjkstAJFF5KiXetlRmkXiYGNCjXk44hF3ZbGYpsUwQBepK8rKAlXcpVQp9QeK9OJssOSJIM1nI4aANe54y//bKq14EeIFWwzFn8rzNwzMIBWoMWDiknzR2H6RdFT9A8QFHK1NCnhLq6/Jh5hJxL0O48uGWWN+aSqthPeTJ75SWOUGz8eVS1FhW1PnEqrm5HbvEWip/orfNhBgeUpunXfEV966+TJZOtLgQcK339PeWhT0LbPtJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KrB+iBxg4AoW37Be0nRO10PSs0mFPrhMv8tC7BtaKVs=;
 b=w9sfjBtqCTH8OKxW670idKUjl+T9ysUt5pR5aGJD5OV1w4CtBeDh0znW4i2ERV0shAgmsiwl9KI5+JFJar2EPf/eqSpVL8+zVE8D0xj8mS5o8hnC0ZZUk//F75hB8yI/hifpRN1FpsAQnj1Y6A+bH/GCRgC7RHhKnw7twvwiJNs=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by LV2PR12MB5751.namprd12.prod.outlook.com (2603:10b6:408:17d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.29; Mon, 12 May
 2025 08:20:50 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8722.027; Mon, 12 May 2025
 08:20:50 +0000
Message-ID: <edf36020-f73c-4f5a-80c9-d6711de27427@amd.com>
Date: Mon, 12 May 2025 10:20:44 +0200
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 dri-devel@lists.freedesktop.org
References: <20250509153352.7187-1-tvrtko.ursulin@igalia.com>
 <20250509153352.7187-6-tvrtko.ursulin@igalia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250509153352.7187-6-tvrtko.ursulin@igalia.com>
X-ClientProxiedBy: FR4P281CA0408.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:d0::6) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|LV2PR12MB5751:EE_
X-MS-Office365-Filtering-Correlation-Id: 883ba443-b607-4996-3e59-08dd912de7aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?L3hZa2VoZ1dmVVUrQklnWldEb3NvV082TmNLWjgwYkMxMHVjdGZyUWl6b1Uy?=
 =?utf-8?B?ZkJWT1ViNnBJc0lkNWh3RkhvN1RNNTlhTzdIT2VmOGl3MTRFYzZpRkRGTUIy?=
 =?utf-8?B?a0pMekRZRW5HcUxMdFhyb2dzTi8vY1pkdVdUbENOK25TTEVkbitrd3V2WG1o?=
 =?utf-8?B?REdwNnRHTEYzSnE2NE03bk5LSXVuQzI5WVlLQ21pRnltR2VBK21OajhZbUNx?=
 =?utf-8?B?anBaMHpObTFZMkZXUERoRkV4RTNhbE9iTUJYTHVEemc0MkVhaSthMlBRdDhh?=
 =?utf-8?B?eDBmeHhGc05wbXdOQS9vSkFvYndNUlp0TjRvcHdJWUI5dFdzOExJbzYwWmJB?=
 =?utf-8?B?T3Q3ek1hUW82UTRxSXp2NTVaNmZTUkt3MlJmUVBtcU9BM3JhSkFvV3hvOUFi?=
 =?utf-8?B?SDd4VG9WM3B6K1p6eHd4eWVWZ3RzWkhJcVdTaERiUGNVeDhxTDIxNW56cFMv?=
 =?utf-8?B?azVTRzExODE2NW1PL2MxV1c5emI0cHd3ZjR1RWRQTGJEZzNMZi9KeDNxNlZM?=
 =?utf-8?B?RTlQQkNsSjlGODRQZDVCbUFGaGU0ODBxUTBxeDV0K0UxbDlDQS9nT1dXY2J0?=
 =?utf-8?B?M1F2MlBIVFN2Wktkb2dpdldpR0JPUnUvYzNSL1ZVMFA0QkgvRWFUcFdyZzFC?=
 =?utf-8?B?bTdYTjBnRWVJajIyRnNlM0Vkb2VoMnRWcW9ydmpFUGE0UWVET1hrcW9BT3ls?=
 =?utf-8?B?blJNS0l6MlFVRk95Q01sSzRSa3pNc3J2cGdlMG1oaDhZb1BRTVFYUCtZZlRy?=
 =?utf-8?B?U0VaNjNveTV5emZFelNvdVZnT2hPQWZLUDhZTVcvOThvQUVZWmxmVmtGT3JM?=
 =?utf-8?B?MVBXWmlaaDVDVmQvemlqZlF0OHVXclBaaEdPN1MyZHdTYlI5L1JXcVluK0R4?=
 =?utf-8?B?Vnl3YURQc1ZkNXJjWWROZERuY0VEZURGNkdqaCtSQkxxZVNLbEJST3prekVI?=
 =?utf-8?B?NmRsUjNNaXBFQWl1VjhQYm90NFdGbkpSYTlKc2hyY1pOaVRkK2dhb2tHNzhj?=
 =?utf-8?B?VjdDOXZKcHd5dGkzZFdRUjRlcUFHTm9lMVc5WGpBdzlSOVZyT1FxZEtKSzNE?=
 =?utf-8?B?WW1QZU5tc3o3YUlPN08yS0VBaHpRcmdVZWUzZzdTTEhwcUtZc2NoZU1GQlpo?=
 =?utf-8?B?THlvWHZIVVFLbE5XSGZGa3Y3cFRMbzQ1cGtLMXpzUWdDb0NpUmtKb2l5YlNh?=
 =?utf-8?B?aVRXdVB2aS9XNERvMlFIaGRDQmViUGh5NGpEOG1ybFFJSnJUNmdubFZIeHUr?=
 =?utf-8?B?MzY3MEcyLzJUODBzdGYzRXIyL3A1K25CWXc2LzNGL0dOWjEzTXhKN0s1RXRm?=
 =?utf-8?B?eEIyRDdJdjBaUnFlbXdydGc3aDB2YUZpdkdQdG03bVBxTnJpcFZGbktyalRD?=
 =?utf-8?B?aHRkNTk3RDBvZktJL0tTSTM0QzFSVStCNlZ6RlhiUjVVTWN6eEczR3hEWXc1?=
 =?utf-8?B?OE4vQjZ4ME8zWkVBamk5WElSK05qdW9kRytsbmxjdzVQSVVCRllzOUwzTEhC?=
 =?utf-8?B?V1YwbHZQeEsxbFBnNlQwNFd3THZHRGdnNEFoNi9KQlBrS1hrWkg3ejk5MWtX?=
 =?utf-8?B?UUZha1JRcE1LWmQ5NStJVWtvT1lreWdUNlBZVExHOTBSam1FajVHQXI1bVZD?=
 =?utf-8?B?Mjd6WnlXY0NuUDFyVTV2bXpQU0ozTFh5ZTdwWGVwaTZvOFhqazlqRWdsNXJy?=
 =?utf-8?B?czFiK2NvYUE1T2VRTENSNnMvMGJnVGdsVktrQ0FPUkxtdTNEVzExWUhxMFd0?=
 =?utf-8?B?NkRoRkVtdy91b1N4NjBtL2xrYUhPL3g5MlEvSWtBME4zeW1naXhyaklwM3pK?=
 =?utf-8?B?aEpmbVIydGxiM0Q5dTA4Yi9zdWlYNG9HRXVMR2IvbjZCcnlEZi9YRVQzNWQ2?=
 =?utf-8?B?cUtCcmptR2t0UUQzVGZQUWFVbWdFU1lJWWZFbjZ6L1JlZEpPSFBSTmNzNitO?=
 =?utf-8?Q?zzyrKRywpE8=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MGUxVDA0MzhodXV3a1BXVkYwbXZONnU5WWJhTzJzMUo4UG44TWJ2SjJUQ081?=
 =?utf-8?B?MHR6Nm5WOVpHZCtqYjhLT0pqOUthUFBpR1NDQktOTnlBcjhQbXRxRGhaSmJt?=
 =?utf-8?B?TGppdU5OaTNsMWlNMmdXMmVCTFREZldjZzNPUU5Kc042YWdjMTd0aHZXOGZB?=
 =?utf-8?B?ZjRVS2NIYW03VWF6YnczSlRiUjdiSVpqUVhXeGN0TDhoU1k4QWdpQXBSdVhp?=
 =?utf-8?B?cXFWa3JyMWsyd0NqWjFCM2paQ3FwWngwT0ZROUFRVWhCZk0zcVpqY2g5V3hP?=
 =?utf-8?B?TEpUK2RyVEVRNWF2ZW9pQmowY0tqSXBjazY1TnpKOVZFZ1dNUEZtaGo3QUNq?=
 =?utf-8?B?ZUJBa1dBN041Q1oyaVVGM1lNTTV1VWZ4eE1qQm1NbmpTUU5LZVpaUGlXaXhL?=
 =?utf-8?B?cHR1R3EvaFdaZTlqY2w2V0VYVXM2aTE5T0pFaExickFuUC9tZ3NTSWR1MitL?=
 =?utf-8?B?OFhiRnYvZ01vUDJxcmpESDhpVVVvSWtPVU42Uk1Ca2lJN1gwRGZmc3VKY0gr?=
 =?utf-8?B?TlI5S2R6R2dxZXFMTHA0UFFITzhLM2tFM2UxTmNJRHhWQjRHbHZraEp1TCth?=
 =?utf-8?B?N0FWaGhuSzJTTVM0Nm9vRitmQ3FlcGdSTVFkc0VHdmF0RzMzQ0I0TlBvVlhJ?=
 =?utf-8?B?NEJIUEQ5Sm5FcTdycFhBNXJkUGh6ekU2Kzh1bzQ0Nk92OEgwOC9tMmszUHND?=
 =?utf-8?B?eWtob2hpclpvRzdCME9tU1NITDA2cC8wUXNDakY0Q2FQemozbVFzMzJQcEla?=
 =?utf-8?B?b2pKVWhiaHQ2TmVwWnFkWXdoTmtTWTg0aXBlM1RnYjByZXZjbDhIcHk0RkFy?=
 =?utf-8?B?ZXZ2WEUxY3JyUllnY3cvVExhY3RvS0tvNk13aW8xbHpJQ2hnL0ExbnFEdkRW?=
 =?utf-8?B?aWtSNXBEZlZzdEVhdXRPT0YwcDlCeG8xZzNsMEpDcHJSQkZPYzB2ZXRhajky?=
 =?utf-8?B?a0hmRnptaW0wZ04wZnNJRTZId2kyUExkQmxSa2xzVTJJM0hHMjVFa1VFUDIy?=
 =?utf-8?B?TWhrNG9RK0wxYk5VbFlqNlQzeGQ1eXhZN0UvRGd1cHptekgvM3I4Vng0NUdz?=
 =?utf-8?B?M0VUSkJyWHdnYTA4cG5EOVA0MU9xUUptaHlOdUZ0dnlsRFFhTWtXeEFWTk9h?=
 =?utf-8?B?aDJ3dnFjVkVVT3hYME1DWXBzSURLZ3RicFNVK25YQk80d0I5RTJEZCtON0lm?=
 =?utf-8?B?VHdydzNXQkJtdUEvTUwwbXVteHBwUjFySEVFTHpSR0x1anY4K243S1liR0dm?=
 =?utf-8?B?M2RMQzlNVkpFQTFDTWkrL1k1WmRMeDFhbkxyanV3VWtNY09FVVlBT0k0RVNQ?=
 =?utf-8?B?ZVhNaVhscjhQcit3Skl6QS92OFVFcGtGNko3SlRmOVoyOUtrTU1OYnJJWjJE?=
 =?utf-8?B?cjM3ZFpmbEdJamZxN3lRQ0pQMkV6NTQrQnNWcExyRUJZVGIvYldYNEZLdlE2?=
 =?utf-8?B?R2J4ZnNlWjY1dHFHNzV2WUlPa2Zvc0FVa2N0WDhDM2l2ME41QllmR3dHR3B4?=
 =?utf-8?B?RCtGY0lxdWMxZ1RiNGR6WlB0THd2am1ac1hBWnZrN0JXazhYNnArWjFCN0E0?=
 =?utf-8?B?c1NjbXZHbHZlWm1rZHBwTXVNNHE1Z0NlUUhmTDFJekxudDZqVHNLaUZDem1R?=
 =?utf-8?B?WmJlSjZZeG00S2FPbGVSMU5KZjJ3REJvc1o4czFTTDlRWkRWeEZKWmsrS0Nu?=
 =?utf-8?B?d2lUUDF4VlJNNzZEODg0dXZwSFNndS8wNWUzTUNqMnNSVXRQS1hNaGJUZm5R?=
 =?utf-8?B?NElHNERWMUF2QndKdEp2eFRRbXJabzdCNWJMZzJpeEtoNGwvWU5yZzllckU4?=
 =?utf-8?B?SGF2MHQ3VXhnSEFkZ2poZVFBUjE1OC91bnBCZ3c3S3hLOG13bUxaOWt6dmFR?=
 =?utf-8?B?V1ZhWWZnSGtrZVkrUG0vWGRQbWhuUjZQeXJKTU4rVWExdkN5WjdIWGVUNng1?=
 =?utf-8?B?b3kyWFl4QjVRaDZ6d0pSTnh6bkplREEzRk5iZkpvQ0JPcUpLV2ZoZkFqUjlB?=
 =?utf-8?B?Zk5tWkJ3dmpUcjJBc3NJTkZJZ1VIUVBOUXZ3OGlvbzZtSWdEZVB3bUZwcCtG?=
 =?utf-8?B?RXJJcUhlMk93SDRyYVJ6UThGOFNpenQ0YS9aZDZlMVgwY2FaT0JBK29kOHRk?=
 =?utf-8?Q?EHksMs3V1gQbVqjsj/8Zlgb5i?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 883ba443-b607-4996-3e59-08dd912de7aa
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2025 08:20:50.5719
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KmPFMNnReHDplxo2GikFcIJ1PXRwdfZ9iaWQ3EzjSWQzSB9Ml2iAkUdmaPeprY9T
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR12MB5751
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 80F6443CF9
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[13];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.237.87:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2603:10b6:510:13c::22:received,40.107.237.87:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: BLYB4NLGFE5QQMYRS23DYJBQUE7OXW32
X-Message-ID-Hash: BLYB4NLGFE5QQMYRS23DYJBQUE7OXW32
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Matthew Brost <matthew.brost@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, amd-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, kernel-dev@igalia.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 05/13] dma-fence: Add helpers for accessing driver and timeline name
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BLYB4NLGFE5QQMYRS23DYJBQUE7OXW32/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNS85LzI1IDE3OjMzLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToNCj4gQWRkIHNvbWUgaGVscGVy
cyBpbiBvcmRlciB0byBlbmFibGUgcHJldmVudGluZyBkbWEtZmVuY2UgdXNlcnMgYWNjZXNzaW5n
DQo+IHRoZSBpbXBsZW1lbnRhdGlvbiBkZXRhaWxzIGRpcmVjdGx5Lg0KPiANCj4gU2lnbmVkLW9m
Zi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlnYWxpYS5jb20+DQoNClJldmll
d2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQoNCj4g
LS0tDQo+ICBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oIHwgMTAgKysrKysrKysrKw0KPiAgMSBm
aWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9pbmNsdWRl
L2xpbnV4L2RtYS1mZW5jZS5oIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KPiBpbmRleCA1
YmFmZDBhNWYxZjEuLmM4MTRhODYwODdmOCAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9saW51eC9k
bWEtZmVuY2UuaA0KPiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+IEBAIC0zODcs
NiArMzg3LDE2IEBAIGJvb2wgZG1hX2ZlbmNlX3JlbW92ZV9jYWxsYmFjayhzdHJ1Y3QgZG1hX2Zl
bmNlICpmZW5jZSwNCj4gIAkJCSAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlX2NiICpjYik7DQo+ICB2
b2lkIGRtYV9mZW5jZV9lbmFibGVfc3dfc2lnbmFsaW5nKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
KTsNCj4gIA0KPiArc3RhdGljIGlubGluZSBjb25zdCBjaGFyICpkbWFfZmVuY2VfZHJpdmVyX25h
bWUoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+ICt7DQo+ICsJcmV0dXJuIGZlbmNlLT5vcHMt
PmdldF9kcml2ZXJfbmFtZShmZW5jZSk7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyBpbmxpbmUgY29u
c3QgY2hhciAqZG1hX2ZlbmNlX3RpbWVsaW5lX25hbWUoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2Up
DQo+ICt7DQo+ICsJcmV0dXJuIGZlbmNlLT5vcHMtPmdldF90aW1lbGluZV9uYW1lKGZlbmNlKTsN
Cj4gK30NCj4gKw0KPiAgLyoqDQo+ICAgKiBkbWFfZmVuY2VfaXNfc2lnbmFsZWRfbG9ja2VkIC0g
UmV0dXJuIGFuIGluZGljYXRpb24gaWYgdGhlIGZlbmNlDQo+ICAgKiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgaXMgc2lnbmFsZWQgeWV0Lg0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
