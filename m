Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yNo8GwiWcGmZYgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 10:02:00 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A4854007
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 10:01:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E7E93F6BD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 09:01:57 +0000 (UTC)
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012027.outbound.protection.outlook.com [40.107.200.27])
	by lists.linaro.org (Postfix) with ESMTPS id EAA333F6BD
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 09:01:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=B7Qbkcvn;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.200.27 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E/pp1dsI7FnP1J1VDRAfxOm0jBMEcPcfQ5A5E4IrDR4KKVXHG6PAfIX1YNStRbCVTsVLowlpRu0bB0xYbQFc9lxa4UISqhLMtT6TMLfDUF3tH9/aXgix4uFcood1033eDMtaKwqnZRVSMz9XxbV0cWvP6jnqQvEIwQJwDs2WHW/UYMGUTjTXWQcqseE+UsPlVcoF1PrPeKrViSCE2G3xXu5WLxy179dr64v+XErEyqnUnhVqDF/6f39I4065LxHlHzOYGN7wyirClcHTDWUXJeccBq66qsTAKO2R7u8Ww6YoKb9tfGNwpKftNX8AfG2eGus/PB17ggKuneOiBRkyOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sq7mmwL6JtxYkBLOcNDoLiu9EUefZauctDpm1irxEMU=;
 b=LE+R/255XHoSdGxDiZAh8G+Q+Eh2xwGu7305Gw+NZP3PtsT0nePVxgOsLm0/o/3vVb5rhqSWh6XmPa00Qf8Mg2GYXbH+zL3mZmgDw/UloWnYN488hXCKTn0+eP8JvBSopno9vonCqphCi87jVSKHuxoc1aElYJEXsalEe6QESXR0r/1UpXFVvARw51gvMYLzWnAWcX5Ck9oDKLhNDTTY43Ep4EHEzzYBqNMGsXRTFoM8DXUx2vWoxaz0wc+g102JnkuDq2emWdD7QMXD2/q6o7chSaF5PQ0p1iOr8IAJrITfzI0yP2oT9RdEZjBn3NPrwY4Wnt7BMZcjP2Ms/K9x9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sq7mmwL6JtxYkBLOcNDoLiu9EUefZauctDpm1irxEMU=;
 b=B7QbkcvnyPaUOpRae6161sxwv9SmAF8hP5f+VO09ToT3eGxdUUUBm3i3ZFHOS0MClEzcxXjgOOMLZHJPesVyEdZbPYMZI5niQYT04xgPX3/nXO1I5nfy6/B8Hk5R+31gCIbpB26zWc5YkYUGE64aplCwmEm4eeDQJ0o6lBGffqw=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ1PR12MB6361.namprd12.prod.outlook.com (2603:10b6:a03:455::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 21 Jan
 2026 09:01:43 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 09:01:43 +0000
Message-ID: <916dda3b-583f-42fb-bbaa-bcb664e6825e@amd.com>
Date: Wed, 21 Jan 2026 10:01:34 +0100
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
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
 <20260120-dmabuf-revoke-v3-5-b7e0b07b8214@nvidia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260120-dmabuf-revoke-v3-5-b7e0b07b8214@nvidia.com>
X-ClientProxiedBy: FR2P281CA0110.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9c::20) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ1PR12MB6361:EE_
X-MS-Office365-Filtering-Correlation-Id: 33cb938d-aa34-408e-7781-08de58cbb2de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|7416014|376014|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?dkVjTmFkQ3dKcStOZ3A5UEF5QjJXc2tSZXFOZnRyeGg0TllYUE54MHlBclBZ?=
 =?utf-8?B?S0o5ekxtY1N2MEx0Y29Zb01DeEFCWHd3ak0yNTE4N3ZUT2JZdGw5OEZaVHZn?=
 =?utf-8?B?RkNDRkg1a2twV3RxSWlKNEdwTjFvajJFcTJ0dlc4a214V3E5emo3K1I2U0FL?=
 =?utf-8?B?YzN1aldQdG0xTVFlcXZOZitMUEtRMGdRSllzb2p6bldaOXBydGZiSUcrU3Rj?=
 =?utf-8?B?TURLdDdiblpjdWdwbE5sKzE1MzhIZ0hKREEvZHVHYjBFNzhkTzJ0QzFoclZz?=
 =?utf-8?B?QzZOYmpuNXBLNmIwa3dnSlZhVnhDQ0NBRnB1dmpGanVwT2VsMmNieVRSU0xH?=
 =?utf-8?B?Z3QxN3ROSlFVclM0NW9weExRVmF3dzdOcU9CcDRFRlNrY29ic0dpS1RGcmVu?=
 =?utf-8?B?ekhXME8rTjBYMlE4ck94c1lCTW1EMU1NQWhXdjJMRjBFYXV2d21IVjEwVXo0?=
 =?utf-8?B?bHlERDJQeElOMGJJaVlqMXI3eVF5aUlQZVhraDNGZmxwVVZRcGs1d1pTSlNs?=
 =?utf-8?B?MnZndGJlbU5TeUhqNXhhNmFHNDN6RFZJTWRuME9TdCtpSmN4TWFDbExVUVY1?=
 =?utf-8?B?KzJweFp5eDNENCsrYXNnOUw1TEJtcnFzQmp2SVNLL0ZTekVVUW8wQU9nT25y?=
 =?utf-8?B?UVQwR1EyT3JRdG4yRUNXQTFmZ01OWFFKTkVTY3Rtb0hvR1pvN3BhQlVqMzMy?=
 =?utf-8?B?b2FEU3BnL0hOVVkxRDNiNDc2RnZIUDJPbTVPeUtXMXVQZFlkbXExT2RkNm9S?=
 =?utf-8?B?Y0ZKck83blg5T294dTFOTE45UDE0djNjVW9Bb3MraStENHBmQ0ovbU91Y2RO?=
 =?utf-8?B?akkyb0hnemJSWkxINlNrV3Z6V2IwVHY0d1RCQ0E3ZVNaQVdnUW5nS3UxaHdC?=
 =?utf-8?B?SlVtWm1iZEpPVk9vY1VyYkQ1THJ1enAyUFBJMmxtZCtCK1BrZW91UWpFTjBY?=
 =?utf-8?B?d1BIaVRZQTNVRFlRSTJYR2hCMWliYlQwcThTOVA1Y2UxQVhxYWVVZTM0NHpQ?=
 =?utf-8?B?eFNBOEdHK09ZYWtpSDlZRS9abkYzNS9RK0NTSHJVNGFQSG1ZTHhZbVEwTm1a?=
 =?utf-8?B?UkhJTmYyd0VibCtpK201Q0NYNHVTUTRQTURST1d3d1hsQ0hPTjM5Tm9Eckp2?=
 =?utf-8?B?dUtFaFF4SnQwa3N1c1NYL29DUGEvczFTUXVQQlNLd2RuY1pnRGc1WXI3Qlk0?=
 =?utf-8?B?WFdmLzhtZEJzbURRWTkzU1RLMzc5UWpPT3BqNk5kTzJ3YmNDSEY0TGI2T2Mx?=
 =?utf-8?B?bG44TnlZN3orazc4dVFrOWZWNHZOa2N1cy9CMkcxcnJ5UXJvVXNBM2IrS3Ir?=
 =?utf-8?B?Qml0WjF6TkNNaERESFFzdzFCTjVtOEZ2SXRvbVpGSy82cnVaNGtZUlZKOTg1?=
 =?utf-8?B?N1dkK082K0NUZ0NXem9lOHF2Vjl3eVBrUVFmRmcwVWk1QUh2blRNeGEzR0J4?=
 =?utf-8?B?c3lwc2p0WnUyS0ZkanRPd2x4VjVucW1QYlloRFNJYnoyMmRMcklCdDV3a2NN?=
 =?utf-8?B?UE5OWEc5UTVldDJGK0pia2JaNkllemI4NU5Za2dSLzNqMUJNL3VGNWtCN2dP?=
 =?utf-8?B?b1BTaWl5QmpDZXdIVzJDbW1za2ZDTXZyaUEvTUN4dU9iRU5xdHR4cnoxWGMr?=
 =?utf-8?B?YlpXNWl5dUE2WEZjbjg2b291L2pUdlY1U0FOeXJjNGlXd21zQ21kanN6RU5k?=
 =?utf-8?B?b3d6Y0V0VmhMZWdmQU9zUVVidVdaTUw3SlkzbzI5dFZXNC9HdnRHN2pUZkJC?=
 =?utf-8?B?YVgxV0VGcStpYXpFbFloRE1YbUFXaThmS3lpR3phQVYrTlI4bm1oclJzYUJp?=
 =?utf-8?B?YUFucDk0RDZVM2Q3SlMzWGw0aVdtK1plbXFDWHBSdk9GSUZTdDJmalJyZlR5?=
 =?utf-8?B?OVJJdG5Vait1OHNoNHNGQjR6bkwzeitqQjNXWVdhN0tZMnRXZEliWFh0c29I?=
 =?utf-8?B?WmdWZ2JBb2hWcUVEL2d1RmtackozeUpLUTJyL3F1L3ZZK05FRHl6cEtNOFVS?=
 =?utf-8?B?cUhFSXlxRnZHMzFMbFprS05MdTB1RkJVdmpaWitWd1c5WWZYY0ZHVmZDaEl3?=
 =?utf-8?B?dVVPNGV2aVpWSjl2OWo5R1pNdG8rRS9qaFdoNXhHY2FpT1RIRlgyVXNDRHJv?=
 =?utf-8?B?bzROYTgvWGUrTW4xMnlsTktSc0FSVHdIQnJoZVRFSmpWNUVhSWl4Y0dNNGVQ?=
 =?utf-8?B?M0E9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Q1V6a2lXeWVVUWcvODJQczR0TGhmemVmTmtjS0FHV29ROE5TMEs0ZEpURmtJ?=
 =?utf-8?B?WDIxMm9NSmxHSU5tMU10ZTNxTGZkZkhaaExJY0tWMzRLdlRSL0FNdTBYQzVI?=
 =?utf-8?B?WWFNUlhnV1lmamh0eUpZaGFhcDlabTNuanpjNDk3b0NjUUEzTnFybkwyVE4v?=
 =?utf-8?B?a2Y1YnV1cGJSTTNFbFZsbnF4TXlWT2YxQzJxemlqQzd1UVNHNFF4dWdRN013?=
 =?utf-8?B?TGNGcUJGSDQwdnpLOUNXS2NSSk1RcDJWZWI3Y25kaGI1dzBCR08rQkRRMDcz?=
 =?utf-8?B?ZTBxaTdrQVg2Mis5V3p3aXdnTW44ZEF1NUhBWEc5Z0puQ2xHbnZ0aHk1b2N6?=
 =?utf-8?B?YkxJQ2xQNldTZGttSW9ENGYxYTE2RFZ6RjMrWHlCVnV1RjZvaXpyWTUvbWRr?=
 =?utf-8?B?b0RLTFk1aVBDRjNZWjkybkFhS3dubEp5dEpCM0cyRFdNK0RmOHNuZmZZYTgy?=
 =?utf-8?B?Y2tmWFpNcWo2MStXU0IveVhTRXJVK3VFSGJKOVFiMjBzWnRqdnVhQmExNGlz?=
 =?utf-8?B?WHRwUjBTUkpsd0xlN2pIL1I2Qm9PVFhCYlp0M2hMTXh6aDJsaEF1VXlJYUx6?=
 =?utf-8?B?M0wrYkxXM2NvSFJmdHAvMDNCMHJ1ZW41REdFaURCa2FUTTQvTkJHdEVqRHQw?=
 =?utf-8?B?N2FQWW9SS1h5MWFqaHgya3paWVRVN0c4eVRKQkZuUWowbnJrYzIrMnd0UCtu?=
 =?utf-8?B?ZVpoSlk0V1djS215bDhEVVhCdWFGejZBNmMzRFFqenFwTy9xSnJ4SE5iVVpq?=
 =?utf-8?B?TkRGNys4Zm84cWZqbWtoNHA0SnJ3dDhnNk9BUTVYMyttS0hPRDBzT2ZlTnIz?=
 =?utf-8?B?NzNhVVNKcTJOemRaeU11YW9rWEZaOVJ1dTlUaU92b2xhbFJEcU1PWFZ6Q2Jr?=
 =?utf-8?B?RVkzeW1vNE9OUm9seU1mckN2clp5eHpicThrQ2xkckxpUjhnYy9RZmdmMktH?=
 =?utf-8?B?ODlBV01yVUd3WktXWitmeDd4NEVTcEhmMkZWK3FWd1N2TVFGY2FtYTZJZVYx?=
 =?utf-8?B?c1JpUHA0RVRCVkY2TDNDb1dwK01oR1hOZXh1VDVub2VzOTlSbForejM1VG01?=
 =?utf-8?B?T1V1bmhBc2FYazNNa0NoZVgrTG1rdTgvajJxa1pYMnBKWjNnNU55SkJFbVJO?=
 =?utf-8?B?N1FaZjdaRzBnbjNPWk5tMXNqTUlhVGVOUEVyeW82ZU5iNnR3dXB3b1ZxUVYr?=
 =?utf-8?B?M09zNEZkQXVENXRVTmFtSzl4VUc5WnAvdWJYRDIwZmVtWTBjZmY3S01LY0sr?=
 =?utf-8?B?aWZUV3ExUDBqTUtTMksxYmRoazdIWWRBQ1JYamx4UE1Id2hrNy9zM1M1NklE?=
 =?utf-8?B?TEI5NmNyODd3UFhaeHUyUVhGaFJ4dnBqZlFFV0MybXptUjFsdXQxVWJmQnNq?=
 =?utf-8?B?WFhHV1hWY1dYOFVab3NuRUpCdStWQWNSZ2pselNrYVhab2F0WkVaVE01d3Nv?=
 =?utf-8?B?em1za2o0WGMyVDNwaWc1aFhDR3duUUdOL1JQa3hUVHBEeDVXV05vbjUzRWRv?=
 =?utf-8?B?THJJS0duM2JURkxrMWZUUFJjdXNXTW5ERFlFRitOY2EyZXAzUnd4aFF6dlZo?=
 =?utf-8?B?SnB6VTNCYUFXTWtnbkNNemI1MThCbGZqc1lPbHp1ajhnNHY3emlSMW9jY1FT?=
 =?utf-8?B?bThET1ZVYmNuSTZBYXRKM3FINnRlVHVTdFBRbmZQbmdoeDFtQUh4bUxYMXly?=
 =?utf-8?B?MnpYS244dU1weTA4d0VmeWtYdGc2cVhiNEk5dFlCTzc3MklaTDV3OUk1TXRW?=
 =?utf-8?B?MWEzaWtoTnJyTE1DTUd6WDNZQ3gwOHJGTmJ5Szg2cElYN014UVVmS0M1YlZU?=
 =?utf-8?B?aUpkOUtoNUYwZlg1dUlOeUFIckdIclVHSTh6MjVTV2NBNCt2T0c1OUhJQ3hZ?=
 =?utf-8?B?Y3dDUkhsUElhSzM2UmJYc2szb0o4TzVkRldvSU14VVpMRGFYL21hVlYzZ25B?=
 =?utf-8?B?RzlFTFkyUGpVb2U5cVFEOWJLYnIzaGxmeUc3eDhFNEI1OXZ6ZXpWUVNxcDZl?=
 =?utf-8?B?VlJXdDRKZGlwMGZWTVR0cEJXQXhwbGZVSUQzWmVhRnhsSUpvWGFnNXBsU2Yv?=
 =?utf-8?B?ZTE3em9IWndHWGZEUE9JNStZM1o2aDBSbjVLNjdEM3dkMG5Gck5YV2dRNHhq?=
 =?utf-8?B?TjZwTWRFRkRQSkxHZkMvdXF5R1NvUk02bHQ5UUFIMHc4MVNsYlRZQ0krdUtw?=
 =?utf-8?B?NDVPWVJSQnJkUER1NGlSQWNkR0owTndTSXc4Zlc5Qm1xdktuaXJDZktyQ2N2?=
 =?utf-8?B?U1pwZks1blcwK0hkU09RWjM0QmRwZiszaEU4aEs3WjVDYnZzcGNFK0xhcjUz?=
 =?utf-8?Q?xiQe79Zpe67B+5I+CO?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33cb938d-aa34-408e-7781-08de58cbb2de
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 09:01:43.8381
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IgvmYVRuJtV7p6syBXVbcFRBtESgoUo0BvgMqViljvl6311SoHk3JUYxNAPseTSk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR12MB6361
X-Spamd-Bar: -----
Message-ID-Hash: WOSINUTHTFYBSI3GMV6YKSLRQAIOMJAQ
X-Message-ID-Hash: WOSINUTHTFYBSI3GMV6YKSLRQAIOMJAQ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 5/7] iommufd: Pin dma-buf importer for revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WOSINUTHTFYBSI3GMV6YKSLRQAIOMJAQ/>
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
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo,amd.com:email,amd.com:mid]
X-Rspamd-Queue-Id: 86A4854007
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMS8yMC8yNiAxNTowNywgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiBGcm9tOiBMZW9uIFJv
bWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KPiANCj4gSU9NTVVGRCBkb2VzIG5vdCBzdXBw
b3J0IHBhZ2UgZmF1bHQgaGFuZGxpbmcsIGFuZCBhZnRlciBhIGNhbGwgdG8NCj4gLmludmFsaWRh
dGVfbWFwcGluZ3MoKSBhbGwgbWFwcGluZ3MgYmVjb21lIGludmFsaWQuIEVuc3VyZSB0aGF0DQo+
IHRoZSBJT01NVUZEIGRtYS1idWYgaW1wb3J0ZXIgaXMgYm91bmQgdG8gYSByZXZva2XigJFhd2Fy
ZSBkbWEtYnVmDQo+IGV4cG9ydGVyIChmb3IgZXhhbXBsZSwgVkZJTykuDQo+IA0KPiBTaWduZWQt
b2ZmLWJ5OiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KDQpJIGRvbid0IGtu
b3cgdGhlIGNvZGUgd2VsbCBlbm91Z2ggZm9yIGEgcmV2aWV3LCBidXQgdGhhdCBsb29rcyB0b3Rh
bGx5IHJlYXNvbmFibGUgdG8gbWUuDQoNCkFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2lvbW11L2lvbW11ZmQv
cGFnZXMuYyB8IDkgKysrKysrKystDQo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pb21tdS9pb21tdWZk
L3BhZ2VzLmMgYi9kcml2ZXJzL2lvbW11L2lvbW11ZmQvcGFnZXMuYw0KPiBpbmRleCA3NmY5MDBm
YTE2ODcuLmE1ZWIyYmM0ZWY0OCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9pb21tdS9pb21tdWZk
L3BhZ2VzLmMNCj4gKysrIGIvZHJpdmVycy9pb21tdS9pb21tdWZkL3BhZ2VzLmMNCj4gQEAgLTE1
MDEsMTYgKzE1MDEsMjIgQEAgc3RhdGljIGludCBpb3B0X21hcF9kbWFidWYoc3RydWN0IGlvbW11
ZmRfY3R4ICppY3R4LCBzdHJ1Y3QgaW9wdF9wYWdlcyAqcGFnZXMsDQo+ICAJCW11dGV4X3VubG9j
aygmcGFnZXMtPm11dGV4KTsNCj4gIAl9DQo+ICANCj4gLQlyYyA9IHN5bV92ZmlvX3BjaV9kbWFf
YnVmX2lvbW11ZmRfbWFwKGF0dGFjaCwgJnBhZ2VzLT5kbWFidWYucGh5cyk7DQo+ICsJcmMgPSBk
bWFfYnVmX3BpbihhdHRhY2gpOw0KPiAgCWlmIChyYykNCj4gIAkJZ290byBlcnJfZGV0YWNoOw0K
PiAgDQo+ICsJcmMgPSBzeW1fdmZpb19wY2lfZG1hX2J1Zl9pb21tdWZkX21hcChhdHRhY2gsICZw
YWdlcy0+ZG1hYnVmLnBoeXMpOw0KPiArCWlmIChyYykNCj4gKwkJZ290byBlcnJfdW5waW47DQo+
ICsNCj4gIAlkbWFfcmVzdl91bmxvY2soZG1hYnVmLT5yZXN2KTsNCj4gIA0KPiAgCS8qIE9uIHN1
Y2Nlc3MgaW9wdF9yZWxlYXNlX3BhZ2VzKCkgd2lsbCBkZXRhY2ggYW5kIHB1dCB0aGUgZG1hYnVm
LiAqLw0KPiAgCXBhZ2VzLT5kbWFidWYuYXR0YWNoID0gYXR0YWNoOw0KPiAgCXJldHVybiAwOw0K
PiAgDQo+ICtlcnJfdW5waW46DQo+ICsJZG1hX2J1Zl91bnBpbihhdHRhY2gpOw0KPiAgZXJyX2Rl
dGFjaDoNCj4gIAlkbWFfcmVzdl91bmxvY2soZG1hYnVmLT5yZXN2KTsNCj4gIAlkbWFfYnVmX2Rl
dGFjaChkbWFidWYsIGF0dGFjaCk7DQo+IEBAIC0xNjU2LDYgKzE2NjIsNyBAQCB2b2lkIGlvcHRf
cmVsZWFzZV9wYWdlcyhzdHJ1Y3Qga3JlZiAqa3JlZikNCj4gIAlpZiAoaW9wdF9pc19kbWFidWYo
cGFnZXMpICYmIHBhZ2VzLT5kbWFidWYuYXR0YWNoKSB7DQo+ICAJCXN0cnVjdCBkbWFfYnVmICpk
bWFidWYgPSBwYWdlcy0+ZG1hYnVmLmF0dGFjaC0+ZG1hYnVmOw0KPiAgDQo+ICsJCWRtYV9idWZf
dW5waW4ocGFnZXMtPmRtYWJ1Zi5hdHRhY2gpOw0KPiAgCQlkbWFfYnVmX2RldGFjaChkbWFidWYs
IHBhZ2VzLT5kbWFidWYuYXR0YWNoKTsNCj4gIAkJZG1hX2J1Zl9wdXQoZG1hYnVmKTsNCj4gIAkJ
V0FSTl9PTighbGlzdF9lbXB0eSgmcGFnZXMtPmRtYWJ1Zi50cmFja2VyKSk7DQo+IA0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
