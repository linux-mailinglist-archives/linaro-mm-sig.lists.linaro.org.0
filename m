Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CDEAA1254B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jan 2025 14:48:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6634D44787
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jan 2025 13:48:11 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2056.outbound.protection.outlook.com [40.107.93.56])
	by lists.linaro.org (Postfix) with ESMTPS id 4D24944126
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Jan 2025 13:47:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="c/14YQQR";
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.93.56 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RNBxr4vxVIVlroMUK+XIyxY8D6QHqaMI/vkFCElgQNBltc6CAWYZQzuPNRRbGN62ZHCma4YqxcV4LI041cY0AMCcYaX4g/4BUuYI2F0pC2giWktjcX65RADonwvYSXZnceL8gQkXjnjWlU4FlsKcrIArEnf+HgIf7uPiTW9s5gsr3dhlmciQ+g2ajI6fn33abJBxqY//hc74M7hHXip+aQFcVLiiRa4AZ35PKjLQRnz6gQfgljCQz8wRRMOJq7SxKlYeGBbuCUp+X3nTMcRApx2NNjNvU9JGfk//NT6UFg3dvlhX/82eN1bk2NTbAgpl8MKSyTc9RKg75Vl+XNo8Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RMaIiZ8ph2Yn04GgAofOc/1BFr4mP6EgdbDycB0+AnQ=;
 b=HBSO7c/JVd5DnODW5/dxF1A9ZSG6JXR0Oc8IFOitjXzBp9m9dzdMaUl2RghXDSteqxs6hKqcPtwsrhFqG2oSYDMj6c9dWt3GlXG9c9x7DwEPTyf0ZZpXBOoDyCW7w0MAgvaafOiSSkV6ZTc1q2SJM2qYroMgyvRf4wz0pTkzjI2BRbPO+mUeiECQ0NWpej24zlKcU1nEHv0qH+77ZeQf38p/u4PiLUjrWG75+VWKg1c8qkPpi2dY6Cy1Y9RBcc1xrRYIRB/dAwRLTaf0shy2CXRZr7ZtePGxFwwcVlO5aYlvr7I/R2hUyrFm/1spQBxbQAu1LaM1UrnFTcUe3I548A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RMaIiZ8ph2Yn04GgAofOc/1BFr4mP6EgdbDycB0+AnQ=;
 b=c/14YQQRAwOyOfGcm2eN/7RZdKn0UnhyghYH70XCNNxUjtpz5P/JXMMv/nHBdy99tC58TwxvqGEu505x3bLIYnc/myAHDLW4zcpmjfrnh6QtDC3GUAWyg4q8GBqCkA2oX9mCtokZSCW8lrlp79a6a+ten8XAiW/YFQZj4/fyhWM=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MN0PR12MB5740.namprd12.prod.outlook.com (2603:10b6:208:373::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Wed, 15 Jan
 2025 13:47:06 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8356.010; Wed, 15 Jan 2025
 13:47:06 +0000
Message-ID: <1afd5049-d1d4-4fd6-8259-e7a5454e6a1d@amd.com>
Date: Wed, 15 Jan 2025 14:46:56 +0100
User-Agent: Mozilla Thunderbird
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
To: Jason Gunthorpe <jgg@nvidia.com>
References: <f3748173-2bbc-43fa-b62e-72e778999764@amd.com>
 <20250108145843.GR5556@nvidia.com>
 <5a858e00-6fea-4a7a-93be-f23b66e00835@amd.com>
 <20250108162227.GT5556@nvidia.com> <Z37HpvHAfB0g9OQ-@phenom.ffwll.local>
 <Z37QaIDUgiygLh74@yilunxu-OptiPlex-7050>
 <58e97916-e6fd-41ef-84b4-bbf53ed0e8e4@amd.com>
 <c823f70c-9b70-441c-b046-71058c315857@amd.com>
 <20250110205454.GM5556@nvidia.com>
 <d213eee7-0501-4a63-9dfe-b431408c4c37@amd.com>
 <20250115133821.GO5556@nvidia.com>
 <f6c2524f-5ef5-4c2c-a464-a7b195e0bf6c@amd.com>
Content-Language: en-US
In-Reply-To: <f6c2524f-5ef5-4c2c-a464-a7b195e0bf6c@amd.com>
X-ClientProxiedBy: FR3P281CA0153.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a2::11) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MN0PR12MB5740:EE_
X-MS-Office365-Filtering-Correlation-Id: 111006fa-a06a-4e02-1743-08dd356b1972
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?NWpUSWpOazNRa2s0Skg4WVVGS01URkhnZmlpdTB6NlViT0U1ejhpc3pZYUli?=
 =?utf-8?B?MDNLTWRMU0EyeEJlUUEzTVNkNXdkMzM5bm1GWXZHZGRVNVpVSHdSK2g4N29L?=
 =?utf-8?B?c1dPTGVyZ1kwa1JUTEFlVkVhajVoUTl0V3pLZThMSjJYc1l3NHJpbHZrQU1h?=
 =?utf-8?B?aklSRmlPUVZHaXovVWEwU0hLMnhHVVQ3azRXbjQ3aVFaS3JXeW1NUWNablBO?=
 =?utf-8?B?WWs5SzRVMVRRWWFOU21RQmttUDF1RmRZMDE2TkJyNklDaFozekw4bng1WHdl?=
 =?utf-8?B?UEFiRGF5ajRzVGVvVEdSQWRkanFFaVFOWEI5L1lneTJ4UU1lRkVrOHpya2FX?=
 =?utf-8?B?Z0NKQm1ub2hoK3M5OXd6TElJaGVlV1BlZm9aSFNaUnFVbTkycC81alhMN3Jr?=
 =?utf-8?B?aVg4YzNreUdoU3BlOWc0OWZxS29DVEMxVE11NjZydVBPeUZvKzVSMWJhcTBi?=
 =?utf-8?B?QlU2eFlOK0JKUGxIaE03STB0a1NxUHF1a1hMK1ZneGxNZ2JFcUpLVzBNTnY4?=
 =?utf-8?B?cHhDSTB0U0RCS1hNOGQ5TWd2SFU4TWd4T1dETEdML1dGZlBxRUY5cnkyZWMr?=
 =?utf-8?B?TGRjMGxxZWEwR0lQTkJNTk9RMzQzYmpkVGpvRWhydzBva3E3ZFhGTkluNEdh?=
 =?utf-8?B?T3FuU1h1ZWE0YlZvcVdpY0lmUW5EQ0E3Q1NJRDRlVGtUSHVrTVk0OTVDYVRi?=
 =?utf-8?B?cjNSbXFBT2RnbjNNN2s0d2VvOVU0YWlnOW1hV2h3eWtkbTBHM1lUbjNHL1c4?=
 =?utf-8?B?RXlRUUZDTHh3OWx0bWNWb09LN0RzUGVtQkVQSm9aa09PREszeWF4ejZOWVNs?=
 =?utf-8?B?cm84bjdDbVE2TG1xQjk1YzFVRzVkakZsYkVXdnlCM25tV1h6TlcrSGlUNzhM?=
 =?utf-8?B?T2JDZndNMkhwVDNONk9jVjhwZG1RNVk1RkU0eEdtWjlpV3M1VVZFZHllbGhO?=
 =?utf-8?B?dEU1ZWFpZVlHdkg1NktBUENGVWNxenFJZndrWFFKSzc1M3BzVHFDdjlxL0xi?=
 =?utf-8?B?T0RUTERzVG10TUZuRXpLWDZXeWtHUC92aEZ6bytLenNFZFM5TjNuT05HbGJN?=
 =?utf-8?B?aXJCRFhxT2tITFN6cndPMUUrNVIrOU82THI5c2MySllhWHgzUDR3MzkwbElM?=
 =?utf-8?B?WDJNbWtIUTNEL0Rsb1VRUlRVZWNNQ0t6SlJBRHhuSElTdDVObUhWcWgrSnFl?=
 =?utf-8?B?QmZBdVd4cDBKRHY2NWZvem81MUVPS0p6NklMZkpoMHh4dDhOczBtVTVjUjVT?=
 =?utf-8?B?TDVZSUVIN1lwa3BXRUl4Vmt4dFpuOUNDMEhtMU9iUG83elRwaG5xeSs0M3NH?=
 =?utf-8?B?YTY2cVgvVmZIVms2YmJQY3VEVklDVnByS0ZFdkJwdE1rRkJhMElhYzY3TTNz?=
 =?utf-8?B?eTVIMVR4QUNBMG0yd1p5OEM1cUNTcGpkREt2eFNub2JqeU9jNVUyQWtNb1Mw?=
 =?utf-8?B?SkFlLytpelFHbDNiVFVKd2sxME02MG1LV25ubGV2azB3azVvODVHU2t0SkZm?=
 =?utf-8?B?dThlTFdlM1gycTNJR2JzQWsvZnExaFlheVlxTmxBRElhanRnd1J3Y21jN3p2?=
 =?utf-8?B?Z1RuNFR6REFhL0JUZDVlSkdldWFhcmRLaHZqOFBBeCtQckdxU3dFWXBkNWtO?=
 =?utf-8?B?Tzk0UUptZ2xHM3BxeFdhbWFnNmQ5OHZJaURtM3VpNFFWdEFwR0lidnZ5Zzgw?=
 =?utf-8?B?eit3djRpYmlUUlJGTHZUMlFYcVhicjlZVmFFM3ozNDJmUmJQRVVhS29jbmdX?=
 =?utf-8?B?RDRjU3pvOWdPQ2JRN24zT0tHTGgxV2lYYWUrRWErN3kzSEFrRXE4akd5cW4r?=
 =?utf-8?B?THlSWEhEWFlLV2krWkxBN0R1eTlreXF1cnl0Q0d4d1ZoNW9hNVIrREgyeUVw?=
 =?utf-8?Q?1exOv4Rn3rya2?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dGs2Y3pBWnZSNHhZWnhUUWJ4UHErSDNwU0tSR1kvMEdmdmx4TkUzNnF6aUh2?=
 =?utf-8?B?M0tYYUdudUxoNjJYVGh0cmNWdmZYdis2a0cyOW1TTXNaWE5ZWGNVaXJ6ZjZQ?=
 =?utf-8?B?cUlrYnhCcTVCc2JWdUNXaVNkYW1XVlVvRy9QOEY4WXJxdXBNV3IrN3BjWHcw?=
 =?utf-8?B?UXg5T1EwZFRlLzZlTGNob01EbUVURG5JQTNsamQxaGt1dTQ3T0Zkbzh1SmEw?=
 =?utf-8?B?UUp1TE1ZNS92Zi9uY1B4TnZMZDl6ODJScVpYTjlObTl2bTk4SWNVNDBOTDBk?=
 =?utf-8?B?RXFpeHVKdUw5azgxdnZxS01xQmVyWUJLeWExaXRmbm1xVCtrNW9mRXVxQzIw?=
 =?utf-8?B?OUJZTEpwRWs2KzVnSDNJMG1VSmZsMGZjdTRqQm56eGw1b0NxK2E1SEoxWG9r?=
 =?utf-8?B?ZzRvNGh0ZGJGdFF4VW9RbHZGckNINHo5dDFmRERlM1V6ZTJ1Q2lUbDlWVFZy?=
 =?utf-8?B?UWR3VWpPTDM4bGxLcmI5RTJSVmdLY3dWb3N0UXJvY1VOaVhZbW5SQk0wOEUz?=
 =?utf-8?B?ZDlGZ0ZYSlJKUlE2UXlvckgrY1d0VElJb2N5YlZvangxUzRWSU5tTnNsNW1T?=
 =?utf-8?B?bnMrSzMzOEgrVm05RWFvYnBlVzh4RkxtWmpmbm0zeTg1SFNET2N2aGhIVytu?=
 =?utf-8?B?cmcra3hWZWE5KzMzOVQwSjZLNk84REhsTlRiT0xWdXhyOWZ4Q2ZjYTMyTmx1?=
 =?utf-8?B?T2d1ZTFpRHVkSDRnNXNGajNZMHpuYjAzUjlmTk5TcDBzVWt0MnB0d0k4QVY2?=
 =?utf-8?B?Z0ZIbGhkZ0djeUlmMDZCSzNmUGkwdUJtVS9iVUtYMkVIWUU0NUVtUWtQSlNi?=
 =?utf-8?B?SkQvRDJsdG5PNTNoeFk5cDV0Vk5MdWxtOVRMcjVRUXNtNnhnRVpqVldEcnIz?=
 =?utf-8?B?SDlIbnQxelVoMmhaSWpjWk1MUml6RXBZdDFoUUpWUWhHSHlydTdnY3h4eGRo?=
 =?utf-8?B?a1BKOHVmYkR6Tzl2R0J4VHI2RUo0Y0RiV0dTZXJmeWVNRmFuN2Y5eTcvSnlG?=
 =?utf-8?B?VXBsSlg5c2tMQ1N6QTFSdkQ2bGszYnNsbElMYnB2dWQ4ZkloQmphMS9QUURN?=
 =?utf-8?B?Z2ZOSW53Rm9jMC9IQkJrSC93VkQ4QW5TWXdwWUdDWWdYK1NSK0g2YW9ndFYy?=
 =?utf-8?B?S1lkMS9aeFBFdWFwRDN6UlNXRnNmOUJtaEpPVUU3UXZHWEFxZXJuNjcyQkho?=
 =?utf-8?B?ZEMwLzhIQ3dUQUt5TGFoS0pkV2d4ZnRzbm5BcFdaaW9maExYV3I5V2h3amRV?=
 =?utf-8?B?S3NpWGJEczM4MjhoaFJXWG5HNWJsUHdwUzJCL2ZsaUVSYUlaSUdlNjJEQlpP?=
 =?utf-8?B?dGdKR2FvcjNUSEtINHpvU1NXc001TStxbmsxOUF6ck03UDQ4TkJuWGFidUNh?=
 =?utf-8?B?NWNKVzV6NHBCbnVJTHA3YVJrbzhUTDNQeWRRbHMxakl1TlEyMHZEdXpoM0N4?=
 =?utf-8?B?ckZzL2dyNU0xTk0xTUNLaFl2MFVHZko1dlZMd0EwQmo3QWdsU3BaR2l0NXlL?=
 =?utf-8?B?UkZNZVFiMjNRdnNoTW0yVkhFcnY2THZ4ZTNlTmt1SkZ2dndDRTNhZTNwMEpo?=
 =?utf-8?B?MnhiY1p6SVQxNTRvSXlIVTlud2VQV2lCNUJTeEZEODNuK2NDTjExTVdxWUp4?=
 =?utf-8?B?Z3BYWTJFQkQxTUVBZi8xQjBSdk1lbkt2NXJNYlRDaWZOUzJlbTNuS2p2bGJq?=
 =?utf-8?B?d1JFZ2ZNV0J0N0Y1Uys0NS9POUlqRExFTm9uR2hadkg3VkNOUnZlZm1Xc3hP?=
 =?utf-8?B?VmxGQ04zWXlWSEFpSWplbUdYa2VRVFRoYWl1M2hvSzBXSkFZN2NzMElmOS9r?=
 =?utf-8?B?YXBRdERtM3A2VFM0bWEzRUlWQmREQVl3ei9nZzhQL1M4WWduRmhING5BZWs0?=
 =?utf-8?B?ZGxmR29mN00zUlBhb0pOVzdQdFM4enlYekI0YmFRSkJ6bFprelFQK2t3TDdT?=
 =?utf-8?B?MkZaVUkwVGRCK1JwUzhRUjJlMHp2TVhBSzdVZUhHY2dGREpzVjVwQjQ5Mi9O?=
 =?utf-8?B?MU1DS2JnRFI1M0Y4eExWczFDa09xK2xkWlZENm1GQ1pZVk8wNVpuZFIvZVFM?=
 =?utf-8?B?QnI3WTd5NVlmK1d3eVlNdEMwN1huaHdiM0tDUE8zWFlSYkNzQTZBTXdSYll6?=
 =?utf-8?Q?CkCAc7WJpDqonUa3xud8fjpoU?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 111006fa-a06a-4e02-1743-08dd356b1972
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2025 13:47:06.4283
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bD1cDXfB1XBW9xvuuwOIe8Nh4CQZKtu0/cQNHPz1tLyzDS4fjt2VBkNHqOIK4Xzi
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB5740
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4D24944126
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.93.56:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.93.56:from];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: EZHRZ3YNWGY5E7IYBNUHQKL2ME27CW6J
X-Message-ID-Hash: EZHRZ3YNWGY5E7IYBNUHQKL2ME27CW6J
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Xu Yilun <yilun.xu@linux.intel.com>, Christoph Hellwig <hch@lst.de>, Leon Romanovsky <leonro@nvidia.com>, kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, aik@amd.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EZHRZ3YNWGY5E7IYBNUHQKL2ME27CW6J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

RXhwbGljaXRseSByZXBseWluZyBhcyB0ZXh0IG1haWwgb25jZSBtb3JlLg0KDQpJIGp1c3QgbG92
ZSB0aGUgQU1EIG1haWxzIHNlcnZlcnMgOigNCg0KQ2hyaXN0aWFuLg0KDQpBbSAxNS4wMS4yNSB1
bSAxNDo0NSBzY2hyaWViIENocmlzdGlhbiBLw7ZuaWc6DQo+IEFtIDE1LjAxLjI1IHVtIDE0OjM4
IHNjaHJpZWIgSmFzb24gR3VudGhvcnBlOg0KPj4gT24gV2VkLCBKYW4gMTUsIDIwMjUgYXQgMTA6
Mzg6MDBBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+PiBBbSAxMC4wMS4yNSB1
bSAyMTo1NCBzY2hyaWViIEphc29uIEd1bnRob3JwZToNCj4+Pj4gW1NOSVBdDQo+Pj4+Pj4gSSBk
b24ndCBmdWxseSB1bmRlcnN0YW5kIHlvdXIgdXNlIGNhc2UsIGJ1dCBJIHRoaW5rIGl0J3MgcXVp
dGUgbGlrZWx5DQo+Pj4+Pj4gdGhhdCB3ZSBhbHJlYWR5IGhhdmUgdGhhdCB3b3JraW5nLg0KPj4+
PiBJbiBJbnRlbCBDQyBzeXN0ZW1zIHlvdSBjYW5ub3QgbW1hcCBzZWN1cmUgbWVtb3J5IG9yIHRo
ZSBzeXN0ZW0gd2lsbA0KPj4+PiB0YWtlIGEgbWFjaGluZSBjaGVjay4NCj4+Pj4NCj4+Pj4gWW91
IGhhdmUgdG8gY29udmV5IHNlY3VyZSBtZW1vcnkgaW5zaWRlIGEgRkQgZW50aXJlbHkgd2l0aGlu
IHRoZQ0KPj4+PiBrZXJuZWwgc28gdGhhdCBvbmx5IGFuIGltcG9ydGVyIHRoYXQgdW5kZXJzdGFu
ZHMgaG93IHRvIGhhbmRsZSBzZWN1cmUNCj4+Pj4gbWVtb3J5IChzdWNoIGFzIEtWTSkgaXMgdXNp
bmcgaXQgdG8gYXZvaWQgbWFjaGluZSBjaGVja2luZy4NCj4+Pj4NCj4+Pj4gVGhlIHBhdGNoIHNl
cmllcyBoZXJlIHNob3VsZCBiZSB0aG91Z2h0IG9mIGFzIHRoZSBmaXJzdCBwYXJ0IG9mIHRoaXMs
DQo+Pj4+IGFsbG93aW5nIFBGTnMgdG8gZmxvdyB3aXRob3V0IFZNQXMuIElNSE8gdGhlIHNlY29u
ZCBwYXJ0IG9mIHByZXZlbnRpbmcNCj4+Pj4gbWFjaGluZSBjaGVja3MgaXMgbm90IGNvbXBsZXRl
Lg0KPj4+Pg0KPj4+PiBJbiB0aGUgYXBwcm9hY2ggSSBoYXZlIGJlZW4gdGFsa2luZyBhYm91dCB0
aGUgc2VjdXJlIG1lbW9yeSB3b3VsZCBiZQ0KPj4+PiByZXByZXNlbnRlZCBieSBhIHAycF9wcm92
aWRlciBzdHJ1Y3R1cmUgdGhhdCBpcyBpbmNvbXBhdGlibGUgd2l0aA0KPj4+PiBldmVyeXRoaW5n
IGVsc2UuIEZvciBpbnN0YW5jZSBpbXBvcnRlcnMgdGhhdCBjYW4gb25seSBkbyBETUEgd291bGQN
Cj4+Pj4gc2ltcGx5IGNsZWFubHkgZmFpbCB3aGVuIHByZXNlbnRlZCB3aXRoIHRoaXMgbWVtb3J5
Lg0KPj4+IFRoYXQncyBhIHJhdGhlciBpbnRlcmVzdGluZyB1c2UgY2FzZSwgYnV0IG5vdCBzb21l
dGhpbmcgSSBjb25zaWRlciBmaXR0aW5nDQo+Pj4gZm9yIHRoZSBETUEtYnVmIGludGVyZmFjZS4N
Cj4+IFRvIHJlY2FzdCB0aGUgcHJvYmxlbSBzdGF0ZW1lbnQsIGl0IGlzIGJhc2ljYWxseSB0aGUg
c2FtZSBhcyB5b3VyDQo+PiBkZXZpY2UgcHJpdmF0ZSBpbnRlcmNvbm5lY3RzLiBUaGVyZSBhcmUg
Y2VydGFpbiBkZXZpY2VzIHRoYXQNCj4+IHVuZGVyc3RhbmQgaG93IHRvIHVzZSB0aGlzIG1lbW9y
eSwgYW5kIGlmIHRoZXkgd29yayB0b2dldGhlciB0aGV5IGNhbg0KPj4gYWNjZXNzIGl0Lg0KPj4g
ICANCj4+PiBTZWUgRE1BLWJ1ZiBpbiBtZWFudCB0byBiZSB1c2VkIGJldHdlZW4gZHJpdmVycyB0
byBhbGxvdyBETUEgYWNjZXNzIG9uDQo+Pj4gc2hhcmVkIGJ1ZmZlcnMuDQo+PiBUaGV5IGFyZSBz
aGFyZWQsIGp1c3Qgbm90IHdpdGggZXZlcnlvbmUgOikNCj4+ICAgDQo+Pj4gV2hhdCB5b3UgdHJ5
IHRvIGRvIGhlcmUgaW5zdGVhZCBpcyB0byBnaXZlIG1lbW9yeSBpbiB0aGUgZm9ybSBvZiBhIGZp
bGUNCj4+PiBkZXNjcmlwdG9yIHRvIGEgY2xpZW50IFZNIHRvIGRvIHRoaW5ncyBsaWtlIENQVSBt
YXBwaW5nIGFuZCBnaXZpbmcgaXQgdG8NCj4+PiBkcml2ZXJzIHRvIGRvIERNQSBldGMuLi4NCj4+
IEhvdyBpcyB0aGlzIHBhcmFncmFwaCBkaWZmZXJlbnQgZnJvbSB0aGUgZmlyc3Q/IEl0IGlzIGEg
c2hhcmVkIGJ1ZmZlcg0KPj4gdGhhdCB3ZSB3YW50IHJlYWwgRE1BIGFuZCBDUFUgIkRNQSIgYWNj
ZXNzIHRvLiBJdCBpcyAicHJpdmF0ZSIgc28NCj4+IHRoaW5ncyB0aGF0IGRvbid0IHVuZGVyc3Rh
bmQgdGhlIGludGVyY29ubmVjdCBydWxlcyBjYW5ub3QgYWNjZXNzIGl0Lg0KPg0KPiBZZWFoLCBi
dXQgaXQncyBwcml2YXRlIHRvIHRoZSBleHBvcnRlci4gQW5kIGEgdmVyeSBmdW5kYW1lbnRhbCBy
dWxlIG9mIA0KPiBETUEtYnVmIGlzIHRoYXQgdGhlIGV4cG9ydGVyIGlzIHRoZSBvbmUgaW4gY29u
dHJvbCBvZiB0aGluZ3MuDQo+DQo+IFNvIGZvciBleGFtcGxlIGl0IGlzIGlsbGVnYWwgZm9yIGFu
IGltcG9ydGVyIHRvIHNldHVwIENQVSBtYXBwaW5ncyB0byANCj4gYSBidWZmZXIuIFRoYXQncyB3
aHkgd2UgaGF2ZSBkbWFfYnVmX21tYXAoKSB3aGljaCByZWRpcmVjdHMgbW1hcCgpIA0KPiByZXF1
ZXN0cyBmcm9tIHRoZSBpbXBvcnRlciB0byB0aGUgZXhwb3J0ZXIuDQo+DQo+IEluIHlvdXIgdXNl
IGNhc2UgaGVyZSB0aGUgaW1wb3J0ZXIgd2FudHMgdG8gYmUgaW4gY29udHJvbCBhbmQgZG8gDQo+
IHRoaW5ncyBsaWtlIGJvdGggQ1BVIGFzIHdlbGwgYXMgRE1BIG1hcHBpbmdzLg0KPg0KPiBBcyBm
YXIgYXMgSSBjYW4gc2VlIHRoYXQgaXMgcmVhbGx5IG5vdCBhbiB1c2UgY2FzZSB3aGljaCBmaXRz
IERNQS1idWYgDQo+IGluIGFueSB3YXkuDQo+DQo+Pj4gVGhhdCBzb3VuZHMgbW9yZSBzb21ldGhp
bmcgZm9yIHRoZSBURUUgZHJpdmVyIGluc3RlYWQgb2YgYW55dGhpbmcgRE1BLWJ1Zg0KPj4+IHNo
b3VsZCBiZSBkZWFsaW5nIHdpdGguDQo+PiBIYXMgbm90aGluZyB0byBkbyB3aXRoIFRFRS4NCj4N
Cj4gV2h5Pw0KPg0KPiBSZWdhcmRzLA0KPiBDaHJpc3RpYW4uDQo+DQo+PiBKYXNvbg0KPg0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
