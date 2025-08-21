Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D11FB2F2D3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Aug 2025 10:51:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F292745588
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Aug 2025 08:51:56 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-sn1nam02on2052.outbound.protection.outlook.com [40.107.96.52])
	by lists.linaro.org (Postfix) with ESMTPS id 7A5EC44441
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Aug 2025 08:51:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=FMImhAAL;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.96.52 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YjzL4hfOAwuFjhebq4dJ8vMyg3M6Kd+cvk2kjZJQVhEiNdz2BjBdNMM/nR2Zvf6bnhyM5rBYoqr5YQdiboW57Zy6oxEgvTnzTLjTyUSL6zT7gtOft6600t+u9doiInzA7TfzZpSp2G/TnmmYlvJBL4Jr/sGnZB0xBYbcTEFp9EQRba6kaw2n0nBcbwlXXChMZEsWuLaKSXWr4Htsxv8beHCoPDYL6Q/8jWKdJeKyYG+Uw26wgFlQATu6H6LbMeMZ1iSh7psBqke6twuwrysq0Mu4YOyS0/eYZM074G3P//DK7Uv26YewoDgjBQkEaEP+picTr7jNoP+3Un3J6dRn/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fcjGG3+6NqNEe/uPPNKUtDx3C9+WrDbslVRi77eTBAg=;
 b=gbxI5QjjaWpZRGE6fd8Og92MGC0PHgV6VKXxq9PdYHyxBpFbeXE/sC9C8Rk4cL8/v6wTcfPYoMsydJ0MlPb+UPS29AD1WGjuGeqj0h+WZ8oNNzoeatOSFs/sKKR4uafa/zPhUUv6tB0c5oZITBJWbJ1Hj3NbhdxRv8qrlQKvtPUHK3816v/PnIBU+iHHuH0q86oILMxPWYoCU9B4gQetFciHkTg0J6zNBmpzGLRLtPTj+JdDXArNoGG3gq0o2I/XY6KbsmLYLWIH33kH9nwZqzj3ekHS9PLjbC90JjlgM0eFoNiM9FuI0zR0+QJm75uQpVRP4kdnislnXoaT5NPJ2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fcjGG3+6NqNEe/uPPNKUtDx3C9+WrDbslVRi77eTBAg=;
 b=FMImhAALDtVq9jDTAiXY7bg/VwnyBrgjFYtvdG4GN+/ibPfFEQwZHPbJ2esftVPhyKPOpBDXlQtc8CBEJBPNnlH9U2mhC2y5Z4SyH034NsWTD23Sq/swMPaDRGPJRo29zHCL2oUIvXVJ+yeOt5uH3Li/ayc+miT54JZlKTrzTHQ=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DM4PR12MB6493.namprd12.prod.outlook.com (2603:10b6:8:b6::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Thu, 21 Aug
 2025 08:51:45 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.9052.014; Thu, 21 Aug 2025
 08:51:45 +0000
Message-ID: <b92c072b-a302-47c8-b2c2-f4b2e3954165@amd.com>
Date: Thu, 21 Aug 2025 10:51:40 +0200
User-Agent: Mozilla Thunderbird
To: Thomas Zimmermann <tzimmermann@suse.de>, sumit.semwal@linaro.org,
 oushixiong@kylinos.cn, alexander.deucher@amd.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@gmail.com,
 simona@ffwll.ch
References: <20250821064031.39090-1-tzimmermann@suse.de>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250821064031.39090-1-tzimmermann@suse.de>
X-ClientProxiedBy: FR2P281CA0074.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9a::16) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DM4PR12MB6493:EE_
X-MS-Office365-Filtering-Correlation-Id: 537c9e0b-4be1-424a-271a-08dde08ff504
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?eTdGbENHa1Q1dWdrNFJObU5zTkdCNFBsU2ZOWlp1emcxUTIxRjBTOGRhenpM?=
 =?utf-8?B?MFhpUHlLMVU0aStBOVh3dFgxWXdjSkxuUzFZUWRoeTh1QzUrK0E4dGFueE1V?=
 =?utf-8?B?OGFxK2xSem9pT21tZTRjR0F0QVNvc0V4b2NYMlJGK1VpbjN0eDRVVWFPN3Aw?=
 =?utf-8?B?TElFeUhnVDRtcHRhczhPY0ZLQks5bXhyNGVneTJCaDJBK1d2eE8rQmxQbStl?=
 =?utf-8?B?V1M0cTdpWncvNWwxUGYyYTJtcUVYQVdhTXF6S1hpbUQvb1U3RFdJNkxIQ2xK?=
 =?utf-8?B?VGFZOTZXSTQ5VVJZaXZlckNyTFRRUDZENHBGczl6bXdKZHBBNndxZDZSWGd4?=
 =?utf-8?B?bW1JWXBoSE84ZkE3OWxlWmNCcnhVZmViQi93MlFKZG92UklRS1RPdzNqb0Zp?=
 =?utf-8?B?VFZ6OVZVcU5FRVZpc3E5c1dBQkNhSG9ZYlhsZVAxZXJvMkhSWDdaazBTZUFh?=
 =?utf-8?B?cXFoZGdyU0d6T2gxMzhyZllqZnlNeXdPdkZZNU44T3VoSGxRMGFYeHdMWEVN?=
 =?utf-8?B?bjNFbUo3QUIzNzNBc0Y5MUFYekdnd0YrS0R2OXU5WFhremFlSzYvNDBaanVX?=
 =?utf-8?B?N0w5NU5rdGJ5THBJNERIbys2ZVkzUWxtNVNPT3FaUUxWeW5xOTJ2WW5JT2Mr?=
 =?utf-8?B?MW5xY0VkZVpsa1hsZ3ZLNGx5bmlMY0l1L01lUTl5MmtzbFl5OU5ZOHlxN3Fp?=
 =?utf-8?B?OHM2THF3UnNjT0RDam1lbU9HUnErcGkvZGNCQ21IS3d4TWhraGZTVVJ6TVJU?=
 =?utf-8?B?YVFXMmhOOGRMRnR5MzFDK1YwbHgwTm5NWndCb0taOWZMVWpIT1BEOEttMllz?=
 =?utf-8?B?U1FLL2JYNjZ5c0NtZU1udzQ1NWZ1QXJFWGZGQW9tN1RzWkhqU2ZHT2daTW85?=
 =?utf-8?B?aENHVTYwNWRBQ3VaZkZLWWgxaW5sMERVaGt6TVRHclAxU092NmwxS0pjUzVB?=
 =?utf-8?B?S0EwaXFMU2lWNHRQVHc2bXRadkZHc2tVVkhQc2dpYjd3bCtCSEJaTGpkaG9X?=
 =?utf-8?B?RVhSdXY3NG85c2U1SFljd2xKck5VSkJhWFdzYlZUTVc5cGhidzUxQ1dGNnRD?=
 =?utf-8?B?azREZW4yeEJXMDFXZU52NGVxd2hwVldJa3Z3Z2VLUDUxTHMyNDV5TDREVFJD?=
 =?utf-8?B?cWpwcWV1UGswSUFyTUEvcktqNTZRQzFmcUEzdzM5Qm83Z0FqY0IwWHlhdFYv?=
 =?utf-8?B?UjJ2WVFVVDdIN0czRVlXeGRVNVhKSUpvTHNrRlRUM3RMak5IRTJxVzNEbUVC?=
 =?utf-8?B?dzhtcDBRVHE5eG12aE5GbzRiZGI1QTdza0lsdnkwQzdaY3hUczdPb3NJdkhs?=
 =?utf-8?B?ekQ3cXpybkpNTnkwQy9uUlVzbmdHNnNvWWcvMm9wVy9PSkdUeWtpcHp3UmFM?=
 =?utf-8?B?dk9yVGVYYUxnSHI1K1UvenNUTTEzNG5IeThvVVVnbVJGV2RvUk1zUjNUaEJh?=
 =?utf-8?B?Zzl2Z0lleU94K0h6Mlpxc1lEcVRSbW9obGUvZnkyeWpwejdFcXNwMUFiV0RG?=
 =?utf-8?B?SVhuMlNlNEw4R0h5RVFvSWNuWmFnekJVUWxWKzNmV3lwWnFnWUNNa3p5aEpI?=
 =?utf-8?B?M1hNd0JGeUVRZ2NMcDlrTWdWdDFmSzlqL1lGRDkwR1J1YVdZRHhKbmRJWGVq?=
 =?utf-8?B?aitqN20zc3VmL3RjUC90VGFFTnhnMDh4TGxNZHptOVlxbFUvU25EZXd0N3g3?=
 =?utf-8?B?cGhoODhwM2ZKaFQ3Qm5kWVFqdlhKcjlIbFloRFBIWDVSdG1lZ1lCZFk4V1NO?=
 =?utf-8?B?cENzVWNKVnlVaWxUQlQ5TzdrK1llMUpzTWkwbVhEeUNQakNZMWR1OFBucjlo?=
 =?utf-8?B?eSsxc0J0dEF4aHY3VTJsY0Y1cWRzczNERkI3T2xjU0ZuV0pOUXNQcXNEL0lv?=
 =?utf-8?B?cTBHZ052Z2t5S2pRdmFWRWhoR1h5UHJoWFdaYlptaVdIWlhuc1hnU3J3dG9L?=
 =?utf-8?Q?l/gq9dvfR5w=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bk40V2NrVGZCNnF2LzFUNm5VQVpocUJIbkVUSjVzaVp2bUtiOHFBVUN1NkZ3?=
 =?utf-8?B?QXY1Z09PSDVsR2Fsd245d1haZEhhdGlUQzZ1OGVVUzFJN2VreDRTZFBXTlRi?=
 =?utf-8?B?VlZLQi9Oc0xYTG16SHB0ck9IeFg3VWV0SUlJZ3JvVjIydUxtaUN5dzNKYVht?=
 =?utf-8?B?cktkdVhOcDVjZHhLNTI1TFY1UytCSTJZOFhvQmxpdjJNMVpHaC9iK2NXQW5i?=
 =?utf-8?B?RWNHV3VkR1lZZVl5dnBCZ2VGc3c1REFMQlZvSThyVDg4RDRwS0wwRFJIYU5z?=
 =?utf-8?B?ejNTVHNXM0lSQ2NDc3N4Vlk1WlM0TnVRMm1NTEpQYVZZY2FwWi93YSs2Z0Zv?=
 =?utf-8?B?RWw4NzdEMVZmRDRkMFZWWngxNFhvcUl1MzVzU1ZjVWpXM2N2OS9xVkIweTk0?=
 =?utf-8?B?elQzOS91WE1DOXhZMTVrTTFIM0tpL2lOQzZ5aXhLZEpXbDlibkZ4M21oanNO?=
 =?utf-8?B?S2h1TkZ1VjViclRnTmgrRlN0OUZJNXV0SmxXdm5BOVJkM0QwQTd6YWVEUUJz?=
 =?utf-8?B?d2RBRGwycVhFdnFUMzM5M2xZWG1oTVdtUDFsSnlvcUhLU3dxZWZadlZNaXJy?=
 =?utf-8?B?eDF6Nm15S2RSaW1UTUZqQzBvb2c0RndBZjEwakZjdVhKR1FCdHFWQ2xsYXZ3?=
 =?utf-8?B?aEtoWENQa0tTNkJyQndVMEFmRzBVZkliR2lGM0pWU1psVHlXK1BnTWQ0MEpH?=
 =?utf-8?B?U3FGK3RCNmNndzhrNFZvdWppRmNLY3h1TWd4RHJvOVcvT29sVmtBZldLMXBH?=
 =?utf-8?B?WUZXdUQ4WUU4YS9FOWk2MXJxVHVOMVBJajNUOHcyU2RzR1N6bjFaODNpSEZl?=
 =?utf-8?B?L2VHc0dFZFVrdXBqUWVwajJOVGFMb3k1VHMwVW9wMWpMc2ljQmdJSzFEbzk1?=
 =?utf-8?B?djdJV1dzMjNwY2VtbEN3ZDZHRkxveWk0bjhENWdKbkhtdUNzOW5IcnZET3hh?=
 =?utf-8?B?ZmVIOEN4amdtMkM5WmYxZXJMNUZrc2V1alZYQzJLMDZLNXRBaDZneFhEdzN0?=
 =?utf-8?B?QnovMzdvd3M3UVE5Q0ZwRThXWTJOMnZUazhJd3kwU0RQU0tpMytna2dSVVNv?=
 =?utf-8?B?VjI4aWtvQm5IOG5Jcjh4MkViZGxtbjRHbVhabmV4b21JWk44YzNqY1dEYUVs?=
 =?utf-8?B?YmNSaDFnUWF5aWNuV3FOWVFtNHVKNW9hSHZBcFFlWEJvUTN0a2RlS3pvYzM2?=
 =?utf-8?B?WThXaEJndUF4eU0zTDlTYVlLVVprY3NoVlNXT3VRVzZlSHhyYlBlMTJjd1hI?=
 =?utf-8?B?TWxpY0p5MVpZZ1BMeUVrNFpFOXhGaVJWMDRhcHNyYlVXL1NjRlF5MXNlVzFB?=
 =?utf-8?B?U3NTQ0VPVmx1M054VHZJMzB3dnFsS0Fqa2VGMFdkdWtUQUQ1VjRUcWxUWUhD?=
 =?utf-8?B?R1R5elFQczhTMnJJYXRrTm13UEhmbE9rYlNNMEV4VDFLVDZYQUNhbWNzOElG?=
 =?utf-8?B?cHJXWVhMWlRxNjJLUlFmak5MN1l3UHpDSU5ObWV0NDJtRDIrdlQvcTJwUWdh?=
 =?utf-8?B?SEgxeHdodHFnN2hEOFFySUI4K0ViK3k2blFibmk5NWhtOGVwU3J1b1RVNExW?=
 =?utf-8?B?YkE4eGMvMUhGQWMvcGlodnV4cFhFbFRNTEhqZ3ZhYU1WUFNrKzFUcHluYnhy?=
 =?utf-8?B?UzNjS2VvYm9VVytHSldoR3dlMXJLTmljWjZ5blZsZDU2d0RiSVpoNEk2YWVE?=
 =?utf-8?B?dkJBeTFjVVFCSlkrQXpGSGliOU9JeDg3VllTOHVXMC8zTUlaSElUQllJbmUr?=
 =?utf-8?B?MERkaDZESHRyTmNKVTNtQmVWVmprTVkwR1VEMmcyVU9DU1g2dnJjSnBkZnV0?=
 =?utf-8?B?NWpXOTAwY2daRTVjVkN5c3FKQVNWRVFYaEd5eXlsazlVc1c5WDZoZjVEeFpr?=
 =?utf-8?B?dWVTbjhVbFV5bU40elEraHJySWhZakdLVVc0a2lqVVZVWGQxbnFIU3hFZjYv?=
 =?utf-8?B?dG05dzRNVkMrNE5sNEllc3NaWkZLMHRtTUE1LzFJUlJaWlV1RFg1c1BOSnY2?=
 =?utf-8?B?MmszeWJCcElCWnZzNSt4a1ZRdkl4b3UwYnpnUHNkN1pzdmNobmUvaUUrWWZz?=
 =?utf-8?B?NGdzWURmY3RMck8rMUpWTU5jTDVIYmpXM1NhZFFNR21KWGlKSFhUYitLaVpD?=
 =?utf-8?Q?DuQF0BZrrBU/1G6WpOPxiGILq?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 537c9e0b-4be1-424a-271a-08dde08ff504
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2025 08:51:45.5640
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AZJHPEKrlUT8GLWiDIqxpNRCDvPUbMnF/+6/Ok2qSRpQeNIRPrcNQwKzpKvX/Bam
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6493
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7A5EC44441
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.96.52:from];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[suse.de,linaro.org,kylinos.cn,amd.com,linux.intel.com,kernel.org,gmail.com,ffwll.ch];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[intel.com:email];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: EXMEOYRVMQF57NCLYFJ25DBSFIE4JTDB
X-Message-ID-Hash: EXMEOYRVMQF57NCLYFJ25DBSFIE4JTDB
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] drm/amdgpu: Pin buffers while vmap'ing exported dma-buf objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EXMEOYRVMQF57NCLYFJ25DBSFIE4JTDB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCk9uIDIxLjA4LjI1IDA4OjQwLCBUaG9tYXMgWmltbWVybWFubiB3cm90ZToNCj4gQ3VycmVu
dCBkbWEtYnVmIHZtYXAgc2VtYW50aWNzIHJlcXVpcmUgdGhhdCB0aGUgbWFwcGVkIGJ1ZmZlciBy
ZW1haW5zDQo+IGluIHBsYWNlIHVudGlsIHRoZSBjb3JyZXNwb25kaW5nIHZ1bm1hcCBoYXMgY29t
cGxldGVkLg0KPiANCj4gRm9yIEdFTS1TSE1FTSwgdGhpcyB1c2VkIHRvIGJlIGd1YXJhbnRlZWQg
YnkgYSBwaW4gb3BlcmF0aW9uIHdoaWxlIGNyZWF0aW5nDQo+IGFuIFMvRyB0YWJsZSBpbiBpbXBv
cnQuIEdFTS1TSE1FTiBjYW4gbm93IGltcG9ydCBkbWEtYnVmIG9iamVjdHMgd2l0aG91dA0KPiBj
cmVhdGluZyB0aGUgUy9HIHRhYmxlLCBzbyB0aGUgcGluIGlzIG1pc3NpbmcuIExlYWRzIHRvIHBh
Z2UtZmF1bHQgZXJyb3JzLA0KPiBzdWNoIGFzIHRoZSBvbmUgc2hvd24gYmVsb3cuDQo+IA0KPiBb
ICAxMDIuMTAxNzI2XSBCVUc6IHVuYWJsZSB0byBoYW5kbGUgcGFnZSBmYXVsdCBmb3IgYWRkcmVz
czogZmZmZmM5MDEyNzAwMDAwMA0KPiBbLi4uXQ0KPiBbICAxMDIuMTU3MTAyXSBSSVA6IDAwMTA6
dWRsX2NvbXByZXNzX2hsaW5lMTYrMHgyMTkvMHg5NDAgW3VkbF0NCj4gWy4uLl0NCj4gWyAgMTAy
LjI0MzI1MF0gQ2FsbCBUcmFjZToNCj4gWyAgMTAyLjI0NTY5NV0gIDxUQVNLPg0KPiBbICAxMDIu
MjQ3N1Y5NV0gID8gdmFsaWRhdGVfY2hhaW4rMHgyNGUvMHg1ZTANCj4gWyAgMTAyLjI1MTgwNV0g
ID8gX19sb2NrX2FjcXVpcmUrMHg1NjgvMHhhZTANCj4gWyAgMTAyLjI1NTgwN10gIHVkbF9yZW5k
ZXJfaGxpbmUrMHgxNjUvMHgzNDEgW3VkbF0NCj4gWyAgMTAyLjI2MDMzOF0gID8gX19wZnhfdWRs
X3JlbmRlcl9obGluZSsweDEwLzB4MTAgW3VkbF0NCj4gWyAgMTAyLjI2NTM3OV0gID8gbG9jYWxf
Y2xvY2tfbm9pbnN0cisweGIvMHgxMDANCj4gWyAgMTAyLjI2OTY0Ml0gID8gX19sb2NrX3JlbGVh
c2UuaXNyYS4wKzB4MTZjLzB4MmUwDQo+IFsgIDEwMi4yNzQyNDZdICA/IG1hcmtfaGVsZF9sb2Nr
cysweDQwLzB4NzANCj4gWyAgMTAyLjI3ODE3N10gIHVkbF9wcmltYXJ5X3BsYW5lX2hlbHBlcl9h
dG9taWNfdXBkYXRlKzB4NDNlLzB4NjgwIFt1ZGxdDQo+IFsgIDEwMi4yODQ2MDZdICA/IF9fcGZ4
X3VkbF9wcmltYXJ5X3BsYW5lX2hlbHBlcl9hdG9taWNfdXBkYXRlKzB4MTAvMHgxMCBbdWRsXQ0K
PiBbICAxMDIuMjkxNTUxXSAgPyBsb2NrZGVwX2hhcmRpcnFzX29uX3ByZXBhcmUucGFydC4wKzB4
OTIvMHgxNzANCj4gWyAgMTAyLjI5NzIwOF0gID8gbG9ja2RlcF9oYXJkaXJxc19vbisweDg4LzB4
MTMwDQo+IFsgIDEwMi4zMDE1NTRdICA/IF9yYXdfc3Bpbl91bmxvY2tfaXJxKzB4MjQvMHg1MA0K
PiBbICAxMDIuMzA1OTAxXSAgPyB3YWl0X2Zvcl9jb21wbGV0aW9uX3RpbWVvdXQrMHgyYmIvMHgz
YTANCj4gWyAgMTAyLjMxMTAyOF0gID8gZHJtX2F0b21pY19oZWxwZXJfY2FsY190aW1lc3RhbXBp
bmdfY29uc3RhbnRzKzB4MTQxLzB4MjAwDQo+IFsgIDEwMi4zMTc3MTRdICA/IGRybV9hdG9taWNf
aGVscGVyX2NvbW1pdF9wbGFuZXMrMHgzYjYvMHgxMDMwDQo+IFsgIDEwMi4zMjMyNzldICBkcm1f
YXRvbWljX2hlbHBlcl9jb21taXRfcGxhbmVzKzB4M2I2LzB4MTAzMA0KPiBbICAxMDIuMzI4NjY0
XSAgZHJtX2F0b21pY19oZWxwZXJfY29tbWl0X3RhaWwrMHg0MS8weGIwDQo+IFsgIDEwMi4zMzM2
MjJdICBjb21taXRfdGFpbCsweDIwNC8weDMzMA0KPiBbLi4uXQ0KPiBbICAxMDIuNTI5OTQ2XSAt
LS1bIGVuZCB0cmFjZSAwMDAwMDAwMDAwMDAwMDAwIF0tLS0NCj4gWyAgMTAyLjY1MTk4MF0gUklQ
OiAwMDEwOnVkbF9jb21wcmVzc19obGluZTE2KzB4MjE5LzB4OTQwIFt1ZGxdDQo+IA0KPiBJbiB0
aGlzIHN0YWNrIHN0cmFjZSwgdWRsIChiYXNlZCBvbiBHRU0tU0hNRU0pIGltcG9ydGVkIGFuZCB2
bWFwJ2VkIGENCj4gZG1hLWJ1ZiBmcm9tIGFtZGdwdS4gQW1kZ3B1IHJlbG9jYXRlZCB0aGUgYnVm
ZmVyLCB0aGVyZWJ5IGludmFsaWRhdGluZyB0aGUNCj4gbWFwcGluZy4NCj4gDQo+IFByb3ZpZGUg
YSBjdXN0b20gZG1hLWJ1ZiB2bWFwIG1ldGhvZCBpbiBhbWRncHUgdGhhdCBwaW5zIHRoZSBvYmpl
Y3QgYmVmb3JlDQo+IG1hcHBpbmcgaXQncyBidWZmZXIncyBwYWdlcyBpbnRvIGtlcm5lbCBhZGRy
ZXNzIHNwYWNlLiBEbyB0aGUgb3Bwb3NpdGUgaW4NCj4gdnVubWFwLg0KPiANCj4gTm90ZSB0aGF0
IGRtYS1idWYgdm1hcCBkaWZmZXJzIGZyb20gR0VNIHZtYXAgaW4gaG93IGl0IGhhbmRsZXMgcmVs
b2NhdGlvbi4NCj4gV2hpbGUgZG1hLWJ1ZiB2bWFwIGtlZXBzIHRoZSBidWZmZXIgaW4gcGxhY2Us
IEdFTSB2bWFwIHJlcXVpcmVzIHRoZSBjYWxsZXINCj4gdG8ga2VlcCB0aGUgYnVmZmVyIGluIHBs
YWNlLiBIZW5jZSwgdGhpcyBmaXggaXMgaW4gYW1kZ3B1J3MgZG1hLWJ1ZiBjb2RlDQo+IGluc3Rl
YWQgb2YgaXRzIEdFTSBjb2RlLg0KPiANCj4gQSBkaXNjdXNzaW9uIG9mIHZhcmlvdXMgYXBwcm9h
Y2hlcyB0byBzb2x2aW5nIHRoZSBwcm9ibGVtIGlzIGF2YWlsYWJsZQ0KPiBhdCBbMV0uDQo+IA0K
PiB2MzoNCj4gLSB0cnkgKEdUVCB8IFZSQU0pOyBkcm9wIENQVSBkb21haW4gKENocmlzdGlhbikN
Cj4gdjI6DQo+IC0gb25seSB1c2UgbWFwYWJsZSBkb21haW5zIChDaHJpc3RpYW4pDQo+IC0gdHJ5
IHBpbm5pbmcgdG8gZG9tYWlucyBpbiBwcmVmZXJyZWQgb3JkZXINCj4gDQo+IFNpZ25lZC1vZmYt
Ynk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KPiBGaXhlczogNjYw
Y2Q0NDY1OWEwICgiZHJtL3NobWVtLWhlbHBlcjogSW1wb3J0IGRtYWJ1ZiB3aXRob3V0IG1hcHBp
bmcgaXRzIHNnX3RhYmxlIikNCj4gUmVwb3J0ZWQtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emlt
bWVybWFubkBzdXNlLmRlPg0KPiBDbG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1k
ZXZlbC9iYTFiZGZiOC1kYmY3LTQzNzItYmRjYi1kZjdlMDUxMWM3MDJAc3VzZS5kZS8NCj4gQ2M6
IFNoaXhpb25nIE91IDxvdXNoaXhpb25nQGt5bGlub3MuY24+DQo+IENjOiBUaG9tYXMgWmltbWVy
bWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4NCj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFy
dGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+DQo+IENjOiBNYXhpbWUgUmlwYXJkIDxtcmlw
YXJkQGtlcm5lbC5vcmc+DQo+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAZ21haWwuY29tPg0K
PiBDYzogU2ltb25hIFZldHRlciA8c2ltb25hQGZmd2xsLmNoPg0KPiBDYzogU3VtaXQgU2Vtd2Fs
IDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NCj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQo+IENjOiBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcNCj4gTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJp
LWRldmVsLzk3OTJjNmMzLWEyYjgtNGIyYi1iNWJhLWZiYTE5YjE1M2UyMUBzdXNlLmRlLyAjIFsx
XQ0KDQpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQu
Y29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9i
dWYuYyB8IDM0ICsrKysrKysrKysrKysrKysrKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDMyIGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMNCj4gaW5kZXggNTc0M2ViYjJmMWI3Li5jZTI3Y2I1YmIw
NWUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFf
YnVmLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYu
Yw0KPiBAQCAtMjg1LDYgKzI4NSwzNiBAQCBzdGF0aWMgaW50IGFtZGdwdV9kbWFfYnVmX2JlZ2lu
X2NwdV9hY2Nlc3Moc3RydWN0IGRtYV9idWYgKmRtYV9idWYsDQo+ICAJcmV0dXJuIHJldDsNCj4g
IH0NCj4gIA0KPiArc3RhdGljIGludCBhbWRncHVfZG1hX2J1Zl92bWFwKHN0cnVjdCBkbWFfYnVm
ICpkbWFfYnVmLCBzdHJ1Y3QgaW9zeXNfbWFwICptYXApDQo+ICt7DQo+ICsJc3RydWN0IGRybV9n
ZW1fb2JqZWN0ICpvYmogPSBkbWFfYnVmLT5wcml2Ow0KPiArCXN0cnVjdCBhbWRncHVfYm8gKmJv
ID0gZ2VtX3RvX2FtZGdwdV9ibyhvYmopOw0KPiArCWludCByZXQ7DQo+ICsNCj4gKwkvKg0KPiAr
CSAqIFBpbiB0byBrZWVwIGJ1ZmZlciBpbiBwbGFjZSB3aGlsZSBpdCdzIHZtYXAnZWQuIFRoZSBh
Y3R1YWwNCj4gKwkgKiBkb21haW4gaXMgbm90IHRoYXQgaW1wb3J0YW50IGFzIGxvbmcgYXMgaXQn
cyBtYXBhYmxlLiBVc2luZw0KPiArCSAqIEdUVCBhbmQgVlJBTSBzaG91bGQgYmUgY29tcGF0aWJs
ZSB3aXRoIG1vc3QgdXNlIGNhc2VzLg0KPiArCSAqLw0KPiArCXJldCA9IGFtZGdwdV9ib19waW4o
Ym8sIEFNREdQVV9HRU1fRE9NQUlOX0dUVCB8IEFNREdQVV9HRU1fRE9NQUlOX1ZSQU0pOw0KPiAr
CWlmIChyZXQpDQo+ICsJCXJldHVybiByZXQ7DQo+ICsJcmV0ID0gZHJtX2dlbV9kbWFidWZfdm1h
cChkbWFfYnVmLCBtYXApOw0KPiArCWlmIChyZXQpDQo+ICsJCWFtZGdwdV9ib191bnBpbihibyk7
DQo+ICsNCj4gKwlyZXR1cm4gcmV0Ow0KPiArfQ0KPiArDQo+ICtzdGF0aWMgdm9pZCBhbWRncHVf
ZG1hX2J1Zl92dW5tYXAoc3RydWN0IGRtYV9idWYgKmRtYV9idWYsIHN0cnVjdCBpb3N5c19tYXAg
Km1hcCkNCj4gK3sNCj4gKwlzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiA9IGRtYV9idWYtPnBy
aXY7DQo+ICsJc3RydWN0IGFtZGdwdV9ibyAqYm8gPSBnZW1fdG9fYW1kZ3B1X2JvKG9iaik7DQo+
ICsNCj4gKwlkcm1fZ2VtX2RtYWJ1Zl92dW5tYXAoZG1hX2J1ZiwgbWFwKTsNCj4gKwlhbWRncHVf
Ym9fdW5waW4oYm8pOw0KPiArfQ0KPiArDQo+ICBjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9vcHMgYW1k
Z3B1X2RtYWJ1Zl9vcHMgPSB7DQo+ICAJLmF0dGFjaCA9IGFtZGdwdV9kbWFfYnVmX2F0dGFjaCwN
Cj4gIAkucGluID0gYW1kZ3B1X2RtYV9idWZfcGluLA0KPiBAQCAtMjk0LDggKzMyNCw4IEBAIGNv
bnN0IHN0cnVjdCBkbWFfYnVmX29wcyBhbWRncHVfZG1hYnVmX29wcyA9IHsNCj4gIAkucmVsZWFz
ZSA9IGRybV9nZW1fZG1hYnVmX3JlbGVhc2UsDQo+ICAJLmJlZ2luX2NwdV9hY2Nlc3MgPSBhbWRn
cHVfZG1hX2J1Zl9iZWdpbl9jcHVfYWNjZXNzLA0KPiAgCS5tbWFwID0gZHJtX2dlbV9kbWFidWZf
bW1hcCwNCj4gLQkudm1hcCA9IGRybV9nZW1fZG1hYnVmX3ZtYXAsDQo+IC0JLnZ1bm1hcCA9IGRy
bV9nZW1fZG1hYnVmX3Z1bm1hcCwNCj4gKwkudm1hcCA9IGFtZGdwdV9kbWFfYnVmX3ZtYXAsDQo+
ICsJLnZ1bm1hcCA9IGFtZGdwdV9kbWFfYnVmX3Z1bm1hcCwNCj4gIH07DQo+ICANCj4gIC8qKg0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
