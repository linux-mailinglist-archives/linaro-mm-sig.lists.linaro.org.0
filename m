Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UG1gI4cS4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:47:03 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 382EB411F57
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:47:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4E28C404F3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:47:02 +0000 (UTC)
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11012025.outbound.protection.outlook.com [52.101.66.25])
	by lists.linaro.org (Postfix) with ESMTPS id DC9043F806
	for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Feb 2026 13:26:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=NXP1.onmicrosoft.com header.s=selector1-NXP1-onmicrosoft-com header.b=bdqldN5M;
	spf=pass (lists.linaro.org: domain of larisa.grigore@oss.nxp.com designates 52.101.66.25 as permitted sender) smtp.mailfrom=larisa.grigore@oss.nxp.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=none) header.from=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z4l7DoHedgpO8a1DdmDHalhmaSVxqk/O2Vfli9VkC3Zfe1WoEz2nGL8gUCVjNhsB3AwISW0oib44O4R47khN6E8o1YEgBQQPlc+OcrEtWmKgpn0P1DWWRv7xcccko9d3P4rLbZ67sITNzjABW0BkSf8P6QRThKBzilwgQwNCDkNuhNFup24iUfHoUxJVYkifpvXgNbvcKrp/0IsUXVD58drVdblfm7Vy6IyH8xKDWKnJjHcTd9D9c7VwT8nrcpRftf6X22nN6643onzg98PfS6hQxarh9GOw60Z5TY1cCfIFfOWSFpjQJLxWAY9x+Gn4KNuLBRE3ECFqe3ioI1r1MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NIOlmSLfyHWMJkwBsoXNcXaV0rpEOPIoUUE8evAgFW8=;
 b=tLVb15c5X42Ntg/GxZ6b4fcFTlwY5MTFgX+fK147L/GJMhbULzGCcV+Qu6ZI6m9YicAmuCxmVye9oVXu3kPdSolmr0e+C+oSwxSpXFKKf+nzAho+zhIFgppodDV5E96B3JsaiODyz6HhRuWWlEC6IFIPC6D5lMYQGRPUMkEwTFmO4e1wzncAqjG6r7S7ria/PEN3kk2DO75PeHyjvE3IlT7ottEGjoiYvcMP6zA6f7Xxvllaio2UuBTcDPlNSpXe1UuYz4h0O8kVPXvbCabSChkwwX+eBl3nn6kTEK8X1OGF94xxEm46p2Nn24ENVrHppPpic91vcTWvyIDgz1ev7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NIOlmSLfyHWMJkwBsoXNcXaV0rpEOPIoUUE8evAgFW8=;
 b=bdqldN5Mxsv1dXayNOJlp3kNILSRxuclGDx88ktpBPCTlfzuGTd7DDTbEpEmRSnamAZ49M3EfzCn941VGhqpRx1MmVVh1Yr8oT370jizAS5B+TTkKUWHCXIT37t90Ny9aTnQQHjAwS8yLpXdptTmjjq3WVSQTCEuu8OgMAusxzl79QU/L5sRt4YZjJo++jB5E7twrvhGMQXsAJgcnmI5uNH6VyjpnAzFdo1fpsYHYH4t/XqapFgUaTZAQjUublKMOhl/V8ZrQdVQQJotYl+PY/iT49d5virEZ7VUNSKVdHUtzE8OOrrJjN4FrdCFgRElmiD+MH/3l3huodEFTgzdjA==
Received: from PA4PR04MB9224.eurprd04.prod.outlook.com (2603:10a6:102:2a3::5)
 by DU0PR04MB9586.eurprd04.prod.outlook.com (2603:10a6:10:31e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.14; Wed, 18 Feb
 2026 13:26:33 +0000
Received: from PA4PR04MB9224.eurprd04.prod.outlook.com
 ([fe80::8e54:4d38:df79:fd63]) by PA4PR04MB9224.eurprd04.prod.outlook.com
 ([fe80::8e54:4d38:df79:fd63%7]) with mapi id 15.20.9632.010; Wed, 18 Feb 2026
 13:26:33 +0000
Message-ID: <e9c214be-840a-43fe-b24d-610fe90269b2@oss.nxp.com>
Date: Wed, 18 Feb 2026 15:26:29 +0200
User-Agent: Mozilla Thunderbird
To: Krzysztof Kozlowski <krzk@kernel.org>, gregkh@linuxfoundation.org,
 jirislaby@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com,
 chester62515@gmail.com, cosmin.stoica@nxp.com, adrian.nitu@freescale.com,
 stefan-gabriel.mirea@nxp.com, Mihaela.Martinas@freescale.com
References: <20260216150205.212318-1-larisa.grigore@oss.nxp.com>
 <20260216150205.212318-9-larisa.grigore@oss.nxp.com>
 <24443e02-886e-48e2-911e-e4093d251155@kernel.org>
Content-Language: en-US
From: Larisa Ileana Grigore <larisa.grigore@oss.nxp.com>
In-Reply-To: <24443e02-886e-48e2-911e-e4093d251155@kernel.org>
X-ClientProxiedBy: AS4P195CA0008.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:20b:5e2::13) To PA4PR04MB9224.eurprd04.prod.outlook.com
 (2603:10a6:102:2a3::5)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9224:EE_|DU0PR04MB9586:EE_
X-MS-Office365-Filtering-Correlation-Id: 10efdcc7-203f-4a48-9633-08de6ef15525
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|376014|7416014|366016|19092799006|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?T2ZaWHhWKzlxdmRrVXdWRWFHS0J0UDBJVS9TL3pGZWhBOFZwYzMrYWRoQzMr?=
 =?utf-8?B?SnF2ZFZpQkgrMnpnYk56QU1CWGN3YUo0Smlyemw0WFg5RlkwMDUxcUJxaWdj?=
 =?utf-8?B?K0V4QVRMYnBvdFlMaTQ1SnVLMTZuZDJjcjRUS3pZalVrQVI2Q3RtcmpuckNx?=
 =?utf-8?B?QXdQTUVEYUxUMmZxL01HeDk5cjdkQjNiSytnVlpIZnREODNSdGltYjJiYWd0?=
 =?utf-8?B?MHdDUktYNjhqTTdXR21nR1I2UlFiMjhBekVmS3NZWStGUTFrOFpBTlRsa2N5?=
 =?utf-8?B?UHBOaTRWZXRMRTAySVl2dm5wMytzNWpUTXpsVkQzUXRWWUxsWkFJbWpwSjJx?=
 =?utf-8?B?UFNvMXlLc1JMaHd0L28zZWxHQTN3dHBacTRXM2dpL3FMWWFJUjgvaWp6M3ZB?=
 =?utf-8?B?Tm1UQkppYjNZakVCeFVpVUozMG1ad2ZicmR0SDNWWmIzN2lHNkE1V2Vwb2FH?=
 =?utf-8?B?SWFEKzRGOTVUUmJLQkFDV2dub1docHlNQlozc0V2VmZYemVxcW9KNEdWUEds?=
 =?utf-8?B?cHJRbllBSmZXa1MvMUd0ckxPOWFlenVtYmI0YjZLSkdNQlQzRkJ6UFAzL0g4?=
 =?utf-8?B?dmF2a0tVMGVLNFRqR0pVWEhtTzVadloxSkh4bVptenIyV2xoRUI4Z3N3cFV0?=
 =?utf-8?B?T3d3ZlFVcDRpQlFhejV3RkQ3eGQ3VjBIaHZIQkcxVVBLK0pCZ2JTb25DdTRV?=
 =?utf-8?B?MWgvWkpGNUFaMVdpSkRIUUtWZnI3V1Avd2p5L0ZobklOeVAvVXF4d3lRN3ZI?=
 =?utf-8?B?eDl5dFpsOTQxK0FxZ1d5UEs4bzY0Ulo4ekJWVXFQbWYxRGxUcUxBVElDS00x?=
 =?utf-8?B?bjNobkJ6a2FGUTdKWEhoMHd1YkluaVFuTGt3dlB3N1h5THFQUk9MMXdkMnNX?=
 =?utf-8?B?WW8vTVB6dFdVd0x2Y1dsTTY5RGJDeGJJMGFaeXd5MStIUWNYTm9VUlpBNnJO?=
 =?utf-8?B?SzFvNGp5aG5zK012ejJUMFlJY2hHMFU1YkR1UDV3Umd5aWhVZXN3bzUxQTUw?=
 =?utf-8?B?cVBzUXZObTNqM1h6eXdPZVpUcHNvV3FwZC9PUkgzZ2dSWGJ3eWQ0R0FHOWFw?=
 =?utf-8?B?cDFyQ1BJbmxjRFkrbG1rUVBaclhCWm91QzNyeUhoc1YvQkY1TFFZMVdGK1dx?=
 =?utf-8?B?MkJORU9oSHRVekN6Si84c2UzcVdCa1FwOTc0enRBOXlQbGloWlczL1lLQ1d5?=
 =?utf-8?B?aW8xenhMVzFpWUNNVlFvL28yRkxjeWlHN20vclBqSTdWR1FzR2RZU2pqaVdi?=
 =?utf-8?B?K09LZVZ4SUxUc3hmMFhXUzFsUFNXK3Vxd1BzOVhVUWlMOUpDS3NrYUVGQy84?=
 =?utf-8?B?L3BlRXdydENtQjg2R3hxRlNveit0cHBRd3FUWjhrVzVqOExGblA3R1o0WG03?=
 =?utf-8?B?YWhzOThNR3A4YktvaXAwd2M5NDJhOG5lMkJwTGt5V2FLSG5vU2Urc0FYZkpt?=
 =?utf-8?B?MFYvN3Y3LzdUVE5yaEY2S05vTGZpcmVRV1NsUlE3YWdGQTl0dmc1YUgvR1BD?=
 =?utf-8?B?UVErSDJ1VVJhUFJHN3g0Sk5oOExtTVV0dnlsMHNQazdDTnVxMXhxSDUvQ1RZ?=
 =?utf-8?B?T2VwQmp3K2RHeXdnS3h2NEVZVTNLQ3IxTDZiMkVTMjRkMllYM3hXUDB3NkVw?=
 =?utf-8?B?SVAxSWphK1hiTHk1ZkJRUm9KRTU4ZGRaUlBaSmNwb0s5VEswcUZ4TDViUmQ5?=
 =?utf-8?B?NWdPZUJsWThmcjc0cmFvaDJOS2lMT2lPVkt4cEZjbDRURXlXR0dPSEhRV09x?=
 =?utf-8?B?bW5yWlRKTDAvZXNEOHZrM3ZHbVEwSnFNRExKemZYazhNaGxReXBpYXJxQ2FC?=
 =?utf-8?B?Q2R5T0pucjR2WEVlTWZ1RnZmRUJLZGlkWHJhODlRaGxWcElGRmV0V0c2WWcz?=
 =?utf-8?B?YzEvTW54WnRkUGlnTDAzOWMrVGJCaC8vU3RYa2JlN0RuR1pTNEJXWk1hZ1Bk?=
 =?utf-8?B?UUY2b3ZFTFBIV3VhaGxHazJQV3N6aFpUVXBoTnNVdWMrTmdVLzBxelFVTDNn?=
 =?utf-8?B?UVVKMnFZVy9rU2VueTVCckVQV2VqQlNUZHNuckNiTm5zSHFqbzUwL2ljVUl1?=
 =?utf-8?B?Vm41ZzdKSjNFNnh6VzlQd25TMVpMak9TQlQ4NjNYVktjenpSZHlxNjQzdmky?=
 =?utf-8?B?eUhOamhPQnh5Q3V1TW1la0dmMGlHcktueWEzelFwRkpSZkRNcGt4N3hsU3Yx?=
 =?utf-8?B?MFE9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9224.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016)(19092799006)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TDE1K3o5dVFiajAzTFhCcjc4TU9BcXIyMGdaNzBJUVBLRnNsYS9nK2FBYzdu?=
 =?utf-8?B?UTFpZytKNXE5d0xpaEZmS1o1Z1ZpaTFIeTNQNlQ3T3pFR3J6NmtrWjNiVjlZ?=
 =?utf-8?B?YlIwQldKRDBQSWx0ZUE1MEJoYzIxc1dMT0lZYVF0MWN2NXM0S2NzOXBlWkY4?=
 =?utf-8?B?a0pJSnRTZ0hSeWswU2s1em1mNWhSTzZuVUVEZitvdU9WbFp3Rnd2dnNQS0ZJ?=
 =?utf-8?B?S2RxeFpsdFljV3RzUGNjOStOVjJaRkwrMDF3b1pkZXdKTkw1aVFtZURzNmI2?=
 =?utf-8?B?TGFVVlkzT3lZQzFJemduRUoxQ2Y2RzYzVVhDTkIzR3pSd0IwTkNOZ1Irenpq?=
 =?utf-8?B?bUV6bUdWblZhSGZrU1htNzBCb0c2OFIrTktISVNPMWlZWGkyUDAzSkpseHMw?=
 =?utf-8?B?WGN5MDBHMXlmbXBjSkxUcFJ6MjhPZmg5K2VuWE9scmcrZitkdHZpbEN2TXF0?=
 =?utf-8?B?ZUhCR05iNWRmWkNTMTlEYlpjb2pxYmFhN01JY3NWWlFxU1JjRmxZZzl0UUEy?=
 =?utf-8?B?c0lGUE8zbi94Z1dpakRWRnF2ajgwbEE3RytZRzZWN0RJYVFEbmJPejNMb3ky?=
 =?utf-8?B?NGhLVVhtdkphUGhFdU45RHVQc2FoWEZSMmtaQTY3aFBnZk1YZ0h3a2gwbUtS?=
 =?utf-8?B?ZWRPTklVd0ZYd0V6QlljWWVWREtKTkt6SUdrM2ZvYWU4dkxHUWVQTTg0T09N?=
 =?utf-8?B?SGNOeDhmVXdQQ01JYVptM0F2T3A1TGU1b2QrTDVIQkU3NEd2OHMvcjFsK21k?=
 =?utf-8?B?T0VqMnVCc2ozbjB6N1N0TkdNZFZRcXFZZkZ4RTM0VC9ROEExaFpJWTVoclE3?=
 =?utf-8?B?c2N3alRLU3dXaU50alBBdkhmd1NLVkI0OFRCNUd1WmV0SStEMEdPZUVIOGUr?=
 =?utf-8?B?dlBkOWIyWmI2ZjRzNnZRSTMwbUZ4T2NRdmZGcStqQlRlbElEbkpMaU5SaXNq?=
 =?utf-8?B?b2JzZFB6b01jOXV3VjdiRnVUY3p3VHpxZUpYd2YzOGoyWUo2Qm5XZGtFcy9r?=
 =?utf-8?B?VmFVMWZTeTJoT2JjUERSUUQ3azhUaStRZUJpcjRERkxrL3hqZ1ExdzVWNGlN?=
 =?utf-8?B?ay82Z1RpY2gxYU0zRXVZdDFrMFh5aUhNSUc0NlFFVEUrZWlOL2JqWXdjZWNE?=
 =?utf-8?B?aFVoUGtSaXdwbGdPWDVHbkplME0yOHRCdkdPaU5ncTlxOE1aRXkyTUV2aUdQ?=
 =?utf-8?B?TVlrb1JvdFVRbXZpN0hHVER3TTlvM3NybmlLVGNIbU9UZjB0eTErQmdWU2Rh?=
 =?utf-8?B?T01QUmE3dDlHK0pMQkJaMmxRY3VGeU41QWxIeG11RTVvNEtVWlJUS0RrNTFz?=
 =?utf-8?B?OG1aTmY3dlZHazZ6dlBHbnlUcWI2YTFoNzBqdnRuRUp2dyt0d2YvaGdaVDJG?=
 =?utf-8?B?V05qY0tUYkNseWdac1M3WEJTZHF2aVBhb1RYNlZkQVhaMTg0dXNqOVZlVmRu?=
 =?utf-8?B?Mk5Wb0Nadm9UdEpjMm9hSWkzNU1JRnRNVzliK0hzSlhQODZmRXdOai9IOG05?=
 =?utf-8?B?Z3NHNkdPTENVbzJRaWVRR2VxUk56elRvalZhZlhEV1JkRk5YdzFkcUM0bnpJ?=
 =?utf-8?B?eUVwaWVlUFh4RVpoL0FZSHpCUFgyNDdEbnk2Zktua3J5SVB3YnR6Y01JRld0?=
 =?utf-8?B?Mk4xSld6a3BHUnJIa2YrZXhiQ2ozN0lYcWgwUTVmQnZPOTFkQ2ZQYkdyY3VF?=
 =?utf-8?B?SEREa1A1eHRVTXdobjVFTmxqRDE2NFNsYlNOQXpaYXZQODRvQm5YbkVkTmVi?=
 =?utf-8?B?TnhERmlvOHcvOU5GWEVlbSsvV1Voa3VYNUEzYngwUHlyaE4wQ2F6dFp0L2lL?=
 =?utf-8?B?NjRiTHhZWnFGcEFtSFU2V25BM2tCS2djR2JnY2xnTWxBV3dYZHJFN09XeWd2?=
 =?utf-8?B?NDFaYXRpQkVTQXB0Yi9CVTZPVlFDcTA4MWN4cTVhMkp6TFJUUTBxSDk3RkQ3?=
 =?utf-8?B?UHpPS2RPc0xlam9VM2xKTzRBWXphMDhQeXRZS1hzenpEOXBsbFNkOWNuZkhI?=
 =?utf-8?B?Rm8rWDdjTzJUQURFejhIWTRtNVdtNUhkR2xtSnczeHNmemN0a09RYmd3RkxS?=
 =?utf-8?B?U0c3Z2NDZVFvaVN5UzRFRlNWWjdZVDRkNmZCWGdMUnRCa05oRVRjeU5xNnoy?=
 =?utf-8?B?MnovMjdMWVZFUUF4R29FYkJzQStoc0UvV1R2Q21hY1JHSHVNZWthRGlUeVFW?=
 =?utf-8?B?czZiVUd2R0RSdHNtdDMreVVmTDRIZzhNaEhWa0pCWWhCeXNlek9nSGxURFFv?=
 =?utf-8?B?R2dzc1VyMWJpTS9sV0NzUlNBelg1NzZSZU1JY0puWU9rWVVLVU1HQzdKc1pa?=
 =?utf-8?B?UUFEejRVNFdpTlFKRHUrZVVXTTJRZnA4KzRyeStBaFFmeXYrcWpxZz09?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10efdcc7-203f-4a48-9633-08de6ef15525
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9224.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2026 13:26:33.0603
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 93DN4AR5x3pCIPidFcLOE1UpNhaz/voMbNXwHXLQZAhMZX/LyvraYHUuY15/zivKexAnPizywyKJbEkbDPX41A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR04MB9586
X-Spamd-Bar: ----
X-MailFrom: larisa.grigore@oss.nxp.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 36IED66DOS4DDP7R4TEVE5FH6Q2ATC3Y
X-Message-ID-Hash: 36IED66DOS4DDP7R4TEVE5FH6Q2ATC3Y
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:28 +0000
CC: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, s32@nxp.com, imx@lists.linux.dev, clizzi@redhat.com, aruizrui@redhat.com, eballetb@redhat.com, echanude@redhat.com, jkangas@redhat.com, Radu Pirea <radu-nicolae.pirea@nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 08/13] dt-bindings: serial: fsl-linflexuart: add clock input properties
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/36IED66DOS4DDP7R4TEVE5FH6Q2ATC3Y/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[NXP1.onmicrosoft.com:s=selector1-NXP1-onmicrosoft-com];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DATE_IN_PAST(1.00)[1371];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linuxfoundation.org,linaro.org,amd.com,gmail.com,nxp.com,freescale.com];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[larisa.grigore@oss.nxp.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.109];
	DKIM_TRACE(0.00)[NXP1.onmicrosoft.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,oss.nxp.com:mid,nxp.com:email,401c8000:email]
X-Rspamd-Queue-Id: 382EB411F57
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMi8xNi8yMDI2IDU6MTAgUE0sIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6DQo+IE9uIDE2
LzAyLzIwMjYgMTY6MDIsIExhcmlzYSBHcmlnb3JlIHdyb3RlOg0KPj4gRnJvbTogUmFkdSBQaXJl
YSA8cmFkdS1uaWNvbGFlLnBpcmVhQG54cC5jb20+DQo+Pg0KPj4gQWRkIG9wdGlvbmFsIHN1cHBv
cnQgZm9yIHRoZSB0d28gY2xvY2sgaW5wdXRzIHVzZWQgYnkgdGhlIExJTkZsZXhEIFVBUlQNCj4+
IGNvbnRyb2xsZXI6DQo+PiAtICJsaW4iOiBMSU5fQkFVRF9DTEsNCj4+IC0gImlwZyI6IExJTkZM
RVhEX0NMSw0KPj4NCj4+IFRoZSBjbG9jayBpbnB1dHMgYXJlIGtlcHQgb3B0aW9uYWwgdG8gbWFp
bnRhaW4gY29tcGF0aWJpbGl0eSB3aXRoIHRoZQ0KPj4gUzMyVjIzNCBwbGF0Zm9ybS4NCj4gDQo+
IERvZXMgUzMyVjIzNCBoYXZlIHRoZSBjbG9ja3M/IEkgZG9uJ3QgdW5kZXJzdGFuZCB0aGUgIm1h
aW50YWluDQo+IGNvbXBhdGliaWxpdHkiIGluIHRoaXMgY29udGV4dC4gRWl0aGVyIHlvdSBoYXZl
IG9yIHlvdSBoYXZlIG5vdCBjbG9ja3MsDQo+IHdoaWNoIHNob3VsZCBiZSBleHByZXNzZWQgaW4g
c2NoZW1hICg6IGZhbHNlLCBzZWUgZXhhbXBsZSBzY2hlbWEpLg0KPiANCkhlbGxvIEtyenlzenRv
ZiwNCg0KVGhhbmtzIGZvciBwb2ludGluZyB0aGlzIG91dCEgSSB3aWxsIHVwZGF0ZSBib3RoIHRo
ZSBzY2hlbWEgYW5kIHRoZSANCmNvbW1pdCBkZXNjcmlwdGlvbi4NClMzMlYyMzQgZG9lcyBub3Qg
ZXhwb3NlIHRoZXNlIGNsb2NrcyBpbiBpdHMgZGV2aWNlIHRyZWXigJRvbiB0aGlzIHBsYXRmb3Jt
IA0KdGhlIExJTkZsZXhEIGNsb2NrcyBhcmUgc2V0IHVwIGFuZCBlbmFibGVkIGJ5IFXigJFCb290
LCBzbyB0aGV5IGFyZSBub3QgDQphdmFpbGFibGUgdG8gdGhlIGtlcm5lbC4NClRoZSBjaGFuZ2Vz
IGluIHRoaXMgcGF0Y2ggYXJlIGludGVuZGVkIHNwZWNpZmljYWxseSBmb3IgUzMyRzIvRzMsIHdo
ZXJlIA0KdGhlIGNsb2NrcyBhcmUgcHJvdmlkZWQgaW4gdGhlIERUIGFuZCByZXF1aXJlZCBieSB0
aGUgZHJpdmVyLg0KDQo+Pg0KPj4gU2lnbmVkLW9mZi1ieTogUmFkdSBQaXJlYSA8cmFkdS1uaWNv
bGFlLnBpcmVhQG54cC5jb20+DQo+PiBDby1kZXZlbG9wZWQtYnk6IExhcmlzYSBHcmlnb3JlIDxs
YXJpc2EuZ3JpZ29yZUBvc3MubnhwLmNvbT4NCj4+IFNpZ25lZC1vZmYtYnk6IExhcmlzYSBHcmln
b3JlIDxsYXJpc2EuZ3JpZ29yZUBvc3MubnhwLmNvbT4NCj4+IC0tLQ0KPj4gICAuLi4vYmluZGlu
Z3Mvc2VyaWFsL2ZzbCxzMzItbGluZmxleHVhcnQueWFtbCAgIHwgMTggKysrKysrKysrKysrKysr
KysrDQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspDQo+Pg0KPj4gZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zZXJpYWwvZnNsLHMzMi1s
aW5mbGV4dWFydC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Nlcmlh
bC9mc2wsczMyLWxpbmZsZXh1YXJ0LnlhbWwNCj4+IGluZGV4IDQxNzFmNTI0YTkyOC4uODg1ZjBi
MWIzNDkyIDEwMDY0NA0KPj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3NlcmlhbC9mc2wsczMyLWxpbmZsZXh1YXJ0LnlhbWwNCj4+ICsrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9zZXJpYWwvZnNsLHMzMi1saW5mbGV4dWFydC55YW1sDQo+PiBA
QCAtMzQsNiArMzQsMTQgQEAgcHJvcGVydGllczoNCj4+ICAgICBpbnRlcnJ1cHRzOg0KPj4gICAg
ICAgbWF4SXRlbXM6IDENCj4+ICAgDQo+PiArICBjbG9ja3M6DQo+PiArICAgIG1heEl0ZW1zOiAy
DQo+PiArDQo+PiArICBjbG9jay1uYW1lczoNCj4+ICsgICAgaXRlbXM6DQo+PiArICAgICAgLSBj
b25zdDogbGluDQo+PiArICAgICAgLSBjb25zdDogaXBnDQo+PiArDQo+PiAgIHJlcXVpcmVkOg0K
Pj4gICAgIC0gY29tcGF0aWJsZQ0KPj4gICAgIC0gcmVnDQo+PiBAQCAtNDgsMyArNTYsMTMgQEAg
ZXhhbXBsZXM6DQo+PiAgICAgICAgICAgcmVnID0gPDB4NDAwNTMwMDAgMHgxMDAwPjsNCj4+ICAg
ICAgICAgICBpbnRlcnJ1cHRzID0gPDAgNTkgND47DQo+PiAgICAgICB9Ow0KPj4gKw0KPj4gKyAg
LSB8DQo+PiArICAgIHNlcmlhbEA0MDFjODAwMCB7DQo+PiArICAgICAgICBjb21wYXRpYmxlID0g
Im54cCxzMzJnMi1saW5mbGV4dWFydCIsDQo+PiArICAgICAgICAgICAgICAgICAgICAgImZzbCxz
MzJ2MjM0LWxpbmZsZXh1YXJ0IjsNCj4+ICsgICAgICAgIHJlZyA9IDwweDQwMUM4MDAwIDB4MzAw
MD47DQo+PiArICAgICAgICBpbnRlcnJ1cHRzID0gPDAgODIgMT47DQo+PiArICAgICAgICBjbG9j
a3MgPSA8JmNsa3MgMTQ+LCA8JmNsa3MgMTM+Ow0KPj4gKyAgICAgICAgY2xvY2stbmFtZXMgPSAi
bGluIiwgImlwZyI7DQo+IA0KPiBKdXN0IGFkZCB0aGUgY2xvY2tzIHRvIGV4aXN0aW5nIGV4YW1w
bGUuIE5vIG5lZWQgZm9yIG5ldyBleGFtcGxlIGZvcg0KPiBlYWNoIG5ldyBwcm9wZXJ0eS4NCj4g
DQo+PiArICAgIH07DQoNClRoZSBleGlzdGluZyBub2RlIHJlZmVycyB0byBTMzJWMjM0IHdoaWNo
IGRvZXMgbm90IGV4cG9zZSBhbnkgY2xvY2sgDQpwcm9wZXJ0aWVzIGluIGl0cyBkZXZpY2UgdHJl
ZS4gQmVjYXVzZSBvZiB0aGlzLCBJIGNvdWxkbuKAmXQgZXh0ZW5kIHRoYXQgDQpleGFtcGxlIHdp
dGggY2xvY2tzIGFuZCBjbG9jay1uYW1lcy4gVGhlIGFkZGl0aW9uYWwgZXhhbXBsZSBpcyB0aGVy
ZSANCm9ubHkgdG8gaWxsdXN0cmF0ZSB0aGUgUzMyRzIgY2FzZSwgd2hlcmUgdGhlIGNsb2NrcyBh
cmUgcmVxdWlyZWQgYW5kIA0KYWN0dWFsbHkgcHJlc2VudCBpbiB0aGUgZGV2aWNlIHRyZWUuIFNo
b3VsZCBJIHJlbW92ZSBpdD8NCg0KQmVzdCByZWdhcmRzLA0KTGFyaXNhDQo+IA0KPiBCZXN0IHJl
Z2FyZHMsDQo+IEtyenlzenRvZg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
