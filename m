Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MECOEOyScGlyYgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 09:48:44 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF8F53D79
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 09:48:43 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B414F3F6FF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 08:48:42 +0000 (UTC)
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012028.outbound.protection.outlook.com [40.107.200.28])
	by lists.linaro.org (Postfix) with ESMTPS id A03EF3F6FF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 08:48:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=VtcpixmB;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.200.28 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jg/6lyhv4DDQZ9BiZ5OoimrNeZHUjNPl8GWvalusCc5VggR55lyamAQnr+FhYRQs4sCJJUQd6jkzj4RGajeyq32baz99vZ77mLRbcfytoV9ftBwnGH5WWKsZa3P7oNyJmnPls1+ySx5X+R14JBBRHAGfD5x6Yt7w5PjpufiX54GLhkPeX4vp2A0+ohosoero/qxcg42hu4wbSTSP2aEzw2Ej3W2FJDgkTaT6iEgKV4oL+l0JMhHI7dqak3tixGWpM+5zKR4smX+wwOHWh1iaj8ah+hghLN+WLNwN0SuSLm5G1wRue7YvqvM/s8FPvr5JXoYNgyl8rAb0iWGEm7SdLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fQLKMUdPfnyhWNlVyELNOQj9qo+oKpe2GXZ4AOt1su0=;
 b=l71xUQtfSLhH3ztpEuWmMGqPSGndDq1herP+EBNDNwBTT+sgfrPLgCO1LTnLuzL4VxudhapQ7elFajihpud6kRhqHB+EQpTwLeAlipB/yu6y7qHm8kvbu9dujiePSCZ/ZGDMGldW8t9Rm5g1CxkzvwnoDULRTyg4GXUSd0CmH8ns+QaaSqV2wCsJAj0TopWwmpXpIML+Ed/80zwEMhf6odvoJpZtItCofZErU6n1xSVcF0tYRepf/RzBwum83resjlzQIGrNFglrWpE2jvqCGW/e+vY1LZ43vZAEWtWe+NcGXhPnmQRJce/qtKYIUsPqjfIGZxvyrqyzIpO8CL14Eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fQLKMUdPfnyhWNlVyELNOQj9qo+oKpe2GXZ4AOt1su0=;
 b=VtcpixmBrGKOvdts5jFptVcNvX3otPRrnlWH47SLvMMMKTmYDZBUQKklqAyktlS9ZETAJgMSFYBal6dh71xZVUUmERnfKRG1rvjO/C8alYTwgGRcq673GkEyjqTi/q+VdoVUsly7lNEwUomNtOqjgaJKtCvWH0ru4r6Wz+CvMnw=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ0PR12MB6685.namprd12.prod.outlook.com (2603:10b6:a03:478::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 21 Jan
 2026 08:48:34 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 08:48:33 +0000
Message-ID: <4e5c0b99-bbc1-4785-bee8-52b82d696d59@amd.com>
Date: Wed, 21 Jan 2026 09:48:29 +0100
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tursulin@ursulin.net>, phasta@mailbox.org,
 matthew.brost@intel.com, sumit.semwal@linaro.org
References: <20260120105655.7134-1-christian.koenig@amd.com>
 <20260120105655.7134-6-christian.koenig@amd.com>
 <5de308d9-9ed9-4ae7-8b0e-1ec53282c5e9@ursulin.net>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <5de308d9-9ed9-4ae7-8b0e-1ec53282c5e9@ursulin.net>
X-ClientProxiedBy: FR4P281CA0040.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c7::20) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ0PR12MB6685:EE_
X-MS-Office365-Filtering-Correlation-Id: 289315fa-e32c-4c11-66a8-08de58c9dbfc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Z1dlWFJ1aG9LZW50djBZdE9ER1IycVNmam5LSWRVTHhxWTE0OEZRNnVUY0V6?=
 =?utf-8?B?eDVJZGZZejJudXU1ZjVqR1g4NXpFd01ZMDE4MnlDaXdVMlhqdFJpOGE1VWRD?=
 =?utf-8?B?ekU1dm8yRTRjVjZHUGVUcmcvNGliY25kc0ZIWi9tZ2ptWkZ0RDhqMXl3R21l?=
 =?utf-8?B?UWE5c2ZOdDZXWmViOU95ZDF4ODBEaVdER1hzN2RCTC9EeDNvc3c1V1JDcjkv?=
 =?utf-8?B?SmhMb2I5bGR2WFd6SzN0N2xUMXM1Um8wRW1OVVkxdUQ5VnozMUx2Yk8zZzNG?=
 =?utf-8?B?cCtSVlJIYSt2Wm1OVm9Ta0czMFhEQVM5aVFLVXhCUHNiTVN2RitNMlQ0RnV0?=
 =?utf-8?B?U0pYamRxeW1LYVFlRk9JemR5T0NnZ0kvWnlaS0ZyNWMxUk14WkxwMUJRN2sr?=
 =?utf-8?B?dXVkYTBBQWlOd0pjeVcxczZjbHJmQUJXelNIcFhvWVVQRlhNMko3WkcrSTh0?=
 =?utf-8?B?UGh3SnQ4bUExa0VLeE1nc0MvNHdKSzN1c3JkcU56Zk5vS3dmVU9NTStRRHlQ?=
 =?utf-8?B?R0J6YUtaNi85OG5GZ1VxYU1od1ovNmZMa09TbzVxdDMyYzNHd1lZb1Q4Mndp?=
 =?utf-8?B?QjZVS2FWaVFvZ1YrbVAraUhTZ0M2Q0V3UlZYV1ZkZjhENzFPdEVvd1ZhU3dB?=
 =?utf-8?B?UkpvMC9jbkdBZHFNQUdveVFYdGJyVnNhQlN2TzhPYzJXTWpRQXN6Wlo1QllR?=
 =?utf-8?B?TUV1RHJRck1Ba1Q2QkpuUUxaNUZNMmNESWRlYkwzckduUU55TlhleWpKR3Fs?=
 =?utf-8?B?M1Jqbk9PWm4wMUdYcmhHaGcvc1c4aVRKZktabEVjeUFuU2duczdJV3VzSUhk?=
 =?utf-8?B?MFB3ODJkYTdZNlVkcUJ6NmcvOWhUcGRBTlpKRkYwVXlZV2Q1TXMyWU1LZ2cz?=
 =?utf-8?B?VVdmMU14bkF0VTJ3WGUzZ0FuNmRDMDQzSjl4YjFQb09hZjEzNDFaZWFqZ05R?=
 =?utf-8?B?YjAxWStnbHdvamhiSnBCSWhxdVgxZ082MzlCU0ZpNmk0MXNWbFhTQTNWUWJp?=
 =?utf-8?B?OVlKRWErUzRyZzE4TmFxQVQwV1R3a0VUbDdicHpGOGg3ZWNWZzF3aE9jVWRV?=
 =?utf-8?B?UE9BR1ZVd1F6RjlrQWRtdm9WKzcyb3pGYitoaTBuZEFsQWRwVWgzenA1THcy?=
 =?utf-8?B?bnhJa1NmZUNnNXZGL3dTRFZHTmFGU1NjWE1ZLzBBMFQxRDdsZ2Q2MDF1QVNT?=
 =?utf-8?B?VlNhd0g2TUkzL21oZG01SmVMZks4T25LcE1NYTIvdlU1WVMyWDR3VGNiSWIz?=
 =?utf-8?B?cU1PZXFJbmhSQmV4R1ZZQVdYc0NhZVdlK1Zzd05QQko4SEtlUDRMb3gwOXBn?=
 =?utf-8?B?dld0WnFNV3BFMEZrS2FPTTF0YUJEL3c2MVRibmdoUFBrVk8xcjBtTkRzVHFt?=
 =?utf-8?B?WWozTHhIRExwWnZUejcxdmZHRVM0RkhGdTdVV3JCbjhFdklnZ2dDd1BJK01a?=
 =?utf-8?B?QXNRc0xEdm9UbkhDblRqTi9OTWprczUvQU5WWkhCQlZCNG9lclJCaHQwUmhx?=
 =?utf-8?B?STZHbU5QbjFZTGdtT0NFMW1JVlR0a1JNNUhPcnV3TXVHMlZPejF5VjM1ZVdx?=
 =?utf-8?B?Sjhib1F3RzdQQVU2b05od1pQdWJ0bkVpR0tVTGdWTlJNellRN3hPZjBGcXBj?=
 =?utf-8?B?MGliZ1JoLzVGRnQrZHR4UHk3SGpOWmlvWk1NVEU1VjBuK1dUVGo0RGdrZGpJ?=
 =?utf-8?B?V1E2Ni9Ma3c0NG83SFJZL2J6cXp4VE93djRpRGRkcVBZLzFaR0NYVk1aSURD?=
 =?utf-8?B?WlNIL3dWZ253WDlTMndqSldLT3pVbFEzdkxsUGI2MjE2Uis2SmVZT3J4RFJ4?=
 =?utf-8?B?a2Z1VUlUTHJXQm9CdW51SG1teFJuRWRqaFZMZTdRL1JseklLWlhYRDRNdkFV?=
 =?utf-8?B?M3Ivd01vODhteEJpckVadnN1VkFYaUNPU3ViOXV5aDBLK0lpcjVtVG1NK1du?=
 =?utf-8?B?bjV3ekhiMVl1OFZwQnlCR1lSb2N5RTlnbDBnaUdoQkxhSlNaM2g5Y1RFTys0?=
 =?utf-8?B?VU9HUVcrT1dtNjFhOXZDbXVIYnUzdHlWbWFRMlNpR3lBQi9MZ1JzcDd6RUdI?=
 =?utf-8?B?UGlDTEl1MkpSUTR2b1pqMjRwSHpodGxVYjNSSjVTVmRJcWg4TUFIdEJJMU43?=
 =?utf-8?Q?K5WA=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bXJIMlBYZEVYT3B6YW9GZVFnNmRpRC9yazVOWnMyNUY2Q2xRamVCUmFHREpQ?=
 =?utf-8?B?bHNramdwc0RLN1lubWVUcyszNGo0NWVMU2JkNm1LbzhTb2J4MU8rbkZ1dCtW?=
 =?utf-8?B?RElCa0pqbCs2M1U5b0p1bUJKU1hucithSmR5SXZTZ0tid0JiaGpYcHJWSmgv?=
 =?utf-8?B?TnpXK01hK2pCM3FMN0p5ZFlSamd3bWFzNXJzUnJ0dkZxUDFFU2ZlRkQ4Q2U4?=
 =?utf-8?B?Vm5jU01heEt5Zm43Z3BMQmlhWDV5Y0dnY3k4R2s2OUdtZDB5bVpmV2ZMZWdI?=
 =?utf-8?B?NXh1RnNqQVZqdGc4QUVOUkpwZVgzL05IVElKN0xPdmcvS3V1Z3VyakNmWmxI?=
 =?utf-8?B?UkdzVTViM3BSd1hpUkVTbW1QdjBZQ3hYTkVBOENlSC9IUWt6d1hiNlRrNHpk?=
 =?utf-8?B?TVJqRVFSUitWcnhTYkhuRkJ4dU5vQTI0NjBxaGFKbklyd1NoOVYxYkkvaTJm?=
 =?utf-8?B?b29weGQ5TE1SckdVdU1jeDJxdFFKU1Qwd1UvdXFxVndpcWcxZTVvaGdMMXhx?=
 =?utf-8?B?MnJ3OUFSbU5LbGtza3Q2NXl1UEY4aFpRendnUVZwdWIvU0F6V1FwQloyc04z?=
 =?utf-8?B?Rlo3RVdDVXkyQ2VpNWxMNlBpbjFNVGNGdGVUK3NBYXpWU29yOWtFVTM1Y3NJ?=
 =?utf-8?B?MWZPNmtxQ0twd1hNcjRZb0JhR3lGRGdWUnM3elZKckxIRHBGbkpNYWRqbWFj?=
 =?utf-8?B?RGNvajRiWGk3djN6WmZOSnFVZ0JYRkVlOUQ0MDltNzU4YXo1OElML1lDaExz?=
 =?utf-8?B?bmVzL0tmNG5XVnJ3OXFJbUNUTEFNeGtoN0tmZTI3d09RR1dTWms4S0FtT3FR?=
 =?utf-8?B?L0RHMzV6MzhtYmZtdThzQjBKV1JKbSthcjE5azQ5enE5RWNDdlo5OGxCWEly?=
 =?utf-8?B?QWprS25kK2hvZkFUWkE3ZnhjNUFZcWw0djRkVUJTYlBsRWFuWWZUUlp1SUhF?=
 =?utf-8?B?OTlkcDZhZUtndHNkMGxOWWFyblQyRC9waWMwdTBmWC9xVEJhQ0IyMFIxVGpo?=
 =?utf-8?B?YUUzRVpFNVJGNElSa2RiNURvMURvOXlwRCtSSHRUVWFzZlpUY0VnbmRMa0Jp?=
 =?utf-8?B?aUpBZE5YTkliOTcrcEN5MVdVQ2MvemlZZ2dMOVZUS2lsSFN5R0hYdW45MzJl?=
 =?utf-8?B?aUo4RGpVWTRJWm5nLzBwcEE1UnVKYzRhN3d3K29Cb2lXOExUd3BWbkdmTThn?=
 =?utf-8?B?Sk54a0E2UDdWOUlRbFVraFFVMGN3VnBqNHl0ejNHNjVPQjNZZFJxS1Y2RjlD?=
 =?utf-8?B?R2hjdEZ0TWtOOVFhcWI1d0dYS2RHeEdwdHpJUnk2ZzlmTTFTcGw5UUNwSEVU?=
 =?utf-8?B?KzloQ2t3T3QwMHNSMUxENEdDb0FiTnlYSXQ1aTR3T0tNeEhpMzl5Qko5T2ZN?=
 =?utf-8?B?N00xNldHZGNZWkN5emVNL1lTWnpTbmtqcUZ0aHFyVy9DQXBwRVN1ZnpkK0lI?=
 =?utf-8?B?b0VDc1BlaUZaQ3Q0ZEIyZWRZMlFpb0JTY1VlYTk4ekNMazE0T1RrUHJ2TjFL?=
 =?utf-8?B?MVVuaVVjUitSZlpoek5GMlJBdGRMWjZlMjJZRzlxVTFPbFh6MnFWWmh2Z2Jr?=
 =?utf-8?B?SWcyODY0bEJ0NmgwWks2ekg4UmZNbHkyNDZVRVZUUXhLajJsaHBmMHVOd2cv?=
 =?utf-8?B?QTFaM1VWdFY4V3VZR2tPZjdFbDZMQXFxNnNZYiszYytGOXFpQUY4My9iR1Fu?=
 =?utf-8?B?WFVPWldYYlZUYmw3OHhLTkVKK0NqVGNvU1NyeWcyQzRIaTVVdEllOHcxY1kv?=
 =?utf-8?B?QzJDMDc0L29scEhUVlBVTUt2amJQME5EZlBWbzJqYktXUmhxZG5hcDNlWXNn?=
 =?utf-8?B?NENRWVM1KzZiU0RuOVh3TjhidFBML1l3Sy80U0hOSEMwSGgrRVhmSHEydk42?=
 =?utf-8?B?UXN0L3gvU0pBQzBCSkJsTGU1Q0Jhczc3NTdqaXFhZW1OeTBKbFkzN0pzOEdn?=
 =?utf-8?B?S3N3T25lTUVMS3g4S0sxTXBOamo1T0tTa0tGRlB5aEthRjh3WEtreHF0MUdr?=
 =?utf-8?B?K3AyWG91R0FIVjl0L3RuaDN1aEdpa3BTZHZyWmNXT0JiOXV2RU5FcXBGcXBW?=
 =?utf-8?B?a3RWOFc3NEc3NndMMVFSd0Q1Z25HNlZRVlliVmR3enpWdGZsRkhQMXBPTlFn?=
 =?utf-8?B?VW93cytiVWMvenhCZ3dEZmVqQlQvUStySVFLempjVHA4eTRWcVBTR0dtSmJI?=
 =?utf-8?B?dXdBWTZZaGk0eEo1bERCSjZqSVVVa1FYR1BKTnF0eTFMdWJ5aVBkOUJjVFlB?=
 =?utf-8?B?VDRHQVV0QkUwWlp1ZE9pRTFSRXBidWozY1ljSmZtRFNrSFFtdFlFN2s2Z09t?=
 =?utf-8?Q?YkymlnXNEtI2mvkRcj?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 289315fa-e32c-4c11-66a8-08de58c9dbfc
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 08:48:33.9420
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e191VN8v2oNqKvE4BL/wQhGrQTDbZtGk9nkk6uOqTtp42Ps32B905cQ813AS5oQC
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB6685
X-Spamd-Bar: -----
Message-ID-Hash: TQYVTUU2YAQNCQNRXAVDQSMWVV46YR7I
X-Message-ID-Hash: TQYVTUU2YAQNCQNRXAVDQSMWVV46YR7I
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 5/9] dma-buf: inline spinlock for fence protection v4
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TQYVTUU2YAQNCQNRXAVDQSMWVV46YR7I/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:email,amd.com:mid];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-]
X-Rspamd-Queue-Id: BBF8F53D79
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMS8yMC8yNiAxMjo0MSwgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+IA0KPiBPbiAyMC8wMS8y
MDI2IDEwOjU0LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gSW1wbGVtZW50IHBlci1mZW5j
ZSBzcGlubG9ja3MsIGFsbG93aW5nIGltcGxlbWVudGF0aW9ucyB0byBub3QgZ2l2ZSBhbg0KPj4g
ZXh0ZXJuYWwgc3BpbmxvY2sgdG8gcHJvdGVjdCB0aGUgZmVuY2UgaW50ZXJuYWwgc3RhdGVpLiBJ
bnN0ZWFkIGEgc3BpbmxvY2sNCj4+IGVtYmVkZGVkIGludG8gdGhlIGZlbmNlIHN0cnVjdHVyZSBp
dHNlbGYgaXMgdXNlZCBpbiB0aGlzIGNhc2UuDQo+Pg0KPj4gU2hhcmVkIHNwaW5sb2NrcyBoYXZl
IHRoZSBwcm9ibGVtIHRoYXQgaW1wbGVtZW50YXRpb25zIG5lZWQgdG8gZ3VhcmFudGVlDQo+PiB0
aGF0IHRoZSBsb2NrIGxpdmUgYXQgbGVhc3QgYXMgbG9uZyBhbGwgZmVuY2VzIHJlZmVyZW5jaW5n
IHRoZW0uDQo+Pg0KPj4gVXNpbmcgYSBwZXItZmVuY2Ugc3BpbmxvY2sgYWxsb3dzIGNvbXBsZXRl
bHkgZGVjb3VwbGluZyBzcGlubG9jayBwcm9kdWNlcg0KPj4gYW5kIGNvbnN1bWVyIGxpZmUgdGlt
ZXMsIHNpbXBsaWZ5aW5nIHRoZSBoYW5kbGluZyBpbiBtb3N0IHVzZSBjYXNlcy4NCj4+DQo+PiB2
MjogaW1wcm92ZSBuYW1pbmcsIGNvdmVyYWdlIGFuZCBmdW5jdGlvbiBkb2N1bWVudGF0aW9uDQo+
PiB2MzogZml4IG9uZSBhZGRpdGlvbmFsIGxvY2tpbmcgaW4gdGhlIHNlbGZ0ZXN0cw0KPj4gdjQ6
IHNlcGFyYXRlIG91dCBzb21lIGNoYW5nZXMgdG8gbWFrZSB0aGUgcGF0Y2ggc21hbGxlciwNCj4+
IMKgwqDCoMKgIGZpeCBvbmUgYW1kZ3B1IGNyYXNoIGZvdW5kIGJ5IENJIHN5c3RlbXMNCj4+DQo+
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+DQo+PiAtLS0NCj4+IMKgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuY8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB8IDI1ICsrKysrKysrKysrKysrKysrLS0tLS0tLQ0KPj4gwqAgZHJpdmVy
cy9kbWEtYnVmL3N5bmNfZGVidWcuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDIgKy0NCj4+
IMKgIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV92bS5owqAgfMKgIDIgKy0NCj4+
IMKgIGRyaXZlcnMvZ3B1L2RybS9kcm1fY3J0Yy5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fMKgIDIgKy0NCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9kcm1fd3JpdGViYWNrLmPCoMKgwqDCoMKg
wqDCoMKgIHzCoCAyICstDQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2Zl
bmNlLmMgfMKgIDMgKystDQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9yZWxlYXNlLmPC
oMKgwqDCoMKgwqAgfMKgIDMgKystDQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dm
eF9mZW5jZS5jwqDCoCB8wqAgMyArKy0NCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS94ZS94ZV9od19m
ZW5jZS5jwqDCoMKgwqDCoMKgwqAgfMKgIDMgKystDQo+IA0KPiBpOTE1IG5lZWRlZCBjaGFuZ2Vz
IHRvbywgYmFzZWQgb24gdGhlIGtidWlsZCByZXBvcnQuDQoNCkdvaW5nIHRvIHRha2UgYSBsb29r
IG5vdy4NCiANCj4gSGF2ZSB5b3Ugc2VlbiBteSBub3RlIGFib3V0IHRoZSBSQ1Ugc3BhcnNlIHdh
cm5pbmcgYXMgd2VsbD8NCg0KTm9wZSwgSSBtdXN0IGhhdmUgbWlzc2VkIHRoYXQgbWFpbC4NCg0K
Li4uDQo+PiDCoCArLyoqDQo+PiArICogZG1hX2ZlbmNlX3NwaW5sb2NrIC0gcmV0dXJuIHBvaW50
ZXIgdG8gdGhlIHNwaW5sb2NrIHByb3RlY3RpbmcgdGhlIGZlbmNlDQo+PiArICogQGZlbmNlOiB0
aGUgZmVuY2UgdG8gZ2V0IHRoZSBsb2NrIGZyb20NCj4+ICsgKg0KPj4gKyAqIFJldHVybiBlaXRo
ZXIgdGhlIHBvaW50ZXIgdG8gdGhlIGVtYmVkZGVkIG9yIHRoZSBleHRlcm5hbCBzcGluIGxvY2su
DQo+PiArICovDQo+PiArc3RhdGljIGlubGluZSBzcGlubG9ja190ICpkbWFfZmVuY2Vfc3Bpbmxv
Y2soc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+PiArew0KPj4gK8KgwqDCoCByZXR1cm4gdGVz
dF9iaXQoRE1BX0ZFTkNFX0ZMQUdfSU5MSU5FX0xPQ0tfQklULCAmZmVuY2UtPmZsYWdzKSA/DQo+
PiArwqDCoMKgwqDCoMKgwqAgJmZlbmNlLT5pbmxpbmVfbG9jayA6IGZlbmNlLT5leHRlcm5fbG9j
azsNCj4+ICt9DQo+IA0KPiBZb3UgZGlkIG5vdCB3YW50IHRvIG1vdmUgdGhpcyBoZWxwZXIgaW50
byAiZG1hLWJ1ZjogYWJzdHJhY3QgZmVuY2UgbG9ja2luZyIgPw0KDQpJIHdhcyBhdm9pZGluZyB0
aGF0IHRvIGtlZXAgdGhlIHByZS1yZXF1aXNpdGUgcGF0Y2ggc21hbGxlciwgY2F1c2UgdGhpcyBj
aGFuZ2UgaGVyZSBzZWVtZWQgaW5kZXBlbmRlbnQgdG8gdGhhdC4NCg0KQnV0IHRoaW5raW5nIGFi
b3V0IGl0IEkgY291bGQgbWFrZSBhIHRoaXJkIHBhdGNoIHdoaWNoIGludHJvZHVjZXMgZG1hX2Zl
bmNlX3NwaW5sb2NrKCkgYW5kIGNoYW5nZXMgYWxsIHRoZSBjb250YWluZXJfb2YgdXNlcy4NCg0K
PiBJIHRoaW5rIHRoYXQgd291bGQgaGF2ZSBiZWVuIGJldHRlciB0byBrZWVwIGV2ZXJ5dGhpbmcg
bWVjaGFuaWNhbCBpbiBvbmUgcGF0Y2gsIGFuZCB0aGVuIHRoaXMgcGF0Y2ggd2hpY2ggY2hhbmdl
cyBiZWhhdmlvdXIgZG9lcyBub3QgdG91Y2ggYW55IGRyaXZlcnMgYnV0IG9ubHkgZG1hLWZlbmNl
IGNvcmUuDQo+IA0KPiBBbHNvLCB3aGF0IGFib3V0IGFkZGluZyBzb21ldGhpbmcgbGlrZSBkbWFf
ZmVuY2VfY29udGFpbmVyX29mKCkgaW4gdGhhdCBwYXRjaCBhcyB3ZWxsPw0KDQpJIHdvdWxkIHJh
dGhlciBsaWtlIHRvIGF2b2lkIHRoYXQuIFVzaW5nIHRoZSBzcGlubG9jayBwb2ludGVyIHdpdGgg
Y29udGFpbmVyX29mIHNlZW1lZCB0byBiZSBhIGJpdCBvZiBhIGhhY2sgdG8gbWUgaW4gdGhlIGZp
cnN0IHBsYWNlIGFuZCBJIGRvbid0IHdhbnQgdG8gZW5jb3VyYWdlIHBlb3BsZSB0byBkbyB0aGF0
IGluIG5ldyBjb2RlIGFzIHdlbGwuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gDQo+IFJl
Z2FyZHMsDQo+IA0KPiBUdnJ0a28NCj4gDQo+PiArDQo+PiDCoCAvKioNCj4+IMKgwqAgKiBkbWFf
ZmVuY2VfbG9ja19pcnFzYXZlIC0gaXJxc2F2ZSBsb2NrIHRoZSBmZW5jZQ0KPj4gwqDCoCAqIEBm
ZW5jZTogdGhlIGZlbmNlIHRvIGxvY2sNCj4+IEBAIC0zODUsNyArNDAzLDcgQEAgZG1hX2ZlbmNl
X2dldF9yY3Vfc2FmZShzdHJ1Y3QgZG1hX2ZlbmNlIF9fcmN1ICoqZmVuY2VwKQ0KPj4gwqDCoCAq
IExvY2sgdGhlIGZlbmNlLCBwcmV2ZW50aW5nIGl0IGZyb20gY2hhbmdpbmcgdG8gdGhlIHNpZ25h
bGVkIHN0YXRlLg0KPj4gwqDCoCAqLw0KPj4gwqAgI2RlZmluZSBkbWFfZmVuY2VfbG9ja19pcnFz
YXZlKGZlbmNlLCBmbGFncynCoMKgwqAgXA0KPj4gLcKgwqDCoCBzcGluX2xvY2tfaXJxc2F2ZShm
ZW5jZS0+bG9jaywgZmxhZ3MpDQo+PiArwqDCoMKgIHNwaW5fbG9ja19pcnFzYXZlKGRtYV9mZW5j
ZV9zcGlubG9jayhmZW5jZSksIGZsYWdzKQ0KPj4gwqAgwqAgLyoqDQo+PiDCoMKgICogZG1hX2Zl
bmNlX3VubG9ja19pcnFyZXN0b3JlIC0gdW5sb2NrIHRoZSBmZW5jZSBhbmQgaXJxcmVzdG9yZQ0K
Pj4gQEAgLTM5NSw3ICs0MTMsNyBAQCBkbWFfZmVuY2VfZ2V0X3JjdV9zYWZlKHN0cnVjdCBkbWFf
ZmVuY2UgX19yY3UgKipmZW5jZXApDQo+PiDCoMKgICogVW5sb2NrIHRoZSBmZW5jZSwgYWxsb3dp
bmcgaXQgdG8gY2hhbmdlIGl0J3Mgc3RhdGUgdG8gc2lnbmFsZWQgYWdhaW4uDQo+PiDCoMKgICov
DQo+PiDCoCAjZGVmaW5lIGRtYV9mZW5jZV91bmxvY2tfaXJxcmVzdG9yZShmZW5jZSwgZmxhZ3Mp
wqDCoMKgIFwNCj4+IC3CoMKgwqAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZShmZW5jZS0+bG9jaywg
ZmxhZ3MpDQo+PiArwqDCoMKgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoZG1hX2ZlbmNlX3NwaW5s
b2NrKGZlbmNlKSwgZmxhZ3MpDQo+PiDCoCDCoCAjaWZkZWYgQ09ORklHX0xPQ0tERVANCj4+IMKg
IGJvb2wgZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcodm9pZCk7DQo+IA0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
