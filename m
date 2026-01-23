Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Mx6Cp2gc2lqxgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jan 2026 17:23:57 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B32B7872E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jan 2026 17:23:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 85F41401BA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jan 2026 16:23:55 +0000 (UTC)
Received: from DM1PR04CU001.outbound.protection.outlook.com (mail-centralusazon11010018.outbound.protection.outlook.com [52.101.61.18])
	by lists.linaro.org (Postfix) with ESMTPS id 6E4263F774
	for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jan 2026 16:23:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=g6mPFrpQ;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.61.18 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d8/8EwYXT8E2GxFbvmMxVO0MTjdWQt5rE/K7a/NoIC7DxpeUflhXGsONwp/1no4Bv+c5HQtqiSNiUDYX1i72U3KVDq9MDaea1aRKKJXPjaLmwu6q/gKyLJmegzZZbhUxD68i+x/YkktblvQKVIp5gXwozxqKkTkVx7Sq7n2QdO18vgd/v2ImN4quwctoAf3VJPJIZmuucs/HJPs+QSA+MtY/n3vRAOcs/3RawNSFrCYZ1djQzmH1lyA1JQHTiUuPLGcKUIoX5+6NH31tZ4Mx+M9OZAjCgYz+vGWuaUx3JpTHbuv7PtVFCmhZYLot0UR1sigcFeogQhRt4EkOgPzLRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/pqmRwb00ynmNjg0P+Pp/LuS2Ak3p0fR9UEyDUxqcU8=;
 b=OIbirseRgLlkw/yTea/PJxLOkv5N9NMxNMXX5l7GF19tLTf9pJr2zbObu/j7ZRFrLqEfN9wAYE8FRm1dCMg7Sc9N2Lb0rrhMzBOh6s98wHhtmWon9ywDbBCSFyDluWq3D1vNFVzw3H5E8j2+V7uwMFkc8XbPB6QkwjPAAsUqdQDop5OnMVebSrNRs97BAkOO+m2hp/70a24s1TCQplIPdkDhxBmb9eTSW15A3HqIF0a5mxZod848w4uvY1qJOPlnSj86/PjA6LeJC+rKjlz3CGlqlxHMblcQgm6MvUMUKhUOZAePbryPzCQYj7RtOKJBiBhqYgGfUK7M28KDCl+biA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/pqmRwb00ynmNjg0P+Pp/LuS2Ak3p0fR9UEyDUxqcU8=;
 b=g6mPFrpQdzFbU7Rkh4x+2n4O6LPn5Bv8+xfsCCWaIQv+RpPyWs2m1RsEJW62awF6EFLqTJY2b2FMUtXW5HFE4zbjkJEM5cmsTvOkIENCh0IZAfBDftl5CUI4BtTCF4zcuox7mRMOmPeMn7Q8NSmQ5mIu+mSeSFI49dyY0xwluWs=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DM6PR12MB4402.namprd12.prod.outlook.com (2603:10b6:5:2a5::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Fri, 23 Jan
 2026 16:23:45 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9542.009; Fri, 23 Jan 2026
 16:23:44 +0000
Message-ID: <98b74c7a-44c1-49ba-997b-bbbab60429ba@amd.com>
Date: Fri, 23 Jan 2026 17:23:34 +0100
User-Agent: Mozilla Thunderbird
To: Jason Gunthorpe <jgg@ziepe.ca>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
 <20260120-dmabuf-revoke-v3-6-b7e0b07b8214@nvidia.com>
 <b129f0c1-b61e-4efb-9e25-d8cdadaca1b3@amd.com>
 <20260121133146.GY961572@ziepe.ca>
 <b88b500c-bacc-483d-9d1a-725d4158302a@amd.com>
 <20260121160140.GF961572@ziepe.ca>
 <a1c55bd8-9891-4064-83fe-ac56141e586f@amd.com>
 <20260122234404.GB1589888@ziepe.ca> <20260123141140.GC1589888@ziepe.ca>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260123141140.GC1589888@ziepe.ca>
X-ClientProxiedBy: FR4P281CA0377.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f7::13) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DM6PR12MB4402:EE_
X-MS-Office365-Filtering-Correlation-Id: 02316e61-b866-49db-7405-08de5a9bc778
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bXE0RTgySDhLb0dCNFRydWhLUkxrdisxeVlmWWE1Q0NweEtqc2NpS1dOdTl0?=
 =?utf-8?B?SHNIM2dPVWE3YnFyWHFtcExVeklLeEVXbGc1djhKYVJHMFFhVXZVN2RqcHQ4?=
 =?utf-8?B?d1FvWEZIYTIzZExJU1FBT3NncWN4NjF5SHhsSEtCTnVsVjNLOEFSSmpCaDN3?=
 =?utf-8?B?M0RDVG9VN1JydGVBdHdWSjZiVSt4NmNsTHBxN2pFcTVyU0tDU0VKZWN6OGJO?=
 =?utf-8?B?OUZFRXVSR1pvdDJEQ21CWW1tL1N2Q3NEanVOOUR2ak1Ta2FiL2lheUg4NWRB?=
 =?utf-8?B?aGhZa2tpOFVBTXdvYkZ6bVc4eXNJN0J4N2Mxc1VtVmRFMDdNdGpudm1zNDZT?=
 =?utf-8?B?Z3hydDFucnNrTUdCTTlBZzhYK2VDenhOSFVEVmdRMnc1akhyYnloVzBQTU1F?=
 =?utf-8?B?cXZjdXgya1hQa2UyN3p6enEvUVpvNm0vLzFOOFlySGkxRFNXSWJtemtzbGY5?=
 =?utf-8?B?QXl2R1lXaUd1T3dPMDBVUDNSeE93RGhCSlZvdUdsRGpScEN0M0ZlN1F2dFZQ?=
 =?utf-8?B?dnFqeE1rVkJlaFJYY3ZqYlRNY3lqN3BuSVlKQWw0cTFqYUVhS1lLQ0F5a1FS?=
 =?utf-8?B?RVkvMEZ4WVNSZysrUnhuUFphUWtXQ250K3lNWTJheWh4aVl3VTFRZ2NpSVhr?=
 =?utf-8?B?aXA2aTladHVKM1hRUDlCVnpUelI5NlFFZFlDUzBXd01tMkZuUVJScnZrUDNp?=
 =?utf-8?B?Yzdtcms0TllWem82elNyaW9mL3lIaGlEdVpzanVCZUlIbkt6TjdKS3RpYno1?=
 =?utf-8?B?QU53dk9oNWZ4U1IyNWpzay9YOFUzb0dNV2pnWTh4WGhyRUxwRGtmRnhxOEdi?=
 =?utf-8?B?MGhpcjFmTERRTjNzaWhHOWMzZzJraHRUeGZrM0EzdlhQZlI1c29Ea2xxMXVl?=
 =?utf-8?B?cWx4M3ovS0orSVJMWW4xVXZDZlBnV0RvYitGR0FPOGJlYnRUN3VBbDRKRUEr?=
 =?utf-8?B?cnlxcVlFL1J2bDRpSTBKNDVZMVhEcEdZdU5qQ0p2RWpQWFplc3J3dkNnbVVR?=
 =?utf-8?B?V1dXdHBCejVqZzNKVytlajh6TkdXOXl4bHB6YlpDK2U5ZVI5UGt1L3dnTndZ?=
 =?utf-8?B?RmNVdkJCbmtLVTFSSDQxOXd6cTlSS3BSU1kwVm8rZHZmSkxjR2dIL2hiWE5n?=
 =?utf-8?B?OTdZRHR1Tlc3UTlyRllONUhacnVMQXpwWlBnSXZvK01yQWFValBjM3E4aVZ1?=
 =?utf-8?B?cXVEUkxFUjdQQkRVK2ExTGk1QUUzZkZGRjNkZUNmcG1kUVNEbm9kZ3hqRTBG?=
 =?utf-8?B?RUNVTzZ2OW15ZndNUTJrdnU4R1JDeGpYYTg1SDZEN05PdmZoNnBSclNFZ3pK?=
 =?utf-8?B?TXZOallpK0o0dVA4a2NIVG11L3RJVjBtaHpib0duejN5RHMvTC9DVzZKeVdj?=
 =?utf-8?B?RC93ZFdodFBmeEptMmZZdU9QSkJERThIQVQvYmtqZ0w0Q0tNRVdrV2JhL0o3?=
 =?utf-8?B?U1pmWVZSTzRUMEpldVk1eUdXYXk4UmhIMkVTQ2VhTTlwZm5kY3RSR2NzNHVS?=
 =?utf-8?B?MHJoMHJMNVhRcit4eVJoWlo3NGtSamFuRVpsNGlVT21DdDRNSTl2MUthNXRH?=
 =?utf-8?B?bkd6SVhXSUVjckJLaHM3dTBZWjg1QTlrM3VERzlDT2FZS21aTlhzV3NWTnZw?=
 =?utf-8?B?UytNam16OXcvOWlORXlEcXZaYkRGUGxDdkxYaUpSNVNWMXQrWU43OUgrOU9R?=
 =?utf-8?B?bDNqUllveXl0U09YQ00rN1RiQlJWb1o4Z0VsVk1sVDc5VWJUUDlaS3pCc2lw?=
 =?utf-8?B?NXo2MDYyRlhCY1BtdTd1T2tnOHh1R1U3UmY2d1I0SEFPeEtSbU9QenhESnFK?=
 =?utf-8?B?OXh1NUJwYVZCdzM3Zm00bHNaMEpJdVZBMzM3U3BiTHpoQ1owcUwxRXVFU21y?=
 =?utf-8?B?YzZxY1htckdpLzlnZWNIOEo3SkNmWkVZNjYvSmhmZlFpWUpGeDBadGR5VjFR?=
 =?utf-8?B?VldabUdwUEFJNmoxeEgrdDM4SFhWYWlwQ04vTjNoQ1V0OVBuc3BOdGcvaUFv?=
 =?utf-8?B?Mk5RYTVSem1iMEVka1I2elErZUo5aVlMOXhYamRMbW44OStHbURmajBYb0hy?=
 =?utf-8?B?VnErR0k4ekZFMWVjTHVSeWg3cnB2c3BHeldhWXpHNG9sejAzbFQvcWw3a2NS?=
 =?utf-8?Q?2sc4=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WEVKSnJYb0dweEJra2dWa0kxTjViUmk2Sm1OWFFpaGRNMkIzSXExT1VZZ09R?=
 =?utf-8?B?Z0tleTl6Q09kQUdRZGE2OG1NcG54ajNnTFE1Yjc5TEdrSEdsOHI1S3lNQ3d1?=
 =?utf-8?B?aXdQUzBFNmJpZ2NtU3RsYlN6LzlXWnVMRCs0UnVOTStwOVBQeFZGalRYVmla?=
 =?utf-8?B?eXZ5YWpnS3pHeVpMTVE3TVF3NGNaekxNL2xYWC9uSnJVdjc4SDYvSUlwV1lS?=
 =?utf-8?B?bWxNR0xmWGI0VjFrb3RoUmE4ZkNKTFdkQzR0NS9KNWV2TzBRd2VQUkVtUG5F?=
 =?utf-8?B?SVNIV3ZNOXpnL25BU3k1cEhrUUxYc1VSUDRuZjVKZSt6U05Qa2FGQWQyd2NB?=
 =?utf-8?B?OWFtZmtCYzVLMFQrWTVKeG1jZ0E4SlE4OVVoMU1CNktYUitVU3NaQS9reXZO?=
 =?utf-8?B?aWF1TXZaY0J6eGR6NEtrRHFjZFpRRDRrZFhOK0ZQb2N2QUF4NEY4OGI0ai81?=
 =?utf-8?B?U1RGY2dPcFg2b2dIRTNmR0o2SEFaNWc3Tm1MdXNyNk95cG1mZlhuL1BTOFVW?=
 =?utf-8?B?bXZYdmhVWWRtak5NVWNrY1lGalVEVjRoYi9zbmIrZ1E3MVVDaXkraXE4YTN2?=
 =?utf-8?B?K3J6RDVZcDF5RXgyQmM0Z1pHVXU2Y3dPbWtjODZQcEN0QThFT3RjdUJiTklD?=
 =?utf-8?B?S1IyNGxCd2dQMVk1WnIzU3BBYzRLa3hWRXhXclN2WDRXYU5Jd0ozcWhOWERn?=
 =?utf-8?B?UHgxaUlyNzQ5UjNhVk5rY216RU5WNXNpOGVjQVE2RFRaSzZTQUZCZ0JZTFUv?=
 =?utf-8?B?WjJWM1FuYzkya3hwVW8yOWFwZnF2S1RRV01rMExQR3pZL1k5SkxLc0l4dHdD?=
 =?utf-8?B?UXdLSWZCR0NmU3NlZHlkcDhVZUttSlEraldwTm1Td2R4SUdSZmJpVnpEK0VK?=
 =?utf-8?B?MU1mOGtTcmI4VXZCR0tENDk4U21HMWZYN0c1UGFTdFo5dVZaMXR0U0ppUytQ?=
 =?utf-8?B?S1NiTDgzclpjNUJSalV6R3d0WXI0ZGFoK002MEQyMmlSNnZodms2RXJ5cmpr?=
 =?utf-8?B?YW1hSUlRejZBeDVQVDQ2dVFrVlI2ZE5NNENtWlVmMnBmd2NFS0dDa2N4MWNV?=
 =?utf-8?B?WS96K3ZVbi9YRU5tYUpOdjJxK0FOMVpNcXpadXRWMGRsaDZGdjVOYVZQTVRp?=
 =?utf-8?B?c0ZGMmJTckVUM3NUQjMxRXVRUjZadWhza0FxTDJXSHk0MVUxOGFiNVRnZFpu?=
 =?utf-8?B?cElicFZta05nSHJsbjJsMlE3RmdsUlV0NnE2Z2Zia01XU1ZFajk3V1JNSWl5?=
 =?utf-8?B?M3QreHZWd1d4VDFNUUp6S2RkdTU2OXVpeE9xdXcwTDZFY3FDNThrT0YxU0lp?=
 =?utf-8?B?bmhicSsvRGp0WUJVbGgxdnNEY1NWdVdIM1BFcG1JL0ZUY0NKcjFndjdad09l?=
 =?utf-8?B?NEgwSWk4c21YWEVFbGl5YktyaU16L2RLd2dNdFlqeU4wKzFYQjE3RWpSU20r?=
 =?utf-8?B?YWVUK2F2eXdnRVgyRTY5RklQdFhPQlVEZUJwM0o3MndKNkRpNXZERSs3ekJB?=
 =?utf-8?B?eXZNTUVlVFhvb3Z5WHJLeEpFazZ6SXJUTkpqYkdtN1FFYlVDdGpNa1JKM0R0?=
 =?utf-8?B?Wms0WXVPQW03QnBvOWUyN25vZldOaHV0OVFVT1Z1cXZUUFd2S2NhUTdGQlcw?=
 =?utf-8?B?MElkRnBKdHVGeTY2dHN0YmszUW90Y2h2K0szNXlkMzRCUEtWT0dpbHNHcitp?=
 =?utf-8?B?OTU1ZStEak40b1Q1NnRITDRlZi9PRjVudE5tY2x3YzNZYnFrQ2U2aWNXbHdi?=
 =?utf-8?B?ejV0Y0pyWXNkRWNzNGQ5NlJ6ai8ySVlMakxlbDRRZjQ3cXQ5akx2VFFiVmRr?=
 =?utf-8?B?NDhNSlMxQ3VLY2drZWk1Z3grVXA0MUJ4T2hlUW82TGczdWNiL0ZZRDJsNCtx?=
 =?utf-8?B?OVdML1NlbzJramtVbGpDOFQ3OFBodkM3T3dZbTdHZHF0Y0pkL0lEN25ZczZN?=
 =?utf-8?B?amwzWXNkYjRsbm90Q3lUQnloM1V0Q2NYcGJXY3htMXV6OFJuMnJ5K0xBbnFR?=
 =?utf-8?B?NkZja1ZDKytDL3VRaW5QbFl6eVpMZ0V2WlBlYWRvY1F5RWNVdms1N0NvK2JS?=
 =?utf-8?B?WjFVcXVQQy8zV1VsQkh3cUh2ZmswRzZ6cDc1eE5iQ3dOTlM3bUxSMFBFRDBl?=
 =?utf-8?B?V2o4RGM3VWZnbDFOUHVnRGUzWVV6L2s1eE1jTUV5KzhLZkpCb2xWSGJ2OWgw?=
 =?utf-8?B?S1A1SklUdTR2ZUVTd09zSktSOGZFaXROT3A5bzhueUxneTEzQ0VlMUJKNkR6?=
 =?utf-8?B?YXgzVXIwa0YvWFVoTGp4ZzF3TkllRzBtR3prV1RKZlh1RUhYdnVGZXc0OUdR?=
 =?utf-8?Q?0C9jNrWNYf38JmoKvr?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02316e61-b866-49db-7405-08de5a9bc778
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 16:23:44.9129
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iT9Z0CM9DZmqGGYB8REIVsyJ/nWgM/k2vdWyhAS93kdXalKfZVpq98Nh+ODrSejC
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4402
X-Spamd-Bar: ----
Message-ID-Hash: EMMPIERUGICH5XH3ANVKF4VNE35NCS2F
X-Message-ID-Hash: EMMPIERUGICH5XH3ANVKF4VNE35NCS2F
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kerne
 l@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/7] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EMMPIERUGICH5XH3ANVKF4VNE35NCS2F/>
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
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[33];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:mid]
X-Rspamd-Queue-Id: 8B32B7872E
X-Rspamd-Action: no action

T24gMS8yMy8yNiAxNToxMSwgSmFzb24gR3VudGhvcnBlIHdyb3RlOg0KPiBPbiBUaHUsIEphbiAy
MiwgMjAyNiBhdCAwNzo0NDowNFBNIC0wNDAwLCBKYXNvbiBHdW50aG9ycGUgd3JvdGU6DQo+PiBP
biBUaHUsIEphbiAyMiwgMjAyNiBhdCAxMjozMjowM1BNICswMTAwLCBDaHJpc3RpYW4gS8O2bmln
IHdyb3RlOg0KPj4+Pj4gV2hhdCByb3VnaGx5IGhhcHBlbnMgaXMgdGhhdCBlYWNoIERNQS1idWYg
bWFwcGluZyB0aHJvdWdoIGEgY291cGxlDQo+Pj4+PiBvZiBob29wcyBrZWVwcyBhIHJlZmVyZW5j
ZSBvbiB0aGUgZGV2aWNlLCBzbyBldmVuIGFmdGVyIGEgaG90cGx1Zw0KPj4+Pj4gZXZlbnQgdGhl
IGRldmljZSBjYW4gb25seSBmdWxseSBnbyBhd2F5IGFmdGVyIGFsbCBob3VzZWtlZXBpbmcNCj4+
Pj4+IHN0cnVjdHVyZXMgYXJlIGRlc3Ryb3llZCBhbmQgYnVmZmVycyBmcmVlZC4NCj4+Pj4NCj4+
Pj4gQSBzaW1wbGUgcmVmZXJlbmNlIG9uIHRoZSBkZXZpY2UgbWVhbnMgbm90aGluZyBmb3IgdGhl
c2Uga2luZHMgb2YNCj4+Pj4gcXVlc3Rpb25zLiBJdCBkb2VzIG5vdCBzdG9wIHVubG9hZGluZyBh
bmQgcmVsb2FkaW5nIGEgZHJpdmVyLg0KPj4+DQo+Pj4gV2VsbCBhcyBmYXIgYXMgSSBrbm93IGl0
IHN0b3BzIHRoZSBQQ0llIGFkZHJlc3Mgc3BhY2UgZnJvbSBiZWluZyByZS11c2VkLg0KPj4+DQo+
Pj4gU28gd2hlbiB5b3UgZG8gYW4gImVjaG8gMSA+IHJlbW92ZSIgYW5kIHRoZW4gYW4gcmUtc2Nh
biBvbiB0aGUNCj4+PiB1cHN0cmVhbSBicmlkZ2UgdGhhdCB3b3JrcywgYnV0IHlvdSBnZXQgZGlm
ZmVyZW50IGFkZHJlc3NlcyBmb3IgeW91cg0KPj4+IE1NSU8gQkFScyENCj4+DQo+PiBUaGF0J3Mg
cHJldHR5IGEgbmljaGUgc2NlbmFyaW8uLiBNb3N0IHBlb3BsZSBkb24ndCByZXNjYW4gdGhlaXIg
UENJDQo+PiBidXMuIElmIHlvdSBqdXN0IGRvIHJtbW9kL2luc21vZCB0aGVuIGl0IHdpbGwgYmUg
cmUtdXNlZCwgdGhlcmUgaXMgbm8NCj4+IHJlc2NhbiB0byBtb3ZlIHRoZSBNTUlPIGFyb3VuZCBv
biB0aGF0IGNhc2UuDQo+IA0KPiBBaCBJIGp1c3QgcmVtZW1iZXJlZCB0aGVyZSBpcyBhbm90aGVy
IGltcG9ydGFudCBkZXRhaWwgaGVyZS4NCj4gDQo+IEl0IGlzIGlsbGVnYWwgdG8gY2FsbCB0aGUg
RE1BIEFQSSBhZnRlciB5b3VyIGRyaXZlciBpcyB1bnByb2JlZC4gVGhlDQo+IGtlcm5lbCBjYW4g
b29wcy4gU28gaWYgYSBkcml2ZXIgaXMgYWxsb3dpbmcgcmVtb3ZlKCkgdG8gY29tcGxldGUNCj4g
YmVmb3JlIGFsbCB0aGUgZG1hX2J1Zl91bm1hcHMgaGF2ZSBiZWVuIGNhbGxlZCBpdCBpcyBidWdn
eSBhbmQgcmlza3MNCj4gYW4gb29wcy4NCj4gDQo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xr
bWwvODA2N2YyMDQtMTM4MC00ZDM3LThmZmQtMDA3ZmM2ZjI2NzM4QGtlcm5lbC5vcmcvVC8jbTBj
N2RkYTBmYjU5ODEyNDA4NzljNWNhNDg5MTc2OTg3ZDY4ODg0NGMNCj4gDQo+IEFzIGNhbGxpbmcg
YSBkbWFfYnVmX3VubWFwKCkgLT4gZG1hX3VubWFfc2coKSBhZnRlciByZW1vdmUoKSByZXR1cm5z
DQo+IGlzIG5vdCBhbGxvd2VkLi4NCg0KVGhhdCBpcyBub3QgZXZlbiBpbiB0aGUgaGFuZHMgb2Yg
dGhlIGRyaXZlci4gVGhlIERNQS1idWYgZnJhbWV3b3JrIGl0c2VsZiBkb2VzIGEgbW9kdWxlX2dl
dCgpIG9uIHRoZSBleHBvcnRlci4NCg0KU28gYXMgbG9uZyBhcyBhIERNQS1idWYgZXhpc3RzIHlv
dSAqY2FuJ3QqIHJtbW9kIHRoZSBtb2R1bGUgd2hpY2ggcHJvdmlkZXMgdGhlIGV4cG9ydGluZyBk
cml2ZXIgKGV4cGVjdCBvZiBjb3Vyc2Ugb2YgZm9yY2UgdW5sb2FkaW5nKS4NCg0KUmV2b2tpbmcg
dGhlIERNQSBtYXBwaW5ncyB3b24ndCBjaGFuZ2UgYW55dGhpbmcgb24gdGhhdCwgdGhlIGltcG9y
dGVyIG5lZWRzIHRvIHN0b3AgdXNpbmcgdGhlIERNQS1idWYgYW5kIGRyb3AgYWxsIHRoZWlyIHJl
ZmVyZW5jZXMuDQoNCkNocmlzdGlhbi4NCg0KPiANCj4gSmFzb24NCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
