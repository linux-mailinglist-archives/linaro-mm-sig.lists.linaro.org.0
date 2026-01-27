Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id InveJ8SDeGnnqgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jan 2026 10:22:12 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1222A91A01
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jan 2026 10:22:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CE0C93F750
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jan 2026 09:22:10 +0000 (UTC)
Received: from CH4PR04CU002.outbound.protection.outlook.com (mail-northcentralusazon11013036.outbound.protection.outlook.com [40.107.201.36])
	by lists.linaro.org (Postfix) with ESMTPS id 342463F732
	for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Jan 2026 09:22:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="N90pwt/O";
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.201.36 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BQxuoBSwM3D0zC/62PMzHeBKz7hO5J4okJjWO5Y3T8BRi3MEJklBYGS2fkHF0lu/qQMqgdzEJrMt+vfbRXQBXo/5GqqUSpz1T0RDwr2ejxch0a5qcWKDhWNKqS0kdEgvshHHk9iKc18aY8QMl1t0SE55tnKfBuKznxq9BE+yqskwLBUSnfdypCmTGU9O3Oove1n3HV3n4SFIar+8b5SpVY+E2oQsEPF9KZ3zG1KrzN4L8u2rcsJbyJSF1t3O06MrpaDUlp89/xMNKVN0GKu+8TfM8Yy4xhFliI98mzV8nmSPJLVRofT/MGWQ+eBkZii9GD7lfO1TgMJcPKDnevhWiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wz6ALxbQVViw9XnmRCZW/ECMb+KNVFdEF44yOh0Xr40=;
 b=Juhof26wQVucpxXjRklYykz3Fdt7CwYp7kAaVnqtgMVE5rCLq5dAtTw/GAeUqhpnvcEhELhsJxlwgSKRdDy6dLT4Mq+7iKIIS5Nc1+3RKfX7PvCz/oT8bAJaggx7VwlvpMBC5x0ytdcp/WxTTuUfq5HFOjpgM+29YbuknXWVLL1F50acs/aLDNaKIGtz6+WA+eHnwf1X0y3Vy8EysRwKeCrkxYYw+pTJO6FhuU+EArbQsOrcjaTbPNTQRIK4gbVLJkDzHYqSCEV3SZSnUu6z83UxPY4OTQiT/GQtLjgkuo1148PbnJmHztMhyCDL7exSB7ZSbjl592D7Hk2g1c6dvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wz6ALxbQVViw9XnmRCZW/ECMb+KNVFdEF44yOh0Xr40=;
 b=N90pwt/O7omQZrGyjLTaDxFmJ62q324hLsqJmOB3bk6ku9j0nL6jqkxa+xF0XmTUMCRPPOKqmuCT0sNPNXgem3ht6oBZzS4VbphxQnk6ZsVCFNrdRMh03gg+orpefmH+534GVfNeUVwy/f5C7ofHGZNGY7Oj+kVx/BzIktQTEJ0=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SA1PR12MB6749.namprd12.prod.outlook.com (2603:10b6:806:255::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Tue, 27 Jan
 2026 09:22:02 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9542.009; Tue, 27 Jan 2026
 09:22:02 +0000
Message-ID: <8e51a794-2c34-4863-b6d2-7af11b205f79@amd.com>
Date: Tue, 27 Jan 2026 10:21:52 +0100
User-Agent: Mozilla Thunderbird
To: Leon Romanovsky <leon@kernel.org>, Sumit Semwal
 <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Gerd Hoffmann <kraxel@redhat.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu
 <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>,
 Ankit Agrawal <ankita@nvidia.com>,
 Vivek Kasireddy <vivek.kasireddy@intel.com>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
 <20260124-dmabuf-revoke-v5-2-f98fca917e96@nvidia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260124-dmabuf-revoke-v5-2-f98fca917e96@nvidia.com>
X-ClientProxiedBy: FR2P281CA0173.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9f::8) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SA1PR12MB6749:EE_
X-MS-Office365-Filtering-Correlation-Id: 323bac59-9d64-455c-43cc-08de5d858789
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|7416014|376014|366016|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?d01aZmRIM3RxNUJ3ZjJURFJNMUN0cWR3Z0xpaGc4NDRzTjdYWnFtL2JvSWxO?=
 =?utf-8?B?SUwrNjJOOEh3KzhMYUw5NVJUVkNQS05HaEdWQ0d5Y0RDdDZveUJQdFJETFg0?=
 =?utf-8?B?MDBSekZvRENremh3ekluejZVdmt3bDBDL294WjFFb202QVZkRFUrSi83SkVR?=
 =?utf-8?B?Um84UXpwd3FPZS81ZGJ6SkZrczV0L0ljeU0rMnlWd0Fsb3VmQkMvd1N1VGdl?=
 =?utf-8?B?QUxJbENWSWFuTWxodnNYNTlQK3hTVnZKdjVBY1RHOEcyT1ROWGRvN1FXaGNG?=
 =?utf-8?B?STFQSFJkQ05jU3YrUTFEYXJ2NUFRcUs0ODdiY2Y0UzNIS2tzaEdoKzNjR25k?=
 =?utf-8?B?SzkxQkRVWHA4cVVWcUZBVW9zZkdXN2FRa3dIMDE3akJ5TXZybkg3akRma2Na?=
 =?utf-8?B?UXVaRDZFa3lQWjJqZCtZb21OaUZIME42UE90ellFb0JJWFBVbkZnWndFak5Q?=
 =?utf-8?B?QnRBaHN2NTBHV1JYSkZvMGErZ1VUcG5GVWJDakNYcU9hUXZIVUw4THg3Z1Z3?=
 =?utf-8?B?OHlyaktYVW5JVSsyZ0labXJic0hpVUpSMEZiV2x5U0J5SEw5SERjZjZweHRo?=
 =?utf-8?B?VGc1cURQOWJta1c2Mlc2RzdXVlBGRk1tSzFiTElzamNpY3FzcFRkN2g4bG16?=
 =?utf-8?B?ZHNud0pEVWpQK2YxbkUwa0xLbUJaRWZyK1EyYTBoVWVibldoSzRPM0t2MkFI?=
 =?utf-8?B?d2ZVbmtiWlpHeTZJdGlnMVhMaFlBTjk0MjY1NW9wT1VsVXNSVHdWZFVacENx?=
 =?utf-8?B?S2RObnVjRU93R25xL1R4Z2pDdWRjNkZYNUJHWFRaWnRtbHpsWUdMdTIxeTgr?=
 =?utf-8?B?RjdVMzlnRnFwS0tmN3R3clplVWwxUUNCVHViZWUzaXZscGhML2NjejdUazhJ?=
 =?utf-8?B?ZjdnWC9CQThHaUJtMTg2Y0FnR2xUYlBqUlVDU0NmMXZTZEJyTmd1REIraW9T?=
 =?utf-8?B?OTJXRjBqNHFmam04bEpuZHNmL2kvVDRhZXBuQXRaM3BKZ01oSVRPZ3MwMWtk?=
 =?utf-8?B?dFVGQVZPeC9LekprWlp6OHR5SFNPcGM3a2xSUzFKT0ZkWUx0WXhCMnJRNGxx?=
 =?utf-8?B?MEhKdGcxVXVGWFl4VktJWVBKTXI3QlpKdWFlbWtzWUk5RXN2OEk3UERYcTBj?=
 =?utf-8?B?T1kwcWZXS2RkT2N4bE92emNpMVg5SUlCMWlMUHZ1aHFicnFoV3g4MWVyWStI?=
 =?utf-8?B?U0FGUEJ2eFJpbXBnRnFnUGZ2cUdhY3c3cWNqeEhGTmp3Mm5KS3ZWd2xVSVhv?=
 =?utf-8?B?MHdBUHhMOHhCT1gvTks5enNvajZZQThxQUVremVpWGxrU29MeldLaFpjaHMx?=
 =?utf-8?B?Q21qRm8wQTFnTXRxSkF2Q3M4TlMwSWs2eUQzK2dWTlczTGFUck9aN29OS0Z0?=
 =?utf-8?B?QXBPR1k2YVU0QTFxMzAwODRNVGtoUVliTUl6S0pCV3hvd25vY0M0Sm04Mks2?=
 =?utf-8?B?RGtmWEtaSzZsblhrMWhmVzFrVnRoYnJlN2pCRHB2OXpKZ3Uvc2ZHWHVTdCs5?=
 =?utf-8?B?c0xhaUdtNXRadDVFSUpiRUozVWFtcGFLR3FOTTdCK1JLQkpuZjhCYTdnblFK?=
 =?utf-8?B?eVFQWUU3dlFNZzNwdjBDZDVta2lsU3ZmZGl5Rkt1WHN5SmhqOXAwc090Y002?=
 =?utf-8?B?TjZqbXNETGhVT21OcnFQV0p0aGRzLy9HbG5uWU0rSEw5QUxJeUlobWt3VVBy?=
 =?utf-8?B?U2toY2YwTjJxdFZ4Yk1kOEFocHpWUmtXSFBhTFFNWmdhUWRFTzkvcHNMbnN2?=
 =?utf-8?B?ekdLcE5JUTh5OWUxY0lLdnBCMnRvcjlxM0J1ZGNGeGNkeFJtL0w2ZG95ZFFm?=
 =?utf-8?B?d2lwdDdhNGcySWIwQXRSRGR2dXFFMmdES09hVlZ6Rm1oN3IzRHN4R3NXRHov?=
 =?utf-8?B?U2xMZVV3VWNubUlvMlAyNzhha3BmWjdTUVRwTTE1R3Qzbkt2L1pLTUw3VmRr?=
 =?utf-8?B?aURvVng2d1N6VkcwZDhPdlFDWThMNFI1V0tJR3ByZUhiVWxtNXZzUkpRaHJD?=
 =?utf-8?B?K0s5QmxLMjNJUEIwaVBEd3pXbUl3VzNwMFE2cXJleGxTZzNhRkNkVWljMHlY?=
 =?utf-8?B?amVUVWg1ZWtzQ0ozZGoyYkZKNHJkbW0yUkp0a25NOERGU3BUV21VUmVRcGxi?=
 =?utf-8?B?RzRVVXBEK2h4U2d0WWtROERDS2pyQUpzck9BMEJUaXJySlI4THVHWHkybllt?=
 =?utf-8?B?aEE9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VXFsanpQZmtvZkVnZ3RUYTNiYzVVUHYwbkhENmtWQXRnN3Bnb2UzZ21SYm41?=
 =?utf-8?B?Umxyb25LRW1aRE44WEo1bC9rNEsxNWk1OEdBTmVqUzVkSjNTVlNFK0c2Vzh0?=
 =?utf-8?B?cDJVK2lVTDZsSjJ3SFloNXNxeStDWjBXTGhIK21xbmVWK2c4Nld5emRGMzBU?=
 =?utf-8?B?dytDNzZQYTVxQlc1VjA5QmdJZEVJaXFPcEtDU3kzZlBvanZEYkxSMVNQazhs?=
 =?utf-8?B?OFhJaWd5TFM0MnUxR2krcmpxR1I0L0NOei9CY2RwT1Zsa1lmWlVINUYzM1FT?=
 =?utf-8?B?ZDAyNG1jNEl2cFAyTkU1MFhkSDJ6TUZSTHRLVnBFUXA1TmVQREE5RU94ZUNu?=
 =?utf-8?B?OVp2d0RhMUp2d1FBb1F4aW9MY1duZ0tVcG9ncW1EdFl5MW5mcDRWanFNOFVy?=
 =?utf-8?B?L0VrSE9kOHkvb28yQkpXT0grdmtWcS82anNKL0V1WElxOERSMXU2Mzd2U0Vz?=
 =?utf-8?B?Y0FGaXlPT0FiRFJvMUlKRms3U3prK2w0RjhQUlZ0U0RNcXJHVjdteWNrTGxh?=
 =?utf-8?B?OFB0SStzdXdEaU1nc0R2RVkwVk5JR1BhYTBrMUl4SWxRWHBlYzJySlJWMmpF?=
 =?utf-8?B?RTUvZEk1SjYvcTdKcXVDVjFldCtVbndYUUFTRWF0eklVcTNncTBOdFJPcUVm?=
 =?utf-8?B?cTBzVGtlY1pJMGpFeUxPbmVkc0w2VEpNTTBjWllQem8vZm9kUTluUmZ5bVRR?=
 =?utf-8?B?M2VvOVU0K1AyVU1US3IyMVdYb0I4cVNpUUR3TEZpb3hyQ29YaTdKQnlEeTdx?=
 =?utf-8?B?NjR4Z3k0WFBwbzhON25ZaDcvaWtKemFDeXExcW5GN0ZxWWpmZ2N5eGNoeDdH?=
 =?utf-8?B?ZnpkbkNKUVgvVTFFYmZTUExPdFNYcHNHUTREdXM5bEdWaEp3Yk14ZE1CbVlh?=
 =?utf-8?B?aTZPejVoWnZ3QkdBTVhwajFpM2VBa0RsYVh5WjJvYkxuWGpGTFhpQkFaWCtl?=
 =?utf-8?B?NEF0eU1ZNW5tcjNHQ1FvVUJnaUo1MEFtSWE3RUlJM2ZOaXZPdmpBTWlWbDBv?=
 =?utf-8?B?RmdTSlN5WEpHVEJtR3BOWFFPV3I2MGVGV2lROHk4N2dNbkZGdkh4bXNTSzF3?=
 =?utf-8?B?SGpjdFJpamtJVlRVMFlHdWVrSTJQVFE0Y2NuRGZQS1N1bGFneG5PVVhkdzYz?=
 =?utf-8?B?TmVFMXB6TjVNenZXTkVmVlpaR05XNEhBZ1dFY1dQS2xaWGNtSGhvTnlpMXhL?=
 =?utf-8?B?V1E2S3ZiNnVZUVduUkkvNytneGJpakZVU2tCbjVNb09wdDFidzRnaUhYNFpW?=
 =?utf-8?B?dGgvK2lBQzZiWmdrak1TTng0WW1STG5uRWJuYUYxejRrZDJKdkg3cVd4SnVJ?=
 =?utf-8?B?V21NRXlaejVSdkxMMk13MXkrWkJXbmI3VjNxY1doRVJIc01QdGlpYW11RTFw?=
 =?utf-8?B?WkpNVXBYdFlkNmdMNWtDeWZBRmJHc29BSjdWeDY2NmNNMVVkRDdkMWdKM1cr?=
 =?utf-8?B?VkhuNlI3TzhmM1lnMkVaZXFYQ0pnRlZwb2lsd0RuOVFsWXVnT1Jjd0E0SUVy?=
 =?utf-8?B?TWZESEZtQ3VqNTRybWMyWHJKNFR4UFVjb01Da3NTeStaS2ZqTURIR2NZUlNw?=
 =?utf-8?B?SnFOYmtjaWhpNE41ZC9Na1h5b05WQzhoU0toZ1kwVVFXZkJMZmRXTHA2a1N2?=
 =?utf-8?B?Y1lzcExFTENUbWwwdUhtU2VCMjZ0MGxSL1FObWhlS0ZPbjZuc3IzTXRVOElS?=
 =?utf-8?B?NFVzUzcxUnBSYXRTWWFycHViNkwxOHN5TFI1U1R5T2xsRUxDNGxnUUhySEFp?=
 =?utf-8?B?Qm8vY3ZwUHh6dmJKcmp1MGJTY1pvQUUvZjVnTFpCK09XbXA0VE1WNmRrT3RF?=
 =?utf-8?B?TTJ2OXpSekwyV2M1b0pRb3cxamFHRC92eVV1cGJ1TDZIVUdXeFJLdHBLZEFO?=
 =?utf-8?B?ekJ4OVlocHd1b25Md0V3b3NZcUZTeGhWaEs5eUswdG80RlNKK0ZtbHBkdDFF?=
 =?utf-8?B?UE9YaFpidWx6dEwvZUxyTnNBaDh6bHVPWmw5MWx3WU9LOC9BYWViQ281MDVx?=
 =?utf-8?B?cmZKK3lRNjVHaC9lUnY0QUR2RmJ6c0g2Sk9Tc1dSU25VN1dxSFFneWtQNGVN?=
 =?utf-8?B?bC85K3p3TzRwRGp1bGdxRHRvRkpMWDF2dk5mdDlNUkIyeTFLdHQxeDQzUnJO?=
 =?utf-8?B?bnY1WDVaYmdzYjVrR2FMOVI2RVp1dlU3SjhkTTQwUyt2MXJMa2FUOFNiVXBl?=
 =?utf-8?B?UWJOZHgxOC9rcmVzTFN6UEdYcFplaVZRNFVncE9tYzd3cmpkeENHdzl1WXZq?=
 =?utf-8?B?M2dSNGovVFhTOXBLanJuVkIxZEVQcU5qRzg3ZDJKbVkzTzFNS2EyM0pHQUl1?=
 =?utf-8?Q?panDN1MGX8cfjgzv+D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 323bac59-9d64-455c-43cc-08de5d858789
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2026 09:22:02.3127
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NT0P76g8/EP1t+qxV93/CKryw5uHWoYKAOC7D0y9A++sIFRKnWyniGpqdc9Y8iJG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB6749
X-Spamd-Bar: -----
Message-ID-Hash: 7STFT2ONR4OJGXWPBABNKBOLAFN4MW2L
X-Message-ID-Hash: 7STFT2ONR4OJGXWPBABNKBOLAFN4MW2L
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/8] dma-buf: Rename dma_buf_move_notify() to dma_buf_invalidate_mappings()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7STFT2ONR4OJGXWPBABNKBOLAFN4MW2L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[amd.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,amd.com:mid,amd.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 1222A91A01
X-Rspamd-Action: no action

T24gMS8yNC8yNiAyMDoxNCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiBGcm9tOiBMZW9uIFJv
bWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KPiANCj4gQWxvbmcgd2l0aCByZW5hbWluZyB0
aGUgLm1vdmVfbm90aWZ5KCkgY2FsbGJhY2ssIHJlbmFtZSB0aGUgY29ycmVzcG9uZGluZw0KPiBk
bWEtYnVmIGNvcmUgZnVuY3Rpb24uIFRoaXMgbWFrZXMgdGhlIGV4cGVjdGVkIGJlaGF2aW9yIGNs
ZWFyIHRvIGV4cG9ydGVycw0KPiBjYWxsaW5nIHRoaXMgZnVuY3Rpb24uDQo+IA0KPiBTaWduZWQt
b2ZmLWJ5OiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KDQpSZXZpZXdlZC1i
eTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KDQo+IC0tLQ0K
PiAgZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyAgICAgICAgICAgICAgICAgIHwgOCArKysrLS0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jIHwgMiArLQ0K
PiAgZHJpdmVycy9ncHUvZHJtL3hlL3hlX2JvLmMgICAgICAgICAgICAgICAgIHwgMiArLQ0KPiAg
ZHJpdmVycy9pb21tdS9pb21tdWZkL3NlbGZ0ZXN0LmMgICAgICAgICAgIHwgMiArLQ0KPiAgZHJp
dmVycy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYuYyAgICAgICAgIHwgNCArKy0tDQo+ICBpbmNs
dWRlL2xpbnV4L2RtYS1idWYuaCAgICAgICAgICAgICAgICAgICAgfCAyICstDQo+ICA2IGZpbGVz
IGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1
Zi5jDQo+IGluZGV4IDU5Y2M2NDdiZjQwZS4uZTEyZGI1NDBjNDEzIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmMNCj4gQEAgLTkxMiw3ICs5MTIsNyBAQCBkbWFfYnVmX3Bpbl9vbl9tYXAoc3RydWN0IGRtYV9i
dWZfYXR0YWNobWVudCAqYXR0YWNoKQ0KPiAgICogMy4gRXhwb3J0ZXJzIG11c3QgaG9sZCB0aGUg
ZG1hLWJ1ZiByZXNlcnZhdGlvbiBsb2NrIHdoZW4gY2FsbGluZyB0aGVzZQ0KPiAgICogICAgZnVu
Y3Rpb25zOg0KPiAgICoNCj4gLSAqICAgICAtIGRtYV9idWZfbW92ZV9ub3RpZnkoKQ0KPiArICog
ICAgIC0gZG1hX2J1Zl9pbnZhbGlkYXRlX21hcHBpbmdzKCkNCj4gICAqLw0KPiAgDQo+ICAvKioN
Cj4gQEAgLTEyNDcsMTQgKzEyNDcsMTQgQEAgdm9pZCBkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnRf
dW5sb2NrZWQoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KPiAgRVhQT1JUX1NZ
TUJPTF9OU19HUEwoZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50X3VubG9ja2VkLCAiRE1BX0JVRiIp
Ow0KPiAgDQo+ICAvKioNCj4gLSAqIGRtYV9idWZfbW92ZV9ub3RpZnkgLSBub3RpZnkgYXR0YWNo
bWVudHMgdGhhdCBETUEtYnVmIGlzIG1vdmluZw0KPiArICogZG1hX2J1Zl9pbnZhbGlkYXRlX21h
cHBpbmdzIC0gbm90aWZ5IGF0dGFjaG1lbnRzIHRoYXQgRE1BLWJ1ZiBpcyBtb3ZpbmcNCj4gICAq
DQo+ICAgKiBAZG1hYnVmOglbaW5dCWJ1ZmZlciB3aGljaCBpcyBtb3ZpbmcNCj4gICAqDQo+ICAg
KiBJbmZvcm1zIGFsbCBhdHRhY2htZW50cyB0aGF0IHRoZXkgbmVlZCB0byBkZXN0cm95IGFuZCBy
ZWNyZWF0ZSBhbGwgdGhlaXINCj4gICAqIG1hcHBpbmdzLg0KPiAgICovDQo+IC12b2lkIGRtYV9i
dWZfbW92ZV9ub3RpZnkoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCj4gK3ZvaWQgZG1hX2J1Zl9p
bnZhbGlkYXRlX21hcHBpbmdzKHN0cnVjdCBkbWFfYnVmICpkbWFidWYpDQo+ICB7DQo+ICAJc3Ry
dWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoOw0KPiAgDQo+IEBAIC0xMjY0LDcgKzEyNjQs
NyBAQCB2b2lkIGRtYV9idWZfbW92ZV9ub3RpZnkoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCj4g
IAkJaWYgKGF0dGFjaC0+aW1wb3J0ZXJfb3BzKQ0KPiAgCQkJYXR0YWNoLT5pbXBvcnRlcl9vcHMt
PmludmFsaWRhdGVfbWFwcGluZ3MoYXR0YWNoKTsNCj4gIH0NCj4gLUVYUE9SVF9TWU1CT0xfTlNf
R1BMKGRtYV9idWZfbW92ZV9ub3RpZnksICJETUFfQlVGIik7DQo+ICtFWFBPUlRfU1lNQk9MX05T
X0dQTChkbWFfYnVmX2ludmFsaWRhdGVfbWFwcGluZ3MsICJETUFfQlVGIik7DQo+ICANCj4gIC8q
Kg0KPiAgICogRE9DOiBjcHUgYWNjZXNzDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfb2JqZWN0LmMNCj4gaW5kZXggZTA4ZjU4ZGU0YjE3Li5mNzNkYzk5ZDE4ODcgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3QuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0LmMNCj4gQEAgLTEy
NzAsNyArMTI3MCw3IEBAIHZvaWQgYW1kZ3B1X2JvX21vdmVfbm90aWZ5KHN0cnVjdCB0dG1fYnVm
ZmVyX29iamVjdCAqYm8sDQo+ICANCj4gIAlpZiAoYWJvLT50Ym8uYmFzZS5kbWFfYnVmICYmICFk
cm1fZ2VtX2lzX2ltcG9ydGVkKCZhYm8tPnRiby5iYXNlKSAmJg0KPiAgCSAgICBvbGRfbWVtICYm
IG9sZF9tZW0tPm1lbV90eXBlICE9IFRUTV9QTF9TWVNURU0pDQo+IC0JCWRtYV9idWZfbW92ZV9u
b3RpZnkoYWJvLT50Ym8uYmFzZS5kbWFfYnVmKTsNCj4gKwkJZG1hX2J1Zl9pbnZhbGlkYXRlX21h
cHBpbmdzKGFiby0+dGJvLmJhc2UuZG1hX2J1Zik7DQo+ICANCj4gIAkvKiBtb3ZlX25vdGlmeSBp
cyBjYWxsZWQgYmVmb3JlIG1vdmUgaGFwcGVucyAqLw0KPiAgCXRyYWNlX2FtZGdwdV9ib19tb3Zl
KGFibywgbmV3X21lbSA/IG5ld19tZW0tPm1lbV90eXBlIDogLTEsDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0veGUveGVfYm8uYyBiL2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9iby5jDQo+
IGluZGV4IGJmNGVlOTc2YjY4MC4uN2QwMmNkOWE4NTAxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0veGUveGVfYm8uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0veGUveGVfYm8uYw0K
PiBAQCAtODE5LDcgKzgxOSw3IEBAIHN0YXRpYyBpbnQgeGVfYm9fbW92ZV9ub3RpZnkoc3RydWN0
IHhlX2JvICpibywNCj4gIA0KPiAgCS8qIERvbid0IGNhbGwgbW92ZV9ub3RpZnkoKSBmb3IgaW1w
b3J0ZWQgZG1hLWJ1ZnMuICovDQo+ICAJaWYgKHR0bV9iby0+YmFzZS5kbWFfYnVmICYmICF0dG1f
Ym8tPmJhc2UuaW1wb3J0X2F0dGFjaCkNCj4gLQkJZG1hX2J1Zl9tb3ZlX25vdGlmeSh0dG1fYm8t
PmJhc2UuZG1hX2J1Zik7DQo+ICsJCWRtYV9idWZfaW52YWxpZGF0ZV9tYXBwaW5ncyh0dG1fYm8t
PmJhc2UuZG1hX2J1Zik7DQo+ICANCj4gIAkvKg0KPiAgCSAqIFRUTSBoYXMgYWxyZWFkeSBudWtl
ZCB0aGUgbW1hcCBmb3IgdXMgKHNlZSB0dG1fYm9fdW5tYXBfdmlydHVhbCksDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2lvbW11L2lvbW11ZmQvc2VsZnRlc3QuYyBiL2RyaXZlcnMvaW9tbXUvaW9t
bXVmZC9zZWxmdGVzdC5jDQo+IGluZGV4IDU1MGZmMzZkZWMzYS4uZjYwY2JkNTMyOGNjIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2lvbW11L2lvbW11ZmQvc2VsZnRlc3QuYw0KPiArKysgYi9kcml2
ZXJzL2lvbW11L2lvbW11ZmQvc2VsZnRlc3QuYw0KPiBAQCAtMjA4MSw3ICsyMDgxLDcgQEAgc3Rh
dGljIGludCBpb21tdWZkX3Rlc3RfZG1hYnVmX3Jldm9rZShzdHJ1Y3QgaW9tbXVmZF91Y21kICp1
Y21kLCBpbnQgZmQsDQo+ICAJcHJpdiA9IGRtYWJ1Zi0+cHJpdjsNCj4gIAlkbWFfcmVzdl9sb2Nr
KGRtYWJ1Zi0+cmVzdiwgTlVMTCk7DQo+ICAJcHJpdi0+cmV2b2tlZCA9IHJldm9rZWQ7DQo+IC0J
ZG1hX2J1Zl9tb3ZlX25vdGlmeShkbWFidWYpOw0KPiArCWRtYV9idWZfaW52YWxpZGF0ZV9tYXBw
aW5ncyhkbWFidWYpOw0KPiAgCWRtYV9yZXN2X3VubG9jayhkbWFidWYtPnJlc3YpOw0KPiAgDQo+
ICBlcnJfcHV0Og0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFi
dWYuYyBiL2RyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1hYnVmLmMNCj4gaW5kZXggNGJlNGE4
NTAwNWNiLi5kOGNlYWZhYmVmNDggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvdmZpby9wY2kvdmZp
b19wY2lfZG1hYnVmLmMNCj4gKysrIGIvZHJpdmVycy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYu
Yw0KPiBAQCAtMzMyLDcgKzMzMiw3IEBAIHZvaWQgdmZpb19wY2lfZG1hX2J1Zl9tb3ZlKHN0cnVj
dCB2ZmlvX3BjaV9jb3JlX2RldmljZSAqdmRldiwgYm9vbCByZXZva2VkKQ0KPiAgCQlpZiAocHJp
di0+cmV2b2tlZCAhPSByZXZva2VkKSB7DQo+ICAJCQlkbWFfcmVzdl9sb2NrKHByaXYtPmRtYWJ1
Zi0+cmVzdiwgTlVMTCk7DQo+ICAJCQlwcml2LT5yZXZva2VkID0gcmV2b2tlZDsNCj4gLQkJCWRt
YV9idWZfbW92ZV9ub3RpZnkocHJpdi0+ZG1hYnVmKTsNCj4gKwkJCWRtYV9idWZfaW52YWxpZGF0
ZV9tYXBwaW5ncyhwcml2LT5kbWFidWYpOw0KPiAgCQkJZG1hX3Jlc3ZfdW5sb2NrKHByaXYtPmRt
YWJ1Zi0+cmVzdik7DQo+ICAJCX0NCj4gIAkJZnB1dChwcml2LT5kbWFidWYtPmZpbGUpOw0KPiBA
QCAtMzUzLDcgKzM1Myw3IEBAIHZvaWQgdmZpb19wY2lfZG1hX2J1Zl9jbGVhbnVwKHN0cnVjdCB2
ZmlvX3BjaV9jb3JlX2RldmljZSAqdmRldikNCj4gIAkJbGlzdF9kZWxfaW5pdCgmcHJpdi0+ZG1h
YnVmc19lbG0pOw0KPiAgCQlwcml2LT52ZGV2ID0gTlVMTDsNCj4gIAkJcHJpdi0+cmV2b2tlZCA9
IHRydWU7DQo+IC0JCWRtYV9idWZfbW92ZV9ub3RpZnkocHJpdi0+ZG1hYnVmKTsNCj4gKwkJZG1h
X2J1Zl9pbnZhbGlkYXRlX21hcHBpbmdzKHByaXYtPmRtYWJ1Zik7DQo+ICAJCWRtYV9yZXN2X3Vu
bG9jayhwcml2LT5kbWFidWYtPnJlc3YpOw0KPiAgCQl2ZmlvX2RldmljZV9wdXRfcmVnaXN0cmF0
aW9uKCZ2ZGV2LT52ZGV2KTsNCj4gIAkJZnB1dChwcml2LT5kbWFidWYtPmZpbGUpOw0KPiBkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYu
aA0KPiBpbmRleCAxYjM5NzYzNWM3OTMuLmQ1YzNjZTJiM2FhNCAxMDA2NDQNCj4gLS0tIGEvaW5j
bHVkZS9saW51eC9kbWEtYnVmLmgNCj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCj4g
QEAgLTYwMCw3ICs2MDAsNyBAQCBzdHJ1Y3Qgc2dfdGFibGUgKmRtYV9idWZfbWFwX2F0dGFjaG1l
bnQoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqLA0KPiAgCQkJCQllbnVtIGRtYV9kYXRhX2Rp
cmVjdGlvbik7DQo+ICB2b2lkIGRtYV9idWZfdW5tYXBfYXR0YWNobWVudChzdHJ1Y3QgZG1hX2J1
Zl9hdHRhY2htZW50ICosIHN0cnVjdCBzZ190YWJsZSAqLA0KPiAgCQkJCWVudW0gZG1hX2RhdGFf
ZGlyZWN0aW9uKTsNCj4gLXZvaWQgZG1hX2J1Zl9tb3ZlX25vdGlmeShzdHJ1Y3QgZG1hX2J1ZiAq
ZG1hX2J1Zik7DQo+ICt2b2lkIGRtYV9idWZfaW52YWxpZGF0ZV9tYXBwaW5ncyhzdHJ1Y3QgZG1h
X2J1ZiAqZG1hX2J1Zik7DQo+ICBpbnQgZG1hX2J1Zl9iZWdpbl9jcHVfYWNjZXNzKHN0cnVjdCBk
bWFfYnVmICpkbWFfYnVmLA0KPiAgCQkJICAgICBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXIp
Ow0KPiAgaW50IGRtYV9idWZfZW5kX2NwdV9hY2Nlc3Moc3RydWN0IGRtYV9idWYgKmRtYV9idWYs
DQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
