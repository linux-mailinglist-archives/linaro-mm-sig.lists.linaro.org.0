Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E10A126F4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jan 2025 16:11:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 135434603D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jan 2025 15:11:07 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2056.outbound.protection.outlook.com [40.107.92.56])
	by lists.linaro.org (Postfix) with ESMTPS id 5742F3EC51
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Jan 2025 15:11:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=pSmgixfi;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.107.92.56 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QcQjB1F4RZ0uujAUjcHT0Ceuzky8wAtv2LOgzvNtYQ/rICcyTiQqgkCzQ00gAG4S+ROdmET/7gm1VzogyxYHJFU+3EwkAkBwR1SbMAr41FWwQgc4PXXNpCR+Q13FoQiRbSkEtVggfyJJGBiqUBBQcXm72/UopXanoSDpOMSjyMIpEjZgtHl7Tc+SawDPnORUghkWpxj0khMtmXliYB/0HZuWgFTUK1gIrQLgACubKN7ZWIq3fOQ3/zq19ybKTK367js7gdMMy1hnzFtRNO61paYPqrVzcKzgcS6MMhoDs+86GnxdW8AehLZJbRezphnU6oZhJXTjIc1gqqAsoLgTwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l73z8496Yb2BtWB609biLJ2hTccV1KqS2qgDESvHoNc=;
 b=p0xriaZ7shP2EcD3PUPO0mQKQxCJ9NS1kKrD5p+RqR5DaByD+dyWHLQ2owqJwIbG1LlZ1klHqavhgRDnlj/CsnglPu4tee9AxKaaqkGvX71dcWrm8lYWzLNJzTAnHxyE37rmhhRsmuDQeAacsHeFPunoQzveSrE8KiYhiuxRQmROI6c6L3p1x5P5sFK3u9qlMbd/IZm9NYGcP6IcVrlPAq82cpVpWf70/0dpi6vPYQRRFSJp7bgmkf5hG9ivrIPqYKw06K0bDJOCI0cDgxf46PjJKAZYSB+96KU+HkUNC6ME7a6kIL17IEQQfLtwccbuMpzjAFmQohikeoayMgXfEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l73z8496Yb2BtWB609biLJ2hTccV1KqS2qgDESvHoNc=;
 b=pSmgixfiySi/PsyePN5hAzYGg/DlXH5qjZ2YUhGsYCGbQiAJATwz7hRer5ySYJN8egz+xpFpsWpT8LGeWf2u3ZvwY4+kkafM57Nu59b2Gj4EZwADowwV86bL41fZkJTGMJdNjDpgbZ3DTt7NgIa0FhnLgc+YlE3Y+tho+QZ6P0IPCIwdeI/zQnZwvFEJPF991abeC2ZASDoNYCQssBK4jqoyCOEHxl9GyYnNQ0MvhEmWaGpuyT2FOqjBiab2eXbuSSsKPH5X6+Je943+NQkkXe7s4hRYMS9hyti9IoDW8Dq7QEEnJ9SnV3WfiSp/1ZXX0F8IcDj7UZ1lfpPktcV+Mw==
Received: from CH3PR12MB8659.namprd12.prod.outlook.com (2603:10b6:610:17c::13)
 by CH2PR12MB4071.namprd12.prod.outlook.com (2603:10b6:610:7b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Wed, 15 Jan
 2025 15:10:58 +0000
Received: from CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732]) by CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732%5]) with mapi id 15.20.8335.017; Wed, 15 Jan 2025
 15:10:58 +0000
Date: Wed, 15 Jan 2025 11:10:56 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20250115151056.GS5556@nvidia.com>
References: <58e97916-e6fd-41ef-84b4-bbf53ed0e8e4@amd.com>
 <c823f70c-9b70-441c-b046-71058c315857@amd.com>
 <20250110205454.GM5556@nvidia.com>
 <d213eee7-0501-4a63-9dfe-b431408c4c37@amd.com>
 <20250115133821.GO5556@nvidia.com>
 <f6c2524f-5ef5-4c2c-a464-a7b195e0bf6c@amd.com>
 <1afd5049-d1d4-4fd6-8259-e7a5454e6a1d@amd.com>
 <20250115141458.GP5556@nvidia.com>
 <c86cfee1-063a-4972-a343-ea0eff2141c9@amd.com>
 <86afb69a-79bd-4719-898e-c6c2e62103f7@amd.com>
Content-Disposition: inline
In-Reply-To: <86afb69a-79bd-4719-898e-c6c2e62103f7@amd.com>
X-ClientProxiedBy: BL1P221CA0004.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:208:2c5::15) To CH3PR12MB8659.namprd12.prod.outlook.com
 (2603:10b6:610:17c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB8659:EE_|CH2PR12MB4071:EE_
X-MS-Office365-Filtering-Correlation-Id: 80603e98-66bb-42e8-f0e1-08dd3576d074
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?d3RQVWZEN3lHWGZvSlBjWXRLQ2dnaXlEekNyaTFFdW9KanhNUmxJY2JpWVl5?=
 =?utf-8?B?ZStsTlFTN0FaVUJ5UzU0RkFXLzU5cHdSUEFLRG43UUZQOWM1ZzkrSmxKeldn?=
 =?utf-8?B?VWswS0dLYWdYenc2YzFGclUxL3VQK0VJNlYwblloWUU4T1lFRVl6YmdmWGdX?=
 =?utf-8?B?NDFJWWdDUUIwOFZJRlN2Y2RjMmgwd2lRdGJPNkNUYndaTGdiTkhuKzliejds?=
 =?utf-8?B?ZmpIV3Y2SkpHSFJ2NEo2YVYvcERhb1FabzVXVm1aL3lqWXZaVzhucXFBR0Zx?=
 =?utf-8?B?Tyt0aS9hSk10b2Z6U3RscUNmS1dIWTFTeGk0K1ZjM3BsV0lTN2xiaEZESGgx?=
 =?utf-8?B?b0Rub0h0VGg3emgxY2YxamozNE1MQW14TUltSUx4QjB1Tkg0c2o5cUE1TTlz?=
 =?utf-8?B?V3ZTZEZjQmNVMVR3M1gwSThxQmZVQjBzWFdIeUFubjNhOTZkN3N3L1ZsMGhs?=
 =?utf-8?B?UUxCQXVJUnRORFl3Wm9nNGx2WFFSY2tMb2JFMVJzNWdNOE9jM2M2RUFvamNl?=
 =?utf-8?B?R0FmbFRKSVN2MlZhMFhNdk9keDZVbHhDd2VacVFNakRRSGU2Z2l5Sm9Tdlht?=
 =?utf-8?B?MGtUQ2FsVUZHQjVOSGlORklmQTF4ZjRRSDN4c2lYZW5CVzF5ZzQ0d0xJTDZF?=
 =?utf-8?B?L1k1U1kzR0FPYTByZ3h1Kys0a1VpZFlSZHhZd1diYlJPMHk4ZHlYSUNaUUVN?=
 =?utf-8?B?UUhrelFhbTRURko1U0t3SzhTaUsvaG9JZ2xFZGphSTlIaUdDbzhLRGk5bXBp?=
 =?utf-8?B?UmhpYzlhbzRvbGRiRmJlYVJ0UGVKdWtQSlIwclVKY3hVWWMxRUhVVS9hTmg0?=
 =?utf-8?B?aEd4blRjMVBvTlByRmNwWUlmWXZMVXMxb1RHUjgvQmoxc0k5UllFMDM5Qzl0?=
 =?utf-8?B?bDJZcnY3eitPL3pXTzR5alNIY2F2amU5RlpueHNYR0o5bG1EdDIyRlEzbXdt?=
 =?utf-8?B?bmFDRFpxSU1paExZekIyczZJelRxRW84YkJOZ1E3NkdWZ2VnNkVpaWliR2ll?=
 =?utf-8?B?YVY4b2hYN083UzdDVUhxcVVYeVBzUGdwTDYzT0dLTjlaK0FhSTl5by9RTitM?=
 =?utf-8?B?RDZjUHpPYlZVK0Z4dXhwdjlGQStkTm9OMmRKb2wxVUIvdCtONGdHek5YNkx6?=
 =?utf-8?B?Y0RaL01ETURRYklhM2NRSVRLeVQ3QzBBMVJVVjBPcGNGWU9ZNjB1eldML0tY?=
 =?utf-8?B?UzluWE5XYVdlQXJ5L0cwWS9YQUthbmRmUDZ0OWFrMnhKS0ZldU1ZMzVIb0Zl?=
 =?utf-8?B?dE94MUdpa1ZEZTI1Z25HYmxKWHFiWnlSclphdmJPSjBnOTgyZ0hNZklvYnJI?=
 =?utf-8?B?NTNHM3JsMHlYS3FGQVR0VWJ1M1BqM0MvQkxOWHEvM0UyaFk3Y0c3eXFRWkNR?=
 =?utf-8?B?dkxhdVlMRmI1MEVMdHEzb080cXQ1VnpZa2tLdDIvUkpEcDZzK3dhMlJXdXc5?=
 =?utf-8?B?U212aDUzNEdFRUt1dkN3N3hnS2RqSEJ1MVpranlEWjE4WEFNaUdpZHNzcFVr?=
 =?utf-8?B?OXlWV0poTFFaaWdLWXZ4dUhVZitLMDh3T3YzUDM5eVFYZ0JkTGpEWVRwZVEz?=
 =?utf-8?B?RlJ5UzVQTDlMZmFKMWVtSnlhMlRMRnhVWEJiMVlua25uaTNmb0VHcUZ3K2FV?=
 =?utf-8?B?NmpET3NRTTYxVVFLaFNwcW5tVldmZlNzbkNPd2NwR1AxOERPb1NpL3lDcy9x?=
 =?utf-8?B?MlZHSnR1cW5YbGtSaWRjTmRMMWM2emVLeUp3cjIvUkJhdndEbmN0aEx4ZWNE?=
 =?utf-8?B?OC9idWtaWnBnSmc1S0piL0x6OHRtVkR4VmNSZjlhdWV0SDF6K2xCQ05iUmR4?=
 =?utf-8?B?SFh3dFp5cmZVSHpMTHpkZGhmSzlNWFZTY3FsNEk0MWMxekVaNDM5bFZndDh3?=
 =?utf-8?Q?MVHM4obrfHzk5?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR12MB8659.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eFBjMnJRdWI0YjVCaVQ0NjRxSGlLczFheTVVNytvdFNDSTE1R1dTVlJac210?=
 =?utf-8?B?Q0svdHIwcEl2UDJySzBlNnNuM0p2cHFDLy9YMkZIYkRQbFVQbzZiVy85KzZt?=
 =?utf-8?B?UmxDYVNQUWgyeXJtY2lYeERWbnNQdXVKdU5JeGQvZTJ0MDJXNWg5a0E4TklT?=
 =?utf-8?B?NWsyMUIzVWRDYm45VEVGejVPQTBFNkJabVZoaDBQclFyb0g4K1BrSGFBYWVD?=
 =?utf-8?B?WFo4Rk82MlErZ0VTaHNjZk5XYTkzR0JITEtXSlNQcXhBVXJVeFVSUE56Wm5k?=
 =?utf-8?B?QXBuaGd3cGhMTGJTd2JsVk5RVmFzcGRXL3Vucjk5RWpVZkluSFBKUHNJZC8z?=
 =?utf-8?B?QWRFTVZ2dEpxR01XMGg3RS90cjhiVS9aalNrTWNwbWFoZXRkbkxGT0xETWFE?=
 =?utf-8?B?SFdwekk3NjBlMDU0TmMzZENVZVU3MGE1ZWZOdXkxS1ZWcmJrL1hod3M5ZExz?=
 =?utf-8?B?a1E0cC9ZdDlQdzhOaVBUTHYvNTFmUm1Qd0FWOWlzWGJTSnpkdWhWVW1Dbi9J?=
 =?utf-8?B?aDcxOXRWa3dCNHFTbDI4YUpOWm55R1F0bDc3V2w2Ylhpdm9tYnhDcGNHWEVP?=
 =?utf-8?B?SWpzVHBScGlrRDI4eXMvZmFkby83OEorbUZEWEVLOVBhcUJoM0ZnVFJxU1JL?=
 =?utf-8?B?LzFoUk1JYktrK3JNSHlQajFwRUpNK1VIdlVISWpuN1M0dS8yWnFMRnVMOSsy?=
 =?utf-8?B?SXpBazRjRkhVd2xCR2l3ajNwK290b0JjSGFLV2g1TkdaZFZMMm96MFd5MTdX?=
 =?utf-8?B?U2FBK1B1N1U3Z3ZOTFRBZFBLcmt4VG5ySURhNlFQWTJreTRLQy9xSmcxdzEz?=
 =?utf-8?B?VGRkYUdwQlRhcUFna0kxYk5sZ1Y3KytVTEJPdVhOUXhTeUFiaUZRaFBhSzZM?=
 =?utf-8?B?VVYxbEllaU5VL1dtKzFqbDFrcUVNVDlqcUFjTW1ZUEJBa2hkN3J2bUN4MUxR?=
 =?utf-8?B?TjNiQmtNWjFJOEVqMkxBOG5oTWxZV0tKbEwxWkhvaFN1dnpUbnZRSmxWUDBm?=
 =?utf-8?B?Rkk2Si9xSmk4dDdtbUdQSHg2VnI2QzdDZ3RaV2crcWp5eGgyMnFMY3ZuMEtL?=
 =?utf-8?B?SVd1RVhobHZlaVkybkpkbk53dDRzYmlQaGtDYjZkUzRUSEV0UHc5N0VjeU9D?=
 =?utf-8?B?ZXBISzZzLzJTN2dSYjhaWk1jcnpyc0g2RmZ6dDZwYVFHbjdUdjFuQjVqSVZP?=
 =?utf-8?B?QW1yVzJFU281bGcwNDF0a2ZvckE3M0ZMblZNUUtVYWsydzd2NVVwL3BOVmIw?=
 =?utf-8?B?ZlM5eU9YdGZzSkRFTXRYeEhYOE5RNlZrQVN3RWpxT1ZwWVlIekJzUWJEb21B?=
 =?utf-8?B?MnRsL1I3T0ZtVXJvQzlPSy8wRmJFdzlRenpuS2ExMzd1eU05bngxeWVzTjhO?=
 =?utf-8?B?TjVLbEI4WkNJYXBFMTJHVFFoZC81bnorcTZveU1tdVRmZ1pJc05WVFpRZUxv?=
 =?utf-8?B?bVdwMmJ6cXdoVGpxb0orN0ZjS09QbHBCbTdWTk1IVVl5TEZQTndteGNLUUVh?=
 =?utf-8?B?byt6cDRnZTEzUVhzODliQlhURVBMaXR6dVhGUkt5RnVLbC9NZlliRnExUExv?=
 =?utf-8?B?YmxaREw0UE1HNytoRVVNdHpHT2tnUkw0WFR5Y0pCc1hDLzdNa3V6bFIvMG5v?=
 =?utf-8?B?QXc1WnBXWTI5eEl3c1k5NS93T2RGbFJmd1kyTVZRaUtJYnNPWTE0Y1pJT0k0?=
 =?utf-8?B?YWttUU96QVNLK1Y2cldTemJ2NXFMcHVGUVVVdkdId2NKMzBoeDgyUHdjUDg2?=
 =?utf-8?B?RVBNWTh2TzNVbmxLREY3T1BKcUk0SVp5T0VrLzBPSEZFQXJQSjA3U0YxakFa?=
 =?utf-8?B?RzJLaGl0aERtZENlVlZSRVluWElvVDBZb3dFeUtLc3N0UkdLUWRXWTR3bjB4?=
 =?utf-8?B?VzhuaE5pV1g1emVnK2FReDRKc2F4VlA1dkFmRFJFZkNMWUl4bElSWStFVDhz?=
 =?utf-8?B?U3ErNkJscmdmekNtSzM2b0ZMallKWE04L3lMa1NTMjR0OWRydWhJSkhaaDBM?=
 =?utf-8?B?dVFDT0pIZFE0ZlR6NG5hZXZleUgwTEtCaXZ3M2w5VWFDZlA4dEFYWStheUxD?=
 =?utf-8?B?VUxYK0NEbGFhd01wMllIaGQ2QWV5RDBmbHg2eVdQeUJEYjlHcUM0eXhSaCtR?=
 =?utf-8?Q?779QwyXsy8vlGOEIpYoxeBvnZ?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80603e98-66bb-42e8-f0e1-08dd3576d074
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB8659.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2025 15:10:57.8675
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QOnaZkoZ2DUn4EgoeoOYBCvIXfrK2OiGFiv0HqN1DWSrqdPzKeF+DOzFh4rC1T9Y
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4071
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5742F3EC51
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.92.56:from];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[40.107.92.56:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[Nvidia.com:+]
Message-ID-Hash: 33B363OXRUUQVRMMBK3KUX24YZOK5YDC
X-Message-ID-Hash: 33B363OXRUUQVRMMBK3KUX24YZOK5YDC
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Xu Yilun <yilun.xu@linux.intel.com>, Christoph Hellwig <hch@lst.de>, Leon Romanovsky <leonro@nvidia.com>, kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, aik@amd.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/33B363OXRUUQVRMMBK3KUX24YZOK5YDC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBKYW4gMTUsIDIwMjUgYXQgMDM6MzA6NDdQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCg0KPiA+IFRob3NlIHJ1bGVzIGFyZSBub3Qgc29tZXRoaW5nIHdlIGNhbSB1cCB3
aXRoIGJlY2F1c2Ugb2Ygc29tZSBsaW1pdGF0aW9uDQo+ID4gb2YgdGhlIERNQS1BUEksIGJ1dCBy
YXRoZXIgZnJvbSBleHBlcmllbmNlIHdvcmtpbmcgd2l0aCBkaWZmZXJlbnQgZGV2aWNlDQo+ID4g
ZHJpdmVyIGFuZCBlc3BlY2lhbGx5IHRoZWlyIGRldmVsb3BlcnMuDQoNCkkgd291bGQgc2F5IGl0
IHN0ZW1zIGZyb20gdGhlIHVzZSBvZiBzY2F0dGVyIGxpc3QuIFlvdSBkbyBub3QgaGF2ZQ0KZW5v
dWdoIGluZm9ybWF0aW9uIGV4Y2hhbmdlZCBiZXR3ZWVuIGV4cG9ydGVyIGFuZCBpbXBvcnRlciB0
bw0KaW1wbGVtZW50IHNvbWV0aGluZyBzYW5lIGFuZCBjb3JyZWN0LiBBdCB0aGF0IHBvaW50IGJl
aW5nIHJlc3RyaWN0aXZlDQppcyBhIHJlYXNvbmFibGUgcGF0aC4NCg0KQmVjYXVzZSBvZiBzY2F0
dGVybGlzdCBkZXZlbG9wZXJzIGRvbid0IGhhdmUgQVBJcyB0aGF0IGNvcnJlY3RseSBzb2x2ZQ0K
dGhlIHByb2JsZW1zIHRoZXkgd2FudCB0byBzb2x2ZSwgc28gb2YgY291cnNlIHRoaW5ncyBnZXQg
aW50byBhIG1lc3MuDQoNCj4gPiBBcHBseWluZyBhbmQgZW5mb3JjaW5nIHRob3NlIHJlc3RyaWN0
aW9ucyBpcyBhYnNvbHV0ZWx5IG1hbmRhdG9yeSBtdXN0DQo+ID4gaGF2ZSBmb3IgZXh0ZW5kaW5n
IERNQS1idWYuDQoNCllvdSBzYWlkIHRvIGNvbWUgdG8gdGhlIG1haW50YWluZXJzIHdpdGggdGhl
IHByb2JsZW1zLCBoZXJlIGFyZSB0aGUNCnByb2JsZW1zLiBZb3VyIGFuc3dlciBpcyBkb24ndCB1
c2UgZG1hYnVmLg0KDQpUaGF0IGRvZXNuJ3QgbWFrZSB0aGUgcHJvYmxlbXMgZ28gYXdheSA6KA0K
DQo+ID4gPiBJIHJlYWxseSBkb24ndCB3YW50IHRvIG1ha2UgYSBkbWFidWYyIC0gZXZlcnlvbmUg
d291bGQgaGF2ZSB0bw0KPiA+ID4gaW1wbGVtZW50IGl0LCBpbmNsdWRpbmcgYWxsIHRoZSBHUFUg
ZHJpdmVycyBpZiB0aGV5IHdhbnQgdG8gd29yayB3aXRoDQo+ID4gPiBSRE1BLiBJIGRvbid0IHRo
aW5rIHRoaXMgbWFrZXMgYW55IHNlbnNlIGNvbXBhcmVkIHRvIGluY3JlbWVudGFsbHkNCj4gPiA+
IGV2b2x2aW5nIGRtYWJ1ZiB3aXRoIG1vcmUgb3B0aW9uYWwgY2FwYWJpbGl0aWVzLg0KPiA+IA0K
PiA+IFRoZSBwb2ludCBpcyB0aGF0IGEgZG1hYnVmMiB3b3VsZCBtb3N0IGxpa2VseSBiZSByZWpl
Y3RlZCBhcyB3ZWxsIG9yDQo+ID4gb3RoZXJ3aXNlIHJ1biBpbnRvIHRoZSBzYW1lIGlzc3VlcyB3
ZSBoYXZlIHNlZW4gYmVmb3JlLg0KDQpZb3UnZCBuZWVkIHRvIGJlIG11Y2ggbW9yZSBjb25jcmV0
ZSBhbmQgdGVjaG5pY2FsIGluIHlvdXIgb2JqZWN0aW9ucw0KdG8gY2F1c2UgYSByZWplY3Rpb24u
ICJXZSB0cmllZCBzb21ldGhpbmcgZWxzZSBiZWZvcmUgYW5kIGl0IGRpZG4ndA0Kd29yayIgd29u
J3QgY3V0IGl0Lg0KDQpUaGVyZSBpcyBhIHZlcnkgc2ltcGxlIHByb2JsZW0gc3RhdGVtZW50IGhl
cmUsIHdlIG5lZWQgYSBGRCBoYW5kbGUgZm9yDQp2YXJpb3VzIGtpbmRzIG9mIG1lbW9yeSwgd2l0
aCBhIGxpZmV0aW1lIG1vZGVsIHRoYXQgZml0cyBhIGNvdXBsZSBvZg0KZGlmZmVyZW50IHVzZSBj
YXNlcy4gVGhlIGV4cG9ydGVyIGFuZCBpbXBvcnRlciBuZWVkIHRvIHVuZGVyc3RhbmQgd2hhdA0K
dHlwZSBvZiBtZW1vcnkgaXQgaXMgYW5kIHdoYXQgcnVsZXMgYXBwbHkgdG8gd29ya2luZyB3aXRo
IGl0LiBUaGUNCnJlcXVpcmVkIGltcG9ydGVycyBhcmUgbW9yZSBnZW5lcmFsIHRoYXQganVzdCBz
aW1wbGUgUENJIERNQS4NCg0KSSBmZWVsIGxpa2UgdGhpcyBpcyBhbHJlYWR5IGV4YWN0bHkgRE1B
QlVGJ3MgbWlzc2lvbi4NCg0KQmVzaWRlcywgeW91IGhhdmUgYmVlbiBzYXlpbmcgdG8gZ28gZG8g
dGhpcyBpbiBURUUgb3Igd2hhdGV2ZXIsIGhvdyBpcw0KdGhhdCBhbnkgZGlmZmVyZW50IGZyb20g
ZG1hYnVmMj8NCg0KPiA+ID4gPiA+ID4gPiBUaGF0IHNvdW5kcyBtb3JlIHNvbWV0aGluZyBmb3Ig
dGhlIFRFRSBkcml2ZXIgaW5zdGVhZCBvZiBhbnl0aGluZyBETUEtYnVmDQo+ID4gPiA+ID4gPiA+
IHNob3VsZCBiZSBkZWFsaW5nIHdpdGguDQo+ID4gPiA+ID4gPiBIYXMgbm90aGluZyB0byBkbyB3
aXRoIFRFRS4NCj4gPiA+ID4gPiBXaHk/DQo+ID4gPiBUaGUgTGludXggVEVFIGZyYW1ld29yayBp
cyBub3QgdXNlZCBhcyBwYXJ0IG9mIGNvbmZpZGVudGlhbCBjb21wdXRlLg0KPiA+ID4gDQo+ID4g
PiBDQyBhbHJlYWR5IGhhcyBndWVzdCBtZW1mZCBmb3IgaG9sZGluZyBpdCdzIHByaXZhdGUgQ1BV
IG1lbW9yeS4NCj4gPiANCj4gPiBXaGVyZSBpcyB0aGF0IGNvbWluZyBmcm9tIGFuZCBob3cgaXQg
aXMgdXNlZD8NCg0KV2hhdCBkbyB5b3UgbWVhbj8gZ3Vlc3QgbWVtZmQgaXMgdGhlIHJlc3VsdCBv
ZiB5ZWFycyBvZiBuZWdvdGlhdGlvbiBpbg0KdGhlIG1tIGFuZCB4ODYgYXJjaCBzdWJzeXN0ZW1z
IDooIEl0IGlzIHVzZWQgbGlrZSBhIG5vcm1hbCBtZW1mZCwgYW5kDQp3ZSBub3cgaGF2ZSBBUElz
IGluIEtWTSBhbmQgaW9tbXVmZCB0byBkaXJlY3RseSBpbnRha2UgYW5kIG1hcCBmcm9tIGENCm1l
bWZkLiBJIGV4cGVjdCBndWVzdG1lbWZkIHdpbGwgc29vbiBncm93IHNvbWUgbW9yZSBnZW5lcmlj
DQpkbWFidWYtbGlrZSBsaWZldGltZSBjYWxsYmFja3MgdG8gYXZvaWQgcGlubmluZyAtIGl0IGFs
cmVhZHkgaGFzIHNvbWUNCktWTSBzcGVjaWZpYyBBUElzIElJUkMuDQoNCkJ1dCBpdCBpcyAxMDAl
IGV4Y2x1c2l2ZWx5IGZvY3VzZWQgb24gQ1BVIG1lbW9yeSBhbmQgbm90aGluZyBlbHNlLg0KDQo+
ID4gPiBUaGlzIGlzIGFib3V0IGNvbmZpZGVudGlhbCBNTUlPIG1lbW9yeS4NCj4gPiANCj4gPiBX
aG8gaXMgdGhlIGV4cG9ydGVyIGFuZCB3aG8gaXMgdGhlIGltcG9ydGVyIG9mIHRoZSBETUEtYnVm
IGluIHRoaXMgdXNlDQo+ID4gY2FzZT8NCg0KSW4gdGhpcyBjYXNlIFh1IGlzIGV4cG9ydGluZyBN
TUlPIGZyb20gVkZJTyBhbmQgaW1wb3J0aW5nIHRvIEtWTSBhbmQNCmlvbW11ZmQuDQoNCj4gPiBU
aGlzIGlzIGFsc28gbm90IGp1c3QgYWJvdXQgdGhlIEtWTSBzaWRlLCB0aGUgVk0gc2lkZSBhbHNv
IGhhcyBpc3N1ZXMNCj4gPiB3aXRoIERNQUJVRiBhbmQgQ0MgLSBvbmx5IGNvLW9wZXJhdGluZyBk
ZXZpY2VzIGNhbiBpbnRlcmFjdCB3aXRoIHRoZQ0KPiA+IFZNIHNpZGUgImVuY3J5cHRlZCIgbWVt
b3J5IGFuZCB0aGVyZSBuZWVkcyB0byBiZSBhIG5lZ290aWF0aW9uIGFzIHBhcnQNCj4gPiBvZiBh
bGwgYnVmZmVyIHNldHVwIHdoYXQgdGhlIG11dHVhbCBjYXBhYmlsaXR5IGlzLiA6XCBzd2lvdGxi
IGhpZGVzDQo+ID4gc29tZSBvZiB0aGlzIHNvbWUgdGltZXMsIGJ1dCBjb25maWRlbnRpYWwgUDJQ
IGlzIGN1cnJlbnRseSB1bnNvbHZlZC4NCj4gDQo+IFllcyBhbmQgaXQgaXMgZG9jdW1lbnRlZCBi
eSBub3cgaG93IHRoYXQgaXMgc3VwcG9zZWQgdG8gaGFwcGVuIHdpdGgNCj4gRE1BLWJ1Zi4NCg0K
SSBkb3VidCB0aGF0LiBJdCBpcyBjb21wbGV4IGFuZCBub3QgZnVsbHkgc29sdmVkIGluIHRoZSBj
b3JlIGNvZGUNCnRvZGF5LiBNYW55IHNjZW5hcmlvcyBkbyBub3Qgd29yayBjb3JyZWN0bHksIGRl
dmljZXMgZG9uJ3QgZXZlbiBleGlzdA0KeWV0IHRoYXQgY2FuIGV4ZXJjaXNlIHRoZSBoYXJkIHBh
dGhzLiBUaGlzIGlzIGEgZnV0dXJlIHByb2JsZW0gOigNCg0KSmFzb24NCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
