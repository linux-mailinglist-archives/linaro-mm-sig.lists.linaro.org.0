Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MGEVBIVjgGml7gIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 02 Feb 2026 09:42:45 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD94C9C1A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 02 Feb 2026 09:42:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 475713F724
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 Feb 2026 08:42:43 +0000 (UTC)
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013043.outbound.protection.outlook.com [40.93.196.43])
	by lists.linaro.org (Postfix) with ESMTPS id 26ACD3F7AC
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Feb 2026 08:42:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=Dp5h2klO;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.196.43 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QM9HsnbeUecBFXonJJ63R5IVnNHKhIGsCub4x/w1RoFaFiGwYi0+SaNqlrXj7mulcoLYeiVIM2neehKCumriJBEzZDHF8E+f0hs0G7A6Uw9lrUsTNQDL/93XUnfjaVFR3p06vQC9U15+rKfaucK2+uO02GtEa7sUg33LD1eoAFYbMNXjWHcjxPFCkpSKdsaIcsbTRP/IqVRv7uj2dWAU9+O1d0Bh6kYpTY1h7kyQKexIQdW7S53twyrJ85bApxeREYk8GJ+raf9ZsBziyb5qSKRs8LxQ1Ck8mWU/5NHbeU7f//N8mS7kypy2x0sMEWD0RgvfE5j+hAVanq+Bqwboyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8kJzNZX8h31W5fLJ8L0MqQLy5Sg+f1R9yJakGLekFxA=;
 b=r8mKBxwN3zi+u2PxY4njKKnxm7Llr24JpvsgzPJZH+3MwslkAF8qk87Z1t87PEejz5XajsoFqTxwZGa4wkMWdNgZHTa40eSe0iNLlSYInLixSamxa1bVVqrOz9mRSuLB1Nos1mcktF5IMEU1Fa3GiUbpHJ/OoQpAX/f1EuPc7XkD3A9moZxoXW86iijhvuh6wJH5mPFdN/RhZC4QLaxh65I5bbV/bB47BJWpGZ3nHdhUuxKhG+StB9Z87pBRGY4xNTNUL5bCl1HfOvEGZa7I7qhf8svrX893+S1EKlzfRJzHaEtwW+9W+yCtGrOhjR/HyrHHO6rsHy1Z4gN12F5iQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8kJzNZX8h31W5fLJ8L0MqQLy5Sg+f1R9yJakGLekFxA=;
 b=Dp5h2klOua3fIUYHa1Vlt7BxbZjoPUtQ2cX+pjcoIccJIa2T8PpOvYaNs3ziFjqXl7WjTMX1v28opMawzCXCdVNzI4ev6kvMBl3y7p8MR6krdys0fK4hsNedSv4XiZCvlrOAzsIAeITpE6o2M4VqUcHUV9zFtz4hHgI8+jDdMtM=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by IA1PR12MB6459.namprd12.prod.outlook.com (2603:10b6:208:3a9::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 08:42:33 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 08:42:32 +0000
Message-ID: <c976c33c-4fa7-4350-8dcc-a5c218d1b0d6@amd.com>
Date: Mon, 2 Feb 2026 09:42:22 +0100
User-Agent: Mozilla Thunderbird
To: Jason Gunthorpe <jgg@ziepe.ca>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
 <20260124-dmabuf-revoke-v5-4-f98fca917e96@nvidia.com>
 <31872c87-5cba-4081-8196-72cc839c6122@amd.com>
 <20260130130131.GO10992@unreal>
 <d25bead8-8372-4791-a741-3371342f4698@amd.com>
 <20260130135618.GC2328995@ziepe.ca>
 <d1dce6c1-9a89-4ae4-90eb-7b6d8cdcdd91@amd.com>
 <20260130144415.GE2328995@ziepe.ca>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260130144415.GE2328995@ziepe.ca>
X-ClientProxiedBy: BN9PR03CA0312.namprd03.prod.outlook.com
 (2603:10b6:408:112::17) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|IA1PR12MB6459:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ca55eab-a0e2-4ab4-0742-08de62370198
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?MXRNd213Z015RjNpRW84WG15WkFNM1lKVkM3Q1lhY0R3dkVDdlVFSkxDUHVk?=
 =?utf-8?B?Y1pta1lycFhNRitvQ3JLclpmdkluZ0VPbmk5dHhlcDF2WGZtb29tblJGOXlL?=
 =?utf-8?B?UmVtMGk3SXZVNldCVlhQTThVdS9FQ25jSFhHVlNnTDBkdWtiZktPNzBEYlBX?=
 =?utf-8?B?VVJLbi9EMWhtWTF3NGtSQ0tITDgxOFpsNzhHT1VmTGhITFFTUCtQMHQrZ3I1?=
 =?utf-8?B?NTRuNGVWbzJOVC9sVVRKaXBxWmQ0cVhGUzF6ViszdGx6UFA1b2ZNTWh1aTNl?=
 =?utf-8?B?SElWMDNrUThSSFlZTVlIRm03WGRSOXBkajFxeUFsa1RLc0RVdlR5OGhvTEFF?=
 =?utf-8?B?S2VmL0o3SDVIV0UxVTIwQ29TUDFjN3NOU29mWmFydStpc1hxRDJIbHd3U0xw?=
 =?utf-8?B?V2M4ZkxUWjZCRTh4NDc4ZWVxM1F5M0JxVGlnYW45N3ZmL2RaKzdYWVBGS3lB?=
 =?utf-8?B?WTduT1o3MUZ6NTI5TWd0R0pMUXBWalNwTzNEd20zT2dhbmpxYWxXc21yTXJx?=
 =?utf-8?B?eDMvM1hBMlRrTVhKWFlQR3Bjd3lQNk9seTl6UUhMdmxLOTJMNTR3eWROcHFr?=
 =?utf-8?B?Q0d4aU5nd2YzZ2hLd0IxL1NMcHpYakQ2YW1UZEdoelZFb2FMU3FrMmFZNk8x?=
 =?utf-8?B?RGppRDZlay9tZUZXSXhJWTUrbHYxVTNBd2ovWG9MMlcvOE9wLzZsclVYeExI?=
 =?utf-8?B?ZUdWSFpNNldzTU1zRlVoSWx5SkJkcXhxU3p4bVZPME9KenVBOERXVkxUZmhM?=
 =?utf-8?B?L3ZvYkZZd1N3TjhZUkJuMWRIdFIvOGxoWFVMb3hGaHBkdnhoVVlEMWU4TmYw?=
 =?utf-8?B?Tm1FWmhKZUlXYlFOQXZzaklhbW42a1RwMUdTNTdXaW42blFHYVJ4enc4QTBv?=
 =?utf-8?B?T0x5K21sWUpJTHFUM290bS8zMUdyY1pjRlVpeEtYVGZublRHSXJqc2hubG9Y?=
 =?utf-8?B?NUZTNFVNUGxoeWhnNFd6Ui9nWko2QnhpODdtN1d1N3ZuV2R4RnNJaTJiWHdw?=
 =?utf-8?B?UDIvcklURW12eWpJcUtLdjlISnhCdnJabTFPZ213dlBRdTlQT2dEa1I0ZjhH?=
 =?utf-8?B?VGZtbFE3VHg4ck9DbmVRM2J3c0FidFRrSVFWWXpna2xxeEpvNGxNRGtFcSts?=
 =?utf-8?B?K2FCNVd6T21XQjkySllOZEtmTFdpWGk3SkE1K3M3Zkh0K2FRZVByTElyY1Nv?=
 =?utf-8?B?SHhjeTRjU1hJcGliZVpselIwbDhzZFBTeTg4WVAvWWVmYU45ZUFBWVhTbUlm?=
 =?utf-8?B?UTFzMTVGZmd6STRUL0U5NVpZTHJjYzJ5ZzI3aWFCYjJ6R3hBcVlyNEhJRGM2?=
 =?utf-8?B?L3N1R256ZDBObmJwV1BiOUdhU1JTTXg3c0lDaXVtNVZRRUMrTTYyVVVnaE9G?=
 =?utf-8?B?WTJVS0JrUXpvenh0MVN1N0JxVXhBLzdJbENPUVNRenRaTHc2a00rQW1YVGFt?=
 =?utf-8?B?eEdaK1FkcmhWclNnY3lEZkY0RXE3Nnk4VVc3Y2FxWCtWTUV3Qy9NRzhXZFdC?=
 =?utf-8?B?WkVTSkpuNG1pdjg1WWNvMHc4dWIrQXlPQXN2aUVXREJxQWxqU1g2eWpmaE5X?=
 =?utf-8?B?T1I5eXgveXVNTUR4MjYvS2lYN3hhWkNuTjJrb2sxMUxiblFBZ09ZcTNVZnBJ?=
 =?utf-8?B?NGlXcE80K3dOaTMrMExvQmpxNWxqcjJQcERiYTRnR0xvd2pTRHpqd0o3Sm1q?=
 =?utf-8?B?QitXYmNFYmM3bG9HZkhMdTVrYmV4V0V5eUxGREYwakRHbWJoeGsxOGxKTFBn?=
 =?utf-8?B?K3BrajdWWnk2R2pwNGJNd3phMWNjVml2UDkyMVIwYktIck1sSFVzRWU1cUwz?=
 =?utf-8?B?c3hHcGw3bThBcXg4cWhENEduWkJFVVQrYXNZVkpUMmpST2lVUnNrMUgvck5m?=
 =?utf-8?B?NlM5K0p4N2w3YTdWUmljLzM2S0g5WnNqVGx1Q1JpbFpyN1Mzak1CWDB0U002?=
 =?utf-8?B?TDhmSGIxSW9CYTdybFBFMGVDOFBjWEg5QURjV0dkSG45MnovNDFSZ0JSVks5?=
 =?utf-8?B?eXpQNWN5UjgrSVo1ZXllTWhndURrZ2QxdTA4bnRzOE1oN2c5TGtiMVNLZ084?=
 =?utf-8?B?MmtEWmY5clU3TFlZV3hKeGdBTmFNQUJ5Y1VkRDViTW8zZ1hReFpqWlQxS0pk?=
 =?utf-8?Q?pxyw=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eGpHbHZ3MEpTalp5c3I3SzZMMHdvZmthQVk2VHpDYm4xTUxuMUE5bnhEYjBR?=
 =?utf-8?B?UGIvMEtJUWowTzhlNmpPaXdkeUE4Q3N2Qm9kZS9LT3JWck5Ya092ZnJGMGhY?=
 =?utf-8?B?Rm9NMWhZSWh6OXVQbXY1ejdmeGVHQllEalJaQm56WTlWYktqbS9qMGRUZ080?=
 =?utf-8?B?MERzdjRRR00vc1JiL3loUEFKbVN5aFh1VWtYcXBVSXZNR2t3N3dZSWNuSmxY?=
 =?utf-8?B?NWJndnA3SVNhSlBxVjR6TWgrMlloUU5lUkRLbFhzU05lSkJEaTdRM3hrSjhv?=
 =?utf-8?B?QTFpOEZuMDIwU1hvUWRQc21VWEgzTGxTSlVHNU91bk1PWmwxQnlGRU5zbDkz?=
 =?utf-8?B?MzVlVUljT1RtWmN4VWUzNTJlNENuSVl2dElsekVHbGU0SkxDdnNoTEdSUVJP?=
 =?utf-8?B?djMzMmE0MEw5Q0hTUE1zVy9seUpIVkozZXUxU1pOUzFSSzFXbk04KzhUZ2Jw?=
 =?utf-8?B?M1BrZ3ZJaEJwSHh3UG9BbU9oN25hd0dnZmhjZW10elZ6ZXVZUmRGMFhVUW1x?=
 =?utf-8?B?NGpOaDZ4d25lUWd1UmNOdXdJYkM0N3dBQUhiSVV6SjV3em55VHJaM3htdEVY?=
 =?utf-8?B?NUZQMUtReXpIV3ZWbzhYbnhsZGxraDJhTjFpbFFPZVhHR2VJRkxPS2tkRnpv?=
 =?utf-8?B?OE8xcTJZaVEzUU9CMW1Pa0dKcjBNc2RNSThpcnVWMjNlU3g1NlhZUUVsajNW?=
 =?utf-8?B?dmI2QnlQeVcrSE1ha1A0RnM3Yk9SSnVFd3I4Y1YzbjVjOTZYaFF3a3dWS1JH?=
 =?utf-8?B?Z1NaZ0wwNHc1QURZenJZbzJ4cUdTNDNDaVBCZGVrdFJ6eHN2MlN1ZHUrY1dE?=
 =?utf-8?B?WHFvb1hYOW5xMGNRejA1blFWMWlKK1RqM1B2K0pzSjZZa3RQS3pCYU9JWnNK?=
 =?utf-8?B?TXBkL2lhQ3dnbEVYMlVldHJkN3ZsSGVhak1za1pyOGFYeTl1RGpaZEFOOXRl?=
 =?utf-8?B?S01KMHhYZzFwQTlTaHhwZDVLRndTem1KR1BBN21Ld25KYjc0YzVoTW1mYVRa?=
 =?utf-8?B?QVMrSGppVjV6Q01yZ2pxdFY4R0MvZkQzcGNiUmtYc2pjSFREMXRRdGl4MTRE?=
 =?utf-8?B?Z003YkU3Ymg0bklDUm12dCtsenlnRjcyNmY0WW9HcnI3UVBsZXZrVHk4YW9G?=
 =?utf-8?B?OVhFeFpwUFlSdzVhKy9kdlByK2l1dWsrSGMxbWhZbUFBclhLRWVrbncxeXRw?=
 =?utf-8?B?ZTM0bVF0bzM2VjdNZldzL281Mnp4OFdyeldBaSs0eUNHamd3SmljbGMrLzk4?=
 =?utf-8?B?Q0ZTdTJLNEZ6OWNiTzZaZ2hNc29SU3d1TllpZllPbjVnN3lqdVBsakMxYW5t?=
 =?utf-8?B?N2YwMzEwZGFrbzFxeC94elZCL1RXcEkxSk5ESk5WVDE1SU02bUE5YVZZNmZS?=
 =?utf-8?B?STdUSFZvdXNJY21GOFJJZEZsVUl6bk9BZERwS0YwYnNGVkloYW54Z0ZEQmNi?=
 =?utf-8?B?c1A1Uk94REZiemwxelp2OXBrNWdmR1I2dWVzVXNwbmtlOU8rYnhJclFoY2Zr?=
 =?utf-8?B?ZlkxQmV3UlNKa3ZTaFVHNFdtWHpKcm1nbEQ1KzZOTXMrWHlLWVRFTnpnQkZF?=
 =?utf-8?B?VWtwVG52aGhnakV4bG1ISElGQ2FTV1MrT09kUXhxUmRFWjcvdVVDa3oxd1lB?=
 =?utf-8?B?aXNkbkV4d21IblN4aFdYbGNTdUFNRlc0aVgxakNYU1ArbkR1UC8za3hWOVZW?=
 =?utf-8?B?ODFselNMQngwTWl3V0pDN093YkhKMWNQZXhpQjRJaU9rOWlNb0FqSTg2cGwy?=
 =?utf-8?B?VlVoYk1FQWNHYlRKMWd6dGI4ZVg1SlJ1SDNyNldLN0tUc0RnR2lBQ1VSbGlz?=
 =?utf-8?B?TGJpams4UnlFeHkxY0lLTlM4LzlFeDdhU3pMWUNueFlxRXVPYW9mVE93SHVs?=
 =?utf-8?B?L2h0UVhDY2VlaWJqYk0wcVdkeHowMGtMYldqKytONmdpYk5rQXRjYmlzdi9V?=
 =?utf-8?B?U3hWTk5FcHhEWDllSzNIaVNaZDZ5MXZzQ285NjluV01CL0VDWi9sYW82M0RR?=
 =?utf-8?B?Mm5Ea203RG5sOHNjQmt4aTRGR2g5a3grbnM5TkFCQ0xmMUJuK1ZRRlgySjV1?=
 =?utf-8?B?ZHY2cWQrQjYrMkc0RXFKcW5LYUJhUW1sRUFkajVRNTllYjJNTHpMSzYva1or?=
 =?utf-8?B?dk5CL29CMVZ1aVlYeUxiekVTSnQvWmVMeTVKckZPUVVDTk1BWjhXeHRPSTNi?=
 =?utf-8?B?cUt4T1BtdlBmTE9QdExWUTdoUmJ4SUNnN0tPU1htbm9pZ1EybmJ3elVJclp4?=
 =?utf-8?B?SnNnV1VBVVpnbWtYM1IrYS8wK21nZmVVeUQ5d2wvOTk1aE5wbDEya1BueUM3?=
 =?utf-8?Q?q0WM0x5Kvi4CT5IfY/?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ca55eab-a0e2-4ab4-0742-08de62370198
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2026 08:42:32.5134
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tY2z0byBey6eiVNkvhy4L+ZWNsVdatMNzulE74Xsriu+490LZHzdXBbcAMkD52/Q
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6459
X-Spamd-Bar: ----
Message-ID-Hash: XJNUHVE7UG6K2PJOGPEMR527Q4EHXIGH
X-Message-ID-Hash: XJNUHVE7UG6K2PJOGPEMR527Q4EHXIGH
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kerne
 l@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 4/8] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XJNUHVE7UG6K2PJOGPEMR527Q4EHXIGH/>
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
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_TWELVE(0.00)[33];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 7CD94C9C1A
X-Rspamd-Action: no action

T24gMS8zMC8yNiAxNTo0NCwgSmFzb24gR3VudGhvcnBlIHdyb3RlOg0KPiBPbiBGcmksIEphbiAz
MCwgMjAyNiBhdCAwMzoxMTo0OFBNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4g
T24gMS8zMC8yNiAxNDo1NiwgSmFzb24gR3VudGhvcnBlIHdyb3RlOg0KPj4+IE9uIEZyaSwgSmFu
IDMwLCAyMDI2IGF0IDAyOjIxOjA4UE0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+
Pj4NCj4+Pj4gVGhhdCB3b3VsZCB3b3JrIGZvciBtZS4NCj4+Pj4NCj4+Pj4gUXVlc3Rpb24gaXMg
aWYgeW91IHJlYWxseSB3YW50IHRvIGRvIGl0IHRoaXMgd2F5PyBTZWUgdXN1YWxseQ0KPj4+PiBl
eHBvcnRlcnMgdHJ5IHRvIGF2b2lkIGJsb2NraW5nIHN1Y2ggZnVuY3Rpb25zLg0KPj4+DQo+Pj4g
WWVzLCBpdCBoYXMgdG8gYmUgdGhpcyB3YXksIHJldm9rZSBpcyBhIHN5bmNocm9ub3VzIHVzZXIg
c3BhY2UNCj4+PiB0cmlnZ2VyZWQgb3BlcmF0aW9uIGFyb3VuZCB0aGluZ3MgbGlrZSBGTFIgb3Ig
ZGV2aWNlIGNsb3NlLiBXZSBjYW4ndA0KPj4+IGRlZmVyIGl0IGludG8gc29tZSBiYWNrZ3JvdW5k
IG9wZXJhdGlvbiBsaWtlIHBtLg0KPj4NCj4+IFllYWgsIGJ1dCB5b3Ugb25seSBuZWVkIHRoYXQg
aW4gYSBjb3VwbGUgb2YgdXNlIGNhc2VzIGFuZCBub3QgYWxsLg0KPiANCj4gTm90IGFsbCwgdGhh
dCBpcyB3aHkgdGhlIGRtYV9idWZfYXR0YWNoX3Jldm9jYWJsZSgpIGlzIHRoZXJlIHRvDQo+IGRp
c3Rpbmd1aXNoIHRoaXMgY2FzZSBmcm9tIG90aGVycy4NCg0KTm8sIG5vIHRoYXQncyBub3Qgd2hh
dCBJIG1lYW4uDQoNClNlZSBvbiB0aGUgb25lIGhhbmQgeW91IGhhdmUgcnVudGltZSBQTSB3aGlj
aCBhdXRvbWF0aWNhbGx5IHNodXRzIGRvd24geW91ciBkZXZpY2UgYWZ0ZXIgc29tZSB0aW1lIHdo
ZW4gdGhlIGxhc3QgdXNlciBzdG9wcyB1c2luZyBpdC4NCg0KVGhlbiBvbiB0aGUgb3RoZXIgaGFu
ZCB5b3UgaGF2ZSBhbiBpbnRlbnRpb25hbCByZXZva2UgdHJpZ2dlcmVkIGJ5IHVzZXJzcGFjZS4N
Cg0KQXMgZmFyIGFzIEkndmUgcmVhZCB1cCBvbiB0aGUgY29kZSBjdXJyZW50bHkgYm90aCBhcmUg
aGFuZGxlZCB0aGUgc2FtZSB3YXksIGFuZCB0aGF0IGRvZXNuJ3Qgc291bmQgY29ycmVjdCB0byBt
ZS4NCg0KUnVudGltZSBQTSBzaG91bGQgKm5vdCogdHJpZ2dlciBhdXRvbWF0aWNhbGx5IHdoZW4g
dGhlcmUgYXJlIHN0aWxsIG1hcHBpbmdzIG9yIGV2ZW4gRE1BLWJ1ZnMgaW4gZXhpc3RlbmNlIGZv
ciB0aGUgVkZJTyBkZXZpY2UuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gDQo+IEphc29u
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
