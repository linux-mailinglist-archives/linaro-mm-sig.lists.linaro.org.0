Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 501EF91EFC0
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jul 2024 09:13:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 22AE1448F2
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jul 2024 07:13:48 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2070.outbound.protection.outlook.com [40.107.223.70])
	by lists.linaro.org (Postfix) with ESMTPS id C7AE13F04B
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Jul 2024 07:13:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=cFN+hWzM;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.223.70 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mVodtl0vRhgEoh+JjFBsDc6BrNsGnnq1yBbYOn497QmZ1SewAphbOb+FowhSEbDsoqTlpJuMx/Iam0eWbLk2hfrkHYgH9QZ4lB6/auRNegsAhltP4yDfWCztqRIhxPQzUu8wB4CmM0l6GNo4j2wUXfcID7OCH0wXIw67GVWvMHgYPcKNP8cwCA+YL65l3zbmpDAzaTbl4G0fc5zPPFps1nsDIBPR2QO85MrpMXeF6N6mXOaKsRfIDzvpwawJgC5IbyBvnXO+kHwqrAf6LcySoVOW6LkmBkCBIYPl9BFXpuTRQT3UkPpEzIIaZfdiFcV6OEkL3nTHg+zoA0yPsNFP2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8LUDaiKG7j/5IBW3BfnNj6QTlwClXzkhrvc8DQG5zhM=;
 b=S8s0GzuStUUlBL3Z2YlWzXNlMVNMaPX+J9RWXOyeSwuNsyXp3SUJT8eFQ0i1Chw2pUXZsxPNTFLnsHmm73PUxu3HDpzEug7R8jMJvYPhlIqJXOaxAplJhqTz1pMrmXTZeJr3gip8JW7aMAEhbNQx9kxNkeqTHZIhL6nYqtuzBy9sE5EmPaGb0/M830XUAdRbMhpIYHRmrjTzJrRJh5n105hxIABGCVpQJb3UkeVxcJLmsc8DHWEH/CUIX1YitE9MGlATD5wUBWFbBLm+LVn6WZOxa3iuUBdUyCjC44bQyCkt/RscJPNHBdroDZEccf1cuJ3XzU0tzRst8QAgqLOujg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8LUDaiKG7j/5IBW3BfnNj6QTlwClXzkhrvc8DQG5zhM=;
 b=cFN+hWzMGvHKYWvnMJdrVNOhtmyaoUx6KXaLFkHZivU/rqy/VR2hXFyuOsThhLtpKpC27AuZ2bLnr614C3NwnoLgNVx8O9yoeKDrtV2K17dMyYBAcIDF3j6QduQ47o/X30EQJa1GiYdJZciu2dimf0pXL5foelGJqxjBAZIQgrE=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CY8PR12MB7708.namprd12.prod.outlook.com (2603:10b6:930:87::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.33; Tue, 2 Jul
 2024 07:13:42 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%6]) with mapi id 15.20.7719.028; Tue, 2 Jul 2024
 07:13:41 +0000
Message-ID: <e0f384b0-6913-4224-a3ea-bdae784f5dab@amd.com>
Date: Tue, 2 Jul 2024 09:13:35 +0200
User-Agent: Mozilla Thunderbird
To: Christoph Hellwig <hch@lst.de>, Andrew Morton <akpm@linux-foundation.org>
References: <20240630011215.42525-1-thorsten.blum@toblux.com>
 <20240701232634.0bddb542ddea123b48dcabdf@linux-foundation.org>
 <20240702064017.GA24838@lst.de>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20240702064017.GA24838@lst.de>
X-ClientProxiedBy: FR4P281CA0155.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ba::9) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CY8PR12MB7708:EE_
X-MS-Office365-Filtering-Correlation-Id: 5cb5a221-ac92-4c5b-8943-08dc9a668082
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?UGpWalRWNnQ4a3gya1BqK2dxY2RJZlZtV0M5RkJwYnk1djlzZGIrQmNtWkN0?=
 =?utf-8?B?MzVpTnJTVXNzYUZJVkFFTjF0OXBwMTFrOCsyTzg1bFJyUDUvTUpxT2pNc1Iy?=
 =?utf-8?B?dzN0d09BZ0JkT3ZLRU9JaVNPQlRkbG1nNmJGZnAvb2RPN1BPQnpVV200bG1K?=
 =?utf-8?B?bTVyS0J0UkhWVG5vOVkzZ0RrVjArZzEwdUd3RWV1TEhFYmQ0SlhPNmltVXVK?=
 =?utf-8?B?ejYwamx2N1luWitTYVJTMEptOGtBblFuSmpHOFRIZGRmamNlVlZKaW9tZWpP?=
 =?utf-8?B?WXdReS9LTGo1N05heWV5U3dFekY5TjVRSDZ0M0ZCNzlZb3Fzd1BBZ0kvcWFF?=
 =?utf-8?B?VnJnYzRSTUdrY3p5VHRaQWJYQ1c5VVlpZFU4c1Q1aGNaaFREaHB5UkoyZmc1?=
 =?utf-8?B?Q1RQWEU2MXVyV3VDVUdySHV2aXQ4RG5Ndm1pNlZOOUExek5nQnpwVUtrdTAw?=
 =?utf-8?B?NTRUMVY5VW8rYzFOSlI1RWhZN1k5NzdpbGtVUnlhc3p6QjhOQlFnSCtqUlh5?=
 =?utf-8?B?eFJKaGFmSXdzaDZyTXFOYjlNQU8wUGtxSHE0cUJjZFRCSmVlQmZMZWYwSnR6?=
 =?utf-8?B?VDFQdkdSOHBzUnh1ZndrMmQ1SnQ1ZXVFWFFRUGpTdTQxeHQwVXZURGpZZElw?=
 =?utf-8?B?Uld3dFZ1WlRlSXFzT1ljcHRJT1NlZ0ZDZm5PMko4ME44VWxwWHdSWkdiU3hh?=
 =?utf-8?B?S2FxNG0xOEJVWVJwNTcxWUV5UFpUV1I3ZGZ0WWxEZjJjVHZCSnY3S2taVmVE?=
 =?utf-8?B?Y2IrYm1lMjhaNjdHZHorUFBFckJmKzhqeFE0WXRDVm5mUXVvRThveWptbWRK?=
 =?utf-8?B?V2ZkUnZYK0dIQmxzQkxoM1lzeFQyQWNwRjA2Nkg2NWdNZ0kyRitFdU1Lcm1j?=
 =?utf-8?B?MDg3N3VyZk52a0RCU1ozd2dNa2IrNnZyS3ZWOWkrWSswOHNQOC9IYTFkV3Uv?=
 =?utf-8?B?NkNta3dDZWVVcjI1aU01SEI5WjBvQ2xrVmpvYTEwdks1Und0a3ptOTZvNFlF?=
 =?utf-8?B?b3BORFI0aHljdDhmSGd3TGVQaG5NNkZRVzUxUWlKekQwWnY4VEt4N0ZVWU9o?=
 =?utf-8?B?VCtKTktic3Z4SS9HVGNTb25kdjN2VlZUTmI5U0g4RUYxTGpudlFON09RU2tJ?=
 =?utf-8?B?Q05KYjFUOWJTZTR4NExxWHlNSVZjNEoyc1VhTmZUYVFIYzIwMEpiMVFVbUFq?=
 =?utf-8?B?M0RHeTh5emhFUTlPdEt5MTZ3T0tjNzJqY2x3WlpickpjSHpMNGN5UndRMGRu?=
 =?utf-8?B?eTRZU05KdnA1T2tpS0YwUXFFYXVBWkFycXhhazlXZ0lCZ1NGQTNUUEdDZjg1?=
 =?utf-8?B?MFRMeUpWMHBPdWJwV2hiOVNYbEYvYmtTZ2orNTFtU0ZmeXBGMmVtamM0azhT?=
 =?utf-8?B?S0VncXBtbW1Gd3pIay8zcWYwdjZaM3dTM2RCWFVrVlVsN1A3OG9nL2hpbXlo?=
 =?utf-8?B?bEN2Ky9JT3JWL3dudkFhWnVrNXNXTnNLbnYwa3M2cjdScEEvSnhzelp6OFR6?=
 =?utf-8?B?TjRnb2RqSDFRNTBka1IwR2xEam5BekYxRlpZRVNtUExkeVdJaTE1MmE4WXd3?=
 =?utf-8?B?ZitRaEhoUWpXeFNYcVltZjE2V3ZWTUdlZHZVZG5ZSW5EQWh2K2ozN0g0c1FW?=
 =?utf-8?B?WUZDZWRNQVFhazZmNjB5YWxzNjUvY01Vb0ZpTUkwZTlwN01lWUUrZWJtcnZx?=
 =?utf-8?B?QVh6c09CYWFSd1BLYzFlVjRhZEkxQlI4L0RnT21xNWE5ZWlCSlRZVzRlQWdW?=
 =?utf-8?B?SGFmTWxZbWdLWFRzZFpUQU1RV0I4TVM4eUxMV05ac0RZKytmekhCTSs5eE16?=
 =?utf-8?B?Y2RhYWlpeWg4VXg0MHVqZz09?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QlBYSDdBcmVrak56RWFqakljRGhTdC9jeTJUUjRWMFpiQjVzb3ZBRkZDaFZR?=
 =?utf-8?B?WncvR1cwUWNhS2o3ZUN1ZDZ6ZC9SVm1IQWRvWDd1NGZ2Q1NOU0k0U045WFRH?=
 =?utf-8?B?UUduaWNXNC9QNGlvTkF3cGhtY0w1aFpuazhZNHRKcnErUHlzZHBVbE1Jc0Jr?=
 =?utf-8?B?UFB5WVNDV3JPcW81ZWJFdFJyVEl6ZTJLRmxxQkYrSnJra1QyRjlwRzJrd2dj?=
 =?utf-8?B?a0cvM2tDYzgrZnRwZzRSUzIvRUp6TjBRRFJqWDR2WC93ek9SMUtqZnV0K3Nv?=
 =?utf-8?B?eHpiVjNMcjZ5VlNRWDQ2d054bWI1WHdCcWRNUlpFQ3IwSXZlMyt2WlZSdkdU?=
 =?utf-8?B?bnJ0eW1MUHc4ODcva1VKUkc2VW5Ob1VjRU1VNXpWMTk3bnpFS0JVemtKNjQ1?=
 =?utf-8?B?M3M1d21yK2FFZTdPVEdsMEg3d25EUHNUUmNMaEJYMERaU1I1cGswdEd6dmlj?=
 =?utf-8?B?M3hKR0RoNHh6TVFqZDk1ZUhvSHlVRVJlQzZuM2pSbkJMVGdaeCtaRjJnZWlE?=
 =?utf-8?B?eTVTT01kcndLR21pRmQ0b0gyaXdDNXUvUENMSmNOL2JDOWRvSmxHRVlmUEtX?=
 =?utf-8?B?Uzl0aHU2cTZlclZLNXJCMURDU093ck9qYXc0Skhsc0I1NnVpaGF5VkxUZG1C?=
 =?utf-8?B?cGRPQjBaVGV3MHh3TmQ3bjVkT1ZySWxDdFFUcEdRbzFickordHV1cDNhbHF5?=
 =?utf-8?B?ZkRTSzJVUEJLMEp2WGpGWjJRS1V3bVFDcDlINTErZmExVmVWVGZRN1labnB3?=
 =?utf-8?B?VVo4Y0ZvTzhmTkRCL21ROFY1aVVsUys0NVdLb1NZRWNRVS9vWnFmL1I1YTd5?=
 =?utf-8?B?VmMxU3NPQWJBcVNSRlhaTXVSa2Z0UzJxN2VOeUluMU02Znd0T0JSM0NVdndh?=
 =?utf-8?B?WnhadUZrNUcxTkNoQTBuc3RFYWl4UFlLVkxkaUNuYWUwQVl4ZUFBaFdmbXN2?=
 =?utf-8?B?YUgwS2Q4a0czNzc1MzdsdFlkbEhmMDNSN091VERET1h1VDIzdHBXNG1rblZr?=
 =?utf-8?B?NkwrKzZNK2cvb3F2Sk44ejVHRWVxZUNIdHpQeDJXUms3Vk12VjM4UHBWaDhU?=
 =?utf-8?B?LzI3bUQ0RG1JTy81bVRHVXp3ZlV1K3VBUTBMVEdyS1cxNEtDWDlpUmkxalN0?=
 =?utf-8?B?TlZvTmVkMlV2c1RnNmszM0pNQnRrQU9YNENyZjNMM0ZwczcrRFBZT3hYY3pQ?=
 =?utf-8?B?KzVCeW1relNLS0kyRDQvVEZweTd1eEE3bDRyeEpjTlUvY2M0dkRwQjJOR2tN?=
 =?utf-8?B?emNwQ2JQbHJNaVVJNUQ5ejd4YUJaTmdzMGN4NlFwaTJFREl3QkNsdkZqZmJI?=
 =?utf-8?B?TFU2YWlKWm1Ga3FJSllrY1lYTkdGTEVPMlR1bkJYUmRtSXJqbE01M3ArSnRr?=
 =?utf-8?B?VStwRWtrcTN4SG55VU8vcFZ6b1JWcVljYnJjVjZCeXdEQkJ0OHR4Q0VnQ1NF?=
 =?utf-8?B?RVBpV1N5bmpjdTM4NGRPcnBOWjNtclhzbHhYOFd4c21nSVAxWjJhRnlrdGZl?=
 =?utf-8?B?b0ZLSXlIcGdJRkJQZ3hqaHpEajlKTEhCc2NjRE45K20rczNPL21zdm5rekNR?=
 =?utf-8?B?a1NmSk5VSkJzcTExNWNreGdUUXZVOURpMVRRVU91ZyttMyszZzd5aGRUZyt2?=
 =?utf-8?B?NTBCcTFUVWFXd2hxZTJ4VnlYcFFadDlYeFpsN2tXeVhlZWNTVGFkVENtYlky?=
 =?utf-8?B?Mk85dkpaSXJFZGxLMDRsYU5PQkd0RWNabkpDOGJRbWE0YkZvL0p5WnV6a0dU?=
 =?utf-8?B?WFNUc3FTYnZVSDlqclJpN1kyRXFRVW1Tc2J6TFdCTE4vSk9YUEgwLzZBU1dw?=
 =?utf-8?B?MHhSd1FpU0h5bTBOY3AvWFJCdDA0S1M3N2szT1FPVUZHaElua1VkWEdhYkxu?=
 =?utf-8?B?LzI0VHN6RXF2N09vb21lMXFKQ3M5VGx0ZTZCTWlSVXZaQlMyb2kyMlZNUVBR?=
 =?utf-8?B?YnllcEV6WmRSSWxPRGxKYllrVHd1UXVzZ3dsVTVMZUV2ODRKTkpTdEh1T1hJ?=
 =?utf-8?B?MzVrWGtMa0ptY0xWSHRSQ0R2SW8zZVRnYzM2bUFsQ2k1akZmNWNtbGFGUm1p?=
 =?utf-8?B?aG5kWnhINENCemJVVnR3dXFBZmFQZkxnckZFcFZhbWk4NEozbERETlE4VUpq?=
 =?utf-8?Q?wnigScyQFqC+ujfrgJMjZ3uTE?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cb5a221-ac92-4c5b-8943-08dc9a668082
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2024 07:13:41.4279
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Urgvvs61714O5auQ4WSMBxcvnGj0PrWiogVHKKot6lZLvosytHza3xB+p+t+nQbd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7708
X-Rspamd-Queue-Id: C7AE13F04B
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.99 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.223.70:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 6AV7UOSRTTI35TUXSVKROJK322S4KLJC
X-Message-ID-Hash: 6AV7UOSRTTI35TUXSVKROJK322S4KLJC
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Thorsten Blum <thorsten.blum@toblux.com>, jack@suse.cz, surenb@google.com, linux-kernel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Remove unnecessary kmalloc() cast
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6AV7UOSRTTI35TUXSVKROJK322S4KLJC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDIuMDcuMjQgdW0gMDg6NDAgc2NocmllYiBDaHJpc3RvcGggSGVsbHdpZzoNCj4gT24gTW9u
LCBKdWwgMDEsIDIwMjQgYXQgMTE6MjY6MzRQTSAtMDcwMCwgQW5kcmV3IE1vcnRvbiB3cm90ZToN
Cj4+IE5vLCBJIGRvIHRoaW5rIHRoZSBjYXN0IGlzIHVzZWZ1bDoNCj4+DQo+PiAJc3RydWN0IHBh
Z2UgKnBhZ2UgPSBkbWFfZmVuY2VfY2hhaW5fYWxsb2MoKTsNCj4+DQo+PiB3aWxsIHByZXNlbnRs
eSBnZW5lcmF0ZSBhIHdhcm5pbmcuICBXZSB3YW50IHRoaXMuICBZb3VyIGNoYW5nZSB3aWxsDQo+
PiByZW1vdmUgdGhhdCB1c2VmdWwgd2FybmluZy4NCj4+DQo+Pg0KPj4gVW5yZWxhdGVkbHk6IHRo
ZXJlIGlzIG5vIGVhcnRobHkgcmVhc29uIHdoeSB0aGlzIGlzIGltcGxlbWVudGVkIGFzIGENCj4+
IG1hY3JvLiAgQSBzdGF0aWMgaW5saW5lIGZ1bmN0aW9uIHdvdWxkIGJlIHNvIG11Y2ggYmV0dGVy
LiAgV2h5IGRvIHdlDQo+PiBrZWVwIGRvaW5nIHRoaXMuDQo+IEFncmVlZCB3aXRoIGFsbCBvZiB0
aGUgYWJvdmUuICBBZGRpbmcgdGhlIGRtYWJ1ZiBtYWludGFpbmVycy4NCg0KVGhhbmtzIGZvciBh
ZGRpbmcgbWUgYW5kIEkgaGF2ZSB0byBhc2sgdG8gYmUgYWRkZWQgb24gRE1BLWJ1ZiBwYXRjaGVz
IA0Kd2hlbiBpbml0aWFsbHkgc2VuZGluZyB0aGVtIG91dC4NCg0KRmlyc3Qgb2YgYWxsOiBZZXMg
dGhhdCBjYXN0IGlzIGludGVudGlvbmFsbHkgdGhlcmUgYW5kIHllcyB0aGF0IGlzIA0KaW50ZW50
aW9uYWxseSBhIGRlZmluZSBhbmQgbm90IGFuIGlubGluZSBmdW5jdGlvbi4NCg0KU2VlIHRoaXMg
cGF0Y2ggaGVyZSB3aGljaCBjaGFuZ2VkIHRoYXQ6DQoNCmNvbW1pdCAyYzMyMWYzZjcwYmMyODQ1
MTA1OThmNzEyYjcwMmNlOGQ2MGM0ZDE0DQpBdXRob3I6IFN1cmVuIEJhZ2hkYXNhcnlhbiA8c3Vy
ZW5iQGdvb2dsZS5jb20+DQpEYXRlOsKgwqAgU3VuIEFwciAxNCAxOTowNzozMSAyMDI0IC0wNzAw
DQoNCiDCoMKgwqAgbW06IGNoYW5nZSBpbmxpbmVkIGFsbG9jYXRpb24gaGVscGVycyB0byBhY2Nv
dW50IGF0IHRoZSBjYWxsIHNpdGUNCg0KIMKgwqDCoCBNYWluIGdvYWwgb2YgbWVtb3J5IGFsbG9j
YXRpb24gcHJvZmlsaW5nIHBhdGNoc2V0IGlzIHRvIHByb3ZpZGUgDQphY2NvdW50aW5nDQogwqDC
oMKgIHRoYXQgaXMgY2hlYXAgZW5vdWdoIHRvIHJ1biBpbiBwcm9kdWN0aW9uLsKgIFRvIGFjaGll
dmUgdGhhdCB3ZSBpbmplY3QNCiDCoMKgwqAgY291bnRlcnMgdXNpbmcgY29kZXRhZ3MgYXQgdGhl
IGFsbG9jYXRpb24gY2FsbCBzaXRlcyB0byBhY2NvdW50IA0KZXZlcnkgdGltZQ0KIMKgwqDCoCBh
bGxvY2F0aW9uIGlzIG1hZGUuwqAgVGhpcyBpbmplY3Rpb24gYWxsb3dzIHVzIHRvIHBlcmZvcm0g
YWNjb3VudGluZw0KIMKgwqDCoCBlZmZpY2llbnRseSBiZWNhdXNlIGluamVjdGVkIGNvdW50ZXJz
IGFyZSBpbW1lZGlhdGVseSBhdmFpbGFibGUgYXMgDQpvcHBvc2VkDQogwqDCoMKgIHRvIHRoZSBh
bHRlcm5hdGl2ZSBtZXRob2RzLCBzdWNoIGFzIHVzaW5nIF9SRVRfSVBfLCB3aGljaCB3b3VsZCBy
ZXF1aXJlDQogwqDCoMKgIGNvdW50ZXIgbG9va3VwIGFuZCBhcHByb3ByaWF0ZSBsb2NraW5nIHRo
YXQgbWFrZXMgYWNjb3VudGluZyBtdWNoIG1vcmUNCiDCoMKgwqAgZXhwZW5zaXZlLsKgIFRoaXMg
bWV0aG9kIHJlcXVpcmVzIGFsbCBhbGxvY2F0aW9uIGZ1bmN0aW9ucyB0byBpbmplY3QNCiDCoMKg
wqAgc2VwYXJhdGUgY291bnRlcnMgYXQgdGhlaXIgY2FsbCBzaXRlcyBzbyB0aGF0IHRoZWlyIGNh
bGxlcnMgY2FuIGJlDQogwqDCoMKgIGluZGl2aWR1YWxseSBhY2NvdW50ZWQuwqAgQ291bnRlciBp
bmplY3Rpb24gaXMgaW1wbGVtZW50ZWQgYnkgYWxsb2NhdGlvbg0KIMKgwqDCoCBob29rcyB3aGlj
aCBzaG91bGQgd3JhcCBhbGwgYWxsb2NhdGlvbiBmdW5jdGlvbnMuDQoNCiDCoMKgwqAgSW5saW5l
ZCBmdW5jdGlvbnMgd2hpY2ggcGVyZm9ybSBhbGxvY2F0aW9ucyBidXQgZG8gbm90IHVzZSBhbGxv
Y2F0aW9uDQogwqDCoMKgIGhvb2tzIGFyZSBkaXJlY3RseSBjaGFyZ2VkIGZvciB0aGUgYWxsb2Nh
dGlvbnMgdGhleSBwZXJmb3JtLsKgIEluIG1vc3QNCiDCoMKgwqAgY2FzZXMgdGhlc2UgZnVuY3Rp
b25zIGFyZSBqdXN0IHNwZWNpYWxpemVkIGFsbG9jYXRpb24gd3JhcHBlcnMgdXNlZCANCmZyb20N
CiDCoMKgwqAgbXVsdGlwbGUgcGxhY2VzIHRvIGFsbG9jYXRlIG9iamVjdHMgb2YgYSBzcGVjaWZp
YyB0eXBlLsKgIEl0IHdvdWxkIA0KYmUgbW9yZQ0KIMKgwqDCoCB1c2VmdWwgdG8gZG8gdGhlIGFj
Y291bnRpbmcgYXQgdGhlaXIgY2FsbCBzaXRlcyBpbnN0ZWFkLiBJbnN0cnVtZW50IA0KdGhlc2UN
CiDCoMKgwqAgaGVscGVycyB0byBkbyBhY2NvdW50aW5nIGF0IHRoZSBjYWxsIHNpdGUuwqAgU2lt
cGxlIGlubGluZWQgYWxsb2NhdGlvbg0KIMKgwqDCoCB3cmFwcGVycyBhcmUgY29udmVydGVkIGRp
cmVjdGx5IGludG8gbWFjcm9zLsKgIE1vcmUgY29tcGxleCANCmFsbG9jYXRvcnMgb3INCiDCoMKg
wqAgYWxsb2NhdG9ycyB3aXRoIGRvY3VtZW50YXRpb24gYXJlIGNvbnZlcnRlZCBpbnRvIF9ub3By
b2YgdmVyc2lvbnMgYW5kDQogwqDCoMKgIGFsbG9jYXRpb24gaG9va3MgYXJlIGFkZGVkLsKgIFRo
aXMgYWxsb3dzIG1lbW9yeSBhbGxvY2F0aW9uIHByb2ZpbGluZw0KIMKgwqDCoCBtZWNoYW5pc20g
dG8gY2hhcmdlIGFsbG9jYXRpb25zIHRvIHRoZSBjYWxsZXJzIG9mIHRoZXNlIGZ1bmN0aW9ucy4N
Cg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
