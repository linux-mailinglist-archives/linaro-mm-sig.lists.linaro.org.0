Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 36546A13ED1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Jan 2025 17:08:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 37F5F44849
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Jan 2025 16:08:00 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2073.outbound.protection.outlook.com [40.107.223.73])
	by lists.linaro.org (Postfix) with ESMTPS id C6776440F8
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Jan 2025 16:07:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=osz3GX6z;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.107.223.73 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hX74YJHEqBE7zCF9SKn7j+yTjuzamFqwmtmr7fBrCw53M4MSew8R+bY/STijsNoL+BfP/F2WqbdxD2GG4DLm4n4w7AzhIUWt+99iujis65JEj9eleorb5bjZ9lMhJ9CoFMakR2TivqXoMrhWTbIhJzsG4mQTbYD2IQjO5sDzgxgEagkxqvrU1/lbTK8HW6dPHFDbbd+tgaaE9X9BE45+kwcr6tVq+xebvSKruirClJ0UWs1rrLAKkfsMCAKpL4WO4CR29ZR/+38MnYH6dfzCTkT2iTY2/O2xSm/GgYEdBZqJJ/fxVcCvOxIw640tv6BbgDC2ibCUlS6nhpQJXWG6SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uw5gZebVobFjkxrFoD615J8Bq97IQ5/RaJdKLdAuqTY=;
 b=pAdNLcEDqt41d7MVOFy6im3rsjbI4ywMt2OUAH4Ql7OnU5tNxnJZJ1/mC73VzxPe6P3FTrybt1ziRbIVT7E4cfUfdX4M+79cbGIgUzgmBg7bCMMn0lwnLiXuJperLMfCJ9QKha/KTDOW6k7JTFuhVp/8fC00gjegKN9VfIFOcAPq8ZO0lxyRa63vMBZ0jcZyec2XQm88OC0pZdLOBiXl8UGEeDCU+ThN6+/+edtb4GEfdTVFpgKWffkTuX+8gm2KLvf5uCgSQy+p7HGgLz85U1IXfuBvCtNWuPwM52Iz1pG3NR8Wz32dZMcHq4F2ox2u2A3TehesAsDpg4F4ppjWTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uw5gZebVobFjkxrFoD615J8Bq97IQ5/RaJdKLdAuqTY=;
 b=osz3GX6zmOL4IK1qrmnmAX3RthBmVr3uthaFjS25+tdxMfeS5YG7iOfRFhSJ2xtgEqJXpxOerE06GBH/62ECP/q+mjNI0SI9+byqY1rLS9GBrtFBOzr0X1lIYVRoPO09ifbVL+IrM5BPdY6DL2rZblwMavpmI9eukQGOQ/++SjUgWumIoffC5biBi8zq/SSQe7JdyuOOtqh0AYKbq/nnPUutMVQTdW8ySmS8DIOsTnX9Bsvw794JesK3gRMDyuaOkrNAsjnFBSrFxadwJu1stWDnfcaf0Y1ReJ6ovHQlW9HfrPy1g8TTr9Ej/2KnVS1tymy4AhpR9SHpbP8oLuknEg==
Received: from CH3PR12MB8659.namprd12.prod.outlook.com (2603:10b6:610:17c::13)
 by PH7PR12MB6633.namprd12.prod.outlook.com (2603:10b6:510:1ff::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.14; Thu, 16 Jan
 2025 16:07:49 +0000
Received: from CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732]) by CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732%5]) with mapi id 15.20.8335.017; Thu, 16 Jan 2025
 16:07:49 +0000
Date: Thu, 16 Jan 2025 12:07:47 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20250116160747.GV5556@nvidia.com>
References: <20250115133821.GO5556@nvidia.com>
 <f6c2524f-5ef5-4c2c-a464-a7b195e0bf6c@amd.com>
 <1afd5049-d1d4-4fd6-8259-e7a5454e6a1d@amd.com>
 <20250115141458.GP5556@nvidia.com>
 <c86cfee1-063a-4972-a343-ea0eff2141c9@amd.com>
 <86afb69a-79bd-4719-898e-c6c2e62103f7@amd.com>
 <20250115151056.GS5556@nvidia.com>
 <6f7a14aa-f607-45f9-9e15-759e26079dec@amd.com>
 <20250115170942.GT5556@nvidia.com>
 <5f588dac-d3e2-445d-9389-067b875412dc@amd.com>
Content-Disposition: inline
In-Reply-To: <5f588dac-d3e2-445d-9389-067b875412dc@amd.com>
X-ClientProxiedBy: BLAP220CA0003.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:208:32c::8) To CH3PR12MB8659.namprd12.prod.outlook.com
 (2603:10b6:610:17c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB8659:EE_|PH7PR12MB6633:EE_
X-MS-Office365-Filtering-Correlation-Id: c607b858-bfac-4822-ccb5-08dd3647ec27
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?UDQzRWhXVitOdWNsQitVb2lkTzk2alJVT3o1eFZ3QmJBRGIvaGwzZm16NGFI?=
 =?utf-8?B?aDI3aFYvYjRhMURYSjVLY0V6R2dma1VaaTAwQW9jeEgzUmlzMXgwajFxZGxK?=
 =?utf-8?B?VTdpM2g4dkl2RXkvQ3E1cUFtS2hzV3YxZ0lpZkd6cWVLTFFsOFkvdUI0WHFZ?=
 =?utf-8?B?OTM1am5rNC9wVzJTUDVXZ3dmOUdHR0MyZTUzT2R0UEJvK1d4MlFXeVdUaXVV?=
 =?utf-8?B?VTFwQUJvSkdyWHZnRjFGUmkzNjIwOUsrQzNwZng4cjdMQSt4MnRBVXE1MXdL?=
 =?utf-8?B?S1NwRzdmbWNuNjhGckxocDhNZ1VrMGlROUVhWTBBdWpGOUhTRTFPaGdYSFhK?=
 =?utf-8?B?QW05YVpJRUNpVWgrTjRBWllncGtJTk5NTGQzV0o5M0krOGdLVnpaOGh5dmVD?=
 =?utf-8?B?Nk5xZ3RST1lRMXN4Wk83M3d2Z1pVUytIc1R3L2x1ZHhuQ3Nrc0VIc2xRcEZi?=
 =?utf-8?B?dnpKSlJlczRBYktSM0ZDb1dSNTJCeUEyUWhWYWMxN2p3RGt5c1JCRFlmMjU4?=
 =?utf-8?B?cjUrNFFRT1N5byt3UGlRVjcvZUdCY0h4UXhPdldMVGt5dS8ySkRLZURMMFlW?=
 =?utf-8?B?eWJVU296UHN2Q3hmRHViVVVSUW5veGtBSktUKzBrUzFSb29XaCs4bXNVcmwv?=
 =?utf-8?B?VVZOc3l2bVVTS2FSL2ZqYS9yeFZGTFJxWHh0RmtOWmVxNFJvcTEzMHRveEw3?=
 =?utf-8?B?ZCtZR0RacXR2VXZFc2dNRkZRWS9uazhXZmovODQzTFhZWDZuVjV0ejRUUith?=
 =?utf-8?B?V3VQY3FwK3BNMlMxdjgxaS9CdUI1UFVHbmxLR1F1elJRbnJnQVJCVk96d3J4?=
 =?utf-8?B?cU1qV2Mzc2lQU0p6RkVNVEVsdThMQldkd1VJRDN5UHJiT0MvcFhPdTBrdFpq?=
 =?utf-8?B?bDkyZVBpZ3VMUHMvTzF5dUMwZ2NRWldoMjRiMDdwOTVhUkR4YllSdVFiU2Fw?=
 =?utf-8?B?TFZFR09uZGxDNzhGaG9RNEdZa25ZNm95ZkQ4Nk5KYkJlbUlyZjZtaEwybnR2?=
 =?utf-8?B?a0Q2bDY1WmtXWkFpcVJMV1p6dWJlNUIyc0xzeEJDOE14OE9QNEZUNHBKdmZp?=
 =?utf-8?B?aXViQnpEOXhtTHEwQ09wbmdSdmRBZTJkZ1BqNnZ2VmY3SDJCRWR2endZL04z?=
 =?utf-8?B?T2FOdXBsbVBLczg0RERKNk9iaXJzQS9OVGVteDFqRk5udElYVG9BRVdFU0ky?=
 =?utf-8?B?UzU4R0x0TnV2WWR4VjlPVzBGSldqb0M3Zy9FbENKUlA5VjZVcWhnSXcrVDVh?=
 =?utf-8?B?WFBVMm5SVmY1Q3dBM3hCdzM3UngrUE9FcjlSMHJHMGIrY2NYMFVrTnBJK1Nk?=
 =?utf-8?B?K1BFc2EyQ2pPN2lISlI3RUI5bHZLYThUNjRVTFZHQnRhLzlLVS9WelMvV1p6?=
 =?utf-8?B?SEg1ejc2bVI2TGVZclh2aDE4WGJ6RXhsZWpPR2ZJNkNIRFZ0dklyb3JQWUVJ?=
 =?utf-8?B?VTMzSXBUbUozRWJxZkZtSFV2cGdzbHVaSUpQYUFFZ1kya3FpajNZMVVOM0ZE?=
 =?utf-8?B?WjdOaVg3SDE5a2czNjB2WVExeXNsUG9PanJzbHNHbzBiV3FHZjZwYjJ0TWN4?=
 =?utf-8?B?bzlVbC8wcGZ4bEZPYkE3dE80eENTN25BTXRwSmZFN2k5NDl0bm9jSEc4QUE1?=
 =?utf-8?B?cGFTamUvNzVNMTlocHZZTGtLUnlIbmQ1NENnQ1VMRitEVUJLQXc0R0FoNnFP?=
 =?utf-8?B?ajlWNitDMURSWk5nVEl1K1ZHK0hKVWNjcnhVY0RHa2JpS0g3ZFRSN2VyZXFj?=
 =?utf-8?B?eTRyV0hRVlBhSzk5M0pmMy84TjBPV1hybVIxazdualRJTXBZK0ZKMWc3Vkkz?=
 =?utf-8?B?L2tXR3NRMDlSSW1ONit1cmZoVG9iTXMySUNGUWt2djlMeTFyS29ieTRPZlJz?=
 =?utf-8?Q?6IiRs1ugeNtlM?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR12MB8659.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RTZtaGVIMWFWZmd1Zm5ZZG5icnFZbDZjN0Z6V2NwNURnNEdVOTJyRmluRVFv?=
 =?utf-8?B?VWt5TXJPV1FSblZIS0h5ekhoTjBoWm5yVEV2c2ZJWUEzVGJaQkQwNVk3WFkx?=
 =?utf-8?B?Qk5MVGk2RExMRFZRbGhqOSticmo0aENHbldEZjVhOWN5WkIyTitDQzB1QW9k?=
 =?utf-8?B?L05zaEpKRks3My9OOC8wS0N1WTBqOGNTbkVwNUJHemthYVZCOS9YbW5rMzhE?=
 =?utf-8?B?bjVBa2lRcjBXVXowUXZucEoyZU81SW9QcDRxbW0rYkRMblpLcDhjWTkwM0NT?=
 =?utf-8?B?LzFNZDJTbDdpOVFLTXBLL05icHl2Tzh5dVd4QlIveDVOMHRQTFNsdlRaYmxS?=
 =?utf-8?B?KzBpS1ZNM0pZWHgxYkhDbTVxQkhwV1dya2pzdElIRUZRN2pnQ0FUcXNhU1hK?=
 =?utf-8?B?VkJzWG9pT0R3YmRvajQyallWTzcvZ1RDa0VBaWMyRjFwNEl0TWhEeXU5TWRh?=
 =?utf-8?B?bG8zVlVKbE1La0xiM3J6R3FJSFcvcVVVMTd3eEV0YkN6NExBM2h5THFYNUg2?=
 =?utf-8?B?SmtEeHJIN2dWWjRyVGpaWHVXWXBzL1ZxQUQrbUVGS1V2N1A2R3pYMUlSMEtE?=
 =?utf-8?B?MVlhNkJpcU12RjlMVVVKM1dJNGFrb2dibVJxM096V2t2Q3loUjRGNUdLT1RD?=
 =?utf-8?B?ZHc4ZWpET1IwY2RQeURrVDdLNUdNK3BLL1R2QWJmSDRRVjlsRjROMnpJVnYr?=
 =?utf-8?B?OFlaZlkva3pGRVVSUEVJaExUZUZMZnFiVEUzM0FtOXlkakdnSGxnWUhRcG1v?=
 =?utf-8?B?LytQUHdOMThKZHRkWEZZZVlScVRMdUdXdWVCY0xKNFBySDMxcTYxZUtSWUJC?=
 =?utf-8?B?a3I4emVrM005eFR4UDBvb2hiVmZnc2ZPK0x6RGlWUGh6b1phL1oydGc0aU9l?=
 =?utf-8?B?emdReUpzWnBNMEJ2eHljM2ZscXRXakhCWU91c044QnJRTkpiWEVlQjhpc0tm?=
 =?utf-8?B?a1JvcTZSVXdORmNsZ1pMSmc5NUQrV003Zk4wQ2JGSVVMVDNtSHgxVWZZdC9r?=
 =?utf-8?B?MCtsODd1c2xycitqR1R6UlJjcjI5elcwZjAyeXY3ZjIzUFhkWHBrNXorOUNS?=
 =?utf-8?B?ZThIUDJPNGNPRm5kdjBqcnJ6bWo1dkU4ZU5GbTlUdHJNVktrSVBFbzVVdmQr?=
 =?utf-8?B?OFdWUU9IdEwzYjlCTnVRb1Z3bStlLy9RbVlXSnk2Nk9SL0wzUGZMcXRDbDJv?=
 =?utf-8?B?bWEyZk5KNEh4MEJIWEpVNzlHM291dUsyNmlpcjI4NFNMT2lwY1pVZExuUVlu?=
 =?utf-8?B?SlZ1Z3htYVlsWnh4N1BWYkJhTVVZWk5ZaXhNVXNLOE1zNFdvdXVZY1htZTkx?=
 =?utf-8?B?MisxSDYxRmVEeHN0ZlBRR0FkQ1RaWXQ0VmJVMU4yQkFKc1dWSXBZY04vTTB6?=
 =?utf-8?B?WGZCcllGM1l3MVkwY094OWp6K0xnWlk4dTNscktRbXVxKzI2UDVHRHh1WjZE?=
 =?utf-8?B?RDVBb0h4ZXEyNVA3Mks2a2NmUXcxVTQwVkNhT3oxYkdoYy8yWThWdGVObTQ5?=
 =?utf-8?B?QWoxcDlubzZTbjdqWVFlM2VVaVUxajFuSFdQWm9WT1RzYmFyOHpEVzNhUnZN?=
 =?utf-8?B?OGs3QkZibDlYY1VKUnFPS1krMVVId2ZuOTdwYlZ4VGxXcmh5bkhaZW8wTmJj?=
 =?utf-8?B?dko5Um1LTkdEYlIwNTNmVWoxRmtTbzEyVnd6aWtYNjVCeTlXS2t2SUFiTExH?=
 =?utf-8?B?YjRnUGNMUHNibDN1VFZjRnJvOGhmMzlMY2I2TDNQMk1kQmF1N2YrWVU1TjN0?=
 =?utf-8?B?ZU4wODR3aXFvSVoyYU5yc2dkUnVTSEVFUmdNaXBjMmJYRndVam41T1NmcVFL?=
 =?utf-8?B?WjN1R1MwQThXaHp6aE81NWhRcnlITUJEWFJrS2NjOC85QTNuOG1ma01NeW5n?=
 =?utf-8?B?TU04TFlDV2xmanZrUVloUjI0UExwamRzaFc4NVZIbTFVbjUwRForcEZVUWgv?=
 =?utf-8?B?R1lCQkRSSm9OZ3dOcEx0SktRSmVjcTF1SEdlb01wSjI5Mis4d3gxclVsRVhX?=
 =?utf-8?B?V0RqMzhiOS9meDB6dDBheWIwbmdwVTh3TDV1TVJiRlBDNE1KakxjMkRqN1N2?=
 =?utf-8?B?VkpOazZNMVdLVHZMYW43dUY0SUxCaStYbG40TitzeVY2eEQxMlh5cU1HN3Mr?=
 =?utf-8?Q?iSMM=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c607b858-bfac-4822-ccb5-08dd3647ec27
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB8659.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2025 16:07:49.1447
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xwgrVsKx2+LEIs5Q4lvFQV1Dnp1wJ3tXIEuZN1HAbh0Ses44+6TQsFXxsJkzJiVd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB6633
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C6776440F8
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.223.73:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.223.73:from];
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
Message-ID-Hash: P7BGKZAN5FDUDEHIY3YF6D3B6ZOP5KXQ
X-Message-ID-Hash: P7BGKZAN5FDUDEHIY3YF6D3B6ZOP5KXQ
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Xu Yilun <yilun.xu@linux.intel.com>, Christoph Hellwig <hch@lst.de>, Leon Romanovsky <leonro@nvidia.com>, kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, aik@amd.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P7BGKZAN5FDUDEHIY3YF6D3B6ZOP5KXQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBKYW4gMTYsIDIwMjUgYXQgMDQ6MTM6MTNQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4+IEJ1dCB0aGlzLCBmdW5kYW1lbnRhbGx5LCBpcyBpbXBvcnRlcnMgY3JlYXRp
bmcgYXR0YWNobWVudHMgYW5kIHRoZW4NCj4+ICppZ25vcmluZyB0aGUgbGlmZXRpbWUgcnVsZXMg
b2YgRE1BQlVGKi4gSWYgeW91IGNyZWF0ZWQgYW4gYXR0YWNobWVudCwNCj4+IGdvdCBhIG1vdmUg
YW5kICppZ25vcmVkIHRoZSBtb3ZlKiBiZWNhdXNlIHlvdSBwdXQgdGhlIFBGTiBpbiB5b3VyIG93
bg0KPj4gVk1BLCB0aGVuIHlvdSBhcmUgbm90IGZvbGxvd2luZyB0aGUgYXR0YWNobWVudCBsaWZl
dGltZSBydWxlcyENCj4gDQo+ICAgIE1vdmUgbm90aWZ5IGlzIHNvbGVseSBmb3IgaW5mb3JtaW5n
IHRoZSBpbXBvcnRlciB0aGF0IHRoZXkgbmVlZCB0bw0KPiAgICByZS1mcmVzaCB0aGVpciBETUEg
bWFwcGluZ3MgYW5kIGV2ZW50dWFsbHkgYmxvY2sgZm9yIG9uZ29pbmcgRE1BIHRvDQo+ICAgIGVu
ZC4NCg0KSSBmZWVsIHRoYXQgaXQgaXMgYSBiaXQgcGVkYW50aWMgdG8gc2F5IERNQSBhbmQgQ1BV
IGFyZSBzb21laG93DQpkaWZmZXJlbnQuIFRoZSBETUFCVUYgQVBJIGdpdmVzIHlvdSBhIHNjYXR0
ZXJsaXN0LCBpdCBpcyByZWFzb25hYmxlIHRvDQpzYXkgdGhhdCBtb3ZlIGludmFsaWRhdGVzIHRo
ZSBlbnRpcmUgc2NhdHRlcmxpc3QsIENQVSBhbmQgRE1BIGVxdWFsbHkuDQoNCj4gICAgVGhpcyBz
ZW1hbnRpY3MgZG9lc24ndCB3b3JrIHdlbGwgZm9yIENQVSBtYXBwaW5ncyBiZWNhdXNlIHlvdSBu
ZWVkIHRvDQo+ICAgIGhvbGQgdGhlIHJlc2VydmF0aW9uIGxvY2sgdG8gbWFrZSBzdXJlIHRoYXQg
dGhlIGluZm9ybWF0aW9uIHN0YXkgdmFsaWQNCj4gICAgYW5kIHlvdSBjYW4ndCBob2xkIGEgbG9j
ayB3aGlsZSByZXR1cm5pbmcgZnJvbSBhIHBhZ2UgZmF1bHQuDQoNClN1cmUsIEkgaW1hZ2luZSBo
b29raW5nIHVwIGEgVk1BIGlzIGhhcmQgLSBidXQgdGhhdCBkb2Vzbid0IGNoYW5nZSBteQ0KcG9p
bnQuIFRoZSBzZW1hbnRpY3MgY2FuIGJlIHJlYXNvbmFibGUgYW5kIHdlbGwgZGVmaW5lZC4NCg0K
PiAgICBZZWFoIGFuZCBleGFjdGx5IHRoYXQgaXMgc29tZXRoaW5nIHdlIGRvbid0IHdhbnQgdG8g
YWxsb3cgYmVjYXVzZSBpdA0KPiAgICBtZWFucyB0aGF0IGV2ZXJ5IGltcG9ydGVyIG5lZWQgdG8g
Z2V0IHRoaW5ncyByaWdodCB0byBwcmV2ZW50IGV4cG9ydGVycw0KPiAgICBmcm9tIHJ1bm5pbmcg
aW50byBwcm9ibGVtcy4NCg0KWW91IGNhbiBtYWtlIHRoZSBzYW1lIGFyZ3VtZW50IGFib3V0IHRo
ZSBETUEgYWRkcmVzcy4gV2Ugc2hvdWxkIGp1c3QNCmdldCByaWQgb2YgRE1BQlVGIGVudGlyZWx5
IGJlY2F1c2UgcGVvcGxlIGFyZSBnb2luZyB0byBtaXMtdXNlIGl0IGFuZA0Kd3JvbmdseSBpbXBs
ZW1lbnQgdGhlIGludmFsaWRhdGlvbiBjYWxsYmFjay4NCg0KSSBoYXZlIG5vIGlkZWEgd2h5IEdQ
VSBkcml2ZXJzIHdhbnQgdG8gaW1wbGVtZW50IG1tYXAgb2YgZG1hYnVmLCB0aGF0DQpzZWVtcyB0
byBiZSBhIHVuaXF1ZWx5IEdQVSB0aGluZy4gV2UgYXJlIG5vdCBnb2luZyB0byBiZSBkb2luZyBz
dHVmZg0KbGlrZSB0aGF0IGluIEtWTSBhbmQgb3RoZXIgcGxhY2VzLiBBbmQgd2UgY2FuIGltcGxl
bWVudCB0aGUNCmludmFsaWRhdGlvbiBjYWxsYmFjayB3aXRoIGNvcnJlY3QgbG9ja2luZy4gV2h5
IHNob3VsZCB3ZSBhbGwgYmUNCnB1bmlzaGVkIGJlY2F1c2UgRFJNIGRyaXZlcnMgc2VlbSB0byBo
YXZlIHRoaXMgd2VpcmQgaGlzdG9yaWNhbCBtbWFwDQpwcm9ibGVtPw0KDQpJIGRvbid0IHRoaW5r
IHRoYXQgaXMgYSByZWFzb25hYmxlIHdheSB0byBhcHByb2FjaCBidWlsZGluZyBhIGdlbmVyYWwN
CnB1cnBvc2UgbGludXgga2VybmVsIEFQSS4NCiANCj4gICAgV2VsbCBpdCdzIG5vdCBtaXNzLXVz
ZWQsIGl0J3MganVzdCBhIHZlcnkgYmFkIGRlc2lnbiBkZWNpc2lvbiB0byBsZXQNCj4gICAgZXZl
cnkgaW1wb3J0ZXIgaW1wbGVtZW50IGZ1bmN0aW9uYWxpdHkgd2hpY2ggYWN0dWFsbHkgYmVsb25n
IGludG8gYQ0KPiAgICBzaW5nbGUgcG9pbnQgaW4gdGhlIGV4cG9ydGVyLg0KDQpXZWxsLCB0aGlz
IGlzIHRoZSBwcm9ibGVtLiBTdXJlIGl0IG1heSBiZSB0aGF0IGltcG9ydGVycyBzaG91bGQgbm90
DQppbXBsZW1lbnQgbW1hcCAtIGJ1dCB1c2luZyB0aGUgUEZOIHNpZGUgYWRkcmVzcyBpcyBuZWVk
ZWQgZm9yIG1vcmUNCnRoYW4ganVzdCBtbWFwIQ0KDQpETUEgbWFwcGluZyBiZWxvbmdzIGluIHRo
ZSBpbXBvcnRlciwgYW5kIHRoZSBuZXcgRE1BIEFQSSBtYWtlcyB0aGlzDQpldmVuIG1vcmUgZXhw
bGljaXQgYnkgYWxsb3dpbmcgdGhlIGltcG9ydGVyIGFsb3Qgb2Ygb3B0aW9ucyB0bw0Kb3B0aW1p
emUgdGhlIHByb2Nlc3Mgb2YgYnVpbGRpbmcgdGhlIEhXIGRhdGFzdHJ1Y3R1cmVzLiBTY2F0dGVy
bGlzdA0KYW5kIHRoZSBlbmZvcmVjZWQgcmVwcmVzZXRhdGlvbiBvZiB0aGUgRE1BIGxpc3QgaXMg
dmVyeSBpbmVmZmljaWVudA0KYW5kIHdlIGFyZSB3b3JraW5nIHRvIGdldCByaWQgb2YgaXQuIEl0
IGlzbid0IGdvaW5nIHRvIGJlIHJlcGxhY2VkIGJ5DQphbnkgc29ydCBvZiBsaXN0IG9mIERNQSBh
ZGRyZXNzZXMgdGhvdWdoLg0KDQpJZiB5b3UgcmVhbGx5IGRpc2FncmVlIHlvdSBjYW4gdHJ5IHRv
IGNvbnZpbmNlIHRoZSBOVk1lIHBlb3BsZSB0byBnaXZlDQp1cCB0aGVpciBvcHRpbWl6YXRpb25z
IHRoZSBuZXcgRE1BIEFQSSBhbGxvd3Mgc28gRFJNIGNhbiBwcmV2ZW50IHRoaXMNCmNvZGUtcmV2
aWV3IHByb2JsZW0uDQoNCkkgYWxzbyB3YW50IHRoZSBzYW1lIG9wdGltaXphdGlvbnMgaW4gUkRN
QSwgYW5kIEkgYW0gYWxzbyBub3QNCmNvbnZpbmNlZCBnaXZpbmcgdGhlbSB1cCBpcyBhIHdvcnRo
d2hpbGUgdHJhZGVvZmYuDQoNCj4gICAgV2h5IHdvdWxkIHlvdSB3YW50IHRvIGRvIGEgZG1hYnVm
MiBoZXJlPw0KDQpCZWNhdXNlIEkgbmVlZCB0aGUgc2FtZSBraW5kIG9mIGNvbW1vbiBmcmFtZXdv
cmsuIEkgbmVlZCB0byBob29rIFZGSU8NCnRvIFJETUEgYXMgd2VsbC4gSSBuZWVkIHRvIGZpeCBS
RE1BIHRvIGhhdmUgd29ya2luZyBQMlAgaW4gYWxsDQpjYXNlcy4gSSBuZWVkIHRvIGhvb2sgS1ZN
IHZpcnR1YWwgZGV2aWNlIHN0dWZmIHRvIGlvbW11ZmQuIFNvbWVvbmUNCmVsc2UgbmVlZCBWRklP
IHRvIGhvb2sgaW50byBEUk0uDQoNCkhvdyBtYW55IGRpZmZlcmVudCB0aW1lcyBkbyBJIG5lZWQg
dG8gaW1wbGVtZW50IGEgYnVmZmVyIHNoYXJpbmcNCmxpZmV0aW1lIG1vZGVsPyBObywgd2Ugc2hv
dWxkIG5vdCBtYWtlIGEgVkZJTyBzcGVjaWZpYyB0aGluZywgd2UgbmVlZA0KYSBnZW5lcmFsIHRv
b2wgdG8gZG8gdGhpcyBwcm9wZXJseSBhbmQgY292ZXIgYWxsIHRoZSBkaWZmZXJlbnQgdXNlDQpj
YXNlcy4gVGhhdCdzICJkbWFidWYyIiBvciB3aGF0ZXZlciB5b3Ugd2FudCB0byBjYWxsIGl0LiBU
aGVyZSBhcmUNCm1vcmUgdGhhbiBlbm91Z2ggdXNlIGNhc2VzIHRvIGp1c3RpZnkgZG9pbmcgdGhp
cy4gSSB0aGluayB0aGlzIGlzIGENCmJhZCBpZGVhLCB3ZSBkbyBub3QgbmVlZCB0d28gdGhpbmdz
LCB3ZSBzaG91bGQgaGF2ZSBkbWFidWYgdG8gaGFuZGxlDQphbGwgdGhlIHVzZSBjYXNlcyBwZW9w
bGUgaGF2ZSwgbm90IGp1c3QgRFJNcy4NCg0KPiAgICBJIGRvbid0IG1pbmQgaW1wcm92aW5nIHRo
ZSBzY2F0dGVybGlzdCBhcHByb2FjaCBpbiBhbnkgd2F5IHBvc3NpYmxlLg0KPiAgICBJJ20ganVz
dCByZWplY3RpbmcgdGhpbmdzIHdoaWNoIHdlIGFscmVhZHkgdHJpZWQgYW5kIHR1cm5lZCBvdXQg
dG8gYmUgYQ0KPiAgICBiYWQgaWRlYS4NCj4gICAgSWYgeW91IG1ha2UgYW4gaW50ZXJmYWNlIHdo
aWNoIGdpdmVzIERNQSBhZGRyZXNzZXMgcGx1cyBhZGRpdGlvbmFsDQo+ICAgIGluZm9ybWF0aW9u
IGxpa2UgYWRkcmVzcyBzcGFjZSwgYWNjZXNzIGhpbnRzIGV0Yy4uIHRvIGltcG9ydGVycyB0aGF0
DQo+ICAgIHdvdWxkIGJlIHJlYWxseSB3ZWxjb21lZC4NCg0KVGhpcyBpcyBub3Qgd2VsY29tZWQs
IGhhdmluZyBsaXN0cyBvZiBETUEgYWRkcmVzc2VzIGlzIGluZWZmaWNpZW50IGFuZA0KZG9lcyBu
b3QgbWF0Y2ggdGhlIGRpcmVjdGlvbiBvZiB0aGUgRE1BIEFQSS4gV2UgYXJlIHRyeWluZyB2ZXJ5
IGhhcmQNCnRvIGNvbXBsZXRlbHkgcmVtb3ZlIHRoZSBsaXN0cyBvZiBETUEgYWRkcmVzc2VzIGlu
IGNvbW1vbiBmYXN0IHBhdGhzLg0KDQo+ICAgIEJ1dCBleHBvc2luZyBQRk5zIGFuZCBsZXR0aW5n
IHRoZSBpbXBvcnRlcnMgY3JlYXRlZCB0aGVpciBETUEgbWFwcGluZ3MNCj4gICAgdGhlbXNlbHZl
cyBhbmQgbWFraW5nIENQVSBtYXBwaW5ncyB0aGVtc2VsdmVzIGlzIGFuIGFic29sdXRlbHkgY2xl
YXINCj4gICAgbm8tZ28uDQoNCkFnYWluLCB0aGlzIGlzIHdoYXQgd2UgbXVzdCBoYXZlIHRvIHN1
cHBvcnQgdGhlIG5ldyBETUEgQVBJLCB0aGUgS1ZNDQphbmQgSU9NTVVGRCB1c2UgY2FzZXMgSSBt
ZW50aW9uZWQuDQoNCj4+IEluIHRoaXMgY2FzZSBYdSBpcyBleHBvcnRpbmcgTU1JTyBmcm9tIFZG
SU8gYW5kIGltcG9ydGluZyB0byBLVk0gYW5kDQo+PiBpb21tdWZkLg0KPiANCj4gICAgU28gYmFz
aWNhbGx5IGEgcG9ydGlvbiBvZiBhIFBDSWUgQkFSIGlzIGltcG9ydGVkIGludG8gaW9tbXVmZD8N
Cg0KWWVhaCwgYW5kIEtWTS4gQW5kIFJNREEuDQoNCj4gICAgVGhlbiBjcmVhdGUgYW4gaW50ZXJm
YWNlIGJldHdlZW4gVkZJTyBhbmQgS1ZNL2lvbW11ZmQgd2hpY2ggYWxsb3dzIHRvDQo+ICAgIHBh
c3MgZGF0YSBiZXR3ZWVuIHRoZXNlIHR3by4NCj4gICAgV2UgYWxyZWFkeSBkbyB0aGlzIGJldHdl
ZW4gRE1BLWJ1ZiBleHBvcnRlcnMvaW1wb3J0ZXJzIGFsbCB0aGUgdGltZS4NCj4gICAgSnVzdCBk
b24ndCBtYWtlIGl0IGdlbmVyYWwgRE1BLWJ1ZiBBUEkuDQoNCkkgaGF2ZSBubyBpZGVhIHdoYXQg
dGhpcyBtZWFucy4gV2UnZCBuZWVkIGEgbmV3IEFQSSBsaW5rZWQgdG8gRE1BQlVGDQp0aGF0IHdv
dWxkIGJlIG9wdGlvbmFsIGFuZCB1c2VkIGJ5IHRoaXMgcGFydCBvZiB0aGUgd29ybGQuIEFzIEkg
c2FpZA0KYWJvdmUgd2UgY291bGQgcHJvdGVjdCBpdCB3aXRoIHNvbWUgbW9kdWxlIG5hbWVzcGFj
ZSBzbyB5b3UgY2FuIGtlZXANCml0IG91dCBvZiBEUk0uIElmIHlvdSBjYW4gYWdyZWUgdG8gdGhh
dCB0aGVuIGl0IHNlZW1zIGZpbmUuLg0KDQo+ID4gU29tZW9uZSBlbHNlIGhhZCBzb21lIHVzZSBj
YXNlIHdoZXJlIHRoZXkgd2FudGVkIHRvIHB1dCB0aGUgVkZJTyBNTUlPDQo+ID4gUENJZSBCQVIg
aW50byBhIERNQUJVRiBhbmQgc2hpcCBpdCBpbnRvIGEgR1BVIGRyaXZlciBmb3INCj4gPiBzb21l
dGhpbmdzb21ldGhpbmcgdmlydHVhbGl6YXRpb24gYnV0IEkgZGlkbid0IHVuZGVyc3RhbmQgaXQu
DQo+IA0KPiAgICBZZWFoLCB0aGF0IGlzIGFscmVhZHkgcGVyZmVjdGx5IHN1cHBvcnRlZC4NCg0K
Tm8sIGl0IGlzbid0LiBDaHJpc3RvcGggaXMgYmxvY2tpbmcgRE1BQlVGIGluIFZGSU8gYmVjYXVz
ZSBoZSBkb2VzIG5vdA0Kd2FudCB0byBzY2F0dGVybGlzdCBhYnVzZXMgdGhhdCBkbWFidWYgaXMg
ZG9pbmcgdG8gcHJvbGlmZXJhdGUuICBXZQ0KYWxyZWFkeSBoYXZlIHNvbWUgQVJNIHN5c3RlbXMg
d2hlcmUgdGhlIG5haXZlIHdheSB0eXBpY2FsIERNQUJVRg0KaW1wbGVtZW50YXRpb25zIGFyZSBz
ZXR0aW5nIHVwIFAyUCBkb2VzIG5vdCB3b3JrLiBUaG9zZSBzeXN0ZW1zIGhhdmUNClBDSSBvZmZz
ZXQuDQoNCkdldHRpbmcgdGhpcyB0byBiZSAicGVyZmVjdGx5IHN1cHBvcnRlZCIgaXMgd2h5IHdl
IGFyZSB3b3JraW5nIG9uIGFsbA0KdGhlc2UgYXNwZWN0cyB0byBpbXByb3ZlIHRoZSBETUEgQVBJ
IGFuZCByZW1vdmUgdGhlIHNjYXR0ZXJsaXN0DQphYnVzZXMuDQoNCj4+IEluIGEgY2VydGFpbiBz
ZW5zZSBDQyBpcyBhIFRFRSB0aGF0IGlzIGJ1aWx0IHVzaW5nIEtWTSBpbnN0ZWFkIG9mIHRoZQ0K
Pj4gVEVFIHN1YnN5c3RlbS4gVXNpbmcgS1ZNIGFuZCBpbnRlZ3JhdGluZyB3aXRoIHRoZSBNTSBi
cmluZ3MgYSB3aG9sZQ0KPj4gc2V0IG9mIHVuaXF1ZSBjaGFsbGVuZ2VzIHRoYXQgVEVFIGdvdCB0
byBhdm9pZC4uDQo+IA0KPiAgICBQbGVhc2UgZ28gb3ZlciB0aG9zZSBjaGFsbGVuZ2VzIGluIG1v
cmUgZGV0YWlsLiBJIG5lZWQgdG8gZ2V0IGEgYmV0dGVyDQo+ICAgIHVuZGVyc3RhbmRpbmcgb2Yg
d2hhdCdzIGdvaW5nIG9uIGhlcmUuDQo+ICAgIEUuZy4gd2hvIG1hbmFnZXMgZW5jcnlwdGlvbiBr
ZXlzLCB3aG8gcmFpc2VzIHRoZSBtYWNoaW5lIGNoZWNrIG9uDQo+ICAgIHZpb2xhdGlvbnMgZXRj
Li4uDQoNClRFRSBicm9hZGx5IGhhcyBMaW51eCBsYXVuY2ggYSBzZWN1cmUgd29ybGQgdGhhdCBk
b2VzIHNvbWUgcHJpdmF0ZQ0Kd29yay4gVGhlIHNlY3VyZSB3b3JsZHMgdGVuZCB0byBiZSB2ZXJ5
IGxpbWl0ZWQsIHRoZXkgYXJlIG5vdCByZWFsbHkNClZNcyBhbmQgdGhleSBkb24ndCBydW4gZnVs
bCBMaW51eCBpbnNpZGUNCg0KQ0MgYnJvYWRseSBoYXMgdGhlIHNlY3VyZSB3b3JsZCBleGlzdCBh
dCBib290IGFuZCBsYXVuY2ggTGludXggYW5kDQpwcm92aWRlIHNlcnZpY2VzIHRvIExpbnV4LiBU
aGUgc2VjdXJlIHdvcmxkIGVuZm9yY2VzIG1lbW9yeSBpc29sYXRpb24NCm9uIExpbnV4IGFuZCBn
ZW5lcmF0ZXMgZmF1bHRzIG9uIHZpb2xhdGlvbnMuIEtWTSBpcyB0aGUgZ2F0ZXdheSB0bw0KbGF1
bmNoIG5ldyBzZWN1cmUgd29ybGRzIGFuZCB0aGUgc2VjdXJlIHdvcmxkcyBhcmUgZnVsbCBWTXMg
d2l0aCBhbGwNCnRoZSBkZXZpY2UgZW11bGF0aW9uIGFuZCBtb3JlLg0KDQpJdCBDQyBpcyBtdWNo
IG1vcmUgbGlrZSB4ZW4gd2l0aCBpdCdzIGh5cGVydmlzb3IgYW5kIERPTTAgY29uY2VwdHMuDQoN
Cj5Gcm9tIHRoaXMgcGVyc3BlY3RpdmUsIHRoZSBvbmx5IHRoaW5nIHRoYXQgbWF0dGVycyBpcyB0
aGF0IENDIHNlY3VyZQ0KbWVtb3J5IGlzIGRpZmZlcmVudCBhbmQgc3BlY2lhbCAtIGl0IGlzIHZl
cnkgbXVjaCBsaWtlIHlvdXIgcHJpdmF0ZQ0KbWVtb3J5IGNvbmNlcHQuIE9ubHkgc3BlY2lhbCBw
bGFjZXMgdGhhdCB1bmRlcnN0YW5kIGl0IGFuZCBoYXZlIHRoZQ0KcmlnaHQgSFcgY2FwYWJpbGl0
eSBjYW4gdXNlIGl0LiBBbGwgdGhlIGNvbnN1bWVycyBuZWVkIGEgQ1BVIGFkZHJlc3MNCnRvIHBy
b2dyYW0gdGhlaXIgSFcgYmVjYXVzZSBvZiBob3cgdGhlIHNlY3VyZSB3b3JsZCBzZWN1cml0eSB3
b3Jrcy4NCg0KSmFzb24NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
