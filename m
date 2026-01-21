Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +NZkMKjfcGnCaQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 15:16:08 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 43BF0583FE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 15:16:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 54D3A401B6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 14:16:07 +0000 (UTC)
Received: from CO1PR03CU002.outbound.protection.outlook.com (mail-westus2azon11010004.outbound.protection.outlook.com [52.101.46.4])
	by lists.linaro.org (Postfix) with ESMTPS id 2D4423F70E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 14:16:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=isouwlw4;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.46.4 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DVnhkpQFIBepVFgFZ8nMRtAh+9VIOO1GDVQpnrU+GL4z26PPW7Z8lNeD31ZcOJLh41CKZ2yafr+gnju3QcLXwPkQWQoVvqvTxMxWKZQykPACGFuuWxKrSYhAIOQkL74L1ilkKJ1mtmGJO29Y9LAsYWJPYTzvGsOWAdjqIydGGLDC6IDCszNbC+MlxrkikGNoeS4CYn8BDQyGanSt+q10P25nv9BC5RsCAcVoMgBCdrv3HJzJXmZMmdfKa0Ifs2PbcLBPwdPQtDJTXGi8Kk1zWUQ8e0P/SvlZJ4x8e9/vJBJC2JsCh2LVIb/4mZDJTEeArQ6Dr2+Pdevc/fPeNkrrHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a0XreyKuk6ulyTLgL/oz37M+990R47kyrBb0AahPj3I=;
 b=Fak5VgFGeBtuFJtqU6PITBOPVMcSYzyCYaO16DF+XU/Qy185LMPLE3Aj2xHWKVPFJllR012ZHNtYmOg78UKWGqWy4hqQT6k17zZlNfvelKMuCC7WBTe1SESJeTy2GHpDvwxgdWDIeFojG11BHLUrf2uq9Qgcm2Rz5JjzIOJu9P1Czu+XwgVpHM/OROo2NAeENjziBHVSIui9GPRCVlwjOj2EF4zIKGSp44MkOWjLRD4cl+0xG/XrJlIExWyXt466pJsDmVygtAemze1I4anBHY63zAE1Gc/9CQ0AC1Zj1KdVfAkKaT/VDw6LDKO2wtYjccGQ4CKtnRDy7Kh1MrBTmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a0XreyKuk6ulyTLgL/oz37M+990R47kyrBb0AahPj3I=;
 b=isouwlw4WLAF0U1mbG+OB2jeIKONKRzFrxZrERjNWQRCqA02DGlHDacadRx71daeY1lwUw8B/mVolYSud/KOZ7SjnAU4k1lU35Jy05XJHqWXy/RMao+jDViiYsg9mhMro5zJ+w4nszGvKz1dhC/o4CbTOt912PaSZ+PVEVcP+Us=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS7PR12MB8204.namprd12.prod.outlook.com (2603:10b6:8:e1::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.9; Wed, 21 Jan 2026 14:15:55 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 14:15:55 +0000
Message-ID: <8689345b-241a-47f4-8e9a-61cde285bf8b@amd.com>
Date: Wed, 21 Jan 2026 15:15:46 +0100
User-Agent: Mozilla Thunderbird
To: Jason Gunthorpe <jgg@ziepe.ca>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
 <20260120-dmabuf-revoke-v3-3-b7e0b07b8214@nvidia.com>
 <4fe42e7e-846c-4aae-8274-3e9a5e7f9a6d@amd.com>
 <20260121091423.GY13201@unreal>
 <7cfe0495-f654-4f9d-8194-fa5717eeafff@amd.com>
 <20260121131852.GX961572@ziepe.ca>
 <8a8ba092-6cfa-41d2-8137-e5e9d917e914@amd.com>
 <20260121135948.GB961572@ziepe.ca>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260121135948.GB961572@ziepe.ca>
X-ClientProxiedBy: BN0PR04CA0124.namprd04.prod.outlook.com
 (2603:10b6:408:ed::9) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS7PR12MB8204:EE_
X-MS-Office365-Filtering-Correlation-Id: 8847602a-3bf3-407d-364e-08de58f79722
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?VmJXRDdBV05KRmpQSUpuOWZDN1p3VlRjbVpNekhWWDBWZDZ6cVhCdVozVXFh?=
 =?utf-8?B?dUdpenI1amtQdFlnYjU2cFNUM2g1N3dNNUlHdWovbTY0RGJHUnFHK1BaN29E?=
 =?utf-8?B?aUFtVGdIWEpsdFcwSzc1MmpjVWZpR2ZXeEdCaWU4Y0JaOU1weEt1Ni9RblRz?=
 =?utf-8?B?TGYyQXAzYXdUVTUyczB6dHF2Y0VvMVRQQUlldHVLUmVaWGR0eEMyV3huakFZ?=
 =?utf-8?B?ZWc5dzRCUUQyZVpOaUNFeHExdTNGeGJ3NXR0aWxCa3lJeU9VNmtHbDdtM09o?=
 =?utf-8?B?YWNnMU5kdkVyVElDQ3RZNFJxa09GQ21RYUlVL1JPZEdmTEdWWFFoZnE1VmFU?=
 =?utf-8?B?UXdNUExRUnRSNllvcXcwSkhTZTFpZUJOam12bVcwTXFYY1d5ZlNlUkt3NEND?=
 =?utf-8?B?djJvZFZabFZmS2FtWkk2VXVGTGs1eVltbUpmSnJDSS9wd3pUajhMa0R2M0ZD?=
 =?utf-8?B?T2R5eWFlc1lFMGp5WnhsUkhjU1ViUVVhdzdxSG9ZU1JmTm1LeGZBQWVXRUZm?=
 =?utf-8?B?QlF1Q0dyT2xlbnJvZ1NaM0ViZ3J3K2hLdEpVbjBIeW4rL05aSng5Y0o1MXhC?=
 =?utf-8?B?MmZrR1dDdHlvd2djZW5RMkdIVXZWek9SNUl5VlhDTi8xN0VWRlBhWm5lMFo3?=
 =?utf-8?B?TDBNZzdQcmg1bWkraUNjdHJwbmZiUTAxQVBUTitNb0t2MTJzK0FVOThIZHVB?=
 =?utf-8?B?em00em9LcGJCT2tWckNiVnVGbzVMSHFMM3U5cjIyK2JTVTkxQk0vV3d4eTdx?=
 =?utf-8?B?NjY3Q3BTWGM3cldhWWZBSGxidGJSSWhMKy9TL0orc0ZMb0JWbUJlTTMvSEVm?=
 =?utf-8?B?U1gwZUtZWnZ1VlVUMS93Y0JXTGEvY0Vod3ViMG42SlRHYnpsMmg3Z1pQbkJG?=
 =?utf-8?B?WkxBS2tNZ2gzQ0ZKVGRWN1pSTkxQbjNTb1NYc2NIb2tsS0pRYk02M3FUUUxZ?=
 =?utf-8?B?Yi9OQW44ZUFOdkdBN0JNSTJac2RpUytva1FtdTRUQzl4VS9qT0d2OFR6WE1o?=
 =?utf-8?B?Rmp0dHhRNTZHMUFyOHVOTVpta2JFZ1MvcXE1djZHVGwrcXdGbllMVXMvaE1P?=
 =?utf-8?B?eS8xWGY5OGZ1aTIyaDRqWHVyWC84YUI2bnBDUUNVaXFyOEw4S094MmdVc0tD?=
 =?utf-8?B?NHpxTlc5WnRQQ1FNbTN2ekNlMnZpK2pzUWRkTUxKRU5ub05BUUNDWE5ZU21j?=
 =?utf-8?B?NGdaanRULytJWmYzc0xYVk1JanBtZjVBSk9ZSTJFZU5wV2xUbFhFUldETytV?=
 =?utf-8?B?enhjM0xvcXcvRUVkSUtSTDF1bGhiVGQrUEVGR0JkblNoa0EvS0MweFpzVTJV?=
 =?utf-8?B?emg0ajVOYWs1LzRaM1ZoRVFkc05ldGFyOVh2OTZmOWtBNEJVemZZcUg5b1or?=
 =?utf-8?B?a1hUWnpUdVFBUUwyVU5yL1BROHAzc1pDODFsd0tRZHZpRFZDWC8yY3hvTnR5?=
 =?utf-8?B?VHBHQ3Q3a3dVQXJSU1hJejJqNjNKdE9YcEhWSFp4NVgrNGg4THRFeUFUQjl1?=
 =?utf-8?B?dVlqODFPUytOZTVOdzl4aGN5QU4yYzl1VWJOa0RxVXNEcGFLdFZScGhmMk5U?=
 =?utf-8?B?YWsvTWkrZndNR2FGSVlzTTBtRTA1RVJEN2hGZTNEbThFWHhNeVg0VE94Vzda?=
 =?utf-8?B?b1R3VHlFMUl1MHQyNTRieVNrdDV1d3o0VmpNZjVUWUJKYmdpOXAxRTVEM0Fz?=
 =?utf-8?B?QURuYUlYNTFvZk1SdEx0eG52RHMrS25yVGFzRjhZWWV5YWZqZTdxc0oxSFpv?=
 =?utf-8?B?RGd5Y21UQUwzZUNtZVcyendPbHJJZnRBVWY2YzBGQlNrazdoaU41d1Q1S2l6?=
 =?utf-8?B?dUZFMFdtWlJ5U3pqVGtpcm5ZTjRLcXQ0MmlaVHl2UmtvQUZqVFB0TUw4eFdV?=
 =?utf-8?B?MnRPMWxsU1JmR29qUTRFb2xNeG9mck5DYkltRFZLaC9pNXVWUGtuaG5FWTEw?=
 =?utf-8?B?MVRsVDVwREdnSnNNSUk5K21qSjE3MW1VdDhKQ084VldjcHplNDZkUFI1eEJk?=
 =?utf-8?B?TjB5a0I2VGF3blFocll0WTJ5SjZIaGpJaDMvRDY2Sm1ZcVRpRlk5YTBGeUNK?=
 =?utf-8?B?eXdKOUUvZWlza1d3RElMTzJhWkhzQTR2YStaOFpLdFU5QVZ4bGVUeFI0Yloz?=
 =?utf-8?Q?ADx8=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?U0JLYWdHbVFBeW5rbVhaZUp2QmR5VWx0cVc3dWFsM2d6R1hCOWpJU1lBdnAv?=
 =?utf-8?B?c00yNG8yVUhGVmd1a3VqUHdkVTdZNWRHVThVWDI2QnczYzdURWVNNUpoR1VG?=
 =?utf-8?B?bXpsRnhJNWIrZHJBaTBMV3pHd3drdVFTd25uTW9LcFNMdTIwTDN3R0sxdlA4?=
 =?utf-8?B?N1F1SFRwZHVNS2MzYTdVMi9zYjdKNXdBNkFzUUs1YTJXMDlJWFRKLy9Ra3hS?=
 =?utf-8?B?aFgyTzlCRkFZZHpaUEVLWEtTLzRXd3ZwL3NXODJyanFDLzcyekZDQUVtOXVB?=
 =?utf-8?B?dXpSQ2ZvVThFakJsUDY1b2NPQXdXVER4TFlLelgrcmt1ZmEzWTdkTzRWcHU4?=
 =?utf-8?B?djFLUUxXVG90S0xVSHhXSzJpb2IzNmdNdzJoOEF6bFkyeTJGcXpodkt4VG43?=
 =?utf-8?B?bllaN2N2eDBUSU9YYzd6amhPUUgxNTRmejhTTFN1ekk5VzJQZkZVNlhkcGFG?=
 =?utf-8?B?RXRrZ0tVSUNWaDBFdGhGU3E1N0RaMm1UK2VTMmFqdkNTWGpzSUo1bU9zd0Q3?=
 =?utf-8?B?cytNbzNLSmJUeW96TDdKNS9VT3dOOXNXRVZuRzNuS2dFODhVVUlRM1IxRHNu?=
 =?utf-8?B?TDE1N2NBMUpBMHJxRU1vQmpkMUtrR3pZZGN0d1dXUTFTNFovOHpWT0N5aVV1?=
 =?utf-8?B?VmRjWTIxODBuWHVobVk4cVkremJkMjhCbGJwTXJMd1Fmd0JoNDU0WHUvMHpi?=
 =?utf-8?B?K2tSZTF3Yk4xMjlGWGxNMzQxc2lyYWgzREg1TmFmNFI2Q1RsV1BwQlM2VWRB?=
 =?utf-8?B?WnZDRngzQmpnUEM2aGxlTkJ0RkVhVUkwdEZBc3h6eVl4eFZCbnU4K29MS29O?=
 =?utf-8?B?cTZFNC9ZQXIxNmFWRWV1TXlTT2hidHE2bTlzYjNJcVFBcnlBdmVNYWFzeVFm?=
 =?utf-8?B?bEFscHorUEdKaVZMd0pHUW9kUzlGZVhacFptclR2amVpU2Y5aDVGQzJiVmZK?=
 =?utf-8?B?ajRiRHdtWEZmRnlZQkp0TDVjNW5ZVlpZOUN4SlYrZ2ZEMGxKdUJLMmxIZnNX?=
 =?utf-8?B?TmxaR0NSTW93M3NlUWE5cy9iK1BTT3ZtRmJ0WDFWNjdRTjJ4UUFCVEdpVVZW?=
 =?utf-8?B?L0lUQlIrS1VlQjAyZTRWcHpZRjhaMUU3VURMcVhhWGsraE0xY0xxWU5IV0xj?=
 =?utf-8?B?Tm9ZaFYxV2pKQ3RYMVowOVl5MWdpQm5LZHlIV1JHR0hHZmR2Zkp5TG5qZ1Jj?=
 =?utf-8?B?Y3ozNUFUZjdEc2F3dkFxVGFhVW1KcERlL0hxZXVWckpXaGg4TWNjdUFmWGpw?=
 =?utf-8?B?cnhHb1dsdVlINm1Fa245bzNmZUh6VDU4OVFybnMweFk0cmlMYzFEeG0wa2J3?=
 =?utf-8?B?YWlFbUR6aG1OUHp3cWhVRVFiS3ZNb3ZlQmlWYmF6czZMVFVaaEJPcExIM291?=
 =?utf-8?B?YXBUdmRGL2w3Q0twc2xWMG05c0hUdEFvRldUU1VYMDVVS2x3Wk5FeUU4VDIy?=
 =?utf-8?B?RjBxQkxIbXdNV2RTTGdqMGs2WHhBbkZtQUd0aVdycFZQdmdGRDVNVGJxdFFj?=
 =?utf-8?B?dmZJZUVhV3Z3RTFXVFhyYkdXNmF0QXZ6c01kYTZiL2psalpQRXRkTHFyS2FF?=
 =?utf-8?B?SzNnYnVsa1JtL3V0aVZ6SkJmRXlOQjhGN3VUVXF5Tmo3Y2xxckgvQ2E5YWo0?=
 =?utf-8?B?eG5YQzJDMDJpdWJMcUJvSzdFSlBjN2VUckc0Q1Q2U0FSZHRxdDdHRUJLUUZa?=
 =?utf-8?B?eGc0T1JuVk0yNmJZamszSUhNb2daZ1ZneHZvMmlvVHM2V3FVRklPMk1rajFh?=
 =?utf-8?B?cm9qdzlHZmgrdVpBV21tM0ZBL1FjQUdqalpkTURxM2NsTGxxUXVtYXgyTVAw?=
 =?utf-8?B?Sk0rN0k5U2JrSWdmMnpLTk1pQkZkbVNpbXZtVzFROThzcHpXcFhRUExzMWlh?=
 =?utf-8?B?WndzZy9LUy9wd2psMG5rc21zOXNmRGFhMWZoczlrWVB1TVV4V1JVWE90SE84?=
 =?utf-8?B?RnREU3l6eFgySDVQZjVLM1FwbXQrZnB6eUpnMjV0UEt5SHFpbjBmMnB0Q1pv?=
 =?utf-8?B?eVBiRHF0OUZTWTVUdnM5aFZnYU1YSmF4QTQ5bjNPOGEvUWp0aDFLd2c5by9T?=
 =?utf-8?B?SHVLclVJVHZCaVdVeW9ld3ZRTGRFS2hZb0YraTJ0QVFJT0Rxam1qOEZySGJR?=
 =?utf-8?B?Sy8wNmdaM0ZXTm1aamtZc0JEUXhVSEQyTWRQWkNhakFrY3N3bTh2U0FTUHZ5?=
 =?utf-8?B?UE5sWE1PTC9lRWVNSkpjaVpvd0VGZ1ZRekR4U0srRDhkT0xBOWhVQW9VQ3Yr?=
 =?utf-8?B?cVdjUitqR0dHcFJPMFpzeU1TVVB5R3FjaTFvSGM5K0tUUmY4YURQQ0dRaUpy?=
 =?utf-8?Q?EnR8lOqDHibeiQuF/G?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8847602a-3bf3-407d-364e-08de58f79722
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 14:15:55.0615
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eSczRagAd252fHzR0orwkCYhId8wymJRQ0ar/9isql8JZjttx3yKY4DMdPkn7n3+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB8204
X-Spamd-Bar: ----
Message-ID-Hash: 44WQT4NII7FXP3VIVLOYFH3VWHE3VKND
X-Message-ID-Hash: 44WQT4NII7FXP3VIVLOYFH3VWHE3VKND
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kerne
 l@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 3/7] dma-buf: Document RDMA non-ODP invalidate_mapping() special case
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/44WQT4NII7FXP3VIVLOYFH3VWHE3VKND/>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[33];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email,amd.com:mid]
X-Rspamd-Queue-Id: 43BF0583FE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMS8yMS8yNiAxNDo1OSwgSmFzb24gR3VudGhvcnBlIHdyb3RlOg0KPiBPbiBXZWQsIEphbiAy
MSwgMjAyNiBhdCAwMjo1Mjo1M1BNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4g
T24gMS8yMS8yNiAxNDoxOCwgSmFzb24gR3VudGhvcnBlIHdyb3RlOg0KPj4+IE9uIFdlZCwgSmFu
IDIxLCAyMDI2IGF0IDEwOjE3OjE2QU0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+
Pj4+IFRoZSB3aG9sZSBpZGVhIGlzIHRvIG1ha2UgaW52YWxpZGF0ZV9tYXBwaW5ncyB0cnVseSBv
cHRpb25hbC4NCj4+Pg0KPj4+IEJ1dCBpdCdzIG5vdCByZWFsbHkgb3B0aW9uYWwhIEl0J3MgYWJz
ZW5jZSBtZWFucyB3ZSBhcmUgaWdub3JpbmcgVUFGDQo+Pj4gc2VjdXJpdHkgaXNzdWVzIHdoZW4g
dGhlIGV4cG9ydGVycyBkbyB0aGVpciBtb3ZlX25vdGlmeSgpIGFuZCBub3RoaW5nDQo+Pj4gaGFw
cGVucy4NCj4+DQo+PiBObyB0aGF0IGlzIHVucHJvYmxlbWF0aWMuDQo+Pg0KPj4gU2VlIHRoZSBp
bnZhbGlkYXRlX21hcHBpbmdzIGNhbGxiYWNrIGp1c3QgdGVsbHMgdGhlIGltcG9ydGVyIHRoYXQN
Cj4+IHRoZSBtYXBwaW5nIGluIHF1ZXN0aW9uIGNhbid0IGJlIHJlbGllZCBvbiBhbnkgbW9yZS4N
Cj4+DQo+PiBCdXQgdGhlIG1hcHBpbmcgaXMgdHJ1bHkgZnJlZWQgb25seSBieSB0aGUgaW1wb3J0
ZXIgY2FsbGluZw0KPj4gZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50KCkuDQo+Pg0KPj4gSW4gb3Ro
ZXIgd29yZHMgdGhlIGludmFsaWRhdGVfbWFwcGluZ3MgZ2l2ZSB0aGUgc2lnbmFsIHRvIHRoZQ0K
Pj4gaW1wb3J0ZXIgdG8gZGlzYWJsZSBhbGwgb3BlcmF0aW9ucyBhbmQgdGhlDQo+PiBkbWFfYnVm
X3VubWFwX2F0dGFjaG1lbnQoKSBpcyB0aGUgc2lnbmFsIGZyb20gdGhlIGltcG9ydGVyIHRoYXQg
dGhlDQo+PiBob3VzZWtlZXBpbmcgc3RydWN0dXJlcyBjYW4gYmUgZnJlZWQgYW5kIHRoZSB1bmRl
cmx5aW5nIGFkZHJlc3MNCj4+IHNwYWNlIG9yIGJhY2tpbmcgb2JqZWN0IHJlLXVzZWQuDQo+IA0K
PiBJIHNlZQ0KPiANCj4gQ2FuIHdlIGRvY3VtZW50IHRoaXMgcGxlYXNlLCBJIGhhdmVuJ3Qgc2Vl
biB0aGlzIHNjaGVtZSBkZXNjcmliZWQNCj4gYW55aHdlcmUuDQo+IA0KPiBBbmQgbGV0J3MgY2xh
cmlmeSB3aGF0IEkgc2FpZCBpbiBteSBvdGhlciBlbWFpbCB0aGF0IHRoaXMgbmV3IHJldm9rZQ0K
PiBzZW1hbnRpYyBpcyBub3QganVzdCBhIHNpZ25hbCB0byBtYXliZSBzb21lZGF5IHVubWFwIGJ1
dCBhIGhhcmQNCj4gYmFycmllciB0aGF0IGl0IG11c3QgYmUgZG9uZSBvbmNlIHRoZSBmZW5jZXMg
Y29tcGxldGUsIHNpbWlsYXIgdG8NCj4gbm9uLXBpbm5lZCBpbXBvcnRlcnMuDQoNCldlbGwsIEkg
d291bGQgYXZvaWQgdGhhdCBzZW1hbnRpY3MuDQoNCkV2ZW4gd2hlbiB0aGUgZXhwb3J0ZXIgcmVx
dWVzdHMgdGhlIG1hcHBpbmcgdG8gYmUgaW52YWxpZGF0ZWQgaXQgZG9lcyBub3QgbWVhbiB0aGF0
IHRoZSBtYXBwaW5nIGNhbiBnbyBhd2F5IGltbWVkaWF0ZWx5Lg0KDQpJdCdzIGZpbmUgd2hlbiBh
Y2Nlc3NlcyBpbml0aWF0ZWQgYWZ0ZXIgYW4gaW52YWxpZGF0aW9uIGFuZCB0aGVuIHdhaXRpbmcg
Zm9yIGZlbmNlcyBnbyBpbnRvIG5pcnZhbmEgYW5kIGhhdmUgdW5kZWZpbmVkIHJlc3VsdHMsIGJ1
dCB0aGV5IHNob3VsZCBub3QgdHJpZ2dlciBQQ0kgQUVSLCB3YXJuaW5ncyBmcm9tIHRoZSBJT01N
VSBvciBldmVuIHdvcnNlIGVuZCB1cCBpbiBzb21lIE1NSU8gQkFSIG9mIGEgbmV3bHkgYXR0YWNo
ZWQgZGV2aWNlcy4NCg0KU28gaWYgdGhlIGV4cG9ydGVyIHdhbnRzIHRvIGJlIDEwMCUgc3VyZSB0
aGF0IG5vYm9keSBpcyB1c2luZyB0aGUgbWFwcGluZyBhbnkgbW9yZSB0aGVuIGl0IG5lZWRzIHRv
IHdhaXQgZm9yIHRoZSBpbXBvcnRlciB0byBjYWxsIGRtYV9idWZfdW5tYXBfYXR0YWNobWVudCgp
Lg0KDQo+IFRoZSBjb3ZlciBsZXR0ZXIgc2hvdWxkIGJlIGNsYXJpZmllZCB3aXRoIHRoaXMgdW5k
ZXJzdGFuZGluZyB0b28uDQoNClllYWgsIGNvbXBsZXRlbHkgYWdyZWUuIFdlIHJlYWxseSBuZWVk
IHRvIGZsYXNoIG91dCB0aGF0IHNlbWFudGljcyBpbiB0aGUgZG9jdW1lbnRhdGlvbi4NCg0KUmVn
YXJkcywNCkNocmlzdGlhbi4NCg0KPiANCj4gSmFzb24NCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
