Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DECBA932B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Sep 2025 14:27:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B08EC4484A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Sep 2025 12:27:38 +0000 (UTC)
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012031.outbound.protection.outlook.com [52.101.53.31])
	by lists.linaro.org (Postfix) with ESMTPS id F235A40E18
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Sep 2025 12:27:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=mba+5JR7;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 52.101.53.31 as permitted sender) smtp.mailfrom=jgg@nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z4fBGyeAir5sFGF5bQBx57B/VPrDE1hIFPqT9Mf/XKs/H1fCTz2fGSsSd1s77B4s/n4u4nfQ0NHR1+42I/vpnuF2Xozb+LcsA29DM7aPxWebYQWHsv9GCsiZAI5jpN5z8NZYjgQgSVvLEbqIPUYmOCf82cIvUBgBJgWDgoSyubbwDJwLTEaddPXWngqHlk8AVkeviUmKxrySbiYFEdnd2HQ9ZG+k5IpSH4OP9ipYU0Emg+wWCbIL7hUs5vz/AeukeE+q4LuOi14bEtr1aluiFRxoZEfta6GEfgkA/JludXJSSn8GAhuHsSu/ntFzKKTCjgI2ZpmmsX3oxmkvcukEGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tI6Fj6EBUQxTJG/tWdjTBzOD4EhuHLF5Iyu8dL3jQOQ=;
 b=ckcGeqAPwf+IEwxsUE2bfiRy97sSTdMnRiaIm7Yu63Ow3DH8zwhyMMOMakqK8C2bUOW0Hj7Zu0NNIwd5wlkzRTAXCNxRD/zRlTF/cU/Sl1zIh0jJ02sRGvSIMeMnv89R2FQ3+qWtGiErmG7C+K1LBuXo1/5Ozh5zTcmCew9Y6n6NOVzXJr95DE6YhPFEp617c5Y/N4ThKUDXoxvhUynhLotNE9DooiDfLQfC/ry4g43Vzqj04jfLektaYXVau2eROuLa/lHa9UEB3fMYnlzwhroUxqdP1DgPXNkXSIl0hrWyiptGkb5cdSnBPmyqN/vmoP5iwAQ57lrt/URKwSA5Ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tI6Fj6EBUQxTJG/tWdjTBzOD4EhuHLF5Iyu8dL3jQOQ=;
 b=mba+5JR7VWiEccqug6lVwZ3Sj17ZR0ISFxjIjFQUKsKSX42QAns3nQCK20uPOe/RUzzLPJiqUuYif5QhpnyVyIH5CYt0xM9AD28WpPn5aWAXRhPG1VuLg87xTHLFeziSI6HXagI6nnizJdVJJ2FvLGo9+TlrHbzVo4TJD8kB0ZywyM8G3sJc6mKL+RI/vRd8JHCTsq8nLkz6uBQoJ/JHDBj9WHYWgig+pvHk3gPcHeE57jV9j4C1M7GnL1BZTvH8vWrnxtnZJRR3laUrIqVCf2pawftHJghoTpfnUchbU/XS56+7y5MSOoliyN7cZmZOQPShw7Vfl/UQpC0DWFeWkA==
Received: from PH7PR12MB5757.namprd12.prod.outlook.com (2603:10b6:510:1d0::13)
 by PH8PR12MB6748.namprd12.prod.outlook.com (2603:10b6:510:1c4::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.16; Mon, 29 Sep
 2025 12:27:28 +0000
Received: from PH7PR12MB5757.namprd12.prod.outlook.com
 ([fe80::f012:300c:6bf4:7632]) by PH7PR12MB5757.namprd12.prod.outlook.com
 ([fe80::f012:300c:6bf4:7632%2]) with mapi id 15.20.9160.014; Mon, 29 Sep 2025
 12:27:28 +0000
Date: Mon, 29 Sep 2025 09:27:26 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <20250929122726.GH2617119@nvidia.com>
References: <20250926084624.2288-1-thomas.hellstrom@linux.intel.com>
 <20250926084624.2288-2-thomas.hellstrom@linux.intel.com>
 <472f27f0-2f54-45dd-b0a6-3a26b5eec301@amd.com>
 <ef9f4fb1c55bf3e5e6423b2accdccee0607b95ef.camel@linux.intel.com>
 <20250926144128.GD2617119@nvidia.com>
 <765e3449-2eb1-49f5-954e-3bab5a5fc9d1@amd.com>
 <20250926160036.GE2617119@nvidia.com>
 <d3cc5b7fe4189c6f529b532273ece34c9c0e975f.camel@linux.intel.com>
 <a5ffd1ee-b0b5-40bd-b68f-3779ca70dcae@amd.com>
 <42520738dbc23174181db7d31d55de56996fba88.camel@linux.intel.com>
Content-Disposition: inline
In-Reply-To: <42520738dbc23174181db7d31d55de56996fba88.camel@linux.intel.com>
X-ClientProxiedBy: YT1PR01CA0092.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2d::31) To PH7PR12MB5757.namprd12.prod.outlook.com
 (2603:10b6:510:1d0::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5757:EE_|PH8PR12MB6748:EE_
X-MS-Office365-Filtering-Correlation-Id: 4b48bbaa-9d53-4fae-0292-08ddff538dd5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?cFAvVkRzMmEvM2hQTmFxa2dZZFptb0IzUkVMZXFlcGRsOTUrZFZzbmFQNEZ4?=
 =?utf-8?B?WXZQSExLTFhDR1g0b0FrOE1KZ0pWb2dyS3o3QWZkYUxCYTdRVHNTc0g3azQ1?=
 =?utf-8?B?YUZoc2tVUkQyblpuVHdLRVdiWjkxbnpzR2pYandveE84K3NJUTRWbElVUkts?=
 =?utf-8?B?aTEyUHpITzN6U0k4N24zNDYwZmdCcS9PY2NlSFZjM1RaaStzamdoQzFpdVNx?=
 =?utf-8?B?aHVza1ZZOHV5MGdPUkduUEZmVGt6M3VsQnRxVFZtenhLcDZFY2twc1pDajUv?=
 =?utf-8?B?Q3ZoeUtra211YzlSN3VJMzdmRjg0NG9IUkNCNEUvbjNSR0VWSWZHVDZqbmIy?=
 =?utf-8?B?bmM1Q2w5dWZ0UzRmdTM4RkFzQmhlSnQwUENncXlkL1dxTTlxQ3BoUmx3eUk3?=
 =?utf-8?B?NDMxQitta1JkRTdMVzJBa3lYU2hXR1BKSE5LUnF5NHVwVm1IQkc0YlNPb3Ev?=
 =?utf-8?B?SHk3bE1lM2Jpb0luQkVkUTBNaDZqbTRuYmtmSkpzVlk3M291TzJlcEhWbjRm?=
 =?utf-8?B?a3hSTDltZHhoSFBGc3F6bjBJV2hIKzhiUGtVRHJIMFVyTDFoT3UwMzMxbUZC?=
 =?utf-8?B?UE12L2tCZE1WL2lqdVRVR0Q0YUxlak5lQUJodjVVeG9WVGcxdWFmdXVBVThs?=
 =?utf-8?B?dFJtbTFmSmJocHVGRzN0REN1ZWlXbzVVdWwvK2U5QUhXdXNrT2lJd1lZc2xX?=
 =?utf-8?B?QnJoTHRxdjZYRi9sS21iMndqdllCUnV4eExvaFoyanFqSzJnanZ4WjhXL20r?=
 =?utf-8?B?ZTJ1bFpFZ1g0cTNGZWxYYTF2MUJhbWFUbkdVZDNBV0xkMVVzSDAwR0E0bWtX?=
 =?utf-8?B?aEE1ZW9VV05tQm9GNDE0RHZvVGozS2NYOUFsckNzVmVBMGU2Q3QwNVlGdmUx?=
 =?utf-8?B?bno4ZGFHL2g1MjIrc1BjQ1FlNER4dHIrOEVuZnNYUFVLcnMvSGw4dmhPcU9O?=
 =?utf-8?B?NFo0RVU3TTZsKy9DVlJkUWcvRGdJbzZ5U1RkaG1uNHBDcmdXUGVDMEkrSkU0?=
 =?utf-8?B?UHREcitQODN3QkpqMjVyckVyVXlYN0djWXZPY2hpN2s4aGowTG1FSEdrUEIx?=
 =?utf-8?B?YW8yc1prSEpreUwvbVhrNE1pajh4OGlTMDlkYXNMRVhXQ2wzdXRPZU94VURw?=
 =?utf-8?B?UFlDL0h1TnhUb3VxcDFGTmNSTzN0ZkQ4ZHlXRVI1djVEajM4QnlQZk5DK1po?=
 =?utf-8?B?QnVtRWVvMGNwUFY4Q2hDWVgwR1FoQWg4RXlWR1BJWnFYVTd5UitRRmhNbGZU?=
 =?utf-8?B?WUpBSkE2WnFNUXNkNGo0RTdZV1FwTXNBNncwejdLLzJscytOaStrRkt0Tyt6?=
 =?utf-8?B?WWxyS3AzSWIvOVQreFN3ZjhTTm56RCs5eUovTzRUNE9jOEhxSGZ3OVdrRkNN?=
 =?utf-8?B?d2xKdjd2MythUGQ4NzlRdzllVktEK2I5ek5UMy9xYWl6QjZ1eDNrMzR3TEZJ?=
 =?utf-8?B?cGxEV0FRb2N6Tk85S2ZFZDhIZDBYdzI5OTlQbUJXdlRYbERCeVJEcUd3K3Na?=
 =?utf-8?B?UVRTaW1Xc0FDM1A1emlKNThpckd6eHVPZlovK0srcU1GclFaanQ3cnI3ZlhI?=
 =?utf-8?B?MzdlRDg2OEcrUi90NmxzWFVBODNaV1g2TU1oWFJIUzQyWGEvd3B0YUoyeTRM?=
 =?utf-8?B?UXEzdEVCQTEweHBvcnRaWWowZ0Y3TFlqZlpCWVFYakI2VkF4QlpZUGg1M1Fh?=
 =?utf-8?B?Nk8wRllDcEkzc0VkMWxZTUJUd2xGQXYyeTZ4WnBkYXBaalBkVExzTEpPa21l?=
 =?utf-8?B?Z3RIRGtFWGNUSzdwL3loMEd5c2VtQ0hva0UycC95ZmttbzUrVW1BOERpT2xj?=
 =?utf-8?B?eVVHNDBTM2JJVUFiM0JXcUtnVDdad3ZlK2JLOVNpR3RkdDExOVdORzFEcEpK?=
 =?utf-8?B?Y1V1Yk9vcTBXeEpEb0dwRnBoL21RZ0I2aUZiMVVxRnRHbGN4YXJFcC9EUEVh?=
 =?utf-8?Q?1qhKD5UJ5+VCZWDX/byYMmAoSFYdtAHv?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5757.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?elpRTHJacUVIUEZCU2NYWDB2U1BDZUlxRTQ1Y3JOeERTcFlhY05menVCNkl4?=
 =?utf-8?B?MGpESnlDeCttWGI5c0xOMFVQVHViSGJtaEZsV0IyYjNrdWJ2UTR2REtsamsy?=
 =?utf-8?B?dEVRU21raE5xSy9XY0NMVlNKdmN5bUEwNUZaV21DOTBXdlltVFRQOC9LM1NI?=
 =?utf-8?B?OVVUTWlUMTJpaDVBRXlaYWQ4L1pDVXArUzcwN2VyMzk5QnVVcFJZVGFVWFZ6?=
 =?utf-8?B?TUQwWWtxZzZnR3ZYYTUvYld0R0hqQ2FsVStaMnNXZVNIWVc4VHZNVUJXOXpP?=
 =?utf-8?B?Q2p5M25wNURUNE9abXIrdmx3em14bUhMdnhNMEJrQWo4Z0JXeDUreHdieFp4?=
 =?utf-8?B?alV2bGhQTFB5V2RoWCt3YWZmNUxJUFF4RjVUSFNRdGh5b2x1d25TcWFoZzkr?=
 =?utf-8?B?bStVRmpVaEJJeEN3QW02aG02eCtvZTVTa0dRdk01M1lueVU1L2szZjdWdnlz?=
 =?utf-8?B?WXNBeFcwQ09DYUxWa0JIakpRaDlzMW1qMjRuRDY1TEJ1SnA2Y1NKa3UrY091?=
 =?utf-8?B?ZFNsU0FNankybFVHSmFnb3lHQjAyVmZvRzVEMUkyVzlZcWtjbTJtalp6L0oy?=
 =?utf-8?B?YVhEZmREK2JhL0VSTGZUZkJ4c0ZialZTZnlGdTlQS01Za0ZpYjgvNXZBdTVn?=
 =?utf-8?B?MlVkQ2psbmZpekZ4Z0tlZTFRa2JzTHM0MjFTZExGWHNjM0hoQkt2SXVFQUtM?=
 =?utf-8?B?ZFJlQVEybjh5Z1p2VXVzR2I3YWR0bWQxOFBPSWVSRTRJcjRTYWlkTHBLMlI5?=
 =?utf-8?B?SGNucW1tKzBWbXRKL2oxMklrVG9iTHZUUm5oamxXQWVQSHhWOUZWcmVFZ1BE?=
 =?utf-8?B?WURFMi9DRkNWbHJXRllJWmlzRGR4YjA4d1VDR0JURmxmaGlTWndzTUsvTG04?=
 =?utf-8?B?UnU2ekpVV0sxY3M1Yi9oMWFXVmF6Z0ZzTm8yM25Xa3hpK1FVK1haV0FLb1R3?=
 =?utf-8?B?aFg4eHR5a0dOZFlhL2o5ZXd1cGZYRlJRSVRNQjdPRENNazBaWmQ0UGVFRFRX?=
 =?utf-8?B?b1E0RTBoVktoZWNWMGJwTkFydGUyTkxqenY1L1ZzNGxVUVBaMGdUWk9ZZmQ4?=
 =?utf-8?B?U3dNOFRGalJMTnNXR3FRZFdTbHppTUp2Ni9XQ0paaXNmeGdhbW5qdUtNSkNJ?=
 =?utf-8?B?VUp2N0ovTUs1TXc1YkNUODZ4bEx2VHBsZFN4ZDMrZGdYZmkrY2JPY29mWDRv?=
 =?utf-8?B?bkpKd0dLdXd6aHQ5ZTRMU2hEWEgvcmgrWlB6NkUvcllTSmt2N1hIWUQrWnc1?=
 =?utf-8?B?SDVUb0FsZk5IS1ZXbFZIMGtUV2U3ajJlL1VKZ0JuTXd1eFI3TmpadFQ2L1U1?=
 =?utf-8?B?Sm5rMWZNanJ4MDZ6VzhhSGNwL3RZRFpaTFBNODhiUWRZQ0dvZEpDcnpINUJQ?=
 =?utf-8?B?dDgvckFVWW5lZXBnalIyYnJ4bSt0WThiOVpWb3I0REpxNFFKL3dYb1g2S3dB?=
 =?utf-8?B?WWQ0QTdsOVhEM1F6d2hleUN6WElOOFF5RmZQRFg4SlJXQy81RGpDcmJ5US9M?=
 =?utf-8?B?WmMwZEExV3UxaWg2ekxSSU01NlhONkowOHNhZHUzQzZWbE1vYkhTYmVrZ0kv?=
 =?utf-8?B?VVpXTHpJUkJVWG1xRGc2TjAvUzl0czVrTEZrN3B4WmVTRUM5V0RmQXprc0Mx?=
 =?utf-8?B?Sy96K2UxUlNKZStQZ0sybWZtdVNuQytRenZGNk9qWWNyNjYwRGt6bnVWaEJs?=
 =?utf-8?B?dnYzQnNReWxyQ1gvVTcxaDlZOFVEUkdLWXRLbGVzM3F3dXZQTVFqVWtVa0hv?=
 =?utf-8?B?aWVDVHlZdGpISUFzaGYrb3pHNHRBUVYrcTZZVkcyV2w0bmdwRjUvaHkzVE10?=
 =?utf-8?B?RFRVQXh3Q3ZKR3lmM3h6SWttcHR4QnkyRnR6Q01vVVF6UXloc3JxMThCbVpx?=
 =?utf-8?B?aGErY0htSHBmazlFZVFjcmFCRmt5bVBHRXNXRW1BMmpjRFlzYndrbGVzUnZz?=
 =?utf-8?B?RzJ6N2dHL0dYUE9Dc2NiL3YzR1NnTTFTeU80N3hUMVRkNTl6RE9xWTRVKzBQ?=
 =?utf-8?B?MlhmTysyLzNsY0dadVdHMHlLaDdkRVpIK3hzc3ZaczJXeE05ekhGaHN1M0J0?=
 =?utf-8?B?S1VoYXpENkU5MVZBbHpzS0xtYnB4YXprNWVzWXhrNUpMbUFWK0dnazFhem1S?=
 =?utf-8?Q?iv90=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b48bbaa-9d53-4fae-0292-08ddff538dd5
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5757.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2025 12:27:28.4825
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X6PfznlSNp0vRt+Rl5I+OnvuH2q/+ndO6pKgY3zj2e65VxWeRuOBbTfYHy7UoMrX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB6748
X-Rspamd-Queue-Id: F235A40E18
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.53.31:from];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: QB27T7PKUAIMGRXHTHDGAJT2IYP3HE7G
X-Message-ID-Hash: QB27T7PKUAIMGRXHTHDGAJT2IYP3HE7G
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, intel-xe@lists.freedesktop.org, Matthew Brost <matthew.brost@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Kasireddy Vivek <vivek.kasireddy@intel.com>, Simona Vetter <simona.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v2 1/2] dma-buf: Add support for private interconnects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QB27T7PKUAIMGRXHTHDGAJT2IYP3HE7G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBTZXAgMjksIDIwMjUgYXQgMTA6MjU6MDZBTSArMDIwMCwgVGhvbWFzIEhlbGxzdHLD
tm0gd3JvdGU6DQo+ID4gPiAyKSBkbWEtYnVmIHBjaWUtcDJwIGFsbG93cyB0cmFuc3BhcmVudCBm
YWxsYmFjayB0byBzeXN0ZW0gbWVtb3J5DQo+ID4gPiBkbWEtDQo+ID4gPiBidWYuIEkgdGhpbmsg
dGhhdCBpcyBhIGdvb2QgdGhpbmcgdG8ga2VlcCBldmVuIGZvciBvdGhlcg0KPiA+ID4gaW50ZXJj
b25uZWN0cw0KPiA+ID4gKGlmIHBvc3NpYmxlKS4gTGlrZSBpZiBzb21lb25lIHdhbnRzIHRvIHB1
bGwgdGhlIG5ldHdvcmsgY2FibGUsIHdlDQo+ID4gPiBjb3VsZCB0cmlnZ2VyIGEgbW92ZV9ub3Rp
ZnkoKSBhbmQgb24gbmV4dCBtYXAoKSB3ZSdkIGZhbGwgYmFjay4gQW55DQo+ID4gPiBpZGVhcyBh
cm91bmQgdGhpcz8NCj4gPiANCj4gPiBXZSBhbHJlYWR5IGRvIHRoYXQgaWYgbmV3IGltcG9ydGVy
cyBjb21lIGFsb25nLg0KPiA+IA0KPiA+IEUuZy4geW91IGhhdmUgYSBjb25uZWN0aW9uIHdoaWNo
IGNhbiBkbyBQQ0llIFAyUCBhbmQgdGhlbiBzdWRkZW5seQ0KPiA+IHNvbWVib2R5IGF0dGFjaGVz
IHdoaWNoIGNhbiBvbmx5IGRvIERNQSB0byBzeXN0ZW0gbWVtb3J5LiBJbiB0aGF0DQo+ID4gc2l0
dWF0aW9uIHdlIHVzZSBtb3ZlX25vdGlmeSB0byBtb3ZlIHRoZSBidWZmZXIgaW50byBzeXN0ZW0g
bWVtb3J5DQo+ID4gYW5kIGltcG9ydHMgcmUtbWFwIGl0IHRvIGdyYXNwIHRoZSBuZXcgbG9jYXRp
b24uDQo+IA0KPiBTdXJlLCBKdXN0IHdhbmRlcmluZyB3aGV0aGVyIHdlIHNob3VsZCBkb2N1bWVu
dCBhbmQgcmVxdWlyZSB0aGF0IGFsc28NCj4gZm9yIGZhc3QgaW50ZXJjb25uZWN0cy4gDQoNCkkg
dGhpbiBUaG9tYXMgaXMgcHVzaGluZyB0b3dhcmQgYSBxdWVzdGlvbiBvZiB3aGF0IGhhcHBlbnMg
dG8gdGhlDQppbnRlcmNvbm5lY3QgZHVyaW5nIGEgbW92ZT8NCg0KSWYgdGhlIGludGVyY29ubmVj
dCBpcyBlc3RhYmxpc2hlZCBkdXJpbmcgYXR0YWNoLCBjYW4vc2hvdWxkIG1vdmUNCnJlLW5lZ290
aWF0ZSBpdD8NCg0KSXQgc2VlbXMgbGlrZSB5ZXMgLSBpZiB0aGUgYXR0YWNobWVudCBuZWdvdGlh
dGVkIHVzaW5nIHNvbWUgcHJpdmF0ZQ0KaW50ZXJjb25uZWN0IHRoZW4gbW92ZSBoYXBwZW5zIGFu
ZCB0aGUgbWVtb3J5IGlzIG9uIENQVSBhbmQgbm8gbG9uZ2VyDQphdmFpbGFibGUgdG8gdGhlIHBy
aXZhdGUgaW50ZXJjb25uZWN0IHRoZSBhdHRhY2htZW50IG5lZWRzIHRvDQpyZW5lZ290aWF0ZSBh
bmQgY2hhbmdlIHRvIGEgbmV3IGludGVyY29ubmVjdCBkdXJpbmcgdGhlIG1vdmUgc2VxdWVuY2Uu
DQoNCklmIHRoZSBpbXBvcnRlciBzdXBwb3J0cyBvbmx5IDEgaW50ZXJjb25uZWN0LCB0aGVuIGl0
IHNob3VsZG4ndCBoYXZlDQp0byBpbXBsZW1lbnQgcmVuZWdvdGlhdGUuDQoNCkkgdGhpbmsgdGhp
cyBuZWVkcyB0byBiZSBjYWxsZWQgb3V0IGV4cGxpY2l0bHkgaW4gdGhlIGZsb3cgYW5kDQpkb2N1
bWVudGF0aW9uLg0KDQo+IFNvIHRoYXQgaWYgd2UgdXNlIGEgbmV3IG1hcF9hdHRhY2htZW50KCkN
Cj4gZnVuY3Rpb24sIGxpa2Ugd2FzIHN1Z2dlc3RlZCBlYWxpZXIsIGlmIHRoYXQgZmFpbHMsIHRo
ZSBpbXBvcnRlciBzaG91bGQNCj4gaWRlYWxseSByZXRyeSB3aXRoIHRoZSBvbGQgb25lIHRvIGdl
dCBhbiBzZy1saXN0IHRvIHN5c3RlbSBtZW1vcnk/DQoNCkl0IHdvdWxkIGJlIGFtYXppbmcgdG8g
YXZvaWQgdGhpcyBoYXNzbGUsIGlmIHRoZSBjb3JlIGNvZGUgY291bGQgc2VlDQp0aGUgZXhwb3J0
ZXIgaXMgb2xkIGFuZCBhdXRvbWF0aWNhbGx5IG1hdGNoIHRoZSBzZy1saXN0IGJlaGF2aW9yIHRv
DQpnZW5lcmljIGludGVyY29ubmVjdCBvcHRpb25zLiBBbmQgdmljZSB2ZXJzYSBmb3Igb2xkIGlt
cG9ydGVycy4NCg0KSmFzb24NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
