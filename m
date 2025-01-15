Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB5EA125AF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jan 2025 15:15:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B519D44787
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jan 2025 14:15:10 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2055.outbound.protection.outlook.com [40.107.244.55])
	by lists.linaro.org (Postfix) with ESMTPS id B00704410E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Jan 2025 14:15:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=VFBdmVbh;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.107.244.55 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TQ0W/xGYYIFtIE1UKlSEISKQ8sEdaH0Q8aiGgQZxOIGTM85S6oFh8gnIRrYGnXNLJGDzp5G9AEV976hhUqCjSdwgXoTuIiboS9QkV8QxSjdcdTiH5Q4xG6yFcsNen8RgPE1ukII3R8CggbNIrZ0GhJTEoz9AxnS6lNvQxLOJOfOcYfb22hWopMNxKLYPDe1B8v+5M1qsomnL2oC6wYuob34eBB1ml4YNkrDDSIceQ6+kCy1I3Fd8uXD6eyjKw7fMPDp1woXAxHKOxOleLiEzIebawD1v2cvMyI107XyZJAvapa4aJ7cQ9w3DcWjriV0SCR8FV1EdODDMlb8tUVUYZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tlQzxA2USeT4qXtO7eO9DkUIBt1uSJNLFj1LgepSxVY=;
 b=uM0EJcszpgk/fYQ+4d/SjfHdGNk+k+MDrqEHNiiSm/YeZx+oK0RsnYB/CpmPY2JfkrxsL48KmipNG9BUIRLxOeZCvtAg07ULinmxJ+5ziNoREdZU5XjijKf1xjLVpZGcjk2Bga1kzJFcuoHWljwj/8ceGSdyFapPaT2CHLXSa+5/vjX8sHWAa4OgDtrvkAdnNNY1MY1UBNzwRy+oplKTMTxMzpnpImma+V9RKqa3UNx+SuyjxdzFzDd6UdqA4pwmcIip97v/wSTxUtcGyXNig8qKX3brO3KhL71weEJQX6he03ZOV2uNGNm8SX6zbjg0kb2JhCioI//VRGCN7ftH0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tlQzxA2USeT4qXtO7eO9DkUIBt1uSJNLFj1LgepSxVY=;
 b=VFBdmVbhLrf0bhrP0QCkVifWGPjQFwYBHa0M0omyZ3pjKs6dfmZ5omv+dKBta2UPOglP7ppHdc3hJKx/LsqOACjQ0wcwoSRByItG6jpgMRiLx2EsQ7qigkxvV38aBT1O045tvu2uaR2A5HbY+L1eijHDc1+7cHHCfWyc4fVBHhXcx9BJtTQN1gneA9KFkJhQVLjPL+OH8R8y8l7qAHCmNYSecTCx8nLiuWunCVFin7vavoZ5yk7sn0aaxj/snmPPQiY6nUeQLQeSemPOfXhlM0TBJ3vcWVwzLRmEvp8LymfzgaUbmxbS0t40ayhguHrmBb6VeKleZ/N28O/J+yeaqA==
Received: from CH3PR12MB8659.namprd12.prod.outlook.com (2603:10b6:610:17c::13)
 by PH7PR12MB6908.namprd12.prod.outlook.com (2603:10b6:510:1ba::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Wed, 15 Jan
 2025 14:14:59 +0000
Received: from CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732]) by CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732%5]) with mapi id 15.20.8335.017; Wed, 15 Jan 2025
 14:14:59 +0000
Date: Wed, 15 Jan 2025 10:14:58 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20250115141458.GP5556@nvidia.com>
References: <20250108162227.GT5556@nvidia.com>
 <Z37HpvHAfB0g9OQ-@phenom.ffwll.local>
 <Z37QaIDUgiygLh74@yilunxu-OptiPlex-7050>
 <58e97916-e6fd-41ef-84b4-bbf53ed0e8e4@amd.com>
 <c823f70c-9b70-441c-b046-71058c315857@amd.com>
 <20250110205454.GM5556@nvidia.com>
 <d213eee7-0501-4a63-9dfe-b431408c4c37@amd.com>
 <20250115133821.GO5556@nvidia.com>
 <f6c2524f-5ef5-4c2c-a464-a7b195e0bf6c@amd.com>
 <1afd5049-d1d4-4fd6-8259-e7a5454e6a1d@amd.com>
Content-Disposition: inline
In-Reply-To: <1afd5049-d1d4-4fd6-8259-e7a5454e6a1d@amd.com>
X-ClientProxiedBy: BN9PR03CA0844.namprd03.prod.outlook.com
 (2603:10b6:408:13d::9) To CH3PR12MB8659.namprd12.prod.outlook.com
 (2603:10b6:610:17c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB8659:EE_|PH7PR12MB6908:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ff05721-7c8b-4d24-73ca-08dd356efe97
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?QldHbzJzRTVLcXl4cjN6d1J0NkVDdUMzS0d4bHhrbWI2ejBmT0cybHRNNk5w?=
 =?utf-8?B?SUMvWXlzMjE2L28wZERzdnhROHFlZVU1STJLYXZoTDJHckFCUXJZZ0w4U2NP?=
 =?utf-8?B?MjRyRDBlQ1BhdEFQWGw3L09yZzU3MTBodXZDejFtNS94T29YZDdjNzgxL1Y4?=
 =?utf-8?B?aVAzcWJoeDdhQWRpcm1SQjd0TDJhSExWZDVsZ3g4bHpZamsyMU10QnUwUmZr?=
 =?utf-8?B?bzh0Sy9MWWNLdG1SQURPR0gvV2lxbW5jVzN4M3p1YnIwcE9DRXFCbkNQeGlX?=
 =?utf-8?B?NzdvNHAvNGkrcFVDdUJVSGlSUHJRcEVvSnlBQitQU3hRZDFoQVdKUGZXcGlz?=
 =?utf-8?B?cjJPL21XZmZaMW5oV1U2QlpSU0RtU05SUlpZeDh4aHprdDUybEEzQTJrOUda?=
 =?utf-8?B?VTN5TlZOR1FKT2lDN3dxY2FMcEJTNExUVy9WU0N3T1hRVUFKSXVEQVRpWG9Z?=
 =?utf-8?B?aEI2UnYzd3Q3RGtCR01KcCtXNTBYZk1ESVhyYlhPMkUrN202MEJzOHRaMFE4?=
 =?utf-8?B?RDdzblgrbE83d00yaEk2VjJGZlZXeGNGeHZleVI3NnZHQmM3TW1lZW1XbjNu?=
 =?utf-8?B?VGdrcitDckxwTXBSdHN5bzlIZG5jaytvK3VuRmFMMTl3Wk9aS3dzbThHeXJU?=
 =?utf-8?B?SEw4RTJSdDM3cSsraHBaTVRoQXhVaUFXVHpMSjZMZnorNStMdlZGaDBaRlZh?=
 =?utf-8?B?dWxLbGxNQllza2VHRWRaT2FPWTUzL2xpekZaeFlMc0o3VXIrcVBQN3hoa3o5?=
 =?utf-8?B?VUk0MGpORkFETnJ4TFFCRXJNTGtabmlYR2NqTm1jNzRwNnl2NEw1dnlzUFVK?=
 =?utf-8?B?dENlbGZuLzg1NkZLUlppcWZoQW5CeGs5Y1NTTVhSWVljUEhPNDF6WVdXRmFq?=
 =?utf-8?B?cDVvbkxDRDZGMFpOdEFqamU3aUJjZHJEREZEbTZWZ09FUkovb0ZGdXNGRXhV?=
 =?utf-8?B?RENoTlNkT2lvTC8zYkp5U2doK2VIeHhpTUVpUjZyN1o2Z1pIb09CbUg2aUxz?=
 =?utf-8?B?SCt5a3hOYktUdGtyQUdlVE1YOHRnZk1HRkg1OTY3cm9SMkFTV2p1VTR1em43?=
 =?utf-8?B?YjY1Ny84YUJMaTJVWDlsV1ZYbWVKVWRGaTJSNW56OVhNTy93MmRqampEWU5I?=
 =?utf-8?B?OTJpQkwrbUsweWdXY2FQT0NyeUNHemIrWm5HZ2lRYWlZSVYwQTBqTS9pdEJo?=
 =?utf-8?B?blNQdUJTSGNVakhoVnVpQzJUanU0U3cwOVlaR1lPMlpUVTNERXhsckNFK3pO?=
 =?utf-8?B?ZE8zeUtaQjc3THRhajVsbTl6ZTZhOU0yMGpTTWpNZmxvb1l5akJHQlpNQlhu?=
 =?utf-8?B?dTVmbHlnZlJGL2VRdnR3NXRCcFZTY3hGZFVnVWVSU1cwWmpZWVBBak5jUDhi?=
 =?utf-8?B?NkNzUVRjeTN4NUtCZ0d4M0RNanEzcHRPMnpDL09aVHQ1Qkw0dFh4YkFSQllw?=
 =?utf-8?B?NGVXMGJ5NXZFYU83eEZqR3hnemVTSGJ2V045MjVUeFBObDB5M3ZOMlBYeEh3?=
 =?utf-8?B?SlZIUTVQU0RFRDJiaUNOWEwxVTNoWGV5UFBoYlNQVUxURjJ5T2E5SEZRL25R?=
 =?utf-8?B?dWRpNTU3YVNlaXBzYTRjWFNTK1U1b3pManVrdklUNW9RNnBBYkprQURVT1g1?=
 =?utf-8?B?VXJrcTNqZjkrVHJieHBnbFBLM1I3RkdxZ0p5bUNjMStHR0ZCdTRUSXFFYkc0?=
 =?utf-8?B?V28wWkxKU013ZlpmRU1WMHc3MEhhQUcyRjJVWGxCYk1jUFFIRnN3VG42cWRI?=
 =?utf-8?B?VDV3S2lRRzNEVzVIbVJsQ09OSnltN3BUQUE3Z3h3WnV2bG9BeDUzS1FPOWs2?=
 =?utf-8?B?UmNtOEJXZzNyZUJRNGgrczVHVmVKYlJrMjEzWFBXZGxBSmdTK2ZnaFhqdE8y?=
 =?utf-8?Q?3RLZg5Bgum3Pj?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR12MB8659.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dnZ3TFc3L28zbzZGTHR2OEg2TStka0RnUVBQZG9YQ0JtOXRGNktLSkNuaW8w?=
 =?utf-8?B?TkFKZnZTWS9VT2wrN2Vtcnl1UjlXMU9GL3hFQ2JUNEZEUy9LKzcwMU9tbXBM?=
 =?utf-8?B?aCtuNXlzM0psQTE4TlltN2lHaGc3UkQyQ3FCNWpWR2pVOUw0UnladkVCQm9s?=
 =?utf-8?B?dW9aMGpWeTBuV3M2Q2twR0RaZ3ZINHdHdE9YTjNKTjFkcklKM2JvSHVpZFJD?=
 =?utf-8?B?K0NZMWlUWFA0TTVJMFdhY1RHanV6VWJ3cjlxWlhpdllZZ0NycnRtSDd2QnIz?=
 =?utf-8?B?dE1MdXBvSGZ0aUJPcDgzZzZSRktZR3pMcXFXcUttMGwwSElIVWhVcDY5dUI3?=
 =?utf-8?B?RmpIeHdJVGZ6S20vc0JTMjVlMlpyMi9MaTE4Rm1qdFJycE91NWFnUHIrdzBq?=
 =?utf-8?B?enNBV25rRUh4YWN1NTg5ckNtVzZHbC9XRXdsMU9zMmIzTStld21Ha0V1c2ZR?=
 =?utf-8?B?UWh4YTNXUzd4S3VHVnk0Rkxhd1JNaUJOOE40dUxvbnpvRGh4UTVsSjJqQ0t3?=
 =?utf-8?B?WS9pb2hlQ0VrOU9WMTRrZy9qSGU5NkZCamJpZFczcW1TcG1yeGY5QlE4Zmt0?=
 =?utf-8?B?RDZieUFoNEdEWHJWVlpPWGM4MHkrY3RaK2xtdWhJV3JwZGh4RWxDNlpxdjgw?=
 =?utf-8?B?Y1l4WHllVDZyV2dSTmdkbzVxMjBWbVdLNm5hWVNWSHpvZ0VTNGRnNTQ1VFpL?=
 =?utf-8?B?UFFtdzhJZzlzZmM3TXFWM2E0ZGQvZ24vUG1uazVxZDdnbWRMV2s0N2JiM0Jy?=
 =?utf-8?B?dWt2N3lQWHRiVDJ1dVFuV1JsUFhCUDN0aGgwRTNjTlFQTmRVMUFuM2JjMk9V?=
 =?utf-8?B?ZnZBZ1paSXlwNlllMXUzZHA5NE1WeU1qbksrbUZSbGRGcFY0VnhtTVR2ankr?=
 =?utf-8?B?bG0vbmhWNDhWdGVmc2dnUEJ3Tjd0OVVrUlhjYUM0Z0tveTB3Y2pwMmlMa0FB?=
 =?utf-8?B?RENDMytIckdPR0RrL2ZUaU1hTVFPN3N3aW1aZ0FGTkVyMXB4UmdlRXZrK0gz?=
 =?utf-8?B?N1Q1UzVJVWd1QlpqaW5YMmlrekl6T2NtQkRFVS9UL0g1NXA1RGg1RVJxOXdy?=
 =?utf-8?B?a0xtdkFSeHkzUko4TXVpdjhxQjlGSVRVM3dhRFEyeElwQmFpT1UvSUdpZHdk?=
 =?utf-8?B?UGUxQnJlWEJiQUROMWVabjFFaXYyb2diWFFtb21GejVua2Z6T3puVC94dDlF?=
 =?utf-8?B?WncvWFhiTzRPcHVONUdHME1XRG9PaDRzeHpla2lPSjdQTkZpMEdLYTBKVjhh?=
 =?utf-8?B?QWxORVNBN3NYUUhEcWJ0cjllcDI5UUp2Z1ptdHVLUU1sQWFGMmw0V0dCNVV4?=
 =?utf-8?B?bkN1b3d5TVdTSndVU3FKMnVSRFdFNlRhQkRrVVhESTBSd2piREo2dDgybnNr?=
 =?utf-8?B?Njg4RkRKSEFlMjFGL05VZ093R2l5M1VZeE5LeitSZHgzNlUwdVpKaExESGow?=
 =?utf-8?B?VUc2SU1idkNKeVZHc202KzgwbjVyL2RJeHhhcjR1WjAzU0hETEVXN3l1RFIx?=
 =?utf-8?B?eXZiRGFXN09YVmZBeDVrenZEUy9TbkRubnhVM1pzcnNGNlJtZWRSOUIxUWpk?=
 =?utf-8?B?azRpUi9pODNQbnFPcHhwVEkzay9oc2hCNXdtNGhtQmJzNU9SVm4rend6cVU1?=
 =?utf-8?B?T2lGQ1VqSVF0TzdTK1p4SndhZEpFU3B4NlBaUGNVdjNQeFZrMUo3NmV1QXBH?=
 =?utf-8?B?WU45MFRmcTd0UVAxSVI4bCtmUjRiTDVBOW5OcFUrRGt4dk96bzRjZXpDcHFu?=
 =?utf-8?B?Q01UZzRyckdOd1FBU200bVU3dHRPbTJRYmVwUFg3LzVlY1JzdlZqcnpwUlow?=
 =?utf-8?B?SVAxanJDc0ZnQ3cxaW5jM1IwWXdFVkxKZjRvMkN6Z1hFMGRLWUpVbTZhQ2hH?=
 =?utf-8?B?UWVCcFRUSU5GMnV1dTNtQlg5RUlaT0tjcUZOeHN5TGZmTlJscXFvVkN6dlFP?=
 =?utf-8?B?NDVqMnBLSnRETU1iUXp0anJ0WjRVRXpVNGxEcTM5UG91cERud0hPaC84MnBR?=
 =?utf-8?B?cUtZdXFvVE5QVExkNmFiYUhhOUN3WmxRTUxzZDNkZHBDUzFhSUg5emh5VTY5?=
 =?utf-8?B?TkNlSWZEaVh3QVZuTWl0V0xuMld3SUV3VFAvTWFFS1k2N0t3ZnM5U3lvTVJy?=
 =?utf-8?Q?rQ69bSn6k3F11dAfwM0sVF581?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ff05721-7c8b-4d24-73ca-08dd356efe97
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB8659.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2025 14:14:59.2254
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ALyH9hnAqAWVyxW5DPWt6PKuvOorLDFfcAqQNh0TGopT//JaNlliyGQ+nDN6RMPQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB6908
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B00704410E
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.98 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.98)[99.89%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.244.55:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.244.55:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[24];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[Nvidia.com:+]
Message-ID-Hash: 4VB5OMYBCR44C54FUMWGKSM7SRJCW77Y
X-Message-ID-Hash: 4VB5OMYBCR44C54FUMWGKSM7SRJCW77Y
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Xu Yilun <yilun.xu@linux.intel.com>, Christoph Hellwig <hch@lst.de>, Leon Romanovsky <leonro@nvidia.com>, kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, aik@amd.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4VB5OMYBCR44C54FUMWGKSM7SRJCW77Y/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBKYW4gMTUsIDIwMjUgYXQgMDI6NDY6NTZQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gRXhwbGljaXRseSByZXBseWluZyBhcyB0ZXh0IG1haWwgb25jZSBtb3JlLg0K
PiANCj4gSSBqdXN0IGxvdmUgdGhlIEFNRCBtYWlscyBzZXJ2ZXJzIDooDQoNCjooIFRoaXMgaXMg
aGFyZA0KDQo+ID4gWWVhaCwgYnV0IGl0J3MgcHJpdmF0ZSB0byB0aGUgZXhwb3J0ZXIuIEFuZCBh
IHZlcnkgZnVuZGFtZW50YWwgcnVsZSBvZg0KPiA+IERNQS1idWYgaXMgdGhhdCB0aGUgZXhwb3J0
ZXIgaXMgdGhlIG9uZSBpbiBjb250cm9sIG9mIHRoaW5ncy4NCg0KSSd2ZSBzYWlkIGEgZmV3IHRp
bWVzIG5vdywgSSBkb24ndCB0aGluayB3ZSBjYW4gYnVpbGQgdGhlIGtpbmQgb2YNCmJ1ZmZlciBz
aGFyaW5nIGZyYW1ld29yayB3ZSBuZWVkIHRvIHNvbHZlIGFsbCB0aGUgcHJvYmxlbXMgd2l0aCB0
aGlzDQpwaGlsb3NvcGh5LiBJdCBpcyBhbHNvIGluZWZmaWNpZW50IHdpdGggdGhlIG5ldyBETUEg
QVBJLg0KDQpJIHRoaW5rIGl0IGlzIGJhY2t3YXJkcyBsb29raW5nIGFuZCB3ZSBuZWVkIHRvIG1v
dmUgZm9yd2FyZHMgd2l0aA0KZml4aW5nIHRoZSBmdW5kYW1lbnRhbCBBUEkgaXNzdWVzIHdoaWNo
IG1vdGl2YXRlZCB0aGF0IGRlc2lnbi4NCg0KPiA+IFNvIGZvciBleGFtcGxlIGl0IGlzIGlsbGVn
YWwgZm9yIGFuIGltcG9ydGVyIHRvIHNldHVwIENQVSBtYXBwaW5ncyB0byBhDQo+ID4gYnVmZmVy
LiBUaGF0J3Mgd2h5IHdlIGhhdmUgZG1hX2J1Zl9tbWFwKCkgd2hpY2ggcmVkaXJlY3RzIG1tYXAo
KQ0KPiA+IHJlcXVlc3RzIGZyb20gdGhlIGltcG9ydGVyIHRvIHRoZSBleHBvcnRlci4NCg0KTGlr
ZSB0aGlzLCBpbiBhIGZ1dHVyZSBuby1zY2F0dGVyIGxpc3Qgd29ybGQgSSB3b3VsZCB3YW50IHRv
IG1ha2UgdGhpcw0Kc2FmZS4gVGhlIGltcG9ydGVyIHdpbGwgaGF2ZSBlbm91Z2ggaW5mb3JtYXRp
b24gdG8ga25vdyBpZiBDUFUNCm1hcHBpbmdzIGV4aXN0IGFuZCBhcmUgc2FmZSB0byB1c2UgdW5k
ZXIgd2hhdCBjb25kaXRpb25zLg0KDQpUaGVyZSBpcyBubyByZWFzb24gdGhlIGltcG9ydGVyIHNo
b3VsZCBub3QgYmUgYWJsZSB0byBDUFUgYWNjZXNzDQptZW1vcnkgdGhhdCBpcyBIVyBwZXJtaXR0
ZWQgdG8gYmUgQ1BVIGFjY2Vzc2libGUuDQoNCklmIHRoZSBpbXBvcnRlciBuZWVkcyBDUFUgYWNj
ZXNzIGFuZCB0aGUgZXhwb3J0ZXIgY2Fubm90IHByb3ZpZGUgaXQNCnRoZW4gdGhlIGF0dGFjaG1l
bnQgc2ltcGx5IGZhaWxzLg0KDQpTYXlpbmcgQ1BVIGFjY2VzcyBpcyBiYW5uZWQgMTAwJSBvZiB0
aGUgdGltZSBpcyBub3QgYSBoZWxwZnVsIHBvc2l0aW9uDQp3aGVuIHdlIGhhdmUgdXNlIGNhc2Vz
IHRoYXQgbmVlZCBpdC4NCg0KPiA+IEFzIGZhciBhcyBJIGNhbiBzZWUgdGhhdCBpcyByZWFsbHkg
bm90IGFuIHVzZSBjYXNlIHdoaWNoIGZpdHMgRE1BLWJ1ZiBpbg0KPiA+IGFueSB3YXkuDQoNCkkg
cmVhbGx5IGRvbid0IHdhbnQgdG8gbWFrZSBhIGRtYWJ1ZjIgLSBldmVyeW9uZSB3b3VsZCBoYXZl
IHRvDQppbXBsZW1lbnQgaXQsIGluY2x1ZGluZyBhbGwgdGhlIEdQVSBkcml2ZXJzIGlmIHRoZXkg
d2FudCB0byB3b3JrIHdpdGgNClJETUEuIEkgZG9uJ3QgdGhpbmsgdGhpcyBtYWtlcyBhbnkgc2Vu
c2UgY29tcGFyZWQgdG8gaW5jcmVtZW50YWxseQ0KZXZvbHZpbmcgZG1hYnVmIHdpdGggbW9yZSBv
cHRpb25hbCBjYXBhYmlsaXRpZXMuDQoNCj4gPiA+ID4gVGhhdCBzb3VuZHMgbW9yZSBzb21ldGhp
bmcgZm9yIHRoZSBURUUgZHJpdmVyIGluc3RlYWQgb2YgYW55dGhpbmcgRE1BLWJ1Zg0KPiA+ID4g
PiBzaG91bGQgYmUgZGVhbGluZyB3aXRoLg0KPiA+ID4gSGFzIG5vdGhpbmcgdG8gZG8gd2l0aCBU
RUUuDQo+ID4gDQo+ID4gV2h5Pw0KDQpUaGUgTGludXggVEVFIGZyYW1ld29yayBpcyBub3QgdXNl
ZCBhcyBwYXJ0IG9mIGNvbmZpZGVudGlhbCBjb21wdXRlLg0KDQpDQyBhbHJlYWR5IGhhcyBndWVz
dCBtZW1mZCBmb3IgaG9sZGluZyBpdCdzIHByaXZhdGUgQ1BVIG1lbW9yeS4NCg0KVGhpcyBpcyBh
Ym91dCBjb25maWRlbnRpYWwgTU1JTyBtZW1vcnkuDQoNClRoaXMgaXMgYWxzbyBub3QganVzdCBh
Ym91dCB0aGUgS1ZNIHNpZGUsIHRoZSBWTSBzaWRlIGFsc28gaGFzIGlzc3Vlcw0Kd2l0aCBETUFC
VUYgYW5kIENDIC0gb25seSBjby1vcGVyYXRpbmcgZGV2aWNlcyBjYW4gaW50ZXJhY3Qgd2l0aCB0
aGUNClZNIHNpZGUgImVuY3J5cHRlZCIgbWVtb3J5IGFuZCB0aGVyZSBuZWVkcyB0byBiZSBhIG5l
Z290aWF0aW9uIGFzIHBhcnQNCm9mIGFsbCBidWZmZXIgc2V0dXAgd2hhdCB0aGUgbXV0dWFsIGNh
cGFiaWxpdHkgaXMuIDpcIHN3aW90bGIgaGlkZXMNCnNvbWUgb2YgdGhpcyBzb21lIHRpbWVzLCBi
dXQgY29uZmlkZW50aWFsIFAyUCBpcyBjdXJyZW50bHkgdW5zb2x2ZWQuDQoNCkphc29uDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
