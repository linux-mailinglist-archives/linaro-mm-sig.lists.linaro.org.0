Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iMXiBjsS4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:45:47 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A86E2411EE0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:45:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4F5A84504A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:45:45 +0000 (UTC)
Received: from AM0PR02CU008.outbound.protection.outlook.com (mail-westeuropeazon11013022.outbound.protection.outlook.com [52.101.72.22])
	by lists.linaro.org (Postfix) with ESMTPS id 7034C3F9AC
	for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Feb 2026 15:02:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=NXP1.onmicrosoft.com header.s=selector1-NXP1-onmicrosoft-com header.b=Z6cmkUP1;
	spf=pass (lists.linaro.org: domain of larisa.grigore@oss.nxp.com designates 52.101.72.22 as permitted sender) smtp.mailfrom=larisa.grigore@oss.nxp.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=none) header.from=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tBIEC7iEUKlIEDVrucVzYlKnSAhH/3/vD1OylJHMilQuiAkdL2ZUHrwmnfQgJS4WbBpYhBuUWSEHQhDqBqTWfAGtCfGO+yXBSUTzulCg8N+2d9z3DlsqCYaEfu9C9Wdi22/yWCCEZIlilkTJjNIo+mNdRq6f6NQKM2xRNjx2YWPUrcLKeIn9ISxOJsixIK+0eEpXcv1HGb7PVrclib/XuGaZjL8ApDbl2wA22QOyLvqDh+LNhKZsLMccrXMdGaa1ZKSLLQo1CVcIgfuHX/flTrgMHqGiSIP+b2zOJPqXj7NuWilwxbq2tF4eTP+BWZ/g8jJ6H2km4O5qO9hh3hGiNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AdfgNxiytRrBrIJOcW1dBjEiE/p8rtwowDMe5LTFapg=;
 b=r/YOCYz5pAjOPe8yIwgtyPLKLirZh2QWoQXkyxnQynVTSgCUMQbqKA0GMToGQgdmcCchmbQmyFM41zKGD1lnr1e4/wKRsBst0xUn2Kn6yl4BzDbLP7FoUNYyd24gWgnr1F3hM9ZMrkeu26ltlGvNplU1amL4q7a304HP2smm4wpTcDrsBeROe2Y9WZ8oOb9/BFBjsscZHISZ4SidXfs5qQVnxCXJMM/FK+ypXcZVQfuoBCABM12vetrN3A5h0gWwEDn6iQFBMy0VOdi4YQwUp8wVntMdPmM4lEuSP6hAJD9F77S/zXeuNd2s1egFjEkaxgjBljza87v4JoQyuDn/Mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AdfgNxiytRrBrIJOcW1dBjEiE/p8rtwowDMe5LTFapg=;
 b=Z6cmkUP1wf7nNmjlhajQIobJzPxaScHGvgZlHdRWVOQ40GvimK11S6NHln2OR2wwsK6775h9Atg7DFntfe5gwos5rs+xOdLxpQ0cpE8rVExnuRIn5N4unlkCBDYkQvTMk8HBGGVLIJv1zQztcP0uGyPDDtauqq9TsKyqgTfpjbFtiEg3VYn0O3BiVwF5EoaIfqlobc9BHDGxWVq7XuqX9i3IafcFclgq7Rn7sPSfz4uzcQgFvi0UYfx/4Wed8J0CD4wd75GmyNXJgANkupZtU4a5GzdbaaHYF5ZNBLoF77290bflkVAu2vltGHJnOYDdRGP/wDwu3suuPVOxZnIoYg==
Received: from PA4PR04MB9224.eurprd04.prod.outlook.com (2603:10a6:102:2a3::5)
 by MRWPR04MB12380.eurprd04.prod.outlook.com (2603:10a6:501:83::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Mon, 16 Feb
 2026 15:02:36 +0000
Received: from PA4PR04MB9224.eurprd04.prod.outlook.com
 ([fe80::8e54:4d38:df79:fd63]) by PA4PR04MB9224.eurprd04.prod.outlook.com
 ([fe80::8e54:4d38:df79:fd63%7]) with mapi id 15.20.9587.017; Mon, 16 Feb 2026
 15:02:35 +0000
From: Larisa Grigore <larisa.grigore@oss.nxp.com>
To: gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	sumit.semwal@linaro.org,
	christian.koenig@amd.com,
	chester62515@gmail.com,
	cosmin.stoica@nxp.com,
	adrian.nitu@freescale.com,
	stefan-gabriel.mirea@nxp.com,
	Mihaela.Martinas@freescale.com
Date: Mon, 16 Feb 2026 16:02:02 +0100
Message-ID: <20260216150205.212318-11-larisa.grigore@oss.nxp.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260216150205.212318-1-larisa.grigore@oss.nxp.com>
References: <20260216150205.212318-1-larisa.grigore@oss.nxp.com>
X-ClientProxiedBy: FR4P281CA0173.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b7::16) To PA4PR04MB9224.eurprd04.prod.outlook.com
 (2603:10a6:102:2a3::5)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9224:EE_|MRWPR04MB12380:EE_
X-MS-Office365-Filtering-Correlation-Id: 85100967-bf1f-42f8-b5bf-08de6d6c6b28
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|7416014|1800799024|19092799006|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?TTB5cXBwWUxMOHRZY3NUcFVhcHVTUERNV1ptRG4xYkh3WmZnMWNuSFZSQVU0?=
 =?utf-8?B?Z25XT2NXQ2JoU1RYNFpMM0Z2ek5TZWI5WWI2LzM5ZG1wci9jdUJkSXVkaFNx?=
 =?utf-8?B?QjYzckRHOFVYcGgwdm0vUVNlOU1OY01YZGdaWGFGRnhjR2htU1dLUkYzRVFV?=
 =?utf-8?B?dkNkRWtpZzlUS0NoZncyaXRmc3lMSUFFbVlQTjhzNEdBM05odEo5ZUM1MzNl?=
 =?utf-8?B?Vk5uei9RRWRKWXpGcjVYQ2dwQ1NNRStBaHRVMW0vRnVjb2todTFSNUtmSEFK?=
 =?utf-8?B?M1RXZGtrYk9oVmYrNHgzQnFsWVJ6aEMrK3pkNjhLYUxMN2NWTWp1ZjJhUWlB?=
 =?utf-8?B?T3ppajdxaUNnZ1hKLzNBV29CVEJSVm1xR2E0Uk04b09zN1pQMXRDT3NXdWg5?=
 =?utf-8?B?ai9uNWZzejFMT28zOEJkazZZL2ZpbmxzckRxOXNrYXcxOWk4bDF5OWRhUGI2?=
 =?utf-8?B?SnF5cDUrcUFRd0dHRkxvY0ZZZ1ZWaStISlpBSUNnUWpQY1pDeElJV3BVN3c0?=
 =?utf-8?B?eWZyMDFoSVcxbUFkMVJPbmpxWnd5dXdZUSsvSnNtVHJEYXZWU2hhSHNoNjQ3?=
 =?utf-8?B?Qm5qcmJOV0l3Y1NKclJQeXdRRU5qNGVUWVNVelA5MXZreDNadUo1ejFGUmsz?=
 =?utf-8?B?Vk1FT0hHQ04yQzljR0wxbXpYeVVrWVRIQUpvUnEvU01nWEJMSFJZRU1EWkIz?=
 =?utf-8?B?L0RTbC9nS0NqaDB0T2tvZ08rcVJkZUI0UE5BdTRURHNBU3FHV0ZlRWozK2p0?=
 =?utf-8?B?dTQrcUI0eitFMmZtZ3lFcFkrUFhoR3EvWmlublJzRi9GZHcxV3BuT2NYSmk2?=
 =?utf-8?B?T0JDaHAwY1YwRkp5LzdrY09PblR2YmROYWNhdUVlazVzRWJ2dS9ibnVkTmhy?=
 =?utf-8?B?MW5aUDV0RkZuYjJNVWxXalppMFphNW9ZeEI2VjJQSmpzbDgyN2V4R0JaZ21l?=
 =?utf-8?B?VksxMTI2aDk5Rm9ReHNVK1JqOW9KVlRwc1ZuUC9pSUJ3L01SdEJRa1J3bWY1?=
 =?utf-8?B?K1ZocW1sVkZ1ek9mb2hJOGZHWFZoUlgyZElOVUZJVW8ybDFMWWdSWmF4bkE1?=
 =?utf-8?B?SWhyTWpweTJBSzJ0V3JkRTIvZmpJZWNnRnRzdzQxZWpOenJ5SW9BTGxZOUN5?=
 =?utf-8?B?RnJOR25ZOEJTK0lwY1lnaTRpbHMwek4rSjE4NitCTVBYenVPbzRDYVp4MjU2?=
 =?utf-8?B?b1RIZXhFMGVHMVlYbHgxNTVwVWF0OUVaVVQvZSszSlMvaVV6clB2ZkdhNDN0?=
 =?utf-8?B?aTU2VTByMVBVOUdoNzZxQlJ4SmpnYjd1L2d4ajBPYno0dkRNSy81T2xQZkFL?=
 =?utf-8?B?YWlNY2NPa1FIWkt0L05xSC8vUVlvaXEwZG0reG1uN2NvZk5mMjVwSHdnZGNk?=
 =?utf-8?B?Znp4ZlBGUnBLcFNHUkpFRjRyNHVrY2RUQTVObGdoR2JlQW9SK1lvYXRSYWQ0?=
 =?utf-8?B?ancyVExoQUFhRXB6YXVRK1pEcjE2NmJucWtNODM0T0ZOWFJOUmpoQnJIVDZH?=
 =?utf-8?B?NytTcjU3N2JMUWt6S09RZi8zbXI5eDZwRDRpbURPUHgrSTBXK3RLWm5kWkt1?=
 =?utf-8?B?UU9DU1dxT0VpMmpjVk1tRE9OQWR3bXU5UjQ5djBCa0F3cjRYN1hVSTlsZi9x?=
 =?utf-8?B?ZXo3WHR0Vk0wME9mdmV2VTJmNGRFeU5pVEkxNVFXY01rTVcxSnhaMDdaMVc5?=
 =?utf-8?B?RXluc29YcDVYbmtIYi9hSUZDTS9hUGRMSEdvVUNxblNhVGg0NlpqTGxyNHFD?=
 =?utf-8?B?c0U4MXhWLzBHdEZvWitJS3VxQnFYemYzeDdLTTZXNjB2TFNKYTRsVVVFd3l4?=
 =?utf-8?B?RFByVlN1WDZ6aE9Gc1UrdzlOdFAzL2xKTk5PMTVtdXFmazBrM01JTk1wdHN2?=
 =?utf-8?B?SCt2eXBzc0hZWkRuQlArLzEwZzNsN204T09zWW50ZFlUY0ROUVdDazFOenYr?=
 =?utf-8?B?VHJSSDVUVWZHc1NoZWsrSzBoVFBUa0JLQnVLcUhqanhhUXRhMGtSRVlNU3Fx?=
 =?utf-8?B?Y1BZaXcza0EzNzRDdEtGQStkMHBKajJiMDFQMVhpWENsV1hDMkRlcTRCbEpI?=
 =?utf-8?B?a1RiZjRoWkdLQnNZWlN1QjQzeTUzdEM2MCtoVDNnVHQvV1h3NDRObkk0VnNK?=
 =?utf-8?B?ZkU2TE53cVg3eVA2Q1pBSnVOVXcwWHZqNHpsUDY1RUQrNUg2elNVMlVDQTd6?=
 =?utf-8?B?M0E9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9224.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(19092799006)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Rnd2UWhVUSsyU2NKNnFkclFONDRyZndKVTRlK29YNlJwemRNOXo3aFBJTlpZ?=
 =?utf-8?B?R1MxSVY5TTlpc3lwNFc0UWZqRktWYzl3V3V3OTZVL1ZiY09KU2hsVk5HdFVD?=
 =?utf-8?B?Q1dVeG41OTdOYWpBOUtQbFFSUlY2MzNpMUpkUEx4UXdpaUYyNFUrekF1Njhn?=
 =?utf-8?B?MEJJeHNISklzZmJwV29GZDk1TDlEdnhhTjMxRzFKVUFYaEoyL1liSGJ1aUph?=
 =?utf-8?B?di9EMEdDK3doMzBRWnRSZFdhZjE5a1UvcHBCdG52bXgyS0lCYW9xVkpUbXJG?=
 =?utf-8?B?bXhFa0IvVGUzMGNaTnNFajVyUEI1ZE1zVjEwYmZZMEJxZ0FOSFJOQW9GNnY3?=
 =?utf-8?B?MTVjSjZhNVphZDRTL1VRbW5qKzBCMGNudFJqcUl3WkpRY3VDUkkzV2lRNGlz?=
 =?utf-8?B?SDhUdFVLbnNicHFWV21qMVFOM3NkVXRRMjQ2Zy9ET0JhN3F3RTk3endCeHo1?=
 =?utf-8?B?d3Q5WjllalFTeTNuc0VaUGRqVTRuRzZjbXdhWm1EbEVXcndVTDZtS3NsbGI2?=
 =?utf-8?B?ZjYvZkdpY00xN21mUlVWR3VpSm0rNkloZWsxVkliNWdVZVg2eE5KdHJ5QS81?=
 =?utf-8?B?Y3lYR0trN0pzbm9DQ3ZpRHM3dW1GMUFMYUl5N1gydHFvZ0dBNUZQenQ5L3pY?=
 =?utf-8?B?SWJIRjZENHV1UWROVFowYWhJdTJGSWQveGtJS3NOejZ1N1h3blpWSjYxOHNK?=
 =?utf-8?B?OG5nWHBNLy9wTjExSFI5SmxXcGFjd2Z3RFo2YnJBbjhldVlXaW5iN2FZQnBa?=
 =?utf-8?B?ZmUzYUg3WjBra21lUkI1RTQ3bUtXOFdpUFdGMDEyQktuVW1FKytRMjlJeTJN?=
 =?utf-8?B?NnFKZmhLcFNtSC8vRGMxcHlhNmtkN2VaZVJMSDk3bTdBOWJqREI2Uk4rQnJS?=
 =?utf-8?B?Y3k2Z0lqSHVMbWN6OER0UWFhNUwyL0JuUzkxdHBQbGVHUm5URDd0ZzU0RjUx?=
 =?utf-8?B?YU4yejlMRStKaTdCc05LYkJEekQrM0N6SnpRQTRNKzVkc2ZObUZFZFBwL3RM?=
 =?utf-8?B?V09jVHN6NTg1NVdiSmtURkRvSjNKNVFnRGZ0UXE4MitoWExSRVlnb0Z6OVhm?=
 =?utf-8?B?S25IT0dTUjJMN200QXExTHpvWkEzbS9zUzV2akxwaGtFcUNsM1RaaEw1WmtS?=
 =?utf-8?B?L0RiTVppZ0Z6UTRQeEZlQzVsSmFSblZ6cGdPZmN1K0RmWXBnaWh2SUt3NFc3?=
 =?utf-8?B?bEovcWtVZFRmcElLcjBVOHN3K0Y4RXJCVUlMS2FBdGtJRlhqcmlXRHJ5UURG?=
 =?utf-8?B?RSt6UzBqbzVRaGV4c0JDTTRGdWt5eHdicUtYdjRacytLTWJvRFFiZzdQUVh5?=
 =?utf-8?B?a0cwY0RqaXRqSDg4RGliZm5EQm1aOWk3ZURmbUNjQUowVHVvZEQ4SzVnc0VX?=
 =?utf-8?B?eCtMOG5CNHliQjQzaTNGZ2cyendiMDNBaVdsR0t2Qkt2OGgzTHpIQS85cXB2?=
 =?utf-8?B?MU9ncVp5VDVLL3RrcGJ4QThWemViSVp0VGdITVljNXl4MlJYNUozZUoyUEtB?=
 =?utf-8?B?ZW9UUlBTenlUc3Vyb3pURTlPZjZBZnVJVExmc2JQQlV1UDJ1bTRPUEJHUHln?=
 =?utf-8?B?RVkzRWk1R1h1Y1BNQ1VLNnVxS3Q1bE84alZLcEhxNmdlZlRiNmEwZU80ckVn?=
 =?utf-8?B?S0ZWWm5xMGpRYzBTanBaOFdNcHZYNDRldzArRkZhYXBJZ0hzMzBqaDNKVGYv?=
 =?utf-8?B?eGxnVnFtRmw1NkN1K2x2Vmtacmc3S1RlV0ZMb3UrN2R3UnI3T2pvSC9uZVpS?=
 =?utf-8?B?MCtDR0Fpa08vbEtCM2xqd1o4ZjBvTDJrcy9qMVI1OG9uREprVzVHd2hVaWhx?=
 =?utf-8?B?MHU1RDlNM1QrcE5TTm1Xay9UTHJJdTdaS21qMDlPQUhyZ1IxaDNjUWY0ZXJw?=
 =?utf-8?B?VTg4Y3NvZGlqVEIxN2lySERIb1doaWcxRDd4dUg5RnNJYWxXdmJPV2I0TUhQ?=
 =?utf-8?B?aGZGc05iM0xNTXlLMmFDbURxbWhMWWdTemI0V2pLMEcxMzFQSHljekpFaS9h?=
 =?utf-8?B?cE5nTGk3QXNnaW5rbEpoMVkranpTdWMybWFRMlE3OWhjL1VrZDNGOWJ2QUNl?=
 =?utf-8?B?WlhPQjIxbmwrUjNCTHhMQzVOWmM4bUdDTnA2YkdNbjlGdHdqVHd4OWdiTzZR?=
 =?utf-8?B?TlBNZnM1SW14UVlvWHFpT3BVUHpNelhHeWxzdEpjM1NrQk54Q2E0MlFIM3FQ?=
 =?utf-8?B?VkYvZFZIQlVpaDc0THhkdlhGbHRPRXFHRVRLL1FXa2FwWmFhS2txblJZZTVB?=
 =?utf-8?B?YjI4VFJ6V2FHWjB2ZHM4T1hrL3BhaDV3N09CcDZoRHdzTFZjUks2MFpmcXpv?=
 =?utf-8?B?YkVMcS8vQUZzOWEzRnUvWjZpOUI4NU1JR1VKSlArYlNkUFJnZGtkK3RBeDUw?=
 =?utf-8?Q?c1ZOBdjcTHNLJ7ps=3D?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85100967-bf1f-42f8-b5bf-08de6d6c6b28
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9224.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2026 15:02:35.7246
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W4osijy3xsUhiZJNegx+DEivojxb9/QlUZPFXTlyUX9urENP9oF3Zcu4BgA6We301M7k2QNqBc/QiMSpsCitFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRWPR04MB12380
X-Spamd-Bar: ----
X-MailFrom: larisa.grigore@oss.nxp.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QHZMYJAYABKVSSFI26WURBSM66YUHHVN
X-Message-ID-Hash: QHZMYJAYABKVSSFI26WURBSM66YUHHVN
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:33 +0000
CC: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, s32@nxp.com, imx@lists.linux.dev, clizzi@redhat.com, aruizrui@redhat.com, eballetb@redhat.com, echanude@redhat.com, jkangas@redhat.com, Radu Pirea <radu-nicolae.pirea@nxp.com>, Larisa Grigore <larisa.grigore@oss.nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 10/13] serial: linflexuart: Add support for changing baudrate
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QHZMYJAYABKVSSFI26WURBSM66YUHHVN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[NXP1.onmicrosoft.com:s=selector1-NXP1-onmicrosoft-com];
	DATE_IN_PAST(1.00)[1417];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[linuxfoundation.org,kernel.org,linaro.org,amd.com,gmail.com,nxp.com,freescale.com];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.411];
	FROM_NEQ_ENVFROM(0.00)[larisa.grigore@oss.nxp.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[NXP1.onmicrosoft.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,oss.nxp.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: A86E2411EE0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

RnJvbTogUmFkdSBQaXJlYSA8cmFkdS1uaWNvbGFlLnBpcmVhQG54cC5jb20+DQoNClRoaXMgcGF0
Y2ggYWRkcyBzdXBwb3J0IGZvciBkeW5hbWljYWxseSBjb25maWd1cmluZyB0aGUgYmF1ZHJhdGUg
b2YgdGhlDQpMSU5GbGV4RCBVQVJULg0KSXQgaW50cm9kdWNlcyBjbG9jayBoYW5kbGluZyB2aWEg
Y2xrIGFuZCBjbGtfaXBnLCBhbmQgdXBkYXRlcyB0aGUNCmxpbmZsZXhfc2V0X3Rlcm1pb3MoKSBm
dW5jdGlvbiB0byBjb21wdXRlIGFuZCB1cGRhdGUgdGhlIGJhdWRyYXRlDQpyZWxhdGVkIHJlZ2lz
dGVycyAoTElOSUJSUiBhbmQgTElORkJSUikgYmFzZWQgb24gdGhlIHNlbGVjdGVkIGJhdWRyYXRl
DQphbmQgY2xvY2sgcmF0ZS4NCkJhdWRyYXRlIGlzIGNhbGN1bGF0ZWQgd2l0aCB0aGUgZm9sbG93
aW5nIGVxdWF0aW9uOg0KLSBXaGVuIFVBUlRDUltST1NFXSA9IDEgKHJlZHVjZWQgb3ZlcnNhbXBs
aW5nKSwgYmF1ZHJhdGUgPSBMSU5fQ0xLIMO3DQooT1NSIMOXIExESVYpLg0KLSBXaGVuIFVBUlRD
UltST1NFXSA9IDAsIGJhdWRyYXRlID0gTElOX0NMSyDDtyAoMTYgw5cgTERJViksDQp3aGVyZSBM
SU5fQ0xLIGlzIHRoZSBmcmVxdWVuY3kgb2YgdGhlIGJhdWQgY2xvY2suDQpMRElWIGlzIGFuIHVu
c2lnbmVkIGZpeGVkLXBvaW50IG51bWJlcjoNCi0gTElOSUJSUltJQlJdIHN0b3JlcyB0aGUgbWFu
dGlzc2EuDQotIExJTkZCUlJbRkJSXSBzdG9yZXMgdGhlIGZyYWN0aW9uLiBUaGlzIHJlZ2lzdGVy
IGlzbid0IHVzZWQgaW4gcmVkdWNlZA0Kb3ZlcnNhbXBsaW5nIGNhc2UuDQoNClRoaXMgZmVhdHVy
ZSBpcyBzdXBwb3J0ZWQgb25seSBpZiB0aGUgY2xvY2sgcHJvcGVydGllcyBhcmUgcHJlc2VudCBp
bg0KdGhlIGRldmljZSB0cmVlLg0KDQpTaWduZWQtb2ZmLWJ5OiBSYWR1IFBpcmVhIDxyYWR1LW5p
Y29sYWUucGlyZWFAbnhwLmNvbT4NCkNvLWRldmVsb3BlZC1ieTogU3RlZmFuLUdhYnJpZWwgTWly
ZWEgPHN0ZWZhbi1nYWJyaWVsLm1pcmVhQG54cC5jb20+DQpTaWduZWQtb2ZmLWJ5OiBTdGVmYW4t
R2FicmllbCBNaXJlYSA8c3RlZmFuLWdhYnJpZWwubWlyZWFAbnhwLmNvbT4NCkNvLWRldmVsb3Bl
ZC1ieTogQWRyaWFuLk5pdHUgPGFkcmlhbi5uaXR1QGZyZWVzY2FsZS5jb20+DQpTaWduZWQtb2Zm
LWJ5OiBBZHJpYW4uTml0dSA8YWRyaWFuLm5pdHVAZnJlZXNjYWxlLmNvbT4NCkNvLWRldmVsb3Bl
ZC1ieTogTGFyaXNhIEdyaWdvcmUgPGxhcmlzYS5ncmlnb3JlQG9zcy5ueHAuY29tPg0KU2lnbmVk
LW9mZi1ieTogTGFyaXNhIEdyaWdvcmUgPGxhcmlzYS5ncmlnb3JlQG9zcy5ueHAuY29tPg0KLS0t
DQogZHJpdmVycy90dHkvc2VyaWFsL2ZzbF9saW5mbGV4dWFydC5jIHwgMTI0ICsrKysrKysrKysr
KysrKysrKysrKysrKystLQ0KIDEgZmlsZSBjaGFuZ2VkLCAxMTYgaW5zZXJ0aW9ucygrKSwgOCBk
ZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvdHR5L3NlcmlhbC9mc2xfbGluZmxl
eHVhcnQuYyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9mc2xfbGluZmxleHVhcnQuYw0KaW5kZXggZmI1
ZjMyNTQxNmMwLi4zNmM4ZjkwZDk3NWQgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL3R0eS9zZXJpYWwv
ZnNsX2xpbmZsZXh1YXJ0LmMNCisrKyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9mc2xfbGluZmxleHVh
cnQuYw0KQEAgLTMsOSArMywxMCBAQA0KICAqIEZyZWVzY2FsZSBMSU5GbGV4RCBVQVJUIHNlcmlh
bCBwb3J0IGRyaXZlcg0KICAqDQogICogQ29weXJpZ2h0IDIwMTItMjAxNiBGcmVlc2NhbGUgU2Vt
aWNvbmR1Y3RvciwgSW5jLg0KLSAqIENvcHlyaWdodCAyMDE3LTIwMTksIDIwMjEgTlhQDQorICog
Q29weXJpZ2h0IDIwMTctMjAxOSwgMjAyMS0yMDIyIE5YUA0KICAqLw0KIA0KKyNpbmNsdWRlIDxs
aW51eC9jbGsuaD4NCiAjaW5jbHVkZSA8bGludXgvY29uc29sZS5oPg0KICNpbmNsdWRlIDxsaW51
eC9pby5oPg0KICNpbmNsdWRlIDxsaW51eC9pcnEuaD4NCkBAIC0xMzEsNiArMTMyLDIyIEBADQog
DQogI2RlZmluZSBQUkVJTklUX0RFTEFZCQkJMjAwMCAvKiB1cyAqLw0KIA0KK2VudW0gbGluZmxl
eF9jbGsgew0KKwlMSU5GTEVYX0NMS19MSU4sDQorCUxJTkZMRVhfQ0xLX0lQRywNCisJTElORkxF
WF9DTEtfTlVNLA0KK307DQorDQorc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCBsaW5mbGV4X2Ns
a3NfaWRbXSA9IHsNCisJImxpbiIsDQorCSJpcGciLA0KK307DQorDQorc3RydWN0IGxpbmZsZXhf
cG9ydCB7DQorCXN0cnVjdCB1YXJ0X3BvcnQJcG9ydDsNCisJc3RydWN0IGNsa19idWxrX2RhdGEJ
Y2xrc1tMSU5GTEVYX0NMS19OVU1dOw0KK307DQorDQogc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9k
ZXZpY2VfaWQgbGluZmxleF9kdF9pZHNbXSA9IHsNCiAJew0KIAkJLmNvbXBhdGlibGUgPSAiZnNs
LHMzMnYyMzQtbGluZmxleHVhcnQiLA0KQEAgLTQyMSw2ICs0MzgsMTkgQEAgc3RhdGljIHZvaWQg
bGluZmxleF9zaHV0ZG93bihzdHJ1Y3QgdWFydF9wb3J0ICpwb3J0KQ0KIAlkZXZtX2ZyZWVfaXJx
KHBvcnQtPmRldiwgcG9ydC0+aXJxLCBwb3J0KTsNCiB9DQogDQorc3RhdGljIHVuc2lnbmVkIGNo
YXINCitsaW5mbGV4X2xkaXZfbXVsdGlwbGllcihzdHJ1Y3QgdWFydF9wb3J0ICpwb3J0KQ0KK3sN
CisJdW5zaWduZWQgY2hhciBtdWwgPSBMSU5GTEVYX0xESVZfTVVMVElQTElFUjsNCisJdW5zaWdu
ZWQgbG9uZyBjcjsNCisNCisJY3IgPSByZWFkbChwb3J0LT5tZW1iYXNlICsgVUFSVENSKTsNCisJ
aWYgKGNyICYgTElORkxFWERfVUFSVENSX1JPU0UpDQorCQltdWwgPSBMSU5GTEVYRF9VQVJUQ1Jf
T1NSKGNyKTsNCisNCisJcmV0dXJuIG11bDsNCit9DQorDQogc3RhdGljIHZvaWQNCiBsaW5mbGV4
X3NldF90ZXJtaW9zKHN0cnVjdCB1YXJ0X3BvcnQgKnBvcnQsIHN0cnVjdCBrdGVybWlvcyAqdGVy
bWlvcywNCiAJCSAgICBjb25zdCBzdHJ1Y3Qga3Rlcm1pb3MgKm9sZCkNCkBAIC00MjgsNiArNDU4
LDkgQEAgbGluZmxleF9zZXRfdGVybWlvcyhzdHJ1Y3QgdWFydF9wb3J0ICpwb3J0LCBzdHJ1Y3Qg
a3Rlcm1pb3MgKnRlcm1pb3MsDQogCXVuc2lnbmVkIGxvbmcgZmxhZ3M7DQogCXVuc2lnbmVkIGxv
bmcgY3IsIG9sZF9jciwgY3IxOw0KIAl1bnNpZ25lZCBpbnQgb2xkX2NzaXplID0gb2xkID8gb2xk
LT5jX2NmbGFnICYgQ1NJWkUgOiBDUzg7DQorCXVuc2lnbmVkIGxvbmcgaWJyLCBmYnIsIGRpdmlz
ciwgZGl2aWRyOw0KKwl1bnNpZ25lZCBjaGFyIGxkaXZfbXVsOw0KKwl1bnNpZ25lZCBpbnQgYmF1
ZDsNCiANCiAJdWFydF9wb3J0X2xvY2tfaXJxc2F2ZShwb3J0LCAmZmxhZ3MpOw0KIA0KQEAgLTUz
Miw2ICs1NjUsMjQgQEAgbGluZmxleF9zZXRfdGVybWlvcyhzdHJ1Y3QgdWFydF9wb3J0ICpwb3J0
LCBzdHJ1Y3Qga3Rlcm1pb3MgKnRlcm1pb3MsDQogCQkJcG9ydC0+aWdub3JlX3N0YXR1c19tYXNr
IHw9IExJTkZMRVhEX1VBUlRTUl9CT0Y7DQogCX0NCiANCisJaWYgKHBvcnQtPnVhcnRjbGspIHsN
CisJCWxkaXZfbXVsID0gbGluZmxleF9sZGl2X211bHRpcGxpZXIocG9ydCk7DQorCQliYXVkID0g
dWFydF9nZXRfYmF1ZF9yYXRlKHBvcnQsIHRlcm1pb3MsIG9sZCwgMCwNCisJCQkJCSAgcG9ydC0+
dWFydGNsayAvIGxkaXZfbXVsKTsNCisNCisJCS8qIHVwZGF0ZSB0aGUgcGVyLXBvcnQgdGltZW91
dCAqLw0KKwkJdWFydF91cGRhdGVfdGltZW91dChwb3J0LCB0ZXJtaW9zLT5jX2NmbGFnLCBiYXVk
KTsNCisNCisJCWRpdmlzciA9IHBvcnQtPnVhcnRjbGs7DQorCQlkaXZpZHIgPSAoKHVuc2lnbmVk
IGxvbmcpYmF1ZCAqIGxkaXZfbXVsKTsNCisNCisJCWliciA9IGRpdmlzciAvIGRpdmlkcjsNCisJ
CWZiciA9ICgoZGl2aXNyICUgZGl2aWRyKSAqIDE2IC8gZGl2aWRyKSAmIDB4RjsNCisNCisJCXdy
aXRlbChpYnIsIHBvcnQtPm1lbWJhc2UgKyBMSU5JQlJSKTsNCisJCXdyaXRlbChmYnIsIHBvcnQt
Pm1lbWJhc2UgKyBMSU5GQlJSKTsNCisJfQ0KKw0KIAl3cml0ZWwoY3IsIHBvcnQtPm1lbWJhc2Ug
KyBVQVJUQ1IpOw0KIA0KIAljcjEgJj0gfihMSU5GTEVYRF9MSU5DUjFfSU5JVCk7DQpAQCAtNzYw
LDE3ICs4MTEsNTIgQEAgc3RhdGljIHN0cnVjdCB1YXJ0X2RyaXZlciBsaW5mbGV4X3JlZyA9IHsN
CiAJLmNvbnMJCT0gTElORkxFWF9DT05TT0xFLA0KIH07DQogDQorc3RhdGljIGludCBsaW5mbGV4
X2luaXRfY2xrKHN0cnVjdCBsaW5mbGV4X3BvcnQgKmxmcG9ydCkNCit7DQorCWludCBpLCByZXQ7
DQorDQorCWZvciAoaSA9IDA7IGkgPCBMSU5GTEVYX0NMS19OVU07IGkrKykgew0KKwkJbGZwb3J0
LT5jbGtzW2ldLmlkID0gbGluZmxleF9jbGtzX2lkW2ldOw0KKwkJbGZwb3J0LT5jbGtzW2ldLmNs
ayA9IE5VTEw7DQorCX0NCisNCisJcmV0ID0gZGV2bV9jbGtfYnVsa19nZXQobGZwb3J0LT5wb3J0
LmRldiwgTElORkxFWF9DTEtfTlVNLA0KKwkJCQlsZnBvcnQtPmNsa3MpOw0KKwlpZiAocmV0KSB7
DQorCQlpZiAocmV0ID09IC1FUFJPQkVfREVGRVIpDQorCQkJcmV0dXJuIHJldDsNCisNCisJCWxm
cG9ydC0+cG9ydC51YXJ0Y2xrID0gMDsNCisJCWRldl9pbmZvKGxmcG9ydC0+cG9ydC5kZXYsDQor
CQkJICJ1YXJ0IGNsb2NrIGlzIG1pc3NpbmcsIGVyciA9ICVkLiBTa2lwcGluZyBjbG9jayBzZXR1
cC5cbiIsDQorCQkJIHJldCk7DQorCQlyZXR1cm4gMDsNCisJfQ0KKw0KKwlyZXQgPSBjbGtfYnVs
a19wcmVwYXJlX2VuYWJsZShMSU5GTEVYX0NMS19OVU0sIGxmcG9ydC0+Y2xrcyk7DQorCWlmIChy
ZXQpDQorCQlyZXR1cm4gZGV2X2Vycl9wcm9iZShsZnBvcnQtPnBvcnQuZGV2LCByZXQsDQorCQkJ
CSAgICAgIkZhaWxlZCB0byBlbmFibGUgTElORmxleEQgY2xvY2tzLlxuIik7DQorDQorCWxmcG9y
dC0+cG9ydC51YXJ0Y2xrID0gY2xrX2dldF9yYXRlKGxmcG9ydC0+Y2xrc1tMSU5GTEVYX0NMS19M
SU5dLmNsayk7DQorDQorCXJldHVybiAwOw0KK30NCisNCiBzdGF0aWMgaW50IGxpbmZsZXhfcHJv
YmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikNCiB7DQogCXN0cnVjdCBkZXZpY2Vfbm9k
ZSAqbnAgPSBwZGV2LT5kZXYub2Zfbm9kZTsNCisJc3RydWN0IGxpbmZsZXhfcG9ydCAqbGZwb3J0
Ow0KIAlzdHJ1Y3QgdWFydF9wb3J0ICpzcG9ydDsNCiAJc3RydWN0IHJlc291cmNlICpyZXM7DQog
CWludCByZXQ7DQogDQotCXNwb3J0ID0gZGV2bV9remFsbG9jKCZwZGV2LT5kZXYsIHNpemVvZigq
c3BvcnQpLCBHRlBfS0VSTkVMKTsNCi0JaWYgKCFzcG9ydCkNCisJbGZwb3J0ID0gZGV2bV9remFs
bG9jKCZwZGV2LT5kZXYsIHNpemVvZigqbGZwb3J0KSwgR0ZQX0tFUk5FTCk7DQorCWlmICghbGZw
b3J0KQ0KIAkJcmV0dXJuIC1FTk9NRU07DQogDQorCXNwb3J0ID0gJmxmcG9ydC0+cG9ydDsNCisN
CiAJcmV0ID0gb2ZfYWxpYXNfZ2V0X2lkKG5wLCAic2VyaWFsIik7DQogCWlmIChyZXQgPCAwKSB7
DQogCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJmYWlsZWQgdG8gZ2V0IGFsaWFzIGlkLCBlcnJubyAl
ZFxuIiwgcmV0KTsNCkBAIC04MDAsMzMgKzg4Niw1NSBAQCBzdGF0aWMgaW50IGxpbmZsZXhfcHJv
YmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikNCiAJc3BvcnQtPmZsYWdzID0gVVBGX0JP
T1RfQVVUT0NPTkY7DQogCXNwb3J0LT5oYXNfc3lzcnEgPSBJU19FTkFCTEVEKENPTkZJR19TRVJJ
QUxfRlNMX0xJTkZMRVhVQVJUX0NPTlNPTEUpOw0KIA0KKwlyZXQgPSBsaW5mbGV4X2luaXRfY2xr
KGxmcG9ydCk7DQorCWlmIChyZXQpDQorCQlyZXR1cm4gcmV0Ow0KKw0KIAlsaW5mbGV4X3BvcnRz
W3Nwb3J0LT5saW5lXSA9IHNwb3J0Ow0KIA0KLQlwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCBz
cG9ydCk7DQorCXBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYsIGxmcG9ydCk7DQorDQorCXJldCA9
IHVhcnRfYWRkX29uZV9wb3J0KCZsaW5mbGV4X3JlZywgc3BvcnQpOw0KKwlpZiAocmV0KQ0KKwkJ
Y2xrX2J1bGtfZGlzYWJsZV91bnByZXBhcmUoTElORkxFWF9DTEtfTlVNLCBsZnBvcnQtPmNsa3Mp
Ow0KIA0KLQlyZXR1cm4gdWFydF9hZGRfb25lX3BvcnQoJmxpbmZsZXhfcmVnLCBzcG9ydCk7DQor
CXJldHVybiByZXQ7DQogfQ0KIA0KIHN0YXRpYyB2b2lkIGxpbmZsZXhfcmVtb3ZlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpDQogew0KLQlzdHJ1Y3QgdWFydF9wb3J0ICpzcG9ydCA9IHBs
YXRmb3JtX2dldF9kcnZkYXRhKHBkZXYpOw0KKwlzdHJ1Y3QgbGluZmxleF9wb3J0ICpsZnBvcnQg
PSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsNCisJc3RydWN0IHVhcnRfcG9ydCAqc3BvcnQg
PSAmbGZwb3J0LT5wb3J0Ow0KIA0KIAl1YXJ0X3JlbW92ZV9vbmVfcG9ydCgmbGluZmxleF9yZWcs
IHNwb3J0KTsNCisJY2xrX2J1bGtfZGlzYWJsZV91bnByZXBhcmUoTElORkxFWF9DTEtfTlVNLCBs
ZnBvcnQtPmNsa3MpOw0KIH0NCiANCiAjaWZkZWYgQ09ORklHX1BNX1NMRUVQDQogc3RhdGljIGlu
dCBsaW5mbGV4X3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQ0KIHsNCi0Jc3RydWN0IHVhcnRf
cG9ydCAqc3BvcnQgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsNCisJc3RydWN0IGxpbmZsZXhfcG9y
dCAqbGZwb3J0ID0gZGV2X2dldF9kcnZkYXRhKGRldik7DQorCXN0cnVjdCB1YXJ0X3BvcnQgKnNw
b3J0ID0gJmxmcG9ydC0+cG9ydDsNCiANCiAJdWFydF9zdXNwZW5kX3BvcnQoJmxpbmZsZXhfcmVn
LCBzcG9ydCk7DQorCWNsa19idWxrX2Rpc2FibGVfdW5wcmVwYXJlKExJTkZMRVhfQ0xLX05VTSwg
bGZwb3J0LT5jbGtzKTsNCiANCiAJcmV0dXJuIDA7DQogfQ0KIA0KIHN0YXRpYyBpbnQgbGluZmxl
eF9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQ0KIHsNCi0Jc3RydWN0IHVhcnRfcG9ydCAqc3Bv
cnQgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsNCisJc3RydWN0IGxpbmZsZXhfcG9ydCAqbGZwb3J0
ID0gZGV2X2dldF9kcnZkYXRhKGRldik7DQorCXN0cnVjdCB1YXJ0X3BvcnQgKnNwb3J0ID0gJmxm
cG9ydC0+cG9ydDsNCisJaW50IHJldDsNCisNCisJaWYgKGxmcG9ydC0+Y2xrc1tMSU5GTEVYX0NM
S19MSU5dLmNsaykgew0KKwkJcmV0ID0gY2xrX2J1bGtfcHJlcGFyZV9lbmFibGUoTElORkxFWF9D
TEtfTlVNLCBsZnBvcnQtPmNsa3MpOw0KKwkJaWYgKHJldCkgew0KKwkJCWRldl9lcnIoZGV2LCAi
RmFpbGVkIHRvIGVuYWJsZSBMSU5GbGV4RCBjbG9ja3M6ICVkXG4iLCByZXQpOw0KKwkJCXJldHVy
biByZXQ7DQorCQl9DQorCX0NCiANCiAJdWFydF9yZXN1bWVfcG9ydCgmbGluZmxleF9yZWcsIHNw
b3J0KTsNCiANCi0tIA0KMi40Ny4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
