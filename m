Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 18887A17341
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Jan 2025 20:48:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 10A4646629
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Jan 2025 19:48:21 +0000 (UTC)
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (mail-bn8nam04on2074.outbound.protection.outlook.com [40.107.100.74])
	by lists.linaro.org (Postfix) with ESMTPS id 7F5463F604
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Jan 2025 19:48:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=ZcG5mpDq;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.107.100.74 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MFC1DBCdDbAqcWBRRvL617Q/tSEqhE4KKnpZZ7ghvE4KqjDrCZghcGQBvgvzwrSGxAnLofOyeRfhf/zZ3YRjmAqO900ldl09kw2okm5SS2bsVnKxlXUf4kibAbO0Pf1O2UFXCwoJEYszQj7p9ybBNSjpEi4vV4UDfZzIbN79uFfUNYXDbrnYWRy/ULpLKjAJzG1PQQbNYzm1c4tT550kIHJHLESV/sLKoHgyS4D2dKcBIcAUIz+V0/038WWaavZnbPsHh2wccqoFsMp5UmPYfvtPJq8ckNhNDwbOe06AhaDRi6S6LhiM1qySZTqGX4uwfqpobjxrkK+vDfghPgHiUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RCUsmlfg75ySx1VtsPTA3Eop2BRzV2g+9H8JlAbTKRo=;
 b=ruWNVWxKrSdKo0j1YNCrT9sUDnfYqass/jdSS13V7oy8ppU2ND4ZEW8jzXkBVJ20rrWJosSV89jRMigfBwOrqUrzw+gbtPpuEMn617y8V9fj0akNob55pzyeJbK/Mfux/KOYLylRJZQWlLdIOJh8N06AbGDi0uAcZhNhClENcc6oCNtZhNtvpWv34r5NrvrtbpIlWJA3kKJcTiLIO2ZhEdWJo5IVnagknY0BrJ4XF8BjFy9Ui6eWmgmPtERefoD/Eydg0l4ad6Fanu8MgnOgp8sELU1sULim9HzKqI8vSBPI9tPPEX3raUl5NnCzi7fPIP7ik7n6BP8ipZOSx2a+Tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RCUsmlfg75ySx1VtsPTA3Eop2BRzV2g+9H8JlAbTKRo=;
 b=ZcG5mpDq9aSrny77wHZONE9dQeQYR93hKbODnc/hc3laCxtdA8iDDiq5OnLuGQnd04F7Bv/Wfnz1h7PBHoZWuCbFkwhuSgjnLx4cqlEclmakyIhgKl3pSuT1cUD3/tumuMM+xA1qnpd/ScjxRRMDtwwoaseLKDhtELgKt+aa6evGMaRpTSL0uszlRXNKdFIadAvDwaLmFsaUXuBThXdfSgU2dOfC7Shmr19tv2fCTS7AruFA3Jl8qzp5xaU88rrjb356tk1TjvMdSTkufLAuj73RpFM/UYNJ0MkJ1dTzVUT+ixD3LMIK/lRfdXbCSvt2lfI0H6z7DQFku4VItCOfYQ==
Received: from CH3PR12MB8659.namprd12.prod.outlook.com (2603:10b6:610:17c::13)
 by DM4PR12MB8474.namprd12.prod.outlook.com (2603:10b6:8:181::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Mon, 20 Jan
 2025 19:48:05 +0000
Received: from CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732]) by CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732%5]) with mapi id 15.20.8356.010; Mon, 20 Jan 2025
 19:48:05 +0000
Date: Mon, 20 Jan 2025 15:48:04 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
	Xu Yilun <yilun.xu@linux.intel.com>, Christoph Hellwig <hch@lst.de>,
	Leon Romanovsky <leonro@nvidia.com>, kvm@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org,
	pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com,
	vivek.kasireddy@intel.com, dan.j.williams@intel.com, aik@amd.com,
	yilun.xu@intel.com, linux-coco@lists.linux.dev,
	linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com,
	leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com,
	tao1.su@intel.com
Message-ID: <20250120194804.GT5556@nvidia.com>
References: <Z4F2X7Fu-5lprLrk@phenom.ffwll.local>
 <20250110203838.GL5556@nvidia.com>
 <Z4Z4NKqVG2Vbv98Q@phenom.ffwll.local>
 <20250114173103.GE5556@nvidia.com>
 <Z4d4AaLGrhRa5KLJ@phenom.ffwll.local>
 <420bd2ea-d87c-4f01-883e-a7a5cf1635fe@amd.com>
 <Z4psR1qoNQUQf3Q2@phenom.ffwll.local>
 <c10ae58f-280c-4131-802f-d7f62595d013@amd.com>
 <20250120175901.GP5556@nvidia.com>
 <Z46a7y02ONFZrS8Y@phenom.ffwll.local>
Content-Disposition: inline
In-Reply-To: <Z46a7y02ONFZrS8Y@phenom.ffwll.local>
X-ClientProxiedBy: BL1PR13CA0197.namprd13.prod.outlook.com
 (2603:10b6:208:2be::22) To CH3PR12MB8659.namprd12.prod.outlook.com
 (2603:10b6:610:17c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB8659:EE_|DM4PR12MB8474:EE_
X-MS-Office365-Filtering-Correlation-Id: 9680b7ba-0e77-4835-9444-08dd398b5b69
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|366016|7416014|1800799024|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?STVyQWk5TFRLRWthUS9iOHNWTmN2bVhTdk1rVmxZbkthczJPRnowZzlVYW1l?=
 =?utf-8?B?NGdQNnpabktWYlFpTWVQUDhhNW1pcU8yemtxcVFYK2ZIRjdma3hYUnI0dkw5?=
 =?utf-8?B?ck40eW5Wb0JZamFtdEJnMysya3JqaUFXelg1SGUxSzZaMVJONFZFd3VQZWdN?=
 =?utf-8?B?MVg4RjN2cUN0Smh2akRXRTRuWXhoTSthZVJpLzlUaTV4QzQwNTFlZUdhckFl?=
 =?utf-8?B?a2hiRlcyL21pZVhEb0hTSUU2bjFwd0tPQlRITXpTNW9OSmNrcFJBR1pZaUw1?=
 =?utf-8?B?R05RNVJMQTNROG9nakxTcmx4bDdEM0ozclJldXNTTThZSDdER0VvdzVXYWRQ?=
 =?utf-8?B?Y0VrMmFER20raXNvQ3hyQzkzOGFsNzRwOWNXNElPS3RBYk4vWEl3aDN0bXRM?=
 =?utf-8?B?OFVKN1VKR1pzTzV2YWQ2MHAxeEdwTHlkUGxlRXVVTTdjY1k3SS9ROFNLa1dN?=
 =?utf-8?B?cHBCclQyUzdHS2tobllYUjVLM0dGMmVta25jd25QYWJ3cFpHdGtmZHJUTW9s?=
 =?utf-8?B?cDZKaFFZYmdkL0hJSjgwdk1uSjJ6ZmovZTJ4elRSZ2hUcDk5bE00eFhncHo5?=
 =?utf-8?B?Z244Zkk1QnF6eENnaVhMSG5FYjM4NlJwT2xTdml6MVBndVp3TUI1Z3dudStY?=
 =?utf-8?B?dW9CYWNUNVZJbXNabkYwNTFNdHBnMDJzT2orZVFLQ1lOY0I0bFAzMDl0ODhS?=
 =?utf-8?B?NGpDYnVSQ1Y2dW1DNHBHMnpTWjJhRlJ4R3ZHWktJKy9WdzdqLzhSaE1uZUNR?=
 =?utf-8?B?NEYyeGdnWVN1dGF3bGw1V09JODZ6cUQyS0lOZ0pJV21uMlY1czdIdEdjRVZr?=
 =?utf-8?B?TUswU3pkUGtFVEZJWmRpUzVvL2FPZ2taQ0QvdkcyZHpHSUhtN1J4NE4yL3ll?=
 =?utf-8?B?c3psS0NIT3krRlRqaWw0RUlZSktjcFZORTRPS1dTQ3IrKzRlRkFMbTZUaHlm?=
 =?utf-8?B?aEk0UVcweFVNZmVMMjNMa1RHS0NwakV5eTVqSmVndWxUS1F0NVJxN0tuWngy?=
 =?utf-8?B?WUtGckIvWTlkWU5xaFRHNFJXbDlZKy9pek5IYzR1blJSRnRiOGNUd1l1T0wx?=
 =?utf-8?B?cmNwM1NFVlRjUzNpMVppREhOOFlVNDM2dWhxNHBNbmFPM1V3Q3greFJJeStj?=
 =?utf-8?B?ZkZkVW55UG1vY2RpYWJZT2tmdWJxZzJvTlNxSEx3Z25FYmxWcGYrdytyYVJz?=
 =?utf-8?B?dTdBQVp2MXVJNDZBSEYwTjZoZnptUE1Ta2VaZnQ5d2JveDZYSkpDSVR5ZnVU?=
 =?utf-8?B?cHVHdWZXU25yMDNRVFpKZXBmc2hwN1d5Z2FGNXprOG9IdjdlKzQ4YmxUaml0?=
 =?utf-8?B?aFk0dEx0QzhtME5rbGJydy9odlB1NE9aeERpdkgyQXRmYzh6TnBsT3JyVG1u?=
 =?utf-8?B?U2R4SU56ckx5Z0JMdURQcEVTcXBkcjg4cllDZFBFWnVqa0VwUkNPZ1BPcktt?=
 =?utf-8?B?TkpUWEdxWTNXcDAvTVI1ZWhkaWd2c2VxM1NKNEJwMkcrak5nd0ptY1lMTG1u?=
 =?utf-8?B?NmVWM1BoZFhaeFFIVVBEVFRFK2oyMDI4QUNtOE5uY2VTUFJFU1UxaGdhL2Zs?=
 =?utf-8?B?YUhUWm1paXUzY1Y0VjhQVkRhZVEyY2ZZclpaOVhsbUs2WjhLMmh2aFIvaTFj?=
 =?utf-8?B?Z0FwbnMrMng1TVp2L29MdDQyb2g4QjdXdXp4TzFPcnpsNE1KMmV4eDBCNDBX?=
 =?utf-8?B?VnpFblNqQk1tdEEweHdSYnoxMmJTeWNpblVLT2M3U3IzWXlCbUxOUmQzdmZp?=
 =?utf-8?B?MjRuNHdCMVpwaWpKWU1BVTBXMDZZRkZadnFRWFdnaGxQQjVYWE1NZGZsbFp6?=
 =?utf-8?B?RjRhVHhQWThmTWswYnNNUm44Smwrb3hsUk9GZlBmbExJVU5JL2F3d09WMVU2?=
 =?utf-8?B?U25udnVhZU9LN1BFd0tlODZIK1JIejdmcGt3OUlzUTE0Q1JiNUUzbUxjMjNR?=
 =?utf-8?Q?aDJu7ur44KU=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR12MB8659.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(7416014)(1800799024)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aW1HZ2lSSSs4UTZIV1l2Y3I5a2hTUUZ3enBKWkkzQmhNb09TdEpsbTNqcmZY?=
 =?utf-8?B?ZktGeHdLdEJBUXlnSlhGTGxJMWM2TWZpSm14L1VOWStiTVU1RVQvc0dvQVBy?=
 =?utf-8?B?b25FS0Q0d1JUOWJOSE56RkVya3ZVZ2xqNmJEbXR6MFlBWWhqN0gvZzNMbENo?=
 =?utf-8?B?eHJTSW04ZUVnU1FxNkNFVVJXek9LSjlpQ3g1a2tsdFhrU3lWcE81dElvdlYz?=
 =?utf-8?B?VTk3UmplTFZ5ZE5GS0p5ZmZNeHkvNDUvTFhxOXZpTzhjcFVxeFFReTZDMWhH?=
 =?utf-8?B?WjVZRmhVL0ZvaTBmUFhWYUlTaGczaytkUSttazE0NTRqclVkRXdUSmJHYTJa?=
 =?utf-8?B?cUZ6bjV4YXRuWkVFeTB1SkhQVG9pNG9obkgrU2tzazF2YzJlZnh0elVLQUtC?=
 =?utf-8?B?WTdJL3E4TzQ3dml2REpROXp3Mm93TUl1Q3VqNDVCdnQ3a2hIQzYvSFZaeHhy?=
 =?utf-8?B?cVVyOEUyOEVadGI4M05VbUpvZ2xmMUJnK1IxSS9TbWhjcm9ESWFGZlVBK09i?=
 =?utf-8?B?SkExUXBUK2lIa2ZjS0xtWTViYnI5aldORlJiSUdMTk1uTzZOaERBNjZmam04?=
 =?utf-8?B?eC8rY1hyaXZXd0ZyRklzWllxK3hRVFJJSkZlOHc3T0F2TkdOdk1wM3VPT0tP?=
 =?utf-8?B?RHB3YTBZb0NGUDJKVTl6V3hGNDNTS1BLcStuajA0VzFjZURCLzNEWUMyd0NG?=
 =?utf-8?B?WTdZaGhSdThrUVBSY3N1L0NRdi90REFnczJ0Zk1KcmQzWkNTYXNOdmRkSGZU?=
 =?utf-8?B?MnpINTljYXpvck9Wd3JHYzh0d3h1eW13V1pQdG0yRXRsSGNUUFJBT05OaGVR?=
 =?utf-8?B?WGYyS3VtUWJQZUdoSFFOU2FuQlZ4dDNZa1Z1bnFYZ2VLUDY0b1BsQ3A3YmNs?=
 =?utf-8?B?VVpSV2h6aDJXbExtWm13TWJXcVhFYTdnWHIzSFhsekwwY1dXeXpNZ1JpbDdw?=
 =?utf-8?B?dDd0UXFDQTFQUWRRTDF0bXJLcTV2OWp5RXlzT3hSbWhRUXV2ZW51djdPVVh2?=
 =?utf-8?B?RXFnNUsyK1NReWxCdEhYYzc4TVF3U1RCTmI2anFlSFQ1b3JBVFhZK3RLd0FE?=
 =?utf-8?B?bW1yM2hDSTU3ZW1hdjg4Q0RMQjJSUGtBZmpCRnFHaXZTYTN5dlVWdTlpeHM4?=
 =?utf-8?B?NDhTWkxRL01ud1dSenp3QzNUVFFTWlJ1YWRmNEsybEJsK2Jnak1qNGxlOFFq?=
 =?utf-8?B?QkliZjdwc0VEVHFRQzBrNE9MSERRbnl0WTFPMzFFaUc3OVR3Qnc0U09oaVdE?=
 =?utf-8?B?eWhhVlpGWTA2cTV5WXI0OS9HZFJtWmdkMEJvak02empKYzMyc1FwK0tDU0Zu?=
 =?utf-8?B?VHRQYUNJbnBRNUdDVlo2UmpYU1hWeEl2cnFZQTg4QXZTeGMxLzdPTldQcjhs?=
 =?utf-8?B?MC9zK05RaXQxMjhyQkQvMGNRUHJ0UDNGRlRSejNQTEtvMW1DQjlnSEhJTlRs?=
 =?utf-8?B?YlNTVlBrUUE5aTRuQ1N1NDlkQXNVb1czZzVVd2kzU3JwTUhsOEtTQXprK0Yy?=
 =?utf-8?B?T3dYclVZblVBOVhvMVA2TEhsd2EyTlQ3Sk9NWnQ1MlUwbUZNdS9pM2c4VVR4?=
 =?utf-8?B?dEt3ODd6MzVUN1IvbXZSQkpmNG51SmxUOWk3aVJhNUtidTRNM3FScVcvTFlr?=
 =?utf-8?B?Z21BdnFBelZ5UG5EL1czeXRLWE5vOGZXaEtaRzNUenowVDZaZ2hNWlZLRXQ4?=
 =?utf-8?B?SDJrUzJidmwrTUswb1RoQmpsYytya3ZsbG10cDlIRnN4SDN0Yldtc1N3amdG?=
 =?utf-8?B?cU8zVkNMM3h0dHRnREV1eVRkRzBLQ3NLUlFrNWpncHFDUHRTVk1mSm5UMXNW?=
 =?utf-8?B?aXNsdHpsY2dLVU9aMmYvLzIxenNaSyt5WHJKbVpZeWRoWjlUQzBVSnVrN1ZY?=
 =?utf-8?B?YStWVUpCWUpNTjVmMkNaaWdZM0NITjdibDRqOGFSajd2UGxSNGJzMW9Md2g0?=
 =?utf-8?B?U0lMNUFNVDJ3eCtTZ0JBRDVYOHVKOGxoOTJTc0p1alFubC9yZDFDTHZPRm1q?=
 =?utf-8?B?RU9OTGdualEyMTdGWW1DMUN0SWc3bER2MW5SWTVBRlVnNlFPTlhpSDF2eWxI?=
 =?utf-8?B?azhBNTUxZzNsbktzYzdNSTcvcm0ya0VxRjJlNENUTVF0dFl3MVY4VGtFeEFE?=
 =?utf-8?Q?k/nItN32+MNPFogNx18g3+NyI?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9680b7ba-0e77-4835-9444-08dd398b5b69
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB8659.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2025 19:48:05.5270
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: omYVv/RNBn2YVDfLB/XrEhloVczZn/4anXdvqB/8NIYgK7B4DOMrgTpCaej5jooy
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB8474
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7F5463F604
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.100.74:from];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[24];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.100.74:from];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[Nvidia.com:+]
Message-ID-Hash: K32F42FKFOCUWXODMG3YXOJ5LDQ74L3J
X-Message-ID-Hash: K32F42FKFOCUWXODMG3YXOJ5LDQ74L3J
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/K32F42FKFOCUWXODMG3YXOJ5LDQ74L3J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBKYW4gMjAsIDIwMjUgYXQgMDc6NTA6MjNQTSArMDEwMCwgU2ltb25hIFZldHRlciB3
cm90ZToNCj4gT24gTW9uLCBKYW4gMjAsIDIwMjUgYXQgMDE6NTk6MDFQTSAtMDQwMCwgSmFzb24g
R3VudGhvcnBlIHdyb3RlOg0KPiA+IE9uIE1vbiwgSmFuIDIwLCAyMDI1IGF0IDAxOjE0OjEyUE0g
KzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+ID4gV2hhdCBpcyBnb2luZyB3cm9uZyB3
aXRoIHlvdXIgZW1haWw/IFlvdSByZXBsaWVkIHRvIFNpbW9uYSwgYnV0DQo+ID4gU2ltb25hIFZl
dHRlciA8c2ltb25hLnZldHRlckBmZndsbC5jaD4gaXMgZHJvcHBlZCBmcm9tIHRoZSBUby9DQw0K
PiA+IGxpc3Q/Pz8gSSBhZGRlZCB0aGUgYWRkcmVzcyBiYWNrLCBidXQgc2VlbXMgbGlrZSBhIHdl
aXJkIHRoaW5nIHRvDQo+ID4gaGFwcGVuLg0KPiANCj4gTWlnaHQgYWxzbyBiZSBmdW5ueSBtYWls
aW5nIGxpc3Qgc3R1ZmYsIGRlcGVuZGluZyBob3cgeW91IGdldCB0aGVzZS4gSQ0KPiByZWFkIG1h
aWxzIG92ZXIgbG9yZSBhbmQgcHJldHR5IG11Y2ggaWdub3JlIGNjICh1bmxlc3MgaXQncyBub3Qg
YWxzbyBvbg0KPiBhbnkgbGlzdCwgc2luY2UgdGhvc2UgdGVuZCB0byBiZSBzZWN1cml0eSBpc3N1
ZXMpIGJlY2F1c2UgSSBnZXQgY2MnZWQgb24NCj4gd2F5IHRvbyBtdWNoIHN0dWZmIGZvciB0aGF0
IHRvIGJlIGEgdXNlZnVsIHNpZ25hbC4NCg0KT2ggSSBzZWUsIHlvdSBhcmUgc2VuZGluZyBhIE1h
aWwtZm9sbG93dXAtdG8gaGVhZGVyIHRoYXQgZXhjbHVkZXMgeW91cg0KYWRkcmVzcywgc28geW91
IGRvbid0IGdldCBhbnkgZW1haWxzIGF0IGFsbC4uIE15IG11dHQgaXMgZHJvcHBpbmcgeW91DQph
cyB3ZWxsLg0KDQo+IFllYWggSSdtIG5vdCB3b3JyaWVkIGFib3V0IGNwdSBtbWFwIGxvY2tpbmcg
c2VtYW50aWNzLiBkcm0vdHRtIGlzIGEgcHJldHR5DQo+IGNsZWFyIGV4YW1wbGUgdGhhdCB5b3Ug
Y2FuIGltcGxlbWVudCBkbWEtYnVmIG1tYXAgd2l0aCB0aGUgcnVsZXMgd2UgaGF2ZSwNCj4gZXhj
ZXB0IHRoZSB1bm1hcF9tYXBwaW5nX3JhbmdlIG1pZ2h0IG5lZWQgYSBiaXQgZnVkZ2luZyB3aXRo
IGEgc2VwYXJhdGUNCj4gYWRkcmVzc19zcGFjZS4NCg0KPkZyb20gbXkgcGVyc3BlY3RpdmUgdGhl
IG1tYXAgdGhpbmcgaXMgYSBiaXQgb2YgYSBzaWRlL0RSTS1vbmx5IHRoaW5nDQphcyBub3RoaW5n
IEknbSBpbnRlcmVzdGVkIGluIHdhbnRzIHRvIG1tYXAgZG1hYnVmIGludG8gYSBWTUEuDQoNCkhv
d2V2ZXIsIEkgdGhpbmsgaWYgeW91IGhhdmUgbG9ja2luZyBydWxlcyB0aGF0IGNhbiBmaXQgaW50
byBhIFZNQQ0KZmF1bHQgcGF0aCBhbmQgbGluayBtb3ZlX25vdGlmeSB0byB1bm1hcF9tYXBwaW5n
X3JhbmdlKCkgdGhlbiB5b3UndmUNCmdvdCBhIHByZXR0eSB1c3VhYmxlIEFQSS4NCg0KPiBGb3Ig
Y3B1IG1tYXBzIEknbSBtb3JlIHdvcnJpZWQgYWJvdXQgdGhlIGFyY2ggYml0cyBpbiB0aGUgcHRl
LCBzdHVmZiBsaWtlDQo+IGNhY2hpbmcgbW9kZSBvciBlbmNyeXB0ZWQgbWVtb3J5IGJpdHMgYW5k
IHRoaW5ncyBsaWtlIHRoYXQuIFRoZXJlJ3MNCj4gdm1hLT52bV9wZ3Byb3QsIGJ1dCBpdCdzIGEg
bWVzcy4gQnV0IG1heWJlIHRoaXMgYWxsIGlzIGFuIGluY2VudGl2ZSB0bw0KPiBjbGVhbiB1cCB0
aGF0IG1lc3MgYSBiaXQuDQoNCkknbSBjb252aW5jZWQgd2UgbmVlZCBtZXRhLWRhdGEgYWxvbmcg
d2l0aCBwZm5zLCB0aGVyZSBpcyB0b28gbXVjaA0Kc3R1ZmYgdGhhdCBuZWVkcyBtb3JlIGluZm9y
bWF0aW9uIHRoYW4ganVzdCB0aGUgYWRkcmVzcy4gQ2FjaGFiaWxpdHksDQpDQyBlbmNyeXB0aW9u
LCBleHBvcnRpbmcgZGV2aWNlLCBldGMuIFRoaXMgaXMgYSB0b3BpYyB0byBwYXJ0aWFsbHkNCmNy
b3NzIHdoZW4gd2UgdGFsayBhYm91dCBob3cgdG8gZnVsbHkgcmVtb3ZlIHN0cnVjdCBwYWdlIHJl
cXVpcmVtZW50cw0KZnJvbSB0aGUgbmV3IERNQSBBUEkuDQoNCkknbSBob3Bpbmcgd2UgY2FuIGdl
dCB0byBzb21ldGhpbmcgd2hlcmUgd2UgZGVzY3JpYmUgbm90IGp1c3QgaG93IHRoZQ0KcGZucyBz
aG91bGQgYmUgRE1BIG1hcHBlZCwgYnV0IGFsc28gY2FuIGRlc2NyaWJlIGhvdyB0aGV5IHNob3Vs
ZCBiZQ0KQ1BVIG1hcHBlZC4gRm9yIGluc3RhbmNlIHRoYXQgdGhpcyBQRk4gc3BhY2UgaXMgYWx3
YXlzIG1hcHBlZA0KdW5jYWNoYWJsZSwgaW4gQ1BVIGFuZCBpbiBJT01NVS4NCg0KV2UgYWxzbyBo
YXZlIGN1cnJlbnQgYnVncyBpbiB0aGUgaW9tbXUvdmZpbyBzaWRlIHdoZXJlIHdlIGFyZSBmdWRn
aW5nDQpDQyBzdHVmZiwgbGlrZSBhc3N1bWluZyBDUFUgbWVtb3J5IGlzIGVuY3J5cHRlZCAobm90
IGFsd2F5cyB0cnVlKSBhbmQNCnRoYXQgTU1JTyBpcyBub24tZW5jcnlwdGVkIChub3QgYWx3YXlz
IHRydWUpDQoNCj4gSSB0aG91Z2h0IGlvbW11djIgKG9yIHdoYXRldmVyIGxpbnV4IGNhbGxzIHRo
ZXNlKSBoYXMgZnVsbCBmYXVsdCBzdXBwb3J0DQo+IGFuZCBjb3VsZCBzdXBwb3J0IGN1cnJlbnQg
bW92ZSBzZW1hbnRpY3MuIEJ1dCB5ZWFoIGZvciBpb21tdSB3aXRob3V0DQo+IGZhdWx0IHN1cHBv
cnQgd2UgbmVlZCBzb21lIGtpbmQgb2YgcGluIG9yIGEgbmV3bHkgZm9ybWFsaXplZCByZXZva2Ug
bW9kZWwuDQoNCk5vLCB0aGlzIGlzIEhXIGRlcGVuZGVudCwgaW5jbHVkaW5nIFBDSSBkZXZpY2Us
IGFuZCBJJ20gYXdhcmUgb2Ygbm8gSFcNCnRoYXQgZnVsbHkgaW1wbGVtZW50cyB0aGlzIGluIGEg
d2F5IHRoYXQgY291bGQgYmUgdXNlZnVsIHRvIGltcGxlbWVudA0KYXJiaXRhcnkgbW92ZSBzZW1h
bnRpY3MgZm9yIFZGSU8uLg0KDQpKYXNvbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
