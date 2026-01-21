Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PoPFp2UcGlyYgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 09:55:57 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B4E53EFD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 09:55:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AEC544014F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 08:55:55 +0000 (UTC)
Received: from MW6PR02CU001.outbound.protection.outlook.com (mail-westus2azon11012043.outbound.protection.outlook.com [52.101.48.43])
	by lists.linaro.org (Postfix) with ESMTPS id 8F54E3F6FF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 08:55:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=T6P+zCDx;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.48.43 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SzqfJD8xXtCZWpTobH3XhxOUtQ1x/WW63JCelHpXOD5LlChLjr/iQlcEvJbVLwH0XMsZzXXyiAo+F0Tk7cQZhnLLGUngoHoZ+q/aAkcFFUA/yP9gM5O7gKLWxMG1t+0+AiJ27rDW+kd27gUiqa5gbghkKz/GGrfYU+VNDmv7jiloDyWJilHNmEB+rxd6n0QNXfy4jDMpUKt8lnZ2kmqNYFYh5TMuELKsIbARb/Y7TXxm/6GNboUcQrHZQU2gxykRXGrF74wHc4rWjnRMWAqwy8Ln1snqs3rasBfXtj/MkgWLEPzThY4pLYO0LHLBQm3w5D5MtCYVjA+DaLYnG3VGVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1EaxahQurKMG7TRqOYo5QhmI7KQPc993qVH4FJr7qWY=;
 b=QVkJs7I0rEMkYs4aIAtMzfklt2gfmFHKXjtkkwOlAQ9vbSyt+xDLKnM6XcTONCQzqSH1qVpRHwKiqRtYUfrIp0FDBWIbQTWR2SEBgUoOeGMQOnwO7NXy5Xr0Y3dGxkkRv7F2CzKfuBirUGf+niuJQMpkqJcBRRNxllOH7wqK0xBzqlMJ29ROhZSqXImUR0PosSF0Q8M4TZ22E80Bd20zI858YqKdFGbcvah2Pk+OnOjn1WGebqMNtbjUcOShDEE+TC8aCU1xXNJdaKa2JVq2SsZxCVEdF6T4x5xUGKZKEhhiOmHUxzQ7ZsouK1I9VkBZxathlMblR/br9H6w4FlMqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1EaxahQurKMG7TRqOYo5QhmI7KQPc993qVH4FJr7qWY=;
 b=T6P+zCDxcBns3NLFMS8xQ+Krv1IV7/LxuLTJ3go55heQgHEacUP2qk4MOgkW3DzloRh6Y7oLz0HJjIY+IktmRUr152ptyFoy7olCtRuJX/1SGsBiByQjHUvT8nlUES7jV+bvkp+lRy6/eqSn+cP76DxMkPSqvhSwqUxomMxba+I=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ0PR12MB6685.namprd12.prod.outlook.com (2603:10b6:a03:478::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 21 Jan
 2026 08:55:46 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 08:55:46 +0000
Message-ID: <24c7a7e6-b1bd-4407-b62d-4d9ea4cdeee4@amd.com>
Date: Wed, 21 Jan 2026 09:55:38 +0100
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
 <20260120-dmabuf-revoke-v3-2-b7e0b07b8214@nvidia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260120-dmabuf-revoke-v3-2-b7e0b07b8214@nvidia.com>
X-ClientProxiedBy: FR2P281CA0020.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:14::7) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ0PR12MB6685:EE_
X-MS-Office365-Filtering-Correlation-Id: a173334c-7582-4858-f453-08de58cade0c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|7416014|376014|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?SmFSbFdHenVpTHBJQkw3MC91R1FQZEpnUDEzM2czSWNHbldJaFQ2SSs1TWpm?=
 =?utf-8?B?cEpzaDJhd3ZySFdoWkQvRmU0QmVwY1B3ZTM3TFhsNzQ0YzdLMHQ1bjVJaUhO?=
 =?utf-8?B?bjBNYkJnRm9NL0FZRmx3VGpBQWg4T1BpaEpHaC9ld0RKRHRYNldJTzI4aUo5?=
 =?utf-8?B?SnNhR3RIUi9zS0VYakltcVQzMUdRUWg1L3pPWm9OUXVDMGJSNEpYZE1iWVhV?=
 =?utf-8?B?eThNN2dkTDROOGFFQWt5N254ZStyd0tmREwxbm1vMldBRGFuc0FFbTlCdWU0?=
 =?utf-8?B?ZVNpdERUSnVPa1o3ZHBFMUtyZi9RaVhTckxpd2cwMzZYeVZ3WjI4Ti9xRHh5?=
 =?utf-8?B?Wnl4b3dMcG1EWlZNb0xJdlRjelNtdWZNenJueWNHa3RHdnY3WllRdUxRU0lO?=
 =?utf-8?B?VjVxdE1HYm9xZWFjQjNXLytEemV1SThQRTlMb0RIZC80OHJzYjRLUXFZaGZi?=
 =?utf-8?B?RU5wMW5CS1VTSVoxb3ozZTZ1bnVXV1hZdXBrbU54cFR3dlpRS2VodEVFQjZN?=
 =?utf-8?B?REZ4citFR0tVNlhvNmdWNEFBckw1djhaTWZoZGRPYTZxUUtWS2t3Nzl6blFG?=
 =?utf-8?B?VjdYNkczMU1aSk9XaHlYeFdlcnRHVk5xeTdEV3dzSWt3OWozOFVhUVlvMG8v?=
 =?utf-8?B?Vml4TG9wNmdFa2ErOWYzUGNWMDNaVlhnK2JDREp4eFlqSGJicFNaYXplamc0?=
 =?utf-8?B?bWNpR2lRdHgxZTRIRll2bENQMU5CRzdEaDc3UXkyK2FLNWJrYlRFZlJoMUc4?=
 =?utf-8?B?cFB3NVd6NW1FTUJuK0NyNFNpbTNhdG8rVjAvczl5NHU4Mk5WdTdod3FhWCty?=
 =?utf-8?B?eVBKMmtKbnhCNzZibmNTY0phbGRmZFM0N1plNFlPRkJFNUtUOUpIeTVpaEZ2?=
 =?utf-8?B?Qk9PWmc3SUNFZlE0MC9UUkxHd21uOVlTYjVmcWUwdllPaEZWNk4yam80TDNP?=
 =?utf-8?B?cXRvK2RJN3ZCRkx0d1lvOUZocGFKdURZTXVTYVVhNVJQclhrQW9Zbmkyb0I2?=
 =?utf-8?B?Q1NLMlZCNWlZczZlRU9yd3AwblRFNHFkUGQ4MjArV3lVREpoVGEzS0VFZjhP?=
 =?utf-8?B?R3BaK1Bka2cvUGdMYjhlU3BKUER3bVhKRDVBU0ViUzloeEVtdHpBWGt1Rk9z?=
 =?utf-8?B?UXN2N1dvbjFOYlRuci84THBlY0x5V04vTWRWY3hqZzJ1TkZYMHBoQVdKeTVa?=
 =?utf-8?B?cVg0OXRDSllMY2lCYS9PSUtNZnVTV3JvK0xubFZsRS9oMEFXdWpxOWZkTTZj?=
 =?utf-8?B?d1M0d2ZkVFA1VFdjNDV4UXRzdlh5N3pDNEQ1L29TUHJHekJXdmZSN2cxeUVG?=
 =?utf-8?B?ZjN5c3FtQlF2K0phOW43bFpuWSsxd3FsTGdRWjAzdDkrdmJmODByT0RDVzhH?=
 =?utf-8?B?QTdDdklLZVZSOVd5VUJJSkNlZmpvWUdMMXpVc1RlcFozN2NUNWhFOGZnQ0VN?=
 =?utf-8?B?M1ZLUER4Y2Q3WGxuNmMwVStVV2JjdEJyU3ozS2dqNVJLbjZjMW1ITjR2dHhl?=
 =?utf-8?B?NG9Hb1o1ZnJ3Nzd4Z3pWWnEvdC9SN1J6TGg4ZS9DWnE2SnQwcHhHc21CUkRn?=
 =?utf-8?B?dlBkeGJLVWtSZjltaWNRWkZUMUljZ1FQSzVyU2k2Lzd5S2ZNaEZVUElPZGJx?=
 =?utf-8?B?YlgxQkFweDNDMzVESm9pTmQzekYwRTBybTFwMmVZZ1VZREZoMnNQYnYrU09j?=
 =?utf-8?B?Vm1oWWduc0J6RDd4bDR3Vy9NOEZ5MlZhUXh0ZmR5MmJhVFY2REdSd1RweGdL?=
 =?utf-8?B?aUFhakFYZGNHTU9qTmRUMUx6Si9LUSt5anVGQmJsVnBDK1FYWi82ZlBZN2hH?=
 =?utf-8?B?ZG5MZXBCbDJjK1BSd3lyajJQdGtDRkNSa0E4clV6ZVlKcUhMakk1MzRTY29t?=
 =?utf-8?B?Ry9acnRzUlJnUlM4clNYRHhjMjNIdnlwRjN1ZWFjZkdlL243bE1Zak5MMTVK?=
 =?utf-8?B?RTg1T09nN2p2aGk4eFhIRU90M0hWMmVKSzlUODE1ZEN6U2x3TzN0U2I3dVdP?=
 =?utf-8?B?T0lsckpNZVlvcTlsWEgweVhQTFdhRnZobkdiQW9hU3RINTVCbjh5T2dBY3pL?=
 =?utf-8?B?RlN0Y3p5eHNjR3BHL1dSUGI2MjVwRDV1cVlPVWtVU0xvWWV4TlhYWS9KVXZC?=
 =?utf-8?B?Rm5iRy9Td2RmUWpOM05yVDZCR0dBbWVBUEwrWmpxeGQ3Z2QyaVA2TGlJZU9z?=
 =?utf-8?B?V1E9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MXVJSlpzWlN6MW8zeTZHbnhnMUwwVDBtWm9icFUxbnZkL3lSbGRPa21QdjBn?=
 =?utf-8?B?WTFyc0ljSWlnKzgvLytWV0dqZ1NBU1JUS0F2KytwMWFlemJMbm1kOGk2TzlI?=
 =?utf-8?B?dUlBUHJEWDRlRFFjVVJja2RZaThOMVV4aWlDWGtJcW56eGdkNjJSTkVodEpR?=
 =?utf-8?B?aHFqRjZLYlQrNkxkTjVibWhCdEZRS2NNT3BrcGZ0VnN1cXJnbGE3U204ZFdI?=
 =?utf-8?B?emZWbk90ZVY1N080VTYwd0tWc1IzbFg4WVJWa1g3UnRkaFlIN0V3cis2Z2hE?=
 =?utf-8?B?cUw0QVROR3RFazVnRjlNRmFTL0RzYlE2ZHVWUnVyUU82T0IzMkUzM2FJbk9Z?=
 =?utf-8?B?bFN4Yis3MVJXMFFjN05VY2ZmdDJzRU5uNGxDTS96bDJJUzQ5RmhGaldQSnRk?=
 =?utf-8?B?NlJ3SzNKZlhWOVI1czNVQmt4WUhLdTNtckdTU0Nxb3M0Um1CckJJY0VqQjEz?=
 =?utf-8?B?RSswaElmTGxkcUZOeG5MdEpsengvVkNqWTJDS2wzd1VFaTF1OURMOXBaNm1H?=
 =?utf-8?B?alI2cmcrcW5CNmVKaG12Z1g5blJGalBoYXpqTVh1dFVaZWdtdGxkMWxTelE0?=
 =?utf-8?B?TGc0dDQ1QkJDSHo1QzN6SGQzajF5WERPN1FTelFDK0pzNUZ4SU1vNnRRTGp1?=
 =?utf-8?B?S2sxZGdONDcwTGRyWlR3ZGRJR2E5WWUyWlhDbjJvQ2VXWXlIUjNuOFdnTGxF?=
 =?utf-8?B?Y01FMXdDbVhranc0THB2c3U3UjZ5Yi8vajZWWFhhYTY5R3ZvR2pZNFVoMUZk?=
 =?utf-8?B?M2ZTZ1ltakxqclJVZE5KaVBGRUZoR0dQbkxqZnRyTUtFUUFIMXNFWmYyNFlG?=
 =?utf-8?B?c1RSNWpLNWJrMnNSTXM1eXJEanI1VUhLdTJFTkY1Y0hWNmhkOWJEcGs0T3BX?=
 =?utf-8?B?TWJ0b1B0anAwOTRZamVtMDRnektyWVQxRlBqRUZ2REdDajgvZjRvbDJ3RGph?=
 =?utf-8?B?TjRCblRETjQyL2VXejJJV2JYcENIa0prRzBqbDJHYnJSc2o2YTNmSmNScTBM?=
 =?utf-8?B?RHVBZ1pGQ2gyRUpnZjRXZnZFMVF6UzlCUm16Q3pRSVFidm5KNXFLM3czTjZJ?=
 =?utf-8?B?L2h0WXpBWXhPbkxWdXpZNTY0M1h1Y1JYdjdSUDNqZ1FCMEd0U2xWS2hDa3Y0?=
 =?utf-8?B?Q21pOS9Yd3BKRUVSaEpibU9ZUFZ2Vm5PQTh4V04zSzAxb0FOSG5BVzJjelZM?=
 =?utf-8?B?NWk1a0FpNjVRMFZ2OHgxY2xKVVEwbWRQajJmcE9ZZ3kyaE5pS0tCcTJNdTJ0?=
 =?utf-8?B?V0l0TFF3bWdqUGFQTGZWYnB2ZTFiZTI2OU1ZNFdnU2NHL2NkUHlKVks4ZVdz?=
 =?utf-8?B?OGtnQm5oQUZIbHZudTRmZ2Fuemo1M3JnWmFZZTdHazYrUWxOTWtpN2ZqWGE4?=
 =?utf-8?B?RTl6UDN5WXdOSysybXYzUFRhOHdkWEhqbk9RVEk1QWFtMGhrZS9jOHdOVDVZ?=
 =?utf-8?B?WXZMeXZERG1ZWEE2ZGlRUGU0RktDM2R6bXplLzYvY2FJek5ZTmNYaXpuY2N2?=
 =?utf-8?B?Y0t1UUJrbWlKTmE1ZHgrVXJwa0NzZUNQU2IzL3Rnb21pWUd2MVlqU2tvVENp?=
 =?utf-8?B?L3FhVFNvSnZsNWpKeE9NeVNpZGZBZFk4K042ZTJ2eWRhRmR6LzFXTzBxRGRm?=
 =?utf-8?B?Wmo2dUNkdW1SdFVrR2pmay8yTW5BanA1VFk0bGJqcEhDaWRndU5Pbk1ONzFM?=
 =?utf-8?B?ckEzd3pNNVJ1TUo2cmdvdlNLbCtIMFUxTTllanpFb2FBOGZrMVczTnhJM3ZS?=
 =?utf-8?B?QmtLL0syMUxyaHVxN29JK29KSnpLYVFTcExrSXp6RDV1MWpLbTVuSXFKdjdP?=
 =?utf-8?B?bFNicXZMNU1wQ1JxTFkxL3RwNTBpRzZ2cU9CSlo0bS9KaTB2b2dWb05ONG1I?=
 =?utf-8?B?MC85N0syNVIxNzFheUFsQmFIZUQzdjNDTkFFaXIwR0pxcTdQejY1azVSay83?=
 =?utf-8?B?S1FlK0U1cFNNbGZRL1R0N256YTRiSDhkZmdhM2pNQ0xxbUUzckZmc2ZlWGFD?=
 =?utf-8?B?NHQxelZQVXZXSFYzTFJLalNIbFR4S2dHMzRHbXRYcklxbFJzakczWXM4TlNZ?=
 =?utf-8?B?SVdFcGprcnA5cVBkTllNbm1aaTlxbWZYVG8ycXBnYUFJV29IbWtnc045aDVF?=
 =?utf-8?B?MGdCbUJlbHQ2dnB3aDdBNGJMR3lBbXppT05seG5pQVF5VzVZdGs4ZHpmVjJl?=
 =?utf-8?B?cTZUN2Urd1RHZUM2b2gyMEl6aVJ4Z3c1UkhzWTQxWDBrTHJHSFVqbjkwdjQ5?=
 =?utf-8?B?cUFibXJXU1I2ZVRucVVhWTBTMEhtbWZkVVZUT2pncGZNRERSVmxwS1p4Q0VQ?=
 =?utf-8?Q?XbMw05TrSfccRE26jb?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a173334c-7582-4858-f453-08de58cade0c
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 08:55:46.6538
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iqNt9p/TBCzzOs0cssuYyFlvFxomLytu6JVZiSrssvGp6+N4s+1BkihF24hA1UfS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB6685
X-Spamd-Bar: -----
Message-ID-Hash: DSETMJXUHPQKF7ASEWNMISSZOY5WAEKZ
X-Message-ID-Hash: DSETMJXUHPQKF7ASEWNMISSZOY5WAEKZ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/7] dma-buf: Always build with DMABUF_MOVE_NOTIFY
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DSETMJXUHPQKF7ASEWNMISSZOY5WAEKZ/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,linaro.org:email,amd.com:email,amd.com:mid,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: C5B4E53EFD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMS8yMC8yNiAxNTowNywgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiBGcm9tOiBMZW9uIFJv
bWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KPiANCj4gRE1BQlVGX01PVkVfTk9USUZZIHdh
cyBpbnRyb2R1Y2VkIGluIDIwMTggYW5kIGhhcyBiZWVuIG1hcmtlZCBhcw0KPiBleHBlcmltZW50
YWwgYW5kIGRpc2FibGVkIGJ5IGRlZmF1bHQgZXZlciBzaW5jZS4gU2l4IHllYXJzIGxhdGVyLA0K
PiBhbGwgbmV3IGltcG9ydGVycyBpbXBsZW1lbnQgdGhpcyBjYWxsYmFjay4NCj4gDQo+IEl0IGlz
IHRoZXJlZm9yZSByZWFzb25hYmxlIHRvIGRyb3AgQ09ORklHX0RNQUJVRl9NT1ZFX05PVElGWSBh
bmQNCj4gYWx3YXlzIGJ1aWxkIERNQUJVRiB3aXRoIHN1cHBvcnQgZm9yIGl0IGVuYWJsZWQuDQo+
IA0KPiBTdWdnZXN0ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNv
bT4NCj4gLS0tDQo+ICBkcml2ZXJzL2RtYS1idWYvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAg
IHwgMTIgLS0tLS0tLS0tLS0tDQo+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jICAgICAgICAg
ICAgICAgICAgIHwgMTIgKystLS0tLS0tLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfZG1hX2J1Zi5jIHwgMTAgKysrLS0tLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRrZmQvS2NvbmZpZyAgICAgICAgICB8ICAyICstDQo+ICBkcml2ZXJzL2dwdS9kcm0veGUv
dGVzdHMveGVfZG1hX2J1Zi5jICAgICAgIHwgIDMgKy0tDQo+ICBkcml2ZXJzL2dwdS9kcm0veGUv
eGVfZG1hX2J1Zi5jICAgICAgICAgICAgIHwgMTIgKysrKy0tLS0tLS0tDQo+ICA2IGZpbGVzIGNo
YW5nZWQsIDExIGluc2VydGlvbnMoKyksIDQwIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZG1hLWJ1Zi9LY29uZmlnIGIvZHJpdmVycy9kbWEtYnVmL0tjb25maWcNCj4g
aW5kZXggYjQ2ZWI4YTU1MmQ3Li44NGQ1ZTliMjRlMjAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
ZG1hLWJ1Zi9LY29uZmlnDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9LY29uZmlnDQo+IEBAIC00
MCwxOCArNDAsNiBAQCBjb25maWcgVURNQUJVRg0KPiAgCSAgQSBkcml2ZXIgdG8gbGV0IHVzZXJz
cGFjZSB0dXJuIG1lbWZkIHJlZ2lvbnMgaW50byBkbWEtYnVmcy4NCj4gIAkgIFFlbXUgY2FuIHVz
ZSB0aGlzIHRvIGNyZWF0ZSBob3N0IGRtYWJ1ZnMgZm9yIGd1ZXN0IGZyYW1lYnVmZmVycy4NCj4g
IA0KPiAtY29uZmlnIERNQUJVRl9NT1ZFX05PVElGWQ0KPiAtCWJvb2wgIk1vdmUgbm90aWZ5IGJl
dHdlZW4gZHJpdmVycyAoRVhQRVJJTUVOVEFMKSINCj4gLQlkZWZhdWx0IG4NCj4gLQlkZXBlbmRz
IG9uIERNQV9TSEFSRURfQlVGRkVSDQo+IC0JaGVscA0KPiAtCSAgRG9uJ3QgcGluIGJ1ZmZlcnMg
aWYgdGhlIGR5bmFtaWMgRE1BLWJ1ZiBpbnRlcmZhY2UgaXMgYXZhaWxhYmxlIG9uDQo+IC0JICBi
b3RoIHRoZSBleHBvcnRlciBhcyB3ZWxsIGFzIHRoZSBpbXBvcnRlci4gVGhpcyBmaXhlcyBhIHNl
Y3VyaXR5DQo+IC0JICBwcm9ibGVtIHdoZXJlIHVzZXJzcGFjZSBpcyBhYmxlIHRvIHBpbiB1bnJl
c3RyaWN0ZWQgYW1vdW50cyBvZiBtZW1vcnkNCj4gLQkgIHRocm91Z2ggRE1BLWJ1Zi4NCj4gLQkg
IFRoaXMgaXMgbWFya2VkIGV4cGVyaW1lbnRhbCBiZWNhdXNlIHdlIGRvbid0IHlldCBoYXZlIGEg
Y29uc2lzdGVudA0KPiAtCSAgZXhlY3V0aW9uIGNvbnRleHQgYW5kIG1lbW9yeSBtYW5hZ2VtZW50
IGJldHdlZW4gZHJpdmVycy4NCj4gLQ0KPiAgY29uZmlnIERNQUJVRl9ERUJVRw0KPiAgCWJvb2wg
IkRNQS1CVUYgZGVidWcgY2hlY2tzIg0KPiAgCWRlcGVuZHMgb24gRE1BX1NIQVJFRF9CVUZGRVIN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1i
dWYvZG1hLWJ1Zi5jDQo+IGluZGV4IDU5Y2M2NDdiZjQwZS4uY2QzYjYwY2U0ODYzIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtYnVmLmMNCj4gQEAgLTgzNywxOCArODM3LDEwIEBAIHN0YXRpYyB2b2lkIG1hbmdsZV9z
Z190YWJsZShzdHJ1Y3Qgc2dfdGFibGUgKnNnX3RhYmxlKQ0KPiAgDQo+ICB9DQo+ICANCj4gLXN0
YXRpYyBpbmxpbmUgYm9vbA0KPiAtZG1hX2J1Zl9hdHRhY2htZW50X2lzX2R5bmFtaWMoc3RydWN0
IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKQ0KDQpJIHdvdWxkIHJhdGhlciBsaWtlIHRvIGtl
ZXAgdGhlIHdyYXBwZXIgYW5kIGV2ZW4gYWRkIHNvbWUgZXhwbGFuYXRpb24gd2hhdCBpdCBtZWFu
cyB3aGVuIHRydWUgaXMgcmV0dXJuZWQuDQoNCkFwYXJ0IGZyb20gdGhhdCBsb29rcyBnb29kIHRv
IG1lLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+IC17DQo+IC0JcmV0dXJuICEhYXR0YWNo
LT5pbXBvcnRlcl9vcHM7DQo+IC19DQo+IC0NCj4gIHN0YXRpYyBib29sDQo+ICBkbWFfYnVmX3Bp
bl9vbl9tYXAoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKQ0KPiAgew0KPiAtCXJl
dHVybiBhdHRhY2gtPmRtYWJ1Zi0+b3BzLT5waW4gJiYNCj4gLQkJKCFkbWFfYnVmX2F0dGFjaG1l
bnRfaXNfZHluYW1pYyhhdHRhY2gpIHx8DQo+IC0JCSAhSVNfRU5BQkxFRChDT05GSUdfRE1BQlVG
X01PVkVfTk9USUZZKSk7DQo+ICsJcmV0dXJuIGF0dGFjaC0+ZG1hYnVmLT5vcHMtPnBpbiAmJiAh
YXR0YWNoLT5pbXBvcnRlcl9vcHM7DQo+ICB9DQo+ICANCj4gIC8qKg0KPiBAQCAtMTEyNCw3ICsx
MTE2LDcgQEAgc3RydWN0IHNnX3RhYmxlICpkbWFfYnVmX21hcF9hdHRhY2htZW50KHN0cnVjdCBk
bWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwNCj4gIAkvKg0KPiAgCSAqIEltcG9ydGVycyB3aXRo
IHN0YXRpYyBhdHRhY2htZW50cyBkb24ndCB3YWl0IGZvciBmZW5jZXMuDQo+ICAJICovDQo+IC0J
aWYgKCFkbWFfYnVmX2F0dGFjaG1lbnRfaXNfZHluYW1pYyhhdHRhY2gpKSB7DQo+ICsJaWYgKCFh
dHRhY2gtPmltcG9ydGVyX29wcykgew0KPiAgCQlyZXQgPSBkbWFfcmVzdl93YWl0X3RpbWVvdXQo
YXR0YWNoLT5kbWFidWYtPnJlc3YsDQo+ICAJCQkJCSAgICBETUFfUkVTVl9VU0FHRV9LRVJORUws
IHRydWUsDQo+ICAJCQkJCSAgICBNQVhfU0NIRURVTEVfVElNRU9VVCk7DQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jIGIvZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYw0KPiBpbmRleCA4NjM0NTQxNDhiMjgu
LjM0OTIxNTU0OWU4ZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2RtYV9idWYuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfZG1hX2J1Zi5jDQo+IEBAIC0xNDUsMTMgKzE0NSw5IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2Rt
YV9idWZfcGluKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkNCj4gIAkgKiBub3Rp
ZmllcnMgYXJlIGRpc2FibGVkLCBvbmx5IGFsbG93IHBpbm5pbmcgaW4gVlJBTSB3aGVuIG1vdmUN
Cj4gIAkgKiBub3RpZXJzIGFyZSBlbmFibGVkLg0KPiAgCSAqLw0KPiAtCWlmICghSVNfRU5BQkxF
RChDT05GSUdfRE1BQlVGX01PVkVfTk9USUZZKSkgew0KPiAtCQlkb21haW5zICY9IH5BTURHUFVf
R0VNX0RPTUFJTl9WUkFNOw0KPiAtCX0gZWxzZSB7DQo+IC0JCWxpc3RfZm9yX2VhY2hfZW50cnko
YXR0YWNoLCAmZG1hYnVmLT5hdHRhY2htZW50cywgbm9kZSkNCj4gLQkJCWlmICghYXR0YWNoLT5w
ZWVyMnBlZXIpDQo+IC0JCQkJZG9tYWlucyAmPSB+QU1ER1BVX0dFTV9ET01BSU5fVlJBTTsNCj4g
LQl9DQo+ICsJbGlzdF9mb3JfZWFjaF9lbnRyeShhdHRhY2gsICZkbWFidWYtPmF0dGFjaG1lbnRz
LCBub2RlKQ0KPiArCQlpZiAoIWF0dGFjaC0+cGVlcjJwZWVyKQ0KPiArCQkJZG9tYWlucyAmPSB+
QU1ER1BVX0dFTV9ET01BSU5fVlJBTTsNCj4gIA0KPiAgCWlmIChkb21haW5zICYgQU1ER1BVX0dF
TV9ET01BSU5fVlJBTSkNCj4gIAkJYm8tPmZsYWdzIHw9IEFNREdQVV9HRU1fQ1JFQVRFX0NQVV9B
Q0NFU1NfUkVRVUlSRUQ7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtm
ZC9LY29uZmlnIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRrZmQvS2NvbmZpZw0KPiBpbmRleCAx
NmUxMmM5OTEzZjkuLmE1ZDc0NjdjMmYzNCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRrZmQvS2NvbmZpZw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9L
Y29uZmlnDQo+IEBAIC0yNyw3ICsyNyw3IEBAIGNvbmZpZyBIU0FfQU1EX1NWTQ0KPiAgDQo+ICBj
b25maWcgSFNBX0FNRF9QMlANCj4gIAlib29sICJIU0Ega2VybmVsIGRyaXZlciBzdXBwb3J0IGZv
ciBwZWVyLXRvLXBlZXIgZm9yIEFNRCBHUFUgZGV2aWNlcyINCj4gLQlkZXBlbmRzIG9uIEhTQV9B
TUQgJiYgUENJX1AyUERNQSAmJiBETUFCVUZfTU9WRV9OT1RJRlkNCj4gKwlkZXBlbmRzIG9uIEhT
QV9BTUQgJiYgUENJX1AyUERNQQ0KPiAgCWhlbHANCj4gIAkgIEVuYWJsZSBwZWVyLXRvLXBlZXIg
KFAyUCkgY29tbXVuaWNhdGlvbiBiZXR3ZWVuIEFNRCBHUFVzIG92ZXINCj4gIAkgIHRoZSBQQ0ll
IGJ1cy4gVGhpcyBjYW4gaW1wcm92ZSBwZXJmb3JtYW5jZSBvZiBtdWx0aS1HUFUgY29tcHV0ZQ0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3hlL3Rlc3RzL3hlX2RtYV9idWYuYyBiL2Ry
aXZlcnMvZ3B1L2RybS94ZS90ZXN0cy94ZV9kbWFfYnVmLmMNCj4gaW5kZXggMWYyY2NhNWMyZjgx
Li5jMTA3Njg3ZWYzYzAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS94ZS90ZXN0cy94
ZV9kbWFfYnVmLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3hlL3Rlc3RzL3hlX2RtYV9idWYu
Yw0KPiBAQCAtMjIsOCArMjIsNyBAQCBzdGF0aWMgYm9vbCBwMnBfZW5hYmxlZChzdHJ1Y3QgZG1h
X2J1Zl90ZXN0X3BhcmFtcyAqcGFyYW1zKQ0KPiAgDQo+ICBzdGF0aWMgYm9vbCBpc19keW5hbWlj
KHN0cnVjdCBkbWFfYnVmX3Rlc3RfcGFyYW1zICpwYXJhbXMpDQo+ICB7DQo+IC0JcmV0dXJuIElT
X0VOQUJMRUQoQ09ORklHX0RNQUJVRl9NT1ZFX05PVElGWSkgJiYgcGFyYW1zLT5hdHRhY2hfb3Bz
ICYmDQo+IC0JCXBhcmFtcy0+YXR0YWNoX29wcy0+aW52YWxpZGF0ZV9tYXBwaW5nczsNCj4gKwly
ZXR1cm4gcGFyYW1zLT5hdHRhY2hfb3BzICYmIHBhcmFtcy0+YXR0YWNoX29wcy0+aW52YWxpZGF0
ZV9tYXBwaW5nczsNCj4gIH0NCj4gIA0KPiAgc3RhdGljIHZvaWQgY2hlY2tfcmVzaWRlbmN5KHN0
cnVjdCBrdW5pdCAqdGVzdCwgc3RydWN0IHhlX2JvICpleHBvcnRlZCwNCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9kbWFfYnVmLmMgYi9kcml2ZXJzL2dwdS9kcm0veGUveGVf
ZG1hX2J1Zi5jDQo+IGluZGV4IDFiOWNkMDQzZTUxNy4uZWEzNzBjZDM3M2U5IDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0veGUveGVfZG1hX2J1Zi5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS94ZS94ZV9kbWFfYnVmLmMNCj4gQEAgLTU2LDE0ICs1NiwxMCBAQCBzdGF0aWMgaW50IHhl
X2RtYV9idWZfcGluKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkNCj4gIAlib29s
IGFsbG93X3ZyYW0gPSB0cnVlOw0KPiAgCWludCByZXQ7DQo+ICANCj4gLQlpZiAoIUlTX0VOQUJM
RUQoQ09ORklHX0RNQUJVRl9NT1ZFX05PVElGWSkpIHsNCj4gLQkJYWxsb3dfdnJhbSA9IGZhbHNl
Ow0KPiAtCX0gZWxzZSB7DQo+IC0JCWxpc3RfZm9yX2VhY2hfZW50cnkoYXR0YWNoLCAmZG1hYnVm
LT5hdHRhY2htZW50cywgbm9kZSkgew0KPiAtCQkJaWYgKCFhdHRhY2gtPnBlZXIycGVlcikgew0K
PiAtCQkJCWFsbG93X3ZyYW0gPSBmYWxzZTsNCj4gLQkJCQlicmVhazsNCj4gLQkJCX0NCj4gKwls
aXN0X2Zvcl9lYWNoX2VudHJ5KGF0dGFjaCwgJmRtYWJ1Zi0+YXR0YWNobWVudHMsIG5vZGUpIHsN
Cj4gKwkJaWYgKCFhdHRhY2gtPnBlZXIycGVlcikgew0KPiArCQkJYWxsb3dfdnJhbSA9IGZhbHNl
Ow0KPiArCQkJYnJlYWs7DQo+ICAJCX0NCj4gIAl9DQo+ICANCj4gDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
