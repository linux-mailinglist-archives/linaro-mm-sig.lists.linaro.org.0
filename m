Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMHDACkS4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:45:29 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 742C5411EC1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:45:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8228345048
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:45:27 +0000 (UTC)
Received: from AM0PR02CU008.outbound.protection.outlook.com (mail-westeuropeazon11013022.outbound.protection.outlook.com [52.101.72.22])
	by lists.linaro.org (Postfix) with ESMTPS id F3F3C3F9AC
	for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Feb 2026 15:02:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=NXP1.onmicrosoft.com header.s=selector1-NXP1-onmicrosoft-com header.b=I5j5pPLv;
	spf=pass (lists.linaro.org: domain of larisa.grigore@oss.nxp.com designates 52.101.72.22 as permitted sender) smtp.mailfrom=larisa.grigore@oss.nxp.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=none) header.from=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PK3t68qTmtmNe1w3f2H6npfacrW2Kc29XYWBVuISaZrG5fnIPwclle+PmSjKIlNWsNwzYkBh5mPCzBqOFWXGuNQzPCMTEcEkDm1VHwE4+HFqkdLoNUWLUhAGVGWF/PhgEa2CkHhYaHoswx2eTOoX4fOUN+OCJHghHiEU6ckLqi1cbfXSws4euuMj0h0z/1dZCJ72EzwXlXLem7AM733emDXnKwhDDTt9/qFJ0O0OZGExX49N4ilS1ps2Po7vowXQdnfwtZFO6qkT2JvhoKQr9cnGi05fRwITmLQSdu48jx0CO0s/8rvlJMal0EO3TDB3LUch9qWv2CJpZTeEtCLliA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6NzP8tX3IEhSfLw4MITGkuVpPnWel+XLlAHBO5MKqv8=;
 b=RHsgKl5436UYxa1diLUfMhkVBr7ro9UZmk3ZsVNxqz4vXf/rFM0Kg14smpt01pbyJ+oMrk8QwNIVtfezhkqLduAmb9DARiO27+IPwmh9hEBv56D/3EPtlPczPMQGAntIFJ/X+vqqJBju8DSRrpIBohslsBzkq+sxgo4j3kCD4WuyeBMFOJieY/JH7J5TgzW/33cDT0dMUUg+Q1rbUT0VeDn+tXqBS3M0oeg47wbcQNRKxziaEX+ySwKcqkI4WlL1GZCcXilDIlTJy0f+q/bIlq4AISAW8rYPTKoOKSJvY9ywAyMhe3pxMa5wFga5iL0cjggq+rco8mc0aVSCr/3W8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6NzP8tX3IEhSfLw4MITGkuVpPnWel+XLlAHBO5MKqv8=;
 b=I5j5pPLv/w6+HPtu6khPr9YhXaNEN/uKKqQ6fKCX5gEqnEoytEpB6jliXaNFBagXojJ8P5zbiT5BSR0EYv3Ew8R253dbjfO2b1DhugbND5Dj9ouVOK4B12HEyc+xSeC4EOmN5+SqJFQJEXByPSg0iGRdY23I1B6NW+wDYzA9cM82tcxpS3JmQv1L6jHxdj4DroGFLNWXJQjcctDlF66I1jIegqKXJoLU/eIyUSsPshfrtAsNqzssVMmd6rL+H0qw1XpBZNZmSBRviED04e6R27oBvQylbZOOIYMpmufrDx15rln27BFJ5L6fl7BNyCqB+9ji5PygIOtUVTqLKgLe8A==
Received: from PA4PR04MB9224.eurprd04.prod.outlook.com (2603:10a6:102:2a3::5)
 by MRWPR04MB12380.eurprd04.prod.outlook.com (2603:10a6:501:83::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Mon, 16 Feb
 2026 15:02:34 +0000
Received: from PA4PR04MB9224.eurprd04.prod.outlook.com
 ([fe80::8e54:4d38:df79:fd63]) by PA4PR04MB9224.eurprd04.prod.outlook.com
 ([fe80::8e54:4d38:df79:fd63%7]) with mapi id 15.20.9587.017; Mon, 16 Feb 2026
 15:02:34 +0000
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
Date: Mon, 16 Feb 2026 16:02:01 +0100
Message-ID: <20260216150205.212318-10-larisa.grigore@oss.nxp.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260216150205.212318-1-larisa.grigore@oss.nxp.com>
References: <20260216150205.212318-1-larisa.grigore@oss.nxp.com>
X-ClientProxiedBy: FR4P281CA0170.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b7::11) To PA4PR04MB9224.eurprd04.prod.outlook.com
 (2603:10a6:102:2a3::5)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9224:EE_|MRWPR04MB12380:EE_
X-MS-Office365-Filtering-Correlation-Id: 01227981-c6e4-4d57-88a1-08de6d6c6a09
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|7416014|1800799024|19092799006|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?M0xKbWJsbVhZSy9KL3JVZE5WbjlVeDBGTk9LanJKcGc4a3ZuZlZlZ1BGYldF?=
 =?utf-8?B?eU9iUkRoY2ZBTk12bWx4bS82ZlBSZzB2bWJzemowRkJmNmpXVVdmVElzOVY1?=
 =?utf-8?B?bjBJN0M5c25jL25Ccjd1d1ovaTBGWXpvVTlZQVQyTGc5OThrbWJLc3kxVHFv?=
 =?utf-8?B?d3BBMTlYMHF3WkJKWURnekczRXdJUEUvVU9qUmRSZEdTZnhTalhyM1lUaGpF?=
 =?utf-8?B?dFdzK2pwY1hSRHU0TnBaSjZaL1ZOdW96THBsckxLTVdvRjh3SDdrcURkcUFx?=
 =?utf-8?B?YWZiRFh1OHlBblRDWnM1RG1DV21hWW5lZWxPeXBCMnQ1ak50WXJRYTRpU3VK?=
 =?utf-8?B?SWJRNCtjU2pvenNSS25ieEROenZsTTFEQThURldxM2w0WDdtV3kwbVBnQm5k?=
 =?utf-8?B?RmI0aENZYlh3U3NVQUJubU9ZTVoxNXhxbHpiR3JpekRaK09ieS9zM0VPN2xU?=
 =?utf-8?B?OTJBMDdUdUZSTTkxc1EvQWM5RUM0NWNLT2M5WGVxTlM3V0tTZGJ1ejJzU1dU?=
 =?utf-8?B?YURmK01URlpkSmY2bGU3U1ljOU5leUZBVnlmSG53WGhkZU9YcDBob2hlWlpw?=
 =?utf-8?B?MWtFc0ZoVWF3UUdIVEN3czg5UmUrZTU0eVp1eFZBNkorcmljd3F3eWtCUGhn?=
 =?utf-8?B?SXBBS1BxMlZBNzBOS2FHYXR4MTlidzM5OHdxR0JPZ2h3SHlJbHFrYlBJNjhx?=
 =?utf-8?B?aVhqMnR5ZEwrYk03cEhCendVZHdSWmlqMW5kelozZjJkdC90S2M1a01PeGMy?=
 =?utf-8?B?dVkwTWVpUXdDNXdVWU9VV0F0MEM1ck9FU2JROUlkTXhiVy9IcEUreCtSWFRK?=
 =?utf-8?B?QW45NVJGODFWS1Uxajl6UmxhQWk3eUF2LzQ0NHNLQmd0L3ZPaDdmKzhGWWM3?=
 =?utf-8?B?dDFqbUJka2VESmlZUVZKM0JvVGFOUnJWR3NGcy8zT2VoUzFJT2poSWpaQkE3?=
 =?utf-8?B?c0o0dW15MWpPaWZ1alcxcnhRSGEzS0FJMkFMNHVSdkZhd3g0Y1g5b0NBQlFz?=
 =?utf-8?B?YkRGcHoxOHFqWXM3YXVpRG9uOEFPVjF1NUtnTm9DUnhTZUlkM213QlFxTlQz?=
 =?utf-8?B?eXMyTHM2Z1pGV2lmeUhaWVh1Y3c5bktCV2J0ekFKR2Q3ZE5zYlVkbGdaUFZ4?=
 =?utf-8?B?UC9YRVJZNGhWZnFJUWc1NTJwUGE5LzNYNXcrZTd2S09GclpzN25Mb3NGc3dD?=
 =?utf-8?B?d0llV1paR2ZHZUZlajU2RmhzOFJUQlR2Q09Qc1o1N3pKVE1LUHpjZTVCUDJV?=
 =?utf-8?B?T0pVTExnbk1XT2hnc3BtRkpVd1dKTE1uZ2hVTXc3Z1Z5VWRsSm55cU42QWxa?=
 =?utf-8?B?QVQ5dGpnakU4S3dEZ2xYN0xwYlgzS3JDWFVQUnFubElSUTg1c2NzSGk2UU5z?=
 =?utf-8?B?eDZrcGpTY2FKMmpzM21YUWpOL3FKMEV5WldtRk9QS3FnalNCWk5BejZOYlNC?=
 =?utf-8?B?d3k1cDBTWGJKY010ejdoQWFyTW5rL2d5bjczRkcwWTdNSTFBbmduSldsZW5y?=
 =?utf-8?B?MHNOd2ZaZ2FoSzBCUG5JV0ZvZHl5U1lEamdSMVh5dWVXdUhrbGZqazFPRDdG?=
 =?utf-8?B?Wm1LSlgwSXAySW5CeHlnMno1Q2NzdTJlbFI3TlN0QXdBQUxtTWtsaC9UcjE5?=
 =?utf-8?B?WGpWcFYvcTJiWDcxK3RJNjdXcDRLS0xPS0RpN3pNa0lUQUFLdFV3RnNBcGgx?=
 =?utf-8?B?UVczNVNzNTNaVGtPVHVDa2xLeitlK2EvU2lUbGZLbEd2L3dqK1R2eGpTaHRH?=
 =?utf-8?B?ZEVIMk9SWStTaWFiWlg1aEhBcDYwajJqcXN3dHdVeUNKd0ExSVVhdDFVblpV?=
 =?utf-8?B?YzE4Q2xJbm9YUmEvR2tqQUMzY2IveEkvRHA2Z00wNkJRZm1zSnZmL1NsL1NR?=
 =?utf-8?B?alhBeWEraStPeUhPb2JPQ1g1QzlRSThFVUxQUmFUcTQ0N3hHVmZaaGtqL29q?=
 =?utf-8?B?dVFFaEU5eW9iV0pVVHQ4Z1lMKzIyMDZPTkp5SVY2WDJSd0tiNzRURnFxdzYw?=
 =?utf-8?B?akVNTWtjZlZkbHcyQXVaNkYxUDlabVA1eVJYYWFlR0cxTVVadXNIMWp5bUVw?=
 =?utf-8?B?NzRTR0VObkFCYjRvY2ZmZUtMRlNodzdXczh0UFpPSDNZR3Y3SWVyR3ZuYTFw?=
 =?utf-8?B?V3VZT0NZVzlwSEdia282SDVkVUZJdm03SlVHS3NYZXFnYWlZZU55WnNCZTJt?=
 =?utf-8?B?WkE9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9224.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(19092799006)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bnpOY1M1QWhBQTdkTFJGRGFzVTFNWiszQ052MmJYcHpaSUNuNDA0d0V1Qkpw?=
 =?utf-8?B?dFI5Z1Blek1YWDdMS3FGeFlaM0lZM3V3bXY1KzJISDFNMll4Z0lvb2MxMFB0?=
 =?utf-8?B?RXJqWWV4bFFHck1Zak1ZWnR6aWZhbkgrN253T05yTFpqK3lhNlNIUkE2ektT?=
 =?utf-8?B?djZBQ0JGQzA3SjRGOXEyR2hEM1RqNnM1VkwzOGwwSnh3Qi9YMG5wOHhkYU9o?=
 =?utf-8?B?UFducERxUElMQlY3VTNFTXozVjgxZzhDNlA5cTFQbDJQYy83N24rbTBBemU3?=
 =?utf-8?B?cmZxY0RLeDdLMi9icHZZYmo0Nlo2eHcvU2U0UUpVMTA1QVJNenVwQkh0cnV5?=
 =?utf-8?B?bkhLeG13NU1hVzNFTWc5VGJqQVhVdUdpQ3NhazFyeTVIcjRrLzVqR0NYKzZP?=
 =?utf-8?B?T3ZOeFZ4VTF5OWhpTzRyQzh5Kys3TU9NZ3BlQUtMYUpXNkk5UDVacUlBaVYy?=
 =?utf-8?B?OEdXRVNCQ3F3MnZFSGJyaWtZRXgzMEZDdUlDK1hIaG1Pc21FOTI0dFpOalA4?=
 =?utf-8?B?NzFhZUZ3MmtQTVp3ZzdCOVR0YWpSajV6ZkNLUThpZmdkcUQ4QndDSEsxa3Fv?=
 =?utf-8?B?ZHhFQlVidjZ2dHdNYkI2bzNleHU2c2Z6RXM5NHVHQVdpMzRZYkhsQmlXanVG?=
 =?utf-8?B?a0ZiY2owOFpvYkd4VER2MzRBZ2JVZzh5VStjTGtFVXFsUk1oT3Z0OVBiUW8x?=
 =?utf-8?B?QkxWakJuSXE2d0ozTk9Ta05KRFcwWHFnNGRseXVLSVFwQm9RSzJKK0I0OHh3?=
 =?utf-8?B?RWV4YWVrVmw2MmlnZW0yaUZsUm0wL2FlekJkNnB2WE14eWxkRFFHbTVJMmlV?=
 =?utf-8?B?ME5yeVlITVZCeTJhZEN0WU5RZWxJc3R1RkJsTm5qS0x6blVwV3Y1Mi9zVSts?=
 =?utf-8?B?LzVTYU05dWt5djdRUWg5Z2YzZG5ETnpIVkpiRUhOOVBOWEZGaU1jRGpseHJz?=
 =?utf-8?B?OHJ3dkZuYUE2eGppOXhMZ2NxLzFHV2JGRkxaSnRpeURwb0JvUTdFeFFsS0RG?=
 =?utf-8?B?TkFaNjhEMjBDMmd6RTJCQklaZURDbjJrU3FFZnBrczFWQWRpeGYyUExGN25O?=
 =?utf-8?B?Znd6VHhFRTdVcVBRZmQxaHQ5Qk4zcTU5NVRWa1ZTdVhSaGxUaW9sUUZBNE1q?=
 =?utf-8?B?NjZjeVRTOVFhYjlJZEpJRGNQQ3RyTVpqMnZCQk5KOGJISFl2V2Y0QlpGVzZZ?=
 =?utf-8?B?SWtBeGlVTUhPWmtkNU02bFVOTW1QdDh1Y1N3eTdtNGliZnNVRk52MkdycmRo?=
 =?utf-8?B?aDF1cG8xTlBJZlM5RjB3TzEyZ1NFR0JiTzBhcXpTdXlKUi9ZSEZzcldnaDNN?=
 =?utf-8?B?cVNXQkxab0UwYmZodzJlbml1ekl1Y2NqM3QzZ21PL2oxVU4vbmVYalJEYWFx?=
 =?utf-8?B?S0tDdG5vM0RESzYyb2N2NHphV0R2V0NzYWNzNnRRK0tFMlNIMTRGNkRvNzBj?=
 =?utf-8?B?QTJ5cStqYTJESllqWXFxZXdJRnhSaFFsVVdqU3ZqZElNakhXRXNHMndManNC?=
 =?utf-8?B?czVvcDdmL3VCT3J0VnVmamNseGZVTlRDd2ZiK2s1VFhKVndVWmVmMzhhdHZC?=
 =?utf-8?B?R21iVC9BaFE4WVhqVnNaTHI5akJvOGNGWWJqOEtEU3NzQ0Zpb3F4dk5nQVdP?=
 =?utf-8?B?NDRaNEZWenZ6SkYrVms1bWF3WnFWRWR4RE1mazMzUGF1ZlVQYXB6bk5UZ1Uv?=
 =?utf-8?B?dmZwaDh2SnJBN3FqS2dZMVl6Q1VQRUlPcW12U2NQUUR4WFhZa2RzQUhWdmRi?=
 =?utf-8?B?SGE4UndIaXBQbzM0dEdoV1pVcDF0RWFCY1VjczVLNEZtYVJZc21LNVNoMVoz?=
 =?utf-8?B?bHhCbTNBMjhkMTZaMmRKQ00rOXNEUnpuWkJiV0lRYkFoTkI5RWh5L3lldUxU?=
 =?utf-8?B?ZnM1Ny9UU2xpSngwbjlYYW4wcVJBM2F4ZnVzQ3hEUFhyZVJPSXNpeVRDbVpX?=
 =?utf-8?B?bm5GamdEWm0rWFdsK09UZllONndTV3E3NnZTTjlhdTZPZGs2ZU9BdXpHbGQv?=
 =?utf-8?B?c216SGMyTFZ0dlhPQ29ING03aTZVbU1qSVVUdWJQcUxBNnVHbkdXMTdURXlK?=
 =?utf-8?B?MWhxMk45WmhTOC8vNUppSHRzNjlIVkxmSGtaSXdyenRmeWxpLzJtSE5IcEk2?=
 =?utf-8?B?NXBzTGMvZHVNNmh2ckFLQTFGMmpxUklqRzFtTmo0b0VmUG9kRDh6M0g4RE9r?=
 =?utf-8?B?SzZwYlZhcXF6U210Vm85OHZxNkNFM3dsWWVJZHVuNVVkOUx5WGJ0ZWtIaDJE?=
 =?utf-8?B?UEFWL0gxN2lYL2RSTExJcEkxeUVSSzNGNWZrZEVWeTI4QzFpc2FqY2RnOGdW?=
 =?utf-8?B?R3NNMnE5b2hudHc4SjlQVElkaUl1ejljcGdNdGhWbCtZNkR6S0pHMER4alpB?=
 =?utf-8?Q?/pss2IVf9PlgpzPk=3D?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01227981-c6e4-4d57-88a1-08de6d6c6a09
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9224.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2026 15:02:33.8411
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2U5FxV6hRvBFz4o5pjF1dHJvdqJfgzH5Nqa7jMARbseDOfBo+egsBTml/qQHh5z+TzJoCZwie20ttQgYJ0XX8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRWPR04MB12380
X-Spamd-Bar: ---
X-MailFrom: larisa.grigore@oss.nxp.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DTPWZO2FVKPLCCGFJLI46YBSUSPCJXKQ
X-Message-ID-Hash: DTPWZO2FVKPLCCGFJLI46YBSUSPCJXKQ
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:32 +0000
CC: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, s32@nxp.com, imx@lists.linux.dev, clizzi@redhat.com, aruizrui@redhat.com, eballetb@redhat.com, echanude@redhat.com, jkangas@redhat.com, Radu Pirea <radu-nicolae.pirea@nxp.com>, Larisa Grigore <larisa.grigore@oss.nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 09/13] dt-bindings: serial: fsl-linflexuart: add dma properties
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DTPWZO2FVKPLCCGFJLI46YBSUSPCJXKQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [5.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[NXP1.onmicrosoft.com:s=selector1-NXP1-onmicrosoft-com];
	DATE_IN_PAST(1.00)[1417];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
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
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	FROM_NEQ_ENVFROM(0.00)[larisa.grigore@oss.nxp.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.444];
	DKIM_TRACE(0.00)[NXP1.onmicrosoft.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.nxp.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,nxp.com:email]
X-Rspamd-Queue-Id: 742C5411EC1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Radu Pirea <radu-nicolae.pirea@nxp.com>

Add 'dmas' and 'dma-names' properties to describe optional DMA support
for RX and TX channels in the LINFlexD UART controller.

This allows the device tree to specify DMA channels used for UART data
transfers. If not specified, the driver will fall to interrupt-based
operations.

Signed-off-by: Radu Pirea <radu-nicolae.pirea@nxp.com>
Co-developed-by: Larisa Grigore <larisa.grigore@oss.nxp.com>
Signed-off-by: Larisa Grigore <larisa.grigore@oss.nxp.com>
---
 .../bindings/serial/fsl,s32-linflexuart.yaml        | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/serial/fsl,s32-linflexuart.yaml b/Documentation/devicetree/bindings/serial/fsl,s32-linflexuart.yaml
index 885f0b1b3492..317f9ba41c06 100644
--- a/Documentation/devicetree/bindings/serial/fsl,s32-linflexuart.yaml
+++ b/Documentation/devicetree/bindings/serial/fsl,s32-linflexuart.yaml
@@ -42,6 +42,16 @@ properties:
       - const: lin
       - const: ipg
 
+  dmas:
+    items:
+      - description: DMA controller phandle and request line for RX
+      - description: DMA controller phandle and request line for TX
+
+  dma-names:
+    items:
+      - const: rx
+      - const: tx
+
 required:
   - compatible
   - reg
@@ -65,4 +75,7 @@ examples:
         interrupts = <0 82 1>;
         clocks = <&clks 14>, <&clks 13>;
         clock-names = "lin", "ipg";
+        dmas = <&edma0 0 4>,
+               <&edma0 0 3>;
+        dma-names = "rx", "tx";
     };
-- 
2.47.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
