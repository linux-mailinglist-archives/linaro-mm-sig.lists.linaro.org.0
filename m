Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA5DC7946D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Nov 2025 14:23:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 855403F8F9
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Nov 2025 13:23:56 +0000 (UTC)
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011013.outbound.protection.outlook.com [40.107.208.13])
	by lists.linaro.org (Postfix) with ESMTPS id DB6603F8F9
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Nov 2025 13:23:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="QRVf/6Jx";
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.208.13 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VLRHYeW4gPZphHO4PkNYm1axD3kIV6Ai9mVc7j02TBvPCkZNZM+RlHXqm54oh6AS15/zSa/m+wvuloSY7VwDuK54DqAl1UXVbUWL7jiHbTtR3c+Qe3rG/jCu3n8V8BpZxMnhsM6Icy1CcvbnXb+nOPQBhyeq8wh8w2SfBW9eZo5STiNFPOjaHGFljeNqTIjWYluYchaHIPMpUj3t6wbydz9QSckUCAhkUUuehjkwJ/njg1Fy+WMLaUQTW3HA8ao6FbXvDfqM3Qm3NifCIz8J0TbN+8zB0evCBIZU7euvEw8AYFRps6dC/P65yX8KFMTnmSsbWQOuAasPKuExhF3vfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IEWn30i+lcB1juNFoi8l+2ereyqFg6C2vLQWrIDo/sM=;
 b=Xf5l6Ziw1cQzPPZVL0ijWPb4pKHCJKDXWpGOVEdR3BM3wb6n+B4v6oDf47u3jUjtEWYmOfGwgx2i0PwsMZ9AIA2DUhUu1Kl5DaZY+N5p/YQ3X16csDFpxe8ihv3UlZBhaYZ89F/Gk6dvyziXiRgrXDhSlq3ilTszIFgM+kXPqhY61fzbd8yItpMFIJtbhJO3cyVRWU/4JnHkrp8u0ipw0pzMg1qhC7r8WrF/d+wiqiyg6xHxk6MBpqX+gg5Q4xBe2zhqP0MqZDaSEWBUCI/+q4wxQIEQQ0MRYgxs1TUQd4xmTLmwrS0Bol5AGrm2qE8NgMjzZ6mLocH+d6Ypb0F4Ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IEWn30i+lcB1juNFoi8l+2ereyqFg6C2vLQWrIDo/sM=;
 b=QRVf/6Jx5a8jQfMfC0MdXG3wwZZpY46idFvUUnas1I5HLKAj7FH/5/eGdlrP56/EkYdMOkUGW+EVaajHi32MaiL5FOm9wMNu3KXS3V/oYfoq9yPFR2vq5POTRqq/SMvgpvu8SOy3M5q5yc3lBf78sMTHnIRcycsgYj3YtTZGtUo=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH1PR12MB9719.namprd12.prod.outlook.com (2603:10b6:610:2b2::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Fri, 21 Nov
 2025 13:23:20 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9320.021; Fri, 21 Nov 2025
 13:23:19 +0000
Message-ID: <696b6fd1-9590-4395-a7a8-2888ceb8adc0@amd.com>
Date: Fri, 21 Nov 2025 14:23:10 +0100
User-Agent: Mozilla Thunderbird
To: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Felix Kuehling <Felix.Kuehling@amd.com>,
 Sumit Semwal <sumit.semwal@linaro.org>
References: <20251121101315.3585-1-pierre-eric.pelloux-prayer@amd.com>
 <20251121101315.3585-10-pierre-eric.pelloux-prayer@amd.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20251121101315.3585-10-pierre-eric.pelloux-prayer@amd.com>
X-ClientProxiedBy: SG2PR02CA0026.apcprd02.prod.outlook.com
 (2603:1096:3:18::14) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH1PR12MB9719:EE_
X-MS-Office365-Filtering-Correlation-Id: 5fccb49c-552d-4d35-b9d6-08de29012328
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?eC8xblVWU3Z5NnJvbXJzNmtNTCtUam50bmc1cFMzaGx1QXo2dUtvRkxVa3Jx?=
 =?utf-8?B?N2RqbXl1Z2lMOWUwRTdiUE5XeHNrYUt2ZFkwcEVwdWVtQnFocncvZmwydXQv?=
 =?utf-8?B?MTV0MjdzMEVrZVpxL0tQSzlNTnorYWZCT29qWWl0S1l6ckhRdTZnUDhvOXU1?=
 =?utf-8?B?ZlJPOVJsdDVNa05seHl5WDh2L3hSSzBHUGU0c2E0U2VKSjJIbFBseTBYenJX?=
 =?utf-8?B?cXBJUU0zaG80U2IvaEFybGVxeXNjVGhTRHlGaXFpbVY0bDNFaEdHTXRjZHBi?=
 =?utf-8?B?NXRkRDc1MXJLNG9RaTUrV2VjRWRIM3dYMUE3QjBJdnpialZsMFk4ZGpNcDF4?=
 =?utf-8?B?bDduZ1JQSUZjWWJMalNTYzEyYVBPWWpNL1k3WlQ4RkNLYTFmcExlSHk0VFpF?=
 =?utf-8?B?Sk13c2p4cWZXMFF3YzJNTk54Rllwc05oOG01NmVRc0ZFTXRJM29DMU1hSFIy?=
 =?utf-8?B?T1h4anZUeG9vczJBQm5KQ1Z0OERjME9nWVNFY3lvaTJ6WFdpK3duN2s0T1M5?=
 =?utf-8?B?OE1meEZudlA5MTZrQ1I1MTJ1a2dvL1M2VkdwT0RhQjN1WTlkb0NNY1RVcUln?=
 =?utf-8?B?MWFXQ0hITUNNbzRNbGZTL1RSUExVN2NUY2FOVzFjV0tGUXNYVjI3cmFXSFQw?=
 =?utf-8?B?NXFNRTZKY1NZWGxtbHVuczB1WEVvODUyTEdZWjFLMnZMdGtnUVlZdU9xT1la?=
 =?utf-8?B?c05HaS9UWThscjMyUUVybnNxcjJzRmtDYjhpZWkxbWh5Qll3MytYWXlsWEEz?=
 =?utf-8?B?TG9UempoQlI5dTBaeXRWb2x1Z0tScy9SS3VQTkwvYUVBQnp4bWdVSXBvTWFz?=
 =?utf-8?B?bGVabUNHcjhHVFQvai9vc04zbGVqL1VrUlA0UkNuSkFaK2tDOFJKSU82c1Q0?=
 =?utf-8?B?bjdxdE40WjhITWphVWV4R09TeHZtUlRLS2NnblZJa04vTURDeFBGS1QrMENR?=
 =?utf-8?B?MFRBTjNKRFNVdEZzdGFoZzk5S1Z2a2NteUlvMkoxQ0dVZUo5cHBTZWdrK0k3?=
 =?utf-8?B?Tjd6SjB4ZnBUNGlnRVBVUnJOWEtlcFo4Tml4L0RoYklnS1FKa1lKVVM4aWQx?=
 =?utf-8?B?YXJOZUtqTWI4bzdFWit1OVJ4U09pNzd3Z2Z3VnFwUnFTaGdvam9YNUJpS05V?=
 =?utf-8?B?NHo3SHg5Rjh4UjgvKy9nZHppWm9QandmeTl4bllsUXFQYUNKZGxucXlmTlpK?=
 =?utf-8?B?d0IwUGx6UmFNdFZyOUFKbDN6UXpjY29HUHFSSkJWYU55ZXZMb2NPcmJyTVRK?=
 =?utf-8?B?dysxZGpTWEdVYlpkM0Z5VlhPVGZJZXhhNzg1NkFOa04vLzJ3T3poUDRMVlJ3?=
 =?utf-8?B?QWo2YmFpZlRYSTN0eElYTlpxSG9iZUg5YW5YOFplTEVFM2FWN0NCRVRidUI4?=
 =?utf-8?B?WVlLaGw4UEovVjFqb0dqTFB2aDlCT1pQNm5NcjltSnFiSTNhd2dhWUlzT1F2?=
 =?utf-8?B?ZmdRQWhURFhCbThGOW5YTWVsejhXM1FqK2Jxd09zRUhjczA4Nnl1dmV5eTM1?=
 =?utf-8?B?L0NMK0M1TDFaTlNaS3lSN2JxWUdhV0psK3h1T3pKT0ZrbDV0azZwZ1hRNUlh?=
 =?utf-8?B?d3hKdC9Cc3hDSjJCa0toNW9iQTE0bmZXNWtvNUQ4cVZOamFoSG4xQnlDSm04?=
 =?utf-8?B?TEVXbi9wZy9YME5xTnJ4VTYvd09XUXd4S21IRnphREFlVjVEQlIydXQ4b1VF?=
 =?utf-8?B?aGlVMGF0V05kM3RLQktMZEJYQzRKTGxJRGtVZGNpVExqRkhBdE1UU0hFQjlm?=
 =?utf-8?B?bnZpUVZPMVhEUXpNWEpGQUkxN1l4NEY1TTgzQUVsTEZrKzI4eHdId1BzeTQ5?=
 =?utf-8?B?YnEyaERhNHFVaElSUDkwSmMybVJ0L2kxdk9yUWgyYkJMVktoOEJUODllZlN6?=
 =?utf-8?B?djh1MVF5aEtIUUVPRi9pbGY1VytTbFhidVF0TzJsNXU4L05ieWQ1SW40NytG?=
 =?utf-8?Q?YUWgv3ic/ddZAUuZSZNU/OXwvhL3N0Gr?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZHV5emJ4bEhMRDIxMFhrSTA5eE5hZGNBVHBVdzRkS2ppdDY3NEJweC9odUhC?=
 =?utf-8?B?Z0RPTC8vOUxmWmZaS3N5RThZb0l0UGJSeERTeVNvQVNnayswclZlUU5lQWNt?=
 =?utf-8?B?aC9rZmxFMlRjdXl0cTRKdFZBaUQ4aTN1ZUhSWVRMNkNuRDMyQ0ZuNkRLMGZi?=
 =?utf-8?B?WEZvcFpwLy9xbmkyYWRkTlJJMnNQMldwTFVpanlobjMySitBdGo5OUwyTkh3?=
 =?utf-8?B?dWR4SEdhZ0ZEQzA2bm1KTStmWnd1cVJqSS9xbzI5UWs4QkpvYkVKQ3NJcU1n?=
 =?utf-8?B?S3pXdEprSVFtVEFuRmdWN25QWUhRWHZWTnkzOFA4VjcvSnRUMlVxZ1BWQnQ2?=
 =?utf-8?B?MmhjZHAvd2QrU1R4dUpCZjg3eFJTM0lXS3dkRmkxZHVCbUJDTEdOSHUrZ3p2?=
 =?utf-8?B?Tk1JQ1hiLzUvdjJOQ29KRHpxOUJna1VnRnFRcVBLRDc5SWd4bE1ydStlOW5G?=
 =?utf-8?B?dnJucjlqcERsREVnN0t0VldneitZcnR5a0R5S2FBa3RrOEM2QUlwbEZvR3N5?=
 =?utf-8?B?NXhvaFErSUV4ZG9JVUNuL2hLUmh4WWIwbHR5UmVFd1k3MVFrREVJNmJFSHJi?=
 =?utf-8?B?cUxKSG1wUi8rNzlPZG9VODhpM3NSVVI4RjFadWVUVkp3R0YrMkwrNitQb2FO?=
 =?utf-8?B?Y3lyNGNTQWkrbmNaaWJkeVpMc2NxVVR5SUNIVXB0WWpHczBHUUF6UjhOSUpK?=
 =?utf-8?B?d21xdW5sakpldjdBQmxWd0RHNDFuQ21TVE9ybGgvMkNSQVBpUzM0eVFDUEJy?=
 =?utf-8?B?a1YvMXRJeStXR2ZpMFc3Q1B4alpEcUZRYWVYdVNaNjBDZ3AzbmJyWVVScXdm?=
 =?utf-8?B?eEs1UkVGVi9QVTFKTHE3bzFSSUVEWDFqZjJoWHdIQU9Bc0tqSlFUQnl3Qk5L?=
 =?utf-8?B?RldVRjVycnhyemJWY2RiN0ZsQXFDVlZwVTBhTk9XWkt4TGZpbzhjanFQcndS?=
 =?utf-8?B?OW9GcEE5UjA2QWtFVkJWUnlScWFKUHdXYmRQTVFQS3BIZlg4c3dTR29iS0Mz?=
 =?utf-8?B?OEFVWS9kdzQ0K3ZsUHkzZWg0c01rb1VUUjV2RHZJL1A4ckxLY2dsQUFQSzVl?=
 =?utf-8?B?eUYyMDN5TGxxVmtscGU4MzV3ZzIxc3RVUjZIVVhPV2MrSHR0amhlNE1xR1Nv?=
 =?utf-8?B?dnQwSUVRWVRwYmlVbG5GOGMyMnBtaEtYSmIwWklvU1gwZE5KbUxGWERkeElR?=
 =?utf-8?B?eCtiRmR2SVBZTVBybnRwMWIxQTZ0M3Z2NHFkSjFZbWc2TkMvM1ZVSFJiNVpY?=
 =?utf-8?B?T3NjVE5vUjU0bjJ6b2FuVHBUT1hVM09oOGhHalIwZUcwM1dZMXZHbU9kRGhw?=
 =?utf-8?B?OEVTMEkxaW1iN0YrZzJBbUdaTTZHMkdmd0dObFQ0RHhnVkFmdFU3TzdXMmxj?=
 =?utf-8?B?WDVtRnU1bGZHcGltWU9FMGtuaGgzOCtzUVBwdWRHMmZmYmxCWFJ3Y2xFaEZh?=
 =?utf-8?B?ZnY5N1N2emczdUc0NHlNN3B6SmNSU2lkZWxZVDRzbGlSNm9Fa3h6V1Q2Mk9u?=
 =?utf-8?B?RkkyRGdPT2lSVS8vWm0ySXhnQTc1emVxYURnelByTjBSK3BOWnRmUG4yVDB1?=
 =?utf-8?B?aElQOWdKZnFVSzNnTE5xTWxGaXNHa1lOdUtRc3hjdHVLVTdjS1ZXSVBZZHZm?=
 =?utf-8?B?MkZ3dXlOM0ZVWkFhUzlxeVNRdkRFQXd1RkEweUU1amY0anhNZmxzTlRxZjU1?=
 =?utf-8?B?QkhSWG5VbGg2Um1ZaEIrNFF3NG1uTWJkQklrWXhQTXZaV0FiWHlYNEt4bmg5?=
 =?utf-8?B?N2ZFdUtrS0N1K1JVRFdCVFhFbHlML1FKcFpQbWg5TEZmYkpUVzZSNWkyNnF3?=
 =?utf-8?B?emtjMWh6S2trUXpCemRlUm1vTmNhSEN5Z2lVMXBFNnlzNmpSMjZleEtkVWFV?=
 =?utf-8?B?NjhkQ2JKQ0p6RGVwTDVNenNGanNFZ29SWmtFTzkweEQrRHpoUDFpL0o5RDBm?=
 =?utf-8?B?NWovanlBakxMZTBDUEk2QWF1cGVEVStmSnZ0aVNtU3lEOEFSRk5nczhuejZN?=
 =?utf-8?B?azVHR051QjhpTXgvWDdsWGhQcW11TWh3OW5EUkhJNW9uYzhLZTRrbmpLZy9V?=
 =?utf-8?B?U0RnOFl1SGNCVVdkM3RvQTRRZUlJTy9wcmxGamh5Z2ZGNkN6UmRya1BoOHpU?=
 =?utf-8?Q?wiMWRsVjr136+X2XJIYgThSZ6?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fccb49c-552d-4d35-b9d6-08de29012328
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2025 13:23:19.7798
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dGOCcVP5oSJPjK0sI/sIVNRBlcmMR6MnDNUspSo00hO2FprFRUFMm11E5x43avZS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH1PR12MB9719
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.208.13:from];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:mid,amd.com:email,amd.com:dkim,amd.com:from_smtp,amd.com:from_mime];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DB6603F8F9
X-Spamd-Bar: -----
Message-ID-Hash: B2IN6K45SD5SEFNB24MLIISQP5OVPLVI
X-Message-ID-Hash: B2IN6K45SD5SEFNB24MLIISQP5OVPLVI
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 09/28] drm/amdgpu: pass the entity to use to ttm public functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B2IN6K45SD5SEFNB24MLIISQP5OVPLVI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMjEvMjUgMTE6MTIsIFBpZXJyZS1FcmljIFBlbGxvdXgtUHJheWVyIHdyb3RlOg0KPiBU
aGlzIHdheSB0aGUgY2FsbGVyIGNhbiBzZWxlY3QgdGhlIG9uZSBpdCB3YW50cyB0byB1c2UuDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBQaWVycmUtRXJpYyBQZWxsb3V4LVByYXllciA8cGllcnJlLWVy
aWMucGVsbG91eC1wcmF5ZXJAYW1kLmNvbT4NCg0KSSdtIHdvbmRlcmluZyBpZiBpdCB3b3VsZG4n
dCBtYWtlIHNlbnNlIHRvIHB1dCBhIHBvaW50ZXIgdG8gYWRldiBpbnRvIGVhY2ggYW1kZ3B1X3R0
bV9idWZmZXJfZW50aXR5Lg0KDQpCdXQgdGhhdCBpcyBtYXliZSBzb21ldGhpbmcgZm9yIGFub3Ro
ZXIgcGF0Y2guIEZvciBub3c6DQoNClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfYmVuY2htYXJrLmMgfCAgMyArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X29iamVjdC5jICAgIHwgIDQgKy0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfdHRtLmMgICAgICAgfCAzNCArKysrKysrKystLS0tLS0tLS0tDQo+ICBk
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmggICAgICAgfCAxNiArKysrKy0t
LS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL2tmZF9taWdyYXRlLmMgICAgICB8ICAz
ICstDQo+ICA1IGZpbGVzIGNoYW5nZWQsIDMyIGluc2VydGlvbnMoKyksIDI4IGRlbGV0aW9ucygt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9i
ZW5jaG1hcmsuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9iZW5jaG1hcmsu
Yw0KPiBpbmRleCAzNjM2Yjc1N2M5NzQuLmEwNTAxNjdlNzZhNCAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2JlbmNobWFyay5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9iZW5jaG1hcmsuYw0KPiBAQCAtMzcsNyArMzcs
OCBAQCBzdGF0aWMgaW50IGFtZGdwdV9iZW5jaG1hcmtfZG9fbW92ZShzdHJ1Y3QgYW1kZ3B1X2Rl
dmljZSAqYWRldiwgdW5zaWduZWQgc2l6ZSwNCj4gIA0KPiAgCXN0aW1lID0ga3RpbWVfZ2V0KCk7
DQo+ICAJZm9yIChpID0gMDsgaSA8IG47IGkrKykgew0KPiAtCQlyID0gYW1kZ3B1X2NvcHlfYnVm
ZmVyKGFkZXYsIHNhZGRyLCBkYWRkciwgc2l6ZSwgTlVMTCwgJmZlbmNlLA0KPiArCQlyID0gYW1k
Z3B1X2NvcHlfYnVmZmVyKGFkZXYsICZhZGV2LT5tbWFuLmRlZmF1bHRfZW50aXR5LA0KPiArCQkJ
CSAgICAgICBzYWRkciwgZGFkZHIsIHNpemUsIE5VTEwsICZmZW5jZSwNCj4gIAkJCQkgICAgICAg
ZmFsc2UsIDApOw0KPiAgCQlpZiAocikNCj4gIAkJCWdvdG8gZXhpdF9kb19tb3ZlOw0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jIGIvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jDQo+IGluZGV4IDkyNmEzZjA5
YTc3Ni4uODU4ZWI5ZmEwNjFiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfb2JqZWN0LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X29iamVjdC5jDQo+IEBAIC0xMzIyLDggKzEzMjIsOCBAQCB2b2lkIGFtZGdwdV9ib19y
ZWxlYXNlX25vdGlmeShzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvKQ0KPiAgCWlmIChyKQ0K
PiAgCQlnb3RvIG91dDsNCj4gIA0KPiAtCXIgPSBhbWRncHVfZmlsbF9idWZmZXIoYWJvLCAwLCAm
Ym8tPmJhc2UuX3Jlc3YsICZmZW5jZSwgdHJ1ZSwNCj4gLQkJCSAgICAgICBBTURHUFVfS0VSTkVM
X0pPQl9JRF9DTEVBUl9PTl9SRUxFQVNFKTsNCj4gKwlyID0gYW1kZ3B1X2ZpbGxfYnVmZmVyKCZh
ZGV2LT5tbWFuLmNsZWFyX2VudGl0eSwgYWJvLCAwLCAmYm8tPmJhc2UuX3Jlc3YsDQo+ICsJCQkg
ICAgICAgJmZlbmNlLCBBTURHUFVfS0VSTkVMX0pPQl9JRF9DTEVBUl9PTl9SRUxFQVNFKTsNCj4g
IAlpZiAoV0FSTl9PTihyKSkNCj4gIAkJZ290byBvdXQ7DQo+ICANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV90dG0uYw0KPiBpbmRleCAzZDg1MDg5M2I5N2YuLjFkM2FmYWQ4ODVk
YSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYw0KPiBAQCAt
MzU5LDcgKzM1OSw3IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X3R0bV9jb3B5X21lbV90b19tZW0oc3Ry
dWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsDQo+ICAJCQkJCQkJICAgICB3cml0ZV9jb21wcmVzc19k
aXNhYmxlKSk7DQo+ICAJCX0NCj4gIA0KPiAtCQlyID0gYW1kZ3B1X2NvcHlfYnVmZmVyKGFkZXYs
IGZyb20sIHRvLCBjdXJfc2l6ZSwgcmVzdiwNCj4gKwkJciA9IGFtZGdwdV9jb3B5X2J1ZmZlcihh
ZGV2LCBlbnRpdHksIGZyb20sIHRvLCBjdXJfc2l6ZSwgcmVzdiwNCj4gIAkJCQkgICAgICAgJm5l
eHQsIHRydWUsIGNvcHlfZmxhZ3MpOw0KPiAgCQlpZiAocikNCj4gIAkJCWdvdG8gZXJyb3I7DQo+
IEBAIC00MTQsOCArNDE0LDkgQEAgc3RhdGljIGludCBhbWRncHVfbW92ZV9ibGl0KHN0cnVjdCB0
dG1fYnVmZmVyX29iamVjdCAqYm8sDQo+ICAJICAgIChhYm8tPmZsYWdzICYgQU1ER1BVX0dFTV9D
UkVBVEVfVlJBTV9XSVBFX09OX1JFTEVBU0UpKSB7DQo+ICAJCXN0cnVjdCBkbWFfZmVuY2UgKndp
cGVfZmVuY2UgPSBOVUxMOw0KPiAgDQo+IC0JCXIgPSBhbWRncHVfZmlsbF9idWZmZXIoYWJvLCAw
LCBOVUxMLCAmd2lwZV9mZW5jZSwNCj4gLQkJCQkgICAgICAgZmFsc2UsIEFNREdQVV9LRVJORUxf
Sk9CX0lEX01PVkVfQkxJVCk7DQo+ICsJCXIgPSBhbWRncHVfZmlsbF9idWZmZXIoJmFkZXYtPm1t
YW4ubW92ZV9lbnRpdHksDQo+ICsJCQkJICAgICAgIGFibywgMCwgTlVMTCwgJndpcGVfZmVuY2Us
DQo+ICsJCQkJICAgICAgIEFNREdQVV9LRVJORUxfSk9CX0lEX01PVkVfQkxJVCk7DQo+ICAJCWlm
IChyKSB7DQo+ICAJCQlnb3RvIGVycm9yOw0KPiAgCQl9IGVsc2UgaWYgKHdpcGVfZmVuY2UpIHsN
Cj4gQEAgLTIyNTgsNyArMjI1OSw5IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X3R0bV9wcmVwYXJlX2pv
YihzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwNCj4gIAkJCQkJCSAgIERNQV9SRVNWX1VTQUdF
X0JPT0tLRUVQKTsNCj4gIH0NCj4gIA0KPiAtaW50IGFtZGdwdV9jb3B5X2J1ZmZlcihzdHJ1Y3Qg
YW1kZ3B1X2RldmljZSAqYWRldiwgdWludDY0X3Qgc3JjX29mZnNldCwNCj4gK2ludCBhbWRncHVf
Y29weV9idWZmZXIoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsDQo+ICsJCSAgICAgICBzdHJ1
Y3QgYW1kZ3B1X3R0bV9idWZmZXJfZW50aXR5ICplbnRpdHksDQo+ICsJCSAgICAgICB1aW50NjRf
dCBzcmNfb2Zmc2V0LA0KPiAgCQkgICAgICAgdWludDY0X3QgZHN0X29mZnNldCwgdWludDMyX3Qg
Ynl0ZV9jb3VudCwNCj4gIAkJICAgICAgIHN0cnVjdCBkbWFfcmVzdiAqcmVzdiwNCj4gIAkJICAg
ICAgIHN0cnVjdCBkbWFfZmVuY2UgKipmZW5jZSwNCj4gQEAgLTIyODIsNyArMjI4NSw3IEBAIGlu
dCBhbWRncHVfY29weV9idWZmZXIoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsIHVpbnQ2NF90
IHNyY19vZmZzZXQsDQo+ICAJbWF4X2J5dGVzID0gYWRldi0+bW1hbi5idWZmZXJfZnVuY3MtPmNv
cHlfbWF4X2J5dGVzOw0KPiAgCW51bV9sb29wcyA9IERJVl9ST1VORF9VUChieXRlX2NvdW50LCBt
YXhfYnl0ZXMpOw0KPiAgCW51bV9kdyA9IEFMSUdOKG51bV9sb29wcyAqIGFkZXYtPm1tYW4uYnVm
ZmVyX2Z1bmNzLT5jb3B5X251bV9kdywgOCk7DQo+IC0JciA9IGFtZGdwdV90dG1fcHJlcGFyZV9q
b2IoYWRldiwgJmFkZXYtPm1tYW4ubW92ZV9lbnRpdHksIG51bV9kdywNCj4gKwlyID0gYW1kZ3B1
X3R0bV9wcmVwYXJlX2pvYihhZGV2LCBlbnRpdHksIG51bV9kdywNCj4gIAkJCQkgICByZXN2LCB2
bV9uZWVkc19mbHVzaCwgJmpvYiwNCj4gIAkJCQkgICBBTURHUFVfS0VSTkVMX0pPQl9JRF9UVE1f
Q09QWV9CVUZGRVIpOw0KPiAgCWlmIChyKQ0KPiBAQCAtMjQxMSwyMiArMjQxNCwxOCBAQCBpbnQg
YW1kZ3B1X3R0bV9jbGVhcl9idWZmZXIoc3RydWN0IGFtZGdwdV9ibyAqYm8sDQo+ICAJcmV0dXJu
IHI7DQo+ICB9DQo+ICANCj4gLWludCBhbWRncHVfZmlsbF9idWZmZXIoc3RydWN0IGFtZGdwdV9i
byAqYm8sDQo+IC0JCQl1aW50MzJfdCBzcmNfZGF0YSwNCj4gLQkJCXN0cnVjdCBkbWFfcmVzdiAq
cmVzdiwNCj4gLQkJCXN0cnVjdCBkbWFfZmVuY2UgKipmLA0KPiAtCQkJYm9vbCBkZWxheWVkLA0K
PiAtCQkJdTY0IGtfam9iX2lkKQ0KPiAraW50IGFtZGdwdV9maWxsX2J1ZmZlcihzdHJ1Y3QgYW1k
Z3B1X3R0bV9idWZmZXJfZW50aXR5ICplbnRpdHksDQo+ICsJCSAgICAgICBzdHJ1Y3QgYW1kZ3B1
X2JvICpibywNCj4gKwkJICAgICAgIHVpbnQzMl90IHNyY19kYXRhLA0KPiArCQkgICAgICAgc3Ry
dWN0IGRtYV9yZXN2ICpyZXN2LA0KPiArCQkgICAgICAgc3RydWN0IGRtYV9mZW5jZSAqKmYsDQo+
ICsJCSAgICAgICB1NjQga19qb2JfaWQpDQo+ICB7DQo+ICAJc3RydWN0IGFtZGdwdV9kZXZpY2Ug
KmFkZXYgPSBhbWRncHVfdHRtX2FkZXYoYm8tPnRiby5iZGV2KTsNCj4gLQlzdHJ1Y3QgYW1kZ3B1
X3R0bV9idWZmZXJfZW50aXR5ICplbnRpdHk7DQo+ICAJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2Ug
PSBOVUxMOw0KPiAgCXN0cnVjdCBhbWRncHVfcmVzX2N1cnNvciBkc3Q7DQo+ICAJaW50IHI7DQo+
ICANCj4gLQllbnRpdHkgPSBkZWxheWVkID8gJmFkZXYtPm1tYW4uY2xlYXJfZW50aXR5IDoNCj4g
LQkJCSAgICZhZGV2LT5tbWFuLm1vdmVfZW50aXR5Ow0KPiAtDQo+ICAJaWYgKCFhZGV2LT5tbWFu
LmJ1ZmZlcl9mdW5jc19lbmFibGVkKSB7DQo+ICAJCWRldl9lcnIoYWRldi0+ZGV2LA0KPiAgCQkJ
IlRyeWluZyB0byBjbGVhciBtZW1vcnkgd2l0aCByaW5nIHR1cm5lZCBvZmYuXG4iKTsNCj4gQEAg
LTI0NDMsMTMgKzI0NDIsMTQgQEAgaW50IGFtZGdwdV9maWxsX2J1ZmZlcihzdHJ1Y3QgYW1kZ3B1
X2JvICpibywNCj4gIAkJLyogTmV2ZXIgZmlsbCBtb3JlIHRoYW4gMjU2TWlCIGF0IG9uY2UgdG8g
YXZvaWQgdGltZW91dHMgKi8NCj4gIAkJY3VyX3NpemUgPSBtaW4oZHN0LnNpemUsIDI1NlVMTCA8
PCAyMCk7DQo+ICANCj4gLQkJciA9IGFtZGdwdV90dG1fbWFwX2J1ZmZlcihhZGV2LCAmYWRldi0+
bW1hbi5kZWZhdWx0X2VudGl0eSwNCj4gKwkJciA9IGFtZGdwdV90dG1fbWFwX2J1ZmZlcihhZGV2
LCBlbnRpdHksDQo+ICAJCQkJCSAgJmJvLT50Ym8sIGJvLT50Ym8ucmVzb3VyY2UsICZkc3QsDQo+
ICAJCQkJCSAgMSwgZmFsc2UsICZjdXJfc2l6ZSwgJnRvKTsNCj4gIAkJaWYgKHIpDQo+ICAJCQln
b3RvIGVycm9yOw0KPiAgDQo+IC0JCXIgPSBhbWRncHVfdHRtX2ZpbGxfbWVtKGFkZXYsIGVudGl0
eSwgc3JjX2RhdGEsIHRvLCBjdXJfc2l6ZSwgcmVzdiwNCj4gKwkJciA9IGFtZGdwdV90dG1fZmls
bF9tZW0oYWRldiwgZW50aXR5LA0KPiArCQkJCQlzcmNfZGF0YSwgdG8sIGN1cl9zaXplLCByZXN2
LA0KPiAgCQkJCQkmbmV4dCwgdHJ1ZSwga19qb2JfaWQpOw0KPiAgCQlpZiAocikNCj4gIAkJCWdv
dG8gZXJyb3I7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfdHRtLmggYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmgNCj4gaW5k
ZXggNDFiYmMyNTY4MGEyLi45Mjg4NTk5YzljNDYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfdHRtLmgNCj4gQEAgLTE2Nyw3ICsxNjcsOSBAQCBpbnQgYW1kZ3B1X3R0
bV9pbml0KHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2KTsNCj4gIHZvaWQgYW1kZ3B1X3R0bV9m
aW5pKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2KTsNCj4gIHZvaWQgYW1kZ3B1X3R0bV9zZXRf
YnVmZmVyX2Z1bmNzX3N0YXR1cyhzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwNCj4gIAkJCQkJ
Ym9vbCBlbmFibGUpOw0KPiAtaW50IGFtZGdwdV9jb3B5X2J1ZmZlcihzdHJ1Y3QgYW1kZ3B1X2Rl
dmljZSAqYWRldiwgdWludDY0X3Qgc3JjX29mZnNldCwNCj4gK2ludCBhbWRncHVfY29weV9idWZm
ZXIoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsDQo+ICsJCSAgICAgICBzdHJ1Y3QgYW1kZ3B1
X3R0bV9idWZmZXJfZW50aXR5ICplbnRpdHksDQo+ICsJCSAgICAgICB1aW50NjRfdCBzcmNfb2Zm
c2V0LA0KPiAgCQkgICAgICAgdWludDY0X3QgZHN0X29mZnNldCwgdWludDMyX3QgYnl0ZV9jb3Vu
dCwNCj4gIAkJICAgICAgIHN0cnVjdCBkbWFfcmVzdiAqcmVzdiwNCj4gIAkJICAgICAgIHN0cnVj
dCBkbWFfZmVuY2UgKipmZW5jZSwNCj4gQEAgLTE3NSwxMiArMTc3LDEyIEBAIGludCBhbWRncHVf
Y29weV9idWZmZXIoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsIHVpbnQ2NF90IHNyY19vZmZz
ZXQsDQo+ICBpbnQgYW1kZ3B1X3R0bV9jbGVhcl9idWZmZXIoc3RydWN0IGFtZGdwdV9ibyAqYm8s
DQo+ICAJCQkgICAgc3RydWN0IGRtYV9yZXN2ICpyZXN2LA0KPiAgCQkJICAgIHN0cnVjdCBkbWFf
ZmVuY2UgKipmZW5jZSk7DQo+IC1pbnQgYW1kZ3B1X2ZpbGxfYnVmZmVyKHN0cnVjdCBhbWRncHVf
Ym8gKmJvLA0KPiAtCQkJdWludDMyX3Qgc3JjX2RhdGEsDQo+IC0JCQlzdHJ1Y3QgZG1hX3Jlc3Yg
KnJlc3YsDQo+IC0JCQlzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2UsDQo+IC0JCQlib29sIGRlbGF5
ZWQsDQo+IC0JCQl1NjQga19qb2JfaWQpOw0KPiAraW50IGFtZGdwdV9maWxsX2J1ZmZlcihzdHJ1
Y3QgYW1kZ3B1X3R0bV9idWZmZXJfZW50aXR5ICplbnRpdHksDQo+ICsJCSAgICAgICBzdHJ1Y3Qg
YW1kZ3B1X2JvICpibywNCj4gKwkJICAgICAgIHVpbnQzMl90IHNyY19kYXRhLA0KPiArCQkgICAg
ICAgc3RydWN0IGRtYV9yZXN2ICpyZXN2LA0KPiArCQkgICAgICAgc3RydWN0IGRtYV9mZW5jZSAq
KmYsDQo+ICsJCSAgICAgICB1NjQga19qb2JfaWQpOw0KPiAgDQo+ICBpbnQgYW1kZ3B1X3R0bV9h
bGxvY19nYXJ0KHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8pOw0KPiAgdm9pZCBhbWRncHVf
dHRtX3JlY292ZXJfZ2FydChzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKnRibyk7DQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfbWlncmF0ZS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRrZmQva2ZkX21pZ3JhdGUuYw0KPiBpbmRleCBhZGUxZDQwNjhkMjku
LjljNzZmMWJhMGU1NSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRrZmQv
a2ZkX21pZ3JhdGUuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfbWln
cmF0ZS5jDQo+IEBAIC0xNTcsNyArMTU3LDggQEAgc3ZtX21pZ3JhdGVfY29weV9tZW1vcnlfZ2Fy
dChzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwgZG1hX2FkZHJfdCAqc3lzLA0KPiAgCQkJZ290
byBvdXRfdW5sb2NrOw0KPiAgCQl9DQo+ICANCj4gLQkJciA9IGFtZGdwdV9jb3B5X2J1ZmZlcihh
ZGV2LCBnYXJ0X3MsIGdhcnRfZCwgc2l6ZSAqIFBBR0VfU0laRSwNCj4gKwkJciA9IGFtZGdwdV9j
b3B5X2J1ZmZlcihhZGV2LCBlbnRpdHksDQo+ICsJCQkJICAgICAgIGdhcnRfcywgZ2FydF9kLCBz
aXplICogUEFHRV9TSVpFLA0KPiAgCQkJCSAgICAgICBOVUxMLCAmbmV4dCwgdHJ1ZSwgMCk7DQo+
ICAJCWlmIChyKSB7DQo+ICAJCQlkZXZfZXJyKGFkZXYtPmRldiwgImZhaWwgJWQgdG8gY29weSBt
ZW1vcnlcbiIsIHIpOw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
