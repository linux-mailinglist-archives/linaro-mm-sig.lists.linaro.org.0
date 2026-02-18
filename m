Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4HI7F40S4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:47:09 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D47411F5E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:47:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2C3B240511
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:47:08 +0000 (UTC)
Received: from PA4PR04CU001.outbound.protection.outlook.com (mail-francecentralazon11013066.outbound.protection.outlook.com [40.107.162.66])
	by lists.linaro.org (Postfix) with ESMTPS id 5EB353F806
	for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Feb 2026 13:57:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=NXP1.onmicrosoft.com header.s=selector1-NXP1-onmicrosoft-com header.b=xTRRTOPk;
	spf=pass (lists.linaro.org: domain of larisa.grigore@oss.nxp.com designates 40.107.162.66 as permitted sender) smtp.mailfrom=larisa.grigore@oss.nxp.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=none) header.from=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nr+M3QOLQAPu052aJk9yNzSqvSe+gcgdkRpvu1XpDxz6oDWARcS/XzBFTb035r2hR3g9uoqAbTVdW4GmPtI7qI8Zgp1WxJIcpdNP4Kuv1mFeYeLoUjqEDRb8X1AkUbuzOTRHbOarzn4NImQm3pGRHF97aGV9rrD4Wrtn+1xQ34Wbm/VIrWykl5XtaGMplqLzdo7Rl5H+PlfOjEss7U1P2NA5jX8Y5QuVTB585dU9AinRFsoME1f8kpGlIb0KaBF5q/QgTcVYYwNoS2L3HreuCbgtfN7WQysEbsLqlEdQ3FfvVU1OtdqMJKEtJEg1CHWSGlDbdxw8adPh2O95QoXnsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P2EnkRkIZsI+QeNhcck4ItFAq/L7RVBti+nYXol2D1E=;
 b=xs0sUNf+BtfG23SvxZYEMDnETk73yc6dsfxib8vxJzE6zK6DtoE8XMWOcUq2j/mKq1dLTeQQEKS8I3BZPd3fapToBWr0MLV08g9lPWWQEZ3PgPbGuXDciV4oV5oDMe7ILNcfYsmtdyaQvXpF9ztmp0l+r5sRxvF0RX5zO9jq/SSa745IZ9PWbWrcEFI6zGMDiCBI1gOP1hX0Ulf/Pp2r94/7iFUv98gTz1MvQRFUsT/oA5czOrWVgzhF4+20vqqPgCEMNULYNQ1JgZeYtRWuSSrLea6irgAu/qE42VeUoQHjVwSSIb05HuT5ymKeMrLi/PY9H9C2lrLsIVKrGNzYNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P2EnkRkIZsI+QeNhcck4ItFAq/L7RVBti+nYXol2D1E=;
 b=xTRRTOPkHvleGg6LqXraB6lF8NTmiPBwULJN4W1dXGRnWfEKmIYEIWDU4NdZTXmPSyirtAE80PcUKT8H2E0yzPPiRUUlbat59hmeO3tw7PQutEGi/ZTvmB2qq+HdY8VfM94wYtrg0wWZ9iED+LnHoH2kioqCLcghTeN+HFJ/uiN/TWbk2a5MXDAfTOjv6K+gWTv1WRV7Tui1mhB3Iaa0L4xOw58ASnHHyxJtrJOMnLKAxhi8EisITekQnx0FmwNmQbtNSltGjsZiSRuTjTO8Rnv0WX3vt/SFXcjDRrxzyBYVca5Us3fYvUGU81CW7MBKkoJjucrpndRZ/asqSf0RUA==
Received: from PA4PR04MB9224.eurprd04.prod.outlook.com (2603:10a6:102:2a3::5)
 by PA4PR04MB7885.eurprd04.prod.outlook.com (2603:10a6:102:ce::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.14; Wed, 18 Feb
 2026 13:57:15 +0000
Received: from PA4PR04MB9224.eurprd04.prod.outlook.com
 ([fe80::8e54:4d38:df79:fd63]) by PA4PR04MB9224.eurprd04.prod.outlook.com
 ([fe80::8e54:4d38:df79:fd63%7]) with mapi id 15.20.9632.010; Wed, 18 Feb 2026
 13:57:15 +0000
Message-ID: <69fafe15-a539-4429-ad15-3ec44babab28@oss.nxp.com>
Date: Wed, 18 Feb 2026 15:57:11 +0200
User-Agent: Mozilla Thunderbird
To: Krzysztof Kozlowski <krzk@kernel.org>, gregkh@linuxfoundation.org,
 jirislaby@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com,
 chester62515@gmail.com, cosmin.stoica@nxp.com, adrian.nitu@freescale.com,
 stefan-gabriel.mirea@nxp.com, Mihaela.Martinas@freescale.com
References: <20260216150205.212318-1-larisa.grigore@oss.nxp.com>
 <20260216150205.212318-9-larisa.grigore@oss.nxp.com>
 <24443e02-886e-48e2-911e-e4093d251155@kernel.org>
 <e9c214be-840a-43fe-b24d-610fe90269b2@oss.nxp.com>
 <b7adddfc-db7a-466d-a2e8-72bc6a87ae81@kernel.org>
Content-Language: en-US
From: Larisa Ileana Grigore <larisa.grigore@oss.nxp.com>
In-Reply-To: <b7adddfc-db7a-466d-a2e8-72bc6a87ae81@kernel.org>
X-ClientProxiedBy: AM0PR02CA0187.eurprd02.prod.outlook.com
 (2603:10a6:20b:28e::24) To PA4PR04MB9224.eurprd04.prod.outlook.com
 (2603:10a6:102:2a3::5)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9224:EE_|PA4PR04MB7885:EE_
X-MS-Office365-Filtering-Correlation-Id: d5d6b5d3-7c52-46c1-57fb-08de6ef59f1f
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|376014|7416014|366016|19092799006|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ejNUZlVnMlZnb29CNlVMZVZQYmp1b3hlR0hMb0Y3Y3owSndDd3pvZVkrNDdN?=
 =?utf-8?B?T0FtWmg3K2hhVDZXKzFoaDZ5ZlNPSVdVVUVPY3ZxemtjSWMvS05hUVk1MWI3?=
 =?utf-8?B?V1BXc3hza2dlNW0ranJWVUtJR0FhclRFbE1JSU8vZXBSdUZCTVJSclg2UVpi?=
 =?utf-8?B?MlN1bHpJU0VXTzdtbHM0cXEwUUVvNm56NTU1Tkd1VUE1U3VPaUprUFJOUmlm?=
 =?utf-8?B?aE8wMm9rMXZma2p1dE9jUmZxajZtZnh4WjExcmUzVGpFMHJ2S1lHam9ENWIx?=
 =?utf-8?B?ZTMyTGdWQW5mY0FNMlVxLzZUM0hiSXBrOTIxaGFYMUF3R1dpenorSGJORkZo?=
 =?utf-8?B?SmpaUVg2N01MczIxb1FvZUZtOWxmTEp5aTdsSDBlUkJuRjI4NmU4clg2cmxk?=
 =?utf-8?B?YVVQTU56ZHl5UkhXUmpEVndqUFlBZmVWZ1ZFN29ja1V6eFVZeEpHYUJ2SXQ0?=
 =?utf-8?B?c3pVVlEybWozYTVhTWtEUDZwTWd3cHVBK21PRUJhdGNhVC9IYVQ5blJVTURE?=
 =?utf-8?B?NkF0c3NNMEo3NW5PaXlKLy80KzJHQzhQWVR5SGVZOGZDcGtBampVYllHVlZS?=
 =?utf-8?B?QlkyRGlNRWZXOTF0bTN5VXgyQm9tUlZ2SFhKYTlvTmpPZFNjVGpwSXB6RUJW?=
 =?utf-8?B?WVhoOHRjUGJ1RnJUY2hjdGFXVjRGS3dSY2FTYXVrLzFtOXFuTHdSY3VmV0dv?=
 =?utf-8?B?bWNEWjFrYVNPUG9PK0lDWmpSMVVCblNxWEowKzdodEVsdFpKVkFYdUhJSURF?=
 =?utf-8?B?SEJwSE50V0VCSVR2YUlDWGtUYUNyZlo3VWk1aXhIVFlMNkRJc2Z0QXd6OGU5?=
 =?utf-8?B?MkJGVjY3TjRRMkw5SFZRMWRKTE4raDA4eW5FOWZQS1puSXlldDhLb0EwUFFJ?=
 =?utf-8?B?NW5pdW91VHVBcmZFMHpOYTZOclRXTFpzWFZPNVBVS3RHcUZ4TTBDd1Y1WmJi?=
 =?utf-8?B?UGJ4ZC9TWFhCazdSUUVzbERBTjBMTUpveXQwb2o1T2hvU2ZjN09DSk90elh5?=
 =?utf-8?B?UUJqVTRISXhwV29EcEhzS3ovOGVLSGNJL3JwOEp6eVZlbHZFZWVlUG56eUtk?=
 =?utf-8?B?a0FxcjJES3Y4Q0xtT0ZuWUlFNFhGUmRnQkdQWEs1bCtRVGRJbXJYWmdKajh1?=
 =?utf-8?B?c0E4UVVrSjNBVDM3TFlta205K2owaHNHc0NMc0tBVFZvUG1VYkVqczBjYjI2?=
 =?utf-8?B?SEczc0RmZnFGRGtFc3JDenFjT1lzbzR1NUZXKzhGSzFndEIrU2YzeWlIUm9D?=
 =?utf-8?B?UlMzTWs3MTBMVU1iOHlzNEQ4RTNiWTMyOEdiYjRJaHd5OVR2Y0RiUlNmVkxO?=
 =?utf-8?B?cXVxU1RMa2ZYSS8reS8rZU5WNDZ6ckVtWVZEa1hmaVdodVhLMUZZL2lBUkxY?=
 =?utf-8?B?Y0lHakFRTkN2cWUybktDNzZDWllBL1k0Y052Z25mQnNqYXZ4RmVOalA3VHZH?=
 =?utf-8?B?ajJGV1Irbkp0VzFDSFFLdWRVS2l5QVVmNUltWXRWWUVGdmZVeDY3Rk00aVNG?=
 =?utf-8?B?c2paVjhzNDMrVGQ3aWczbkQrRzY1eG9GZWhtcysxcDErWm5zdVE5dWo1RnhW?=
 =?utf-8?B?U2x6VjJzRFVtT08xSCswaGtGeGNlQldJd1RMd0tlb2d5Q25zT3hpa29TWHVh?=
 =?utf-8?B?dUZLWERXTGExV3RwNFVKRWN3Q296K2Y0RHB0NmNVaG5USWh1eWlwUWY2UXhV?=
 =?utf-8?B?UXl0VXpYR1ZTUENCVkZ0T253RURtaDhZUXZJQkhaV1MweW1Dd2FxTmlXcFZN?=
 =?utf-8?B?SllJNDFDQ3doMVEwSkVVSXFoZkgzNXl2ZVZiRnRvU0kzQytZQS9lTHo5Q2dp?=
 =?utf-8?B?SmNJZmp1ZG9aZkRRUk1kcThJNS9hYi9rV0JIeHJpQnN4bVdiNExxdnVlYTBk?=
 =?utf-8?B?NGVJNHNLd3dPaEcyWGtxUmlaUmk5ZDNFSVVtbUJpbmpnbmtQVk5aNDVGVkpp?=
 =?utf-8?B?cWx4RWkxNjhrUEhobHlxbGF4MEw4SjlkRGhVb2E3cVZ5ZkZXZVhmenJUQ3ly?=
 =?utf-8?B?MnliK1lKd0ZpTVNqWFdWK3ZyRE1UWk56YU5OcW9iSXFjTWlMajkxSk9LaW1W?=
 =?utf-8?B?NEJTVG9JcE9GZXErMEFWcmxwZlFaeG9CZE5zam9odFdxNlJnWFVTMSsxZjgr?=
 =?utf-8?B?WHFVUk1HcmtpRzFyVnNBV01MeURvZzBFREY0eTcyRUltaE1DQjVoRWVuQ0VO?=
 =?utf-8?B?QVE9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9224.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016)(19092799006)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TGI2dnROcW5GMkhqZDhSVzNYK2ppUTZUWVd6aEJTb1hlbkJmQVN6THRzNWk5?=
 =?utf-8?B?K2VqY01BTW0rV3hMUXRFeUlBLzJQV3R4K1BvZEFEUVlsVlE2RkZCQVkrakZV?=
 =?utf-8?B?aVM3NWRZSVlmTWIxaWp4TWZ1SmJ1WlY3VGtWR2pKZWNlS0ovTGdkRXIxaVpw?=
 =?utf-8?B?YjJvbDdmNGx2cXBBNVRRMTdSZVN0dDFWTGtGTUxpZzFGLzJpZVNiWXVBTGZV?=
 =?utf-8?B?ZVBKRGxYQ0FBMzAveTFtWnU5aERvc1VTdWFYWHgxbHl6ZitlbzFUSG5IbW16?=
 =?utf-8?B?V2p3aWk4OUlWTmVjdFRMUzhkVlJ3dk4vaXJRNGRhRW9sbmZyd0FpaUg2ZW1t?=
 =?utf-8?B?aTJFdkhRczZCSmJEekttVWR0TXNuVW9taFpxc2lleFEwWWlKY3J6Znp1N0ZL?=
 =?utf-8?B?ODRQdTRIL3FYdlFqZ2hBK2dDN3dTamljK2MyaFpvNFdwVUhuQXVSSGNwTjZv?=
 =?utf-8?B?a0hlcklXYklwWEJJVDdPN29YWHhHZ1grLy9KZzB6ZVBUNjhTQVh4NUg2dFh5?=
 =?utf-8?B?amUwZUdreTFPZi9zcWtpNEZPSGx1THFUSENRUHFKUHMxL3huQlpzUmh3Y3hG?=
 =?utf-8?B?WXE0Y2J5MmpNZ0VUT3pLRzIwZkcvYlRFSkZHYTdJUHBDV0hmRzhXWXZOSGt2?=
 =?utf-8?B?TGpoMFZiNkYwM1JiWFowZllCR0ZNUCtIVmN3TStiSFdCdWJvNFVVazBJekVD?=
 =?utf-8?B?Y2QwMlFjUkxENDZCeVROTEIxQy9SK0VWcmFzWW8xNE9oMVRrUjZhdGFDUEt2?=
 =?utf-8?B?b3l3OFIwQTMySzVpZTcxdW9zdlJJYllISXZ1b2pCYnB4QWFudjJkZmR5b0pN?=
 =?utf-8?B?Q2U1VysvTDQ3c29WMXFJZFFIakU1Yy9TcWhrTHJTTHdxU3Y3dUhocjBFdzJF?=
 =?utf-8?B?UnVXTTZLRWIzM291NlZwb2dtYXpRVXRzTXh2VjZhZzZyQWMzVzc0bk1Ta1Jz?=
 =?utf-8?B?LzJmUjBLZ3pna2cyWFBVWWpoaG91S3lxajFEVEV3emxTeDJBY0Q4NjNsbzlI?=
 =?utf-8?B?Q0NxWXRMY1FOTGJHeHNNUXhCa21jTUoyMG00a2xvMW9mV3orTnhqb01Vck1s?=
 =?utf-8?B?eEhOdlJ5M3YxYVlyaUJpZ0plZ2tzaUJEZ2w5U0FLRlpXRUpsbnRzaGpwUkti?=
 =?utf-8?B?aWNkTTlLRjQwQ0JKUXQrclI1VnBpQnZwaitNODR4YWttRUVjT0lHQnZXdm5Q?=
 =?utf-8?B?WlU2UERvcGdZcmtwcTZPRzNBL1JLOEJLNWt6dkwzdTNFYjZVV3RvUlV6a3Fz?=
 =?utf-8?B?cXhpdzdnM2wrZVlqK3lYc0lmdEl4QVU3b1NxV0dTay9DeDh6c1lybUwrNlJw?=
 =?utf-8?B?QlloZEFmV3JnU0dIQ3RORVJQS1YvV2xsZ1EvVVZOVDRlZzI4UFRGS3dLUW5Y?=
 =?utf-8?B?V2RZK2tlYlhUVzVPQUgwM3lHb2grWWxKODdzNlJ0NjE0Z2o3WStseVFFdC85?=
 =?utf-8?B?Snk0NWQxWFNPQjdtbk94MmhWaHVxSXFPZlZxV0FPUkNlVHg4cGorK0VHbWJJ?=
 =?utf-8?B?MG9vVitRdVVEcnFCWEhLS1ZCQ2RxajlvY2lqOVB1U2VUbkFMZXhiWkRDTTEz?=
 =?utf-8?B?VVFhNXJ0Mi9PeldYVHhzYXhxZ1JGNFlCS1RlbnphLzIveVY2REI0LzNkeEp3?=
 =?utf-8?B?d3ppclEwRWR2dHVXVFF1TnhNVU9qS1duclM3SjZFRFVaU2dpQmswZEtRWE1F?=
 =?utf-8?B?bGs5czQweVFYNmNOTDBrWUI1aHliR1NTN2FjaFI0VE0zS0tadzRVcE9NMER4?=
 =?utf-8?B?UkFndDlQS2pieXc4d1lZVzBYZzZPNXpoUUNDNCs2cjJ3cjFuQmFnM3pEWnlP?=
 =?utf-8?B?THNJdm5qZEdOK3pxcEYxN0Ztb290MXRWMmhWUUVBM2diMEtJSnVJdjZOTndV?=
 =?utf-8?B?Sm5RM0pPbEpZbmw4VFFibWtsSVB6REtsU2EwQndoa3NESWNtSHM5WTloNU1m?=
 =?utf-8?B?eForaitSZjJVWTloTFJwaEo5UEJRdHlEOWtzUTR5Y1YwNDE4TVlQNG5WSEZj?=
 =?utf-8?B?eGh6ZjdqNUF6NmFoNmllSW1xVmQ5TzljZlZOTjExREVGUEhYaUhyU0FUSzhs?=
 =?utf-8?B?OWVMOU4xcXFRYlVDMUgwekQrckRaMytQeXRmMFZtRnlOZWZ5MSswcGFHbkpi?=
 =?utf-8?B?U3JZUnpaK2p6V3Z4aVhjRDJoaU1PZ1lKcGtUa3VsSjFWNjNYdng0Q3U5MVpS?=
 =?utf-8?B?TzRkOUk5R25zQ2ptblNUMXJZOFRKYkZoanRnNSt3N2xtamlRaEQ4ZWM4TlA0?=
 =?utf-8?B?VzlNTEo3MkJvVXowK3pzU2JReTUxWk9Nd2FHK3IwRnRMYy9zUGdkWEpzczh2?=
 =?utf-8?B?dUJ6cVkyVjJqWi9GeFlJb0tPU3ZuMktuYTdoVmtESENqTUlOSzF6QT09?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5d6b5d3-7c52-46c1-57fb-08de6ef59f1f
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9224.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2026 13:57:15.2575
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PkC/X1ftEzwljsYVdNAgXE1NpgRifiPFlD+a0UzRNrFHyIVTVKU1MNQp/AH2IrKiHZzTA+T4TtDuZo0sx6fRKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7885
X-Spamd-Bar: ----
X-MailFrom: larisa.grigore@oss.nxp.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6HSRHJ3JHNMWQYDTE4VTN62KGUKFCEIC
X-Message-ID-Hash: 6HSRHJ3JHNMWQYDTE4VTN62KGUKFCEIC
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:29 +0000
CC: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, s32@nxp.com, imx@lists.linux.dev, clizzi@redhat.com, aruizrui@redhat.com, eballetb@redhat.com, echanude@redhat.com, jkangas@redhat.com, Radu Pirea <radu-nicolae.pirea@nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 08/13] dt-bindings: serial: fsl-linflexuart: add clock input properties
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6HSRHJ3JHNMWQYDTE4VTN62KGUKFCEIC/>
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
	DATE_IN_PAST(1.00)[1370];
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
	NEURAL_SPAM(0.00)[0.062];
	DKIM_TRACE(0.00)[NXP1.onmicrosoft.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,oss.nxp.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,401c8000:email]
X-Rspamd-Queue-Id: 18D47411F5E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMi8xOC8yMDI2IDM6MjkgUE0sIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6DQo+IE9uIDE4
LzAyLzIwMjYgMTQ6MjYsIExhcmlzYSBJbGVhbmEgR3JpZ29yZSB3cm90ZToNCj4+IE9uIDIvMTYv
MjAyNiA1OjEwIFBNLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOg0KPj4+IE9uIDE2LzAyLzIw
MjYgMTY6MDIsIExhcmlzYSBHcmlnb3JlIHdyb3RlOg0KPj4+PiBGcm9tOiBSYWR1IFBpcmVhIDxy
YWR1LW5pY29sYWUucGlyZWFAbnhwLmNvbT4NCj4+Pj4NCj4+Pj4gQWRkIG9wdGlvbmFsIHN1cHBv
cnQgZm9yIHRoZSB0d28gY2xvY2sgaW5wdXRzIHVzZWQgYnkgdGhlIExJTkZsZXhEIFVBUlQNCj4+
Pj4gY29udHJvbGxlcjoNCj4+Pj4gLSAibGluIjogTElOX0JBVURfQ0xLDQo+Pj4+IC0gImlwZyI6
IExJTkZMRVhEX0NMSw0KPj4+Pg0KPj4+PiBUaGUgY2xvY2sgaW5wdXRzIGFyZSBrZXB0IG9wdGlv
bmFsIHRvIG1haW50YWluIGNvbXBhdGliaWxpdHkgd2l0aCB0aGUNCj4+Pj4gUzMyVjIzNCBwbGF0
Zm9ybS4NCj4+Pg0KPj4+IERvZXMgUzMyVjIzNCBoYXZlIHRoZSBjbG9ja3M/IEkgZG9uJ3QgdW5k
ZXJzdGFuZCB0aGUgIm1haW50YWluDQo+Pj4gY29tcGF0aWJpbGl0eSIgaW4gdGhpcyBjb250ZXh0
LiBFaXRoZXIgeW91IGhhdmUgb3IgeW91IGhhdmUgbm90IGNsb2NrcywNCj4+PiB3aGljaCBzaG91
bGQgYmUgZXhwcmVzc2VkIGluIHNjaGVtYSAoOiBmYWxzZSwgc2VlIGV4YW1wbGUgc2NoZW1hKS4N
Cj4+Pg0KPj4gSGVsbG8gS3J6eXN6dG9mLA0KPj4NCj4+IFRoYW5rcyBmb3IgcG9pbnRpbmcgdGhp
cyBvdXQhIEkgd2lsbCB1cGRhdGUgYm90aCB0aGUgc2NoZW1hIGFuZCB0aGUNCj4+IGNvbW1pdCBk
ZXNjcmlwdGlvbi4NCj4+IFMzMlYyMzQgZG9lcyBub3QgZXhwb3NlIHRoZXNlIGNsb2NrcyBpbiBp
dHMgZGV2aWNlIHRyZWXigJRvbiB0aGlzIHBsYXRmb3JtDQo+PiB0aGUgTElORmxleEQgY2xvY2tz
IGFyZSBzZXQgdXAgYW5kIGVuYWJsZWQgYnkgVeKAkUJvb3QsIHNvIHRoZXkgYXJlIG5vdA0KPj4g
YXZhaWxhYmxlIHRvIHRoZSBrZXJuZWwuDQo+IA0KPiBTbyB0aGVyZSBhcmUgY2xvY2tzLiBEVFMg
aXMgYmVpbmcgdXNlZCBieSBib290bG9hZGVyLCBzbyBob3cgYm9vdGxvYWRlcg0KPiBpcyBnb2lu
ZyB0byBzZXQgdXAgY2xvY2tzIGZvciBTMzJWMjM0IGlmIG5vIG9uZSBwcm92aWRlcyB0aGVtPw0K
PiANCj4gVGhpcyBsb29rcyBsaWtlIGJ1Z2d5L2luY29tcGxldGUgYXBwcm9hY2gsIGFsdGhvdWdo
IEkgdW5kZXJzdGFuZCB0aGF0DQo+IHRoZSBvcmlnaW5hbCBiaW5kaW5nIGhhZCB0aGUgaXNzdWUu
DQo+IA0KSW5kZWVkLCBJIGFsc28gYmVsaWV2ZSB0aGUgYmluZGluZyBpcyBub3QgZnVsbHkgYWNj
dXJhdGUgb24gUzMyVjIzNC4gQXMgDQpJIG1lbnRpb25lZCBlYXJsaWVyLCB0aGUgTElORmxleEQg
Y2xvY2tzIGFyZSBub3QgbWFuYWdlZCBieSBMaW51eCBvbiANCnRoaXMgcGxhdGZvcm0uIFRoZXks
IGFsb25nIHdpdGggc2V2ZXJhbCBvdGhlciBjbG9ja3MsIGFyZSB1c3VhbGx5IA0KaW5pdGlhbGl6
ZWQgYnkgVeKAkUJvb3QsIGFuZCBMaW51eCBkb2VzIG5vdCBoYW5kbGUgdGhlbS4gVGhhdCBpcyBs
aWtlbHkgDQp0aGUgcmVhc29uIHRoZXkgd2VyZSBvbWl0dGVkIGZyb20gdGhlIFMzMlYyMzQgYmlu
ZGluZy4NCknigJltIHdpbGxpbmcgdG8gY29ycmVjdCB0aGlzIGZvciB0aGUgUzMyVjIzNCBjb21w
YXRpYmxlIGJ5IG1ha2luZyB0aGF0IA0KcHJvcGVydHkgb3B0aW9uYWwsIHNvIHdlIGRvbuKAmXQg
YnJlYWsgY29tcGF0aWJpbGl0eS4NCkZvciBTMzJHLCBJIHdvdWxkIHByZWZlciB0byBhdm9pZCBy
ZXBlYXRpbmcgdGhlIHNhbWUgb3ZlcnNpZ2h0IHdlIGhhZCBvbiANClMzMlYyMzQgYW5kIG1ha2Ug
dGhlIHByb3BlcnR5IHJlcXVpcmVkLCBzaW5jZSB0aGUgSVAsIGFzIHlvdSBjb3JyZWN0bHkgDQpw
b2ludGVkIG91dCwgZG9lcyBoYXZlIGRlZGljYXRlZCBjbG9jayBpbnB1dHMuDQoNCkhvdyB3b3Vs
ZCB5b3UgYXBwcm9hY2ggdGhpcz8NCg0KVGhhbmsgeW91LA0KTGFyaXNhDQo+IA0KPj4gVGhlIGNo
YW5nZXMgaW4gdGhpcyBwYXRjaCBhcmUgaW50ZW5kZWQgc3BlY2lmaWNhbGx5IGZvciBTMzJHMi9H
Mywgd2hlcmUNCj4+IHRoZSBjbG9ja3MgYXJlIHByb3ZpZGVkIGluIHRoZSBEVCBhbmQgcmVxdWly
ZWQgYnkgdGhlIGRyaXZlci4NCj4+DQo+Pj4+DQo+Pj4+IFNpZ25lZC1vZmYtYnk6IFJhZHUgUGly
ZWEgPHJhZHUtbmljb2xhZS5waXJlYUBueHAuY29tPg0KPj4+PiBDby1kZXZlbG9wZWQtYnk6IExh
cmlzYSBHcmlnb3JlIDxsYXJpc2EuZ3JpZ29yZUBvc3MubnhwLmNvbT4NCj4+Pj4gU2lnbmVkLW9m
Zi1ieTogTGFyaXNhIEdyaWdvcmUgPGxhcmlzYS5ncmlnb3JlQG9zcy5ueHAuY29tPg0KPj4+PiAt
LS0NCj4+Pj4gICAgLi4uL2JpbmRpbmdzL3NlcmlhbC9mc2wsczMyLWxpbmZsZXh1YXJ0LnlhbWwg
ICB8IDE4ICsrKysrKysrKysrKysrKysrKw0KPj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgMTggaW5z
ZXJ0aW9ucygrKQ0KPj4+Pg0KPj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3NlcmlhbC9mc2wsczMyLWxpbmZsZXh1YXJ0LnlhbWwgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc2VyaWFsL2ZzbCxzMzItbGluZmxleHVhcnQueWFtbA0K
Pj4+PiBpbmRleCA0MTcxZjUyNGE5MjguLjg4NWYwYjFiMzQ5MiAxMDA2NDQNCj4+Pj4gLS0tIGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NlcmlhbC9mc2wsczMyLWxpbmZsZXh1
YXJ0LnlhbWwNCj4+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Nl
cmlhbC9mc2wsczMyLWxpbmZsZXh1YXJ0LnlhbWwNCj4+Pj4gQEAgLTM0LDYgKzM0LDE0IEBAIHBy
b3BlcnRpZXM6DQo+Pj4+ICAgICAgaW50ZXJydXB0czoNCj4+Pj4gICAgICAgIG1heEl0ZW1zOiAx
DQo+Pj4+ICAgIA0KPj4+PiArICBjbG9ja3M6DQo+Pj4+ICsgICAgbWF4SXRlbXM6IDINCj4+Pj4g
Kw0KPj4+PiArICBjbG9jay1uYW1lczoNCj4+Pj4gKyAgICBpdGVtczoNCj4+Pj4gKyAgICAgIC0g
Y29uc3Q6IGxpbg0KPj4+PiArICAgICAgLSBjb25zdDogaXBnDQo+Pj4+ICsNCj4+Pj4gICAgcmVx
dWlyZWQ6DQo+Pj4+ICAgICAgLSBjb21wYXRpYmxlDQo+Pj4+ICAgICAgLSByZWcNCj4+Pj4gQEAg
LTQ4LDMgKzU2LDEzIEBAIGV4YW1wbGVzOg0KPj4+PiAgICAgICAgICAgIHJlZyA9IDwweDQwMDUz
MDAwIDB4MTAwMD47DQo+Pj4+ICAgICAgICAgICAgaW50ZXJydXB0cyA9IDwwIDU5IDQ+Ow0KPj4+
PiAgICAgICAgfTsNCj4+Pj4gKw0KPj4+PiArICAtIHwNCj4+Pj4gKyAgICBzZXJpYWxANDAxYzgw
MDAgew0KPj4+PiArICAgICAgICBjb21wYXRpYmxlID0gIm54cCxzMzJnMi1saW5mbGV4dWFydCIs
DQo+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAiZnNsLHMzMnYyMzQtbGluZmxleHVhcnQiOw0K
Pj4+PiArICAgICAgICByZWcgPSA8MHg0MDFDODAwMCAweDMwMDA+Ow0KPj4+PiArICAgICAgICBp
bnRlcnJ1cHRzID0gPDAgODIgMT47DQo+Pj4+ICsgICAgICAgIGNsb2NrcyA9IDwmY2xrcyAxND4s
IDwmY2xrcyAxMz47DQo+Pj4+ICsgICAgICAgIGNsb2NrLW5hbWVzID0gImxpbiIsICJpcGciOw0K
Pj4+DQo+Pj4gSnVzdCBhZGQgdGhlIGNsb2NrcyB0byBleGlzdGluZyBleGFtcGxlLiBObyBuZWVk
IGZvciBuZXcgZXhhbXBsZSBmb3INCj4+PiBlYWNoIG5ldyBwcm9wZXJ0eS4NCj4+Pg0KPj4+PiAr
ICAgIH07DQo+Pg0KPj4gVGhlIGV4aXN0aW5nIG5vZGUgcmVmZXJzIHRvIFMzMlYyMzQgd2hpY2gg
ZG9lcyBub3QgZXhwb3NlIGFueSBjbG9jaw0KPj4gcHJvcGVydGllcyBpbiBpdHMgZGV2aWNlIHRy
ZWUuIEJlY2F1c2Ugb2YgdGhpcywgSSBjb3VsZG7igJl0IGV4dGVuZCB0aGF0DQo+IA0KPiBZb3Ug
anVzdCBzYWlkIFMzMlYyMzQgaGFzIGNsb2Nrcy4uLg0KPiANCj4+IGV4YW1wbGUgd2l0aCBjbG9j
a3MgYW5kIGNsb2NrLW5hbWVzLiBUaGUgYWRkaXRpb25hbCBleGFtcGxlIGlzIHRoZXJlDQo+PiBv
bmx5IHRvIGlsbHVzdHJhdGUgdGhlIFMzMkcyIGNhc2UsIHdoZXJlIHRoZSBjbG9ja3MgYXJlIHJl
cXVpcmVkIGFuZA0KPj4gYWN0dWFsbHkgcHJlc2VudCBpbiB0aGUgZGV2aWNlIHRyZWUuIFNob3Vs
ZCBJIHJlbW92ZSBpdD8NCj4+DQo+PiBCZXN0IHJlZ2FyZHMsDQo+PiBMYXJpc2ENCj4+Pg0KPj4+
IEJlc3QgcmVnYXJkcywNCj4+PiBLcnp5c3p0b2YNCj4+DQo+IA0KPiANCj4gQmVzdCByZWdhcmRz
LA0KPiBLcnp5c3p0b2YNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
