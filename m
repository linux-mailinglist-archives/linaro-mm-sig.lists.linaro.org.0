Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 657DEC8F1E4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Nov 2025 16:08:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D2B13F8F4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Nov 2025 15:08:57 +0000 (UTC)
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012046.outbound.protection.outlook.com [40.107.200.46])
	by lists.linaro.org (Postfix) with ESMTPS id B63C53F76E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Nov 2025 15:08:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=PZtKBZ3p;
	spf=pass (lists.linaro.org: domain of Felix.Kuehling@amd.com designates 40.107.200.46 as permitted sender) smtp.mailfrom=Felix.Kuehling@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JXIcntSNrjNe81ev9Jjw0oGa3eoKFkPZGkzewEcNGhXLmLYe7vjFNpxKtVEBsTuprKD5drpSIl64U8Gg0S2hIVCp61dh0fzf37zJKJAQDvVcD38K/3FI6pNuD0nTCXOoIgj3OEyzt3o8jx+OIQpluQ3keuK+cJoy7A6OUJY71TM/8ufkU0xOhuWIGpM9LRFVSDTSN4uJUvt10NohLBMf/7HRdaorokkp44pepBs1gl75burRznSgcvJaeC9Za5UMvHTamgp4WQBikAVq90VMLM47dasB+wvWuVu/9zQkOeGO8FZfUm6NpcQJH+UDfYB+fA7pfuMer7PDMBdoc/X6Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o5b3uqVnF9AmscE8k7b8pS6zDo6TLatoGpyElX3gR88=;
 b=klZB+bzNjD5u8bfy72SnkpPhEEJbpGS9qmmnD+qbkEb+pLr6LuRsJS43bPeGS1i8z4HBOtgUBx5OgDOURCx6+FJEvfhGASQHt9UymwwuZqc8mOOY+MmN5lXCABERFX0PS4WKqKb4gBuRQ6et52bWYtJCQpGFvfqGx82XQBeI/g6YMm6SXWPJ/smRJaCcbY9B62rexaTxRRbDy7iHBtZu7TAqB76T2fO2SFZyWJbuN3AZQPGPjbD5yn16VJhY59b89fVAEt79Wm4KHe0b1qydTuorP4zWpUx92OWthqoeEZfO7Bk2HEWRQ7FA08R+rM6oKqKs6VLa4RbjDIEge5NhgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o5b3uqVnF9AmscE8k7b8pS6zDo6TLatoGpyElX3gR88=;
 b=PZtKBZ3pgyjkmjh9ds5KvKcddOOSxWi7D/kLVQRQPQaBM0yTyJ0vPgeIb8MEACPH1TUPndLT4LDy9ZZsfCSNf+yq010y6wB+GvFjH37WfEljum91HztOBkgr386fHM9oJIC1DexXD+EqQg/p92QCCMeVd/uKNefcJ2MlBonUKtg=
Received: from BN9PR12MB5115.namprd12.prod.outlook.com (2603:10b6:408:118::14)
 by DM6PR12MB4235.namprd12.prod.outlook.com (2603:10b6:5:220::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.14; Thu, 27 Nov
 2025 15:08:38 +0000
Received: from BN9PR12MB5115.namprd12.prod.outlook.com
 ([fe80::9269:317f:e85:cf81]) by BN9PR12MB5115.namprd12.prod.outlook.com
 ([fe80::9269:317f:e85:cf81%6]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 15:08:38 +0000
Message-ID: <39263b3b-3574-43ae-aec1-73fe39e29f10@amd.com>
Date: Thu, 27 Nov 2025 10:08:36 -0500
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 phasta@kernel.org, Sumit Semwal <sumit.semwal@linaro.org>,
 Gustavo Padovan <gustavo@padovan.org>,
 Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
References: <20251126131914.149445-2-phasta@kernel.org>
 <20251126131914.149445-4-phasta@kernel.org>
 <cef83fed-5994-4c77-962c-9c7aac9f7306@amd.com>
 <d46f753e660694ab46c65409a5e43f050b7eb2d9.camel@mailbox.org>
 <b1c3dd51-1ba9-4036-b964-8e9f4350bbee@amd.com>
Content-Language: en-US
From: "Kuehling, Felix" <felix.kuehling@amd.com>
In-Reply-To: <b1c3dd51-1ba9-4036-b964-8e9f4350bbee@amd.com>
X-ClientProxiedBy: BL1PR13CA0202.namprd13.prod.outlook.com
 (2603:10b6:208:2be::27) To BN9PR12MB5115.namprd12.prod.outlook.com
 (2603:10b6:408:118::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR12MB5115:EE_|DM6PR12MB4235:EE_
X-MS-Office365-Filtering-Correlation-Id: 68d61620-32c3-4d1d-71b0-08de2dc6d7cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|7416014|366016|1800799024|921020|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?enhkSFI4ZGw3aUtZdys1eXlhRTRDcnozN2NuLzZqLzU3QkNNTTFnbTl1bUNL?=
 =?utf-8?B?bkp3eC9lNVlZN1dVZVJWSG9ucXl3bWVFQjFCRlJ5aW5DazMvOVB6S3JaOGtW?=
 =?utf-8?B?ODIvMlcxVGFNTEpZRFRYM25QK1hIUGFQQTBOaFRrdjQ3S2tqMy9lSFY1L3gy?=
 =?utf-8?B?UWFZLzVtUHdlbEZ0M21vcmdhcFJic0pNT3dPOU5odHVHNzhrcFJOQVlxZTRJ?=
 =?utf-8?B?Vm9kaXZaUUs4VHRYZlYrdVk0dGp3WGcwcmdmMGU3bUdoaVdPb1BiclI2S3BB?=
 =?utf-8?B?OENNNytjQ2Rwc1grVHRtYVdWazgwK3FZU3JmRHl6WkZVOTgyamZJMlRRbDl2?=
 =?utf-8?B?QUs3L2drMC9XUVNZQm9GWTU0b0xMVzRmQktpQThRSERKcHRTZVFXNFdHejVp?=
 =?utf-8?B?M3J5Y1BpY0JDaFpwVmY3SU1xNDE2Zm9GLytQa0tEM1FlUnNiLzJlczYreGpE?=
 =?utf-8?B?c0FQMkoxRXBjYjJ2R3llM2tqUVdJZm8rTytjMWlEVkxYZlF4RTA4UnRqWXhp?=
 =?utf-8?B?MUpTWlVMTFg4bXFoQUZSanpzSEV4QTVGc3NrWFdhZ05iYWxOeExuZlJPNngr?=
 =?utf-8?B?a3dkUDJPWDBKT2lxbHYwMkJDTVN4OWRsTGxWenpPaTdYY1VSN0p6ejZWem42?=
 =?utf-8?B?UHZVekNQaGgwb2xiSmtUQU5UeVBoQ211WWx3UXdqaFYzUTg1dFdEUVNXd0xT?=
 =?utf-8?B?SUdlNWc1Z0Z4SDlJVEcyWWU3K20xVHpRQlREdFRjQm05RnZ3cmFRcXJHQTFO?=
 =?utf-8?B?QjVCd1dyOHUwOTRlYm90b2xSVFJkekFFWXEwR1BGTDg2YnZMM0IwZTgvQXdj?=
 =?utf-8?B?ejV0MUFVa3cwdHB1V0ppREhBUnhBektnRXJ0OENJNFh6QWNFSXc5SlQ0dUhh?=
 =?utf-8?B?QjlnQlVzeDJsR0RqeEJXTis3SnVabCtjTGh0OVpUcEdyQ0hCLy9jcWI3NjdC?=
 =?utf-8?B?OHY4cTkzMWoxKzcyOGhuVWRjWHJEVWtacnVTUng0eHl5aVpFamFNa09NQ3p5?=
 =?utf-8?B?VEdyeno0SFIrRW9oSmYvVTRhWVBmNlNIamFKcXFlb0lBcGhKUGZ6RmVudmI4?=
 =?utf-8?B?RE5hVUNFT2U2SEc4MnpvSDZNTTk5ait6MG81T3dCeFVHQlFrZ1Y1Y0RKMy9K?=
 =?utf-8?B?QVFLbFFEK0wxMHVNNTE3elR4b3pkMWdtMVQxbDltVFhGb3Q4cFlJWWEvajhv?=
 =?utf-8?B?amhvMFVHcUJ1Rjhkek81RVd1VTAzeFY2cEpSaDdacm1xbnQvMEdGYkY3d1hm?=
 =?utf-8?B?OFdMZGNBMDliVFBJNGNreVhCMmNTNHo3Qjl0ZlZlOU9talV6Q3BSQXBNVWVq?=
 =?utf-8?B?dEFoV2VTY2MwbTh4SS8xdXFMSE03WFV6eUR3VXdpUXlFTUlOYnkzTWhUMWly?=
 =?utf-8?B?OTZ0bitFOXhZY0VTRjlFendVeVM2V3FrYjZzMnlTWTNtNVN2c2dHd3RvMHpV?=
 =?utf-8?B?WkF0QWtXSTZhWjhnaU0rVkZMdGhHRXR6Y3ByZkpSUzVWTXYrSDkzMFl0UDJq?=
 =?utf-8?B?a0Y2czFGOUY1UkUwa3UyUDhmR2NKQ1UzQzlJQWo5YTdZVVRJWVhRcWs0eVNO?=
 =?utf-8?B?cnl2dzlvOVdQRFY0TERDQW44N2Q1VDdVc2ZSV1Qyd25nUzFlZWZ6Rndnc3Bx?=
 =?utf-8?B?ejZWUG1HR25IcW55d2phM0xic1p0bmZDQjh3bU9rS1cxOUIreFd6SmlyQTNU?=
 =?utf-8?B?TFNrVmRkVVJOL3FnUTlqem9nMDJoeXlBcU5aNUVrRkU4eUpBQXllVHVseitM?=
 =?utf-8?B?ZGhERmNoN2t1cVBzcDZnMW9Mb1p1aUdzRHliSnFSRlhCL1VhaXhGVGxPdERU?=
 =?utf-8?B?UFl1aHVTQ2FqblhPc3YwRnIxc2RScXJmaDNnWnhGSFo2RUpDby83MG40Tmxi?=
 =?utf-8?B?RVFaYThDdHVSQ0RyL0s3SVVOUWsvak0yeSt4SlF0NmdkTlErZmFLUE0yQWg3?=
 =?utf-8?B?TUFwaHZqNGlEcC9nWXNSaGo5Y0dOMXNLRjRHa1dGdCtPdm0yK0JIYTdpZ1Z1?=
 =?utf-8?B?YjdNdkhFVVVnT2lpN0N5WXM0RkdtY0hGSFJMNWs4VmhjTVc2eHU2Qkh6RnJV?=
 =?utf-8?Q?bCIIxW?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR12MB5115.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024)(921020)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?blBRUXNSZVhjeElTWFZSK3R3ZE9sblhSYkEvWUdhWGhoYUdWUlJRS0JWWVFY?=
 =?utf-8?B?blRSblZSUkFiRjlFVnBvVlB5aFAxZUZTd1R6TEc1WWZCemVVS242ZEI5SlhR?=
 =?utf-8?B?am1DTjFqSElRWis5SVhKY3RnTTF4V1RLcXZXVmN4eWpzTGlHTmtRMm02OEpW?=
 =?utf-8?B?ajJvSjlEaDNvaVZXLzJ0MnFRbHE5bDFCNEJJd3oya2QvbjFRbFJ5NngvS216?=
 =?utf-8?B?QkoxZWhqdUpVRTZlU1NxYjBHTnIwV3dzamZxbTRWeStrZ1JWTXVQTFc3cloz?=
 =?utf-8?B?MzBFc1hpL0pndXlLd1VYcEFPem9Kalc3K0VDU3R1NFVkcWhuTDRmMmdodndB?=
 =?utf-8?B?WGRjeHByTEVHbEtRelVEdjNnYTliM2hqRGNTNG5VczQ1NjFud2ZBTFV5TkJM?=
 =?utf-8?B?WjFlMytlemRtV09lbnNib3kxeDhJVytqdVhuODBOYTNDcXFETmdCc2kxY3JR?=
 =?utf-8?B?bjl3aFVWY3k3YTg2T3ZySVZZR1lFcm0zRUF6alV5TVdzbXdGeW5sWWRZSjdj?=
 =?utf-8?B?YXZNYzZnS3RvUkV1L2ttVVZDZW1YcldaOTRHNGhiTHhteHRTcC82TFA2TWNS?=
 =?utf-8?B?NFMzSHgvdUhGc1BMVXpwQm00N3hVekdWZk5pbU5qaUc2emZubFVqeVpIOXBp?=
 =?utf-8?B?Z3Y5MkJGeTZ5b0lnWjgrV2picEsrQXJTa25KM2k1TjJDeEVoVmc0d3lmRkUr?=
 =?utf-8?B?OHlPSloxSFVsc2J1UTdld3JlRWhjZ3Foa1RXSDUxTzZ4K21GSnB2NElWMDlZ?=
 =?utf-8?B?dS9xVk1ZaUs2azh3R01TcGY0YlpGdmE2Nzc2L3lneklPanBvUlFobENrUFJ2?=
 =?utf-8?B?S3RqRE5HKzV3eGk5Y0x3Yi80V29vOHFWTktlbGNWb3FwaDVVMk9NYmorVHFB?=
 =?utf-8?B?cGRZd1E1RmZUcXkzblY1YXVsQ1BxV2tBRzZ1QkNSZjV0YmYxbUNVbk5iK2tF?=
 =?utf-8?B?cG4vSURrL2pheFc0QzcwNE9sM1hnWWw2NFhYbUZWNUx3ajg3TThnSTdzVDcr?=
 =?utf-8?B?RUhlOGhQcnpzZ3VIRG9wcUlvSVQrL21rN3pHVTIrR3J3ZVZTWmsxMHpuSm9Y?=
 =?utf-8?B?L3U0bldoMUhKMDNGMGhSTmU5S2lhSk1aL3l6Z3JYUC9FTFdMVDlVODl4dTdU?=
 =?utf-8?B?bk9Vb3loN2xRN3o0eDBFZ004ODBXSWpCNEZSME5vbFlBZlVDWkt1Wmo0Tkpr?=
 =?utf-8?B?L0hMWjR2WU0zNHNxYUU0YnAwdk5lNUtMbzdwSlVWb0huNVBYbkVTcCtGQ1Jo?=
 =?utf-8?B?UHBxTnJUZUJXUmszbW1BS3A3N3FDNk10OUJUbnNWVndHUEZMS0lxZXpJUU9P?=
 =?utf-8?B?WlFuZDF2M09JcElmYkpsZGFtSGhwcmdnOXNDVDlRYmdZb3NydzNpRU84YW9n?=
 =?utf-8?B?bTVYeHhJUHVRMURXK1dxemJMakZIQ01kK2dyZjk0MC9IdVlFMnMvWmZ4UlF2?=
 =?utf-8?B?SEs1ZkdPSXhjWTVHZHByYlU2NVJRQ011OW1qUGF4Y2c3TXhPdm56Y0hhRXgx?=
 =?utf-8?B?c3lGbzBPWUlYUkZyYmFkSi85bmV3dW5CeVU2VkRxb1BFVU5RMFNiekozOXl6?=
 =?utf-8?B?dkZmQ2VYYlQ1TFhKSVVPQ2hkQUJOTVh1NzYyZXlaQzBYVGxSdk5yamxlZjB3?=
 =?utf-8?B?aC9YNmtiZHJGOWFLbFVPTEN4amRsS3ZXc2VabzdsWmc5MnRzZWdQNElPbW9p?=
 =?utf-8?B?bkRKRDIvYlFvY25TaUhEUWVnZGpRZTBmaFFSdTFuanpVVGZSbVZqaDdubjNK?=
 =?utf-8?B?SUt4OXNza3d6M1NDUjZBVGFvb2ZsL2VBSlRseG5EazErZWl1VmU5L1lRSStr?=
 =?utf-8?B?THRYY0t0RWp5Ty9mMFN5Tk5NbW1ySFdxMml0OG1QNGhta3dnaDNBb1QzVUhv?=
 =?utf-8?B?YnkyVkU5dTdmdW9PT2M2K1VTRXJuMURpK0VGUnVlR0VzUU9YeG40LzE1eGI1?=
 =?utf-8?B?R1E5bm5RSmxYMlJIMllXWGpkZDdvd2JLQkEreTFKRDdyTXJCUlBVdFVPNk44?=
 =?utf-8?B?K28rWGJDaEF4NHFQTVlxdXFlRWV1OHNINXkyQzBpeDhuR2l0ekdqZURYditq?=
 =?utf-8?B?Yi9RTHVuZDl3TG5UcWthKy9QN21FZ1A0VjBJRXczSGpOdHZrN2dDdmREa01F?=
 =?utf-8?Q?rhvfxh5dXMKEHx1pfQ0tcOFZx?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68d61620-32c3-4d1d-71b0-08de2dc6d7cf
X-MS-Exchange-CrossTenant-AuthSource: BN9PR12MB5115.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 15:08:38.2160
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vp4E19JwYYC4uA8NhwobfiZhnX1yKGl5/BPkfOkwGrt2eqGMjf1xlE6CfbynG6mSpcQIJBADsiCT7UJU0vm9rw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4235
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	BLOCKLISTDE_FAIL(0.00)[2603:10b6:408:118::14:server fail,40.107.200.46:server fail];
	RCPT_COUNT_TWELVE(0.00)[27];
	FREEMAIL_TO(0.00)[amd.com,kernel.org,linaro.org,padovan.org,gmail.com,ffwll.ch,linux.intel.com,intel.com,ursulin.net,suse.de];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.200.46:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B63C53F76E
X-Spamd-Bar: -----
Message-ID-Hash: 5AVE6TUYLGMH5XIL7KFHPPZYSUPBCJC5
X-Message-ID-Hash: 5AVE6TUYLGMH5XIL7KFHPPZYSUPBCJC5
X-MailFrom: Felix.Kuehling@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, rust-for-linux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/6] amd/amdkfd: Ignore return code of dma_fence_signal()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5AVE6TUYLGMH5XIL7KFHPPZYSUPBCJC5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyNS0xMS0yNyAwNDo1NSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gT24gMTEvMjcv
MjUgMTA6NDgsIFBoaWxpcHAgU3Rhbm5lciB3cm90ZToNCj4+IE9uIFdlZCwgMjAyNS0xMS0yNiBh
dCAxNjoyNCAtMDUwMCwgS3VlaGxpbmcsIEZlbGl4IHdyb3RlOg0KPj4+IE9uIDIwMjUtMTEtMjYg
MDg6MTksIFBoaWxpcHAgU3Rhbm5lciB3cm90ZToNCj4+Pj4gVGhlIHJldHVybiBjb2RlIG9mIGRt
YV9mZW5jZV9zaWduYWwoKSBpcyBub3QgcmVhbGx5IHVzZWZ1bCBhcyB0aGVyZSBpcw0KPj4+PiBu
b3RoaW5nIHJlYXNvbmFibGUgdG8gZG8gaWYgYSBmZW5jZSB3YXMgYWxyZWFkeSBzaWduYWxlZC4g
VGhhdCByZXR1cm4NCj4+Pj4gY29kZSBzaGFsbCBiZSByZW1vdmVkIGZyb20gdGhlIGtlcm5lbC4N
Cj4+Pj4NCj4+Pj4gSWdub3JlIGRtYV9mZW5jZV9zaWduYWwoKSdzIHJldHVybiBjb2RlLg0KPj4+
IEkgdGhpbmsgdGhpcyBpcyBub3QgY29ycmVjdC4gTG9va2luZyBhdCB0aGUgY29tbWVudCBpbg0K
Pj4+IGV2aWN0X3Byb2Nlc3Nfd29ya2VyLCB3ZSB1c2UgdGhlIHJldHVybiB2YWx1ZSB0byBkZWNp
ZGUgYSByYWNlDQo+Pj4gY29uZGl0aW9ucyB3aGVyZSBtdWx0aXBsZSB0aHJlYWRzIGFyZSB0cnlp
bmcgdG8gc2lnbmFsIHRoZSBldmljdGlvbg0KPj4+IGZlbmNlLiBPbmx5IG9uZSBvZiB0aGVtIHNo
b3VsZCBzY2hlZHVsZSB0aGUgcmVzdG9yZSB3b3JrLiBBbmQgdGhlIG90aGVyDQo+Pj4gb25lcyBu
ZWVkIHRvIGluY3JlbWVudCB0aGUgcmVmZXJlbmNlIGNvdW50IHRvIGtlZXAgZXZpY3Rpb25zIGJh
bGFuY2VkLg0KPj4gVGhhbmsgeW91IGZvciBwb2ludGluZyB0aGF0IG91dC4gU2VlbXMgdGhlbiBh
bWRrZmQgaXMgdGhlIG9ubHkgdXNlciB3aG8NCj4+IGFjdHVhbGx5IHJlbGllcyBvbiB0aGUgZmVh
dHVyZS4gU2VlIGJlbG93DQo+Pg0KPj4+IFJlZ2FyZHMsDQo+Pj4gIMKgwqAgRmVsaXgNCj4+Pg0K
Pj4+DQo+Pj4+IFN1Z2dlc3RlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPg0KPj4+PiBTaWduZWQtb2ZmLWJ5OiBQaGlsaXBwIFN0YW5uZXIgPHBoYXN0YUBr
ZXJuZWwub3JnPg0KPj4+PiAtLS0NCj4+Pj4gIMKgIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2Zk
L2tmZF9wcm9jZXNzLmMgfCA1ICsrLS0tDQo+Pj4+ICDCoCAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPj4+Pg0KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRrZmQva2ZkX3Byb2Nlc3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1ka2ZkL2tmZF9wcm9jZXNzLmMNCj4+Pj4gaW5kZXggZGRmZTMwYzEzZTlkLi45NTBmYWZhNGIz
YzMgMTAwNjQ0DQo+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL2tmZF9wcm9j
ZXNzLmMNCj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRrZmQva2ZkX3Byb2Nlc3Mu
Yw0KPj4+PiBAQCAtMTk4Niw3ICsxOTg2LDYgQEAga2ZkX3Byb2Nlc3NfZ3B1aWRfZnJvbV9ub2Rl
KHN0cnVjdCBrZmRfcHJvY2VzcyAqcCwgc3RydWN0IGtmZF9ub2RlICpub2RlLA0KPj4+PiAgwqAg
c3RhdGljIGludCBzaWduYWxfZXZpY3Rpb25fZmVuY2Uoc3RydWN0IGtmZF9wcm9jZXNzICpwKQ0K
Pj4+PiAgwqAgew0KPj4+PiAgwqDCoAlzdHJ1Y3QgZG1hX2ZlbmNlICplZjsNCj4+Pj4gLQlpbnQg
cmV0Ow0KPj4+PiAgICANCj4+Pj4gIMKgwqAJcmN1X3JlYWRfbG9jaygpOw0KPj4+PiAgwqDCoAll
ZiA9IGRtYV9mZW5jZV9nZXRfcmN1X3NhZmUoJnAtPmVmKTsNCj4+Pj4gQEAgLTE5OTQsMTAgKzE5
OTMsMTAgQEAgc3RhdGljIGludCBzaWduYWxfZXZpY3Rpb25fZmVuY2Uoc3RydWN0IGtmZF9wcm9j
ZXNzICpwKQ0KPj4+PiAgwqDCoAlpZiAoIWVmKQ0KPj4+PiAgwqDCoAkJcmV0dXJuIC1FSU5WQUw7
DQo+Pj4+ICAgIA0KPj4+PiAtCXJldCA9IGRtYV9mZW5jZV9zaWduYWwoZWYpOw0KPj4+PiArCWRt
YV9mZW5jZV9zaWduYWwoZWYpOw0KPj4gVGhlIGlzc3VlIG5vdyBpcyB0aGF0IGRtYV9mZW5jZV9z
aWduYWwoKSdzIHJldHVybiBjb2RlIGlzIGFjdHVhbGx5IG5vbi0NCj4+IHJhY3ksIGJlY2F1c2Ug
Y2hlY2sgKyBiaXQtc2V0IGFyZSBwcm90ZWN0ZWQgYnkgbG9jay4NCj4+DQo+PiBDaHJpc3RpYW4n
cyBuZXcgc3BpbmxvY2sgc2VyaWVzIHdvdWxkIGFkZCBhIGxvY2sgZnVuY3Rpb24gZm9yIGZlbmNl
czoNCj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8yMDI1MTExMzE0NTMzMi4x
NjgwNS01LWNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbS8NCj4+DQo+Pg0KPj4gU28gSSBzdXBwb3Nl
IHRoaXMgc2hvdWxkIHdvcms6DQo+Pg0KPj4gZG1hX2ZlbmNlX2xvY2tfaXJxc2F2ZShlZiwgZmxh
Z3MpOw0KPj4gaWYgKGRtYV9mZW5jZV90ZXN0X3NpZ25hbGVkX2ZsYWcoZWYpKSB7DQo+PiAJZG1h
X2ZlbmNlX3VubG9ja19pcnFyZXN0b3JlKGVmLCBmbGFncyk7DQo+PiAJcmV0dXJuIHRydWU7DQo+
PiB9DQo+PiBkbWFfZmVuY2Vfc2lnbmFsX2xvY2tlZChlZik7DQo+PiBkbWFfZmVuY2VfdW5sb2Nr
X2lycXJlc3RvcmUoZWYsIGZsYWdzKTsNCj4+DQo+PiByZXR1cm4gZmFsc2U7DQo+Pg0KPj4NCj4+
ICsgc29tZSBjb3NtZXRpYyBhZGp1c3RtZW50cyBmb3IgdGhlIGJvb2xlYW4gb2YgY291cnNlLg0K
Pj4NCj4+DQo+PiBXb3VsZCB0aGF0IGZseSBhbmQgYmUgcmVhc29uYWJsZT8gQEZlbGl4LCBDaHJp
c3RpYW4uDQo+IEkgd2FzIGp1c3QgYWJvdXQgdG8gcmVwbHkgd2l0aCB0aGUgc2FtZSBpZGVhIHdo
ZW4geW91ciBtYWlsIGFycml2ZWQuDQoNCkkgYWdyZWUgYXMgd2VsbC4gVGhlIGltcG9ydGFudCBm
ZWF0dXJlIGlzIHRoYXQgd2UgbmVlZCB0byB0ZXN0IGFuZCANCnNpZ25hbCB0aGUgZmVuY2UgYXRv
bWljYWxseS4gSXQgbWF5IGV2ZW4gbWFrZSBzZW5zZSB0byBhZGQgYSBmdW5jdGlvbiANCmZvciB0
aGF0ICJkbWFfZmVuY2VfdGVzdF9hbmRfc2lnbmFsIiB0aGF0IHByZXNlcnZlcyB0aGUgb3JpZ2lu
YWwgDQpiZWhhdmlvdXIgb2YgZG1hX2ZlbmNlX3NpZ25hbC4gOykNCg0KUmVnYXJkcywNCiDCoCBG
ZWxpeA0KDQoNCj4NCj4gU28geWVzIGxvb2tzIHRvdGFsbHkgcmVhc29uYWJsZSB0byBtZS4NCj4N
Cj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFuLg0KPg0KPj4NCj4+IFAuDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
