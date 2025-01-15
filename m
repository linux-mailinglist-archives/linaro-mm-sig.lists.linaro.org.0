Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA62A124F1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jan 2025 14:39:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EDEB344126
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jan 2025 13:39:00 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2072.outbound.protection.outlook.com [40.107.94.72])
	by lists.linaro.org (Postfix) with ESMTPS id D2D3C44126
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Jan 2025 13:38:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=cJAOMk5S;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.107.94.72 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DBW2XP0bJ9biOgR9vZESYNz88jt4SepEnMDhl+81ftU21PVi3bQdf8j+ZgwUOWH9a/1ZMENmrLCZFcD97vpdQjYhjtY6ndTXhFznxTFb1mb4pZ2iKC4vHvAsI3lTm0qrCmFotCOx66h6iVtg92sTlwjYNNBQ/2XchDFw2AS9MkDo0QkrTWBPeRjRYWEUxx8uw7Imef6ed+tVXkYOtx+C3JlGyqg7R2xlrgLGHiWPtHVeRJsRNdYP6I0k9n17f8d3EjrYq6XxDNSdRCLzZrmNX4BAPH+PLqhT3IpL5iq+2YBEdIDLS5+0oRwb2G59kFcTMic89jDIw2SwjG+2l8tVhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eVzuSyPrqfJrciMuKYxNaF2uYia56pZS5nkkQ1HSwkU=;
 b=lbN3UBucXX0FptfTFCIsV1Y9HgIQANNmwbHrds6GbBR71EaVPTRU4bATRka6DBEJY0Eo5k0lgov/p2EQOHqdGzRlv2/3y5FwYZlyhFfXDBHQ5e2fcly6AF4Y+j85ernvh6XTklHzAbGyxtWnWFcsfqCwMXLUVV6iLYZdzOLudWk4U2hxRvXjopNgcZcuzaU0NJrLdzEaFPuunmVvlSdWZyI6JJGmnj5E8szX6QwYAK8hsk4OP739Bnkyl9d9/pffSAtGKns0WK/5q3Id9oP8ZaT2nPuNyOeWr3TpZidd/qBlUvuvgypER3jnCbYv3lUAJWXs9G9FqB8312CEbe0lbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eVzuSyPrqfJrciMuKYxNaF2uYia56pZS5nkkQ1HSwkU=;
 b=cJAOMk5STRctuPHRBb9JURhcUfWH9llDMVrh0jvGebEZAmA/zTnboi1oKpfGzt07Sag8UMg2e8yHlG14WIkyVlwALdeULAf6k8JyLSof94O17AxSmeqyKFxJ2VrrYNNmni0CTumJqiA+QydDmY1zcCXFswqKgKvEZdqAlPMP4utTg08/Jyw/1Mr58Lvgsubnj5AM2Ii1hqbAqcSuCx9Cnn9Za6s+LnCDdKO5ReTG+G3mUO46P6f9HUE2pb61cUy3o+4+Mlep8GswO8gEAWwunlRWi2LgqONGgirGfwao6XG2ZEFVs1g+zpmNxWuPWGojBP8s/Ile8G9ih+SxDBaFlw==
Received: from CH3PR12MB8659.namprd12.prod.outlook.com (2603:10b6:610:17c::13)
 by DS7PR12MB5814.namprd12.prod.outlook.com (2603:10b6:8:76::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8356.13; Wed, 15 Jan 2025 13:38:22 +0000
Received: from CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732]) by CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732%5]) with mapi id 15.20.8335.017; Wed, 15 Jan 2025
 13:38:22 +0000
Date: Wed, 15 Jan 2025 09:38:21 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20250115133821.GO5556@nvidia.com>
References: <f3748173-2bbc-43fa-b62e-72e778999764@amd.com>
 <20250108145843.GR5556@nvidia.com>
 <5a858e00-6fea-4a7a-93be-f23b66e00835@amd.com>
 <20250108162227.GT5556@nvidia.com>
 <Z37HpvHAfB0g9OQ-@phenom.ffwll.local>
 <Z37QaIDUgiygLh74@yilunxu-OptiPlex-7050>
 <58e97916-e6fd-41ef-84b4-bbf53ed0e8e4@amd.com>
 <c823f70c-9b70-441c-b046-71058c315857@amd.com>
 <20250110205454.GM5556@nvidia.com>
 <d213eee7-0501-4a63-9dfe-b431408c4c37@amd.com>
Content-Disposition: inline
In-Reply-To: <d213eee7-0501-4a63-9dfe-b431408c4c37@amd.com>
X-ClientProxiedBy: BLAPR03CA0178.namprd03.prod.outlook.com
 (2603:10b6:208:32f::32) To CH3PR12MB8659.namprd12.prod.outlook.com
 (2603:10b6:610:17c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB8659:EE_|DS7PR12MB5814:EE_
X-MS-Office365-Filtering-Correlation-Id: 9365a7e9-571a-464d-ee67-08dd3569e130
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?MG5PNXdmNmRjR1RVVWI1K0ZXbWpFVFowTmJWd0NTT1F4U3doZWkrSHVLYk9h?=
 =?utf-8?B?eG5TZTl3NWY1bnRrNE14Q1hQaXJpc2FWYjRrNWlSbnljL1VMbGtmU3lIZVFQ?=
 =?utf-8?B?Y0dDb2I0VzV0R0NON3FoQ0VhY0NxL1BHWUlWVWJaUk9lQWpWaUcwb0pZdlRS?=
 =?utf-8?B?ZXduOWozSUVIU1AvVnhFaVRTUkxaU0F3bTRnTzZtRUZIeVdoTmlSdnQ5WTVZ?=
 =?utf-8?B?TVpybnV0UCtlWTB6K2JvS2RpcTFRc0ZGa2g5OXB2eGJqWkRUZGVlMjdxNWJF?=
 =?utf-8?B?eU9ncUV5VnM2QVRjbkFHL29kNElDeE9jenVNbXNUM3ZSSHl6VUtiK0NWY0F1?=
 =?utf-8?B?ZWlkYWl2VGFUT3V0UEhzN1BmcEtxTi9wQk1VanprQ1RNSkZ4YUo1cTRKWSs4?=
 =?utf-8?B?Sk9jWVo5NGh4WFJTdUdFQ3VZajhaZzRxcmJFZ1pERzMxRHY4WjJ5R3dma1Rn?=
 =?utf-8?B?aHdDL3BzNE5lWCtPMmYxMFUxaWZzVkRDVEJZQnJsNHlvYUJPakxnSUZJcVhG?=
 =?utf-8?B?S2hrWmVJaUh2S3Z4N3paT0VEZFg2ekRPT05qVnlEQWFUcjVnMFBsQ2NZNWN4?=
 =?utf-8?B?cjJUcGNKOUE2THlXeWhOdFdJK0RBeENUeE5FbnJJODhlMUxTOGVKUjdFeHdI?=
 =?utf-8?B?MVlqNTBkcDQzb0pKRGdvcDF4eEdXb0RjeHhEbzlTWlhQNVJPU1BVaUx5NEdY?=
 =?utf-8?B?bjZJaVJGQ3c3Qy8xNVNHNXdneEdVM2VQcXdSUDROSUc1eGtNVmc5cHN0NUlt?=
 =?utf-8?B?eGVtVWZQeS9RVXlJRURRSzM2MTkvbnNXdm5YS3NESzIrZ2NUS29HaXljVHpy?=
 =?utf-8?B?MXphdTZicFg1bHFPdks2c3NKa1Y0MHE2UjhTczRVRmVRbTg1UnpQVmVzMWVm?=
 =?utf-8?B?MjI5NnhML29FSThUdVlReklrTHNXVWp0cEZ2VGxvS21KdGpZR3ZnUGp0MlJE?=
 =?utf-8?B?UWtjNEZqaTFySUNXOTRDNWtNdzZGRjkrblArZWIzK0E4amNKN3Jtajc5T25a?=
 =?utf-8?B?bU92V1NwOXdiRjlITDg3Rm5FOXlLVWk2RzV2a1NRT0k2QzRaZ1h1SVVZU0s4?=
 =?utf-8?B?anlYRk51Qm1Yd2FhOUZhUURXSy9yZ3R5ZmJtUGtxS3NFOWV5MWJ5WTRIeHlC?=
 =?utf-8?B?UjF6RWtGNlRzb2d5Qk41YnkvTGJtYWI1amZPN25iU3NjaVg5NVpoTFRkWUFw?=
 =?utf-8?B?WWRTcjlleGlXVk50TGc3WXVTcHB5SGNmR2tSelh3aFMxOENmVDJOcDU4a2tL?=
 =?utf-8?B?Q3UvQlM3a0RIdkNHL2xpN2hPdlA5L3RMSStnaUhOQ2xCZEFpa0hSbHYrU1lQ?=
 =?utf-8?B?aWVxeTdQQUZFME81emFoRFpaSzA5Z0hnRm1CbmVneEgzWis3cmJMM2lZR2kz?=
 =?utf-8?B?L2sra2tpbFVPbkROWGtNOEhZdjRqZHdHQTJ3V3EycjhuNXQ5RVlrWGUrSFRs?=
 =?utf-8?B?ckJPKy9RelpkUWhpQkI3ZFB2dDlCUllRNjNjcVcxWVBFUERhaFY0TnVuQUhv?=
 =?utf-8?B?SldaeGdVVlo2M1dQVGt4K1pwRTBtN0xQSmUyem0zQ3dZMmFHU2pMRzNWNStY?=
 =?utf-8?B?YUxCNUV0WU5yOFR4Vml6emxtcVhQaCtpK2tReTFSWGRDRnZseitkbFcrRWlz?=
 =?utf-8?B?OTlxbzFOdFc5RTcySkRPSDBMdGVldmhtcDZHMTJoVW1ZejlHaldMVEN6ZEhs?=
 =?utf-8?B?STV1U1dKTXVpeTF3ZFUyRHBaRVZwOGUxeTcyc3QrQjNmcGFCVloya1pOYzlM?=
 =?utf-8?B?cE5IOTkyWVVabWhoWG9qRkNVbUVaRUJYWndRU2xHZ2tzY3Rpd08zOEIxNTRQ?=
 =?utf-8?B?Wnc5N3MrQ2h3cVRwalRtempXMC85ekhBNS8yaStnTWN3bFlMSjBiL2x3bFEz?=
 =?utf-8?Q?UQS+QYGYvNj8l?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR12MB8659.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?V3FhNllaTTBNMkE2bmVPaXp2WUZoQjVjZisxdlhNZ1V5NWR0VTV1TDg3aitQ?=
 =?utf-8?B?QVNJNVdTNk51clh6SS9HVUJMUzVpYkxLZ3lwNnVmWFNyTjFBY29SUklhM2hB?=
 =?utf-8?B?cG9GQVhpMkZ1UWllRjlobGwxQTRnK084VmtCTVdVdWFuNnJ3MzhCTEFDbFhQ?=
 =?utf-8?B?NkVUcDBRZ2Q3N00vQkR2WlIzOGYvZ2QrY1pySDEvZ2JTa1MrUGZWZVF5M2NP?=
 =?utf-8?B?UVJ2akdGY2lJbzd2MDBsK2Exdm1ZZ3ZuQnVRZnk4dldiOFJtaHNQVDB1RHVH?=
 =?utf-8?B?bHBvblo3T2lsYVNvaHJBc3V2eXI0R2hBTFBOaUJ5eXIxdytxUGhWazllZCs1?=
 =?utf-8?B?OFNNejh0ZWlMb1RSbGhVZTZmcTBieTkvT2ZaK0hOUTBrOGpyakMvcVdFVzVC?=
 =?utf-8?B?MzJ0OTByYXJVSnBlSGNhMmM3bHVHM0VYVE1kZUdWYzM3STB3ekpLVE5FSlFO?=
 =?utf-8?B?Q2JpVlRmcE8vb0dnS1YvdzZqa1JJWUNKazl2UjQ4OWdXSE53a0dibXFVVVNl?=
 =?utf-8?B?QVJBQWFUaGY3TE9iNlV2ZHhDWEFSRWxYNU5SR3o1dTBvQ0wyRFdRWUxWWGlQ?=
 =?utf-8?B?UjlIMXFxL3BLWnl0TmVaRjRJUGszMVFkRmVJNXpiMUlmQ3ZTZ0FqQ0Q1QVRw?=
 =?utf-8?B?M3ZpeGRlNGdmRGMrbThKNXRBdXhxT2x0TGVDUStTR2FjMHpzYS9NOXA2d0FM?=
 =?utf-8?B?U2tLTG9Kdzc3TVRJM1NYQ3FlSWFRSWtoN1hMZ29iRkNrckVUcDFySmxJVG4w?=
 =?utf-8?B?UmJVc3czamhGZ0VXQXNOdkk1ZnhCbU1DU3NaOFFveFhOYzF6UmNUYy9FdSth?=
 =?utf-8?B?UHlqSVhHVHdRaStHaDBtSVIvcnBjQ2FsYnA3V3VWdGNpekgvSlFqT1lRd0RJ?=
 =?utf-8?B?M0xQMVhNc1VaWXpvNTFEdHM1aE9sQ1JmMkxkVjhMcG5aYVk1eGdnL0RTdktn?=
 =?utf-8?B?TFc5R1ZSYVBteVhGVWliQmR1Z2lLZDZybGJtbWkwQ3pKcUU1bGtLV3I1cCt6?=
 =?utf-8?B?cTZESlVwYUZQWXVYZUNoWnZObFlRUkM5ZjhoMU9HRXFuOE13a3lnZkR5d0da?=
 =?utf-8?B?cmdnK0liRTdhSk1aY1k3REM2NVNoQjkwWVdkK3pSYnlNbzRacFhpNXFHOThN?=
 =?utf-8?B?ZDQvaXFtQlNtTGk1SVlJV0dnTHhpOHNmVnJlcEdFZlNuV1liQWFSek1IRzdL?=
 =?utf-8?B?M00vdlhFUWtkTi9ZTlJQdVdWbm9iUmtMVHhTQVVCYk1sRTRtTWFYbVlEMUJj?=
 =?utf-8?B?VDdFM0p1bXQyUnNkS0NKNzFJQkhaNmtmU3V2U2ZXdmFwTGN0WFlWRGNGN3lT?=
 =?utf-8?B?NWQxa1NiVktCcGsvcWFxZ2l3L2ZLTXZlWUZ5cmFnS0R6WXJ6RVRxVG41dVRn?=
 =?utf-8?B?VThqdUh3MFNuOENIa29wcUxNa2pPMGV6eWEzYWdKYjlndFpVbEh6K3huNko4?=
 =?utf-8?B?d3YyUlpaZ2liQW1MN3ZNT1ppc1NkcVNBY2J0NlFkOWtQZCs1WmR5VDVoWjZ0?=
 =?utf-8?B?UEJNZU80S1ZkeGtvMnBtaXM1NlBORy9TMy9iRGdNN2lROGczK0ZHSTVubkll?=
 =?utf-8?B?N0dBQmg2ZEEwang0aitoaE5FR0syMXNNSi9aZ1pkeGRUb2NlOTJ0aHBUcWlv?=
 =?utf-8?B?dkFDLzIrRjlJNHVxM3RQNzR4WURVWUc0Nml2OC9EL3NwN0kzbzZ5QWJFYWlx?=
 =?utf-8?B?ZC9VL2N0bDc2UTFaTERGMDdGTWNIaURsMWpQSy9UWHZCM3VqN1J1NThOc2F1?=
 =?utf-8?B?UXQ2eTJ3U2JMYmtTM3Fhdk9jYzdmSThKUGkrWDNIemd2TU9iUU56ZEZweFg2?=
 =?utf-8?B?UThTOTlFRWcxTzBKQzRIZ1B1VC9ZRG9IdEtodkx1NSs5UTErZGtsN05MSGp0?=
 =?utf-8?B?VWFBeVhrVjd4VU42eW9xMkZRcXRDeVEvY1lkWnRFVlFvQ1JqdUdaL2pJVXVn?=
 =?utf-8?B?N1h0Y201Ulg3Q2FueEJYck4wdVF6bTVWRVJETEJSVlMxaW1WZHl1K0M4SjQv?=
 =?utf-8?B?NUU4MHphUkdzMTN3MFMyVWhMOE9sNk9qUm1RaGFWZTdGdWhxU2VMdVNlbEFR?=
 =?utf-8?B?a0p6QU93bG9aN2xta3pOSDhRQWRWNEloLzF4TXozRWkrZzk3Z1NXcEJZekxU?=
 =?utf-8?Q?FH96n+PxIXWJVgw4xMzOnMxla?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9365a7e9-571a-464d-ee67-08dd3569e130
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB8659.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2025 13:38:22.4240
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sBUKK1fxrRMVCxlyf102e2NN/70WtIXWz1TULKxK6A7UNW2cpunCf54Qo0htmISf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB5814
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D2D3C44126
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.98%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.94.72:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.94.72:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[24];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[Nvidia.com:+]
Message-ID-Hash: XCDUDLUL4BL5XSYLA4B4SSF5NRBTS7BO
X-Message-ID-Hash: XCDUDLUL4BL5XSYLA4B4SSF5NRBTS7BO
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Xu Yilun <yilun.xu@linux.intel.com>, Christoph Hellwig <hch@lst.de>, Leon Romanovsky <leonro@nvidia.com>, kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, aik@amd.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XCDUDLUL4BL5XSYLA4B4SSF5NRBTS7BO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBKYW4gMTUsIDIwMjUgYXQgMTA6Mzg6MDBBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gQW0gMTAuMDEuMjUgdW0gMjE6NTQgc2NocmllYiBKYXNvbiBHdW50aG9ycGU6
DQo+ID4gW1NOSVBdDQo+ID4gPiA+IEkgZG9uJ3QgZnVsbHkgdW5kZXJzdGFuZCB5b3VyIHVzZSBj
YXNlLCBidXQgSSB0aGluayBpdCdzIHF1aXRlIGxpa2VseQ0KPiA+ID4gPiB0aGF0IHdlIGFscmVh
ZHkgaGF2ZSB0aGF0IHdvcmtpbmcuDQo+ID4gSW4gSW50ZWwgQ0Mgc3lzdGVtcyB5b3UgY2Fubm90
IG1tYXAgc2VjdXJlIG1lbW9yeSBvciB0aGUgc3lzdGVtIHdpbGwNCj4gPiB0YWtlIGEgbWFjaGlu
ZSBjaGVjay4NCj4gPiANCj4gPiBZb3UgaGF2ZSB0byBjb252ZXkgc2VjdXJlIG1lbW9yeSBpbnNp
ZGUgYSBGRCBlbnRpcmVseSB3aXRoaW4gdGhlDQo+ID4ga2VybmVsIHNvIHRoYXQgb25seSBhbiBp
bXBvcnRlciB0aGF0IHVuZGVyc3RhbmRzIGhvdyB0byBoYW5kbGUgc2VjdXJlDQo+ID4gbWVtb3J5
IChzdWNoIGFzIEtWTSkgaXMgdXNpbmcgaXQgdG8gYXZvaWQgbWFjaGluZSBjaGVja2luZy4NCj4g
PiANCj4gPiBUaGUgcGF0Y2ggc2VyaWVzIGhlcmUgc2hvdWxkIGJlIHRob3VnaHQgb2YgYXMgdGhl
IGZpcnN0IHBhcnQgb2YgdGhpcywNCj4gPiBhbGxvd2luZyBQRk5zIHRvIGZsb3cgd2l0aG91dCBW
TUFzLiBJTUhPIHRoZSBzZWNvbmQgcGFydCBvZiBwcmV2ZW50aW5nDQo+ID4gbWFjaGluZSBjaGVj
a3MgaXMgbm90IGNvbXBsZXRlLg0KPiA+IA0KPiA+IEluIHRoZSBhcHByb2FjaCBJIGhhdmUgYmVl
biB0YWxraW5nIGFib3V0IHRoZSBzZWN1cmUgbWVtb3J5IHdvdWxkIGJlDQo+ID4gcmVwcmVzZW50
ZWQgYnkgYSBwMnBfcHJvdmlkZXIgc3RydWN0dXJlIHRoYXQgaXMgaW5jb21wYXRpYmxlIHdpdGgN
Cj4gPiBldmVyeXRoaW5nIGVsc2UuIEZvciBpbnN0YW5jZSBpbXBvcnRlcnMgdGhhdCBjYW4gb25s
eSBkbyBETUEgd291bGQNCj4gPiBzaW1wbHkgY2xlYW5seSBmYWlsIHdoZW4gcHJlc2VudGVkIHdp
dGggdGhpcyBtZW1vcnkuDQo+IA0KPiBUaGF0J3MgYSByYXRoZXIgaW50ZXJlc3RpbmcgdXNlIGNh
c2UsIGJ1dCBub3Qgc29tZXRoaW5nIEkgY29uc2lkZXIgZml0dGluZw0KPiBmb3IgdGhlIERNQS1i
dWYgaW50ZXJmYWNlLg0KDQpUbyByZWNhc3QgdGhlIHByb2JsZW0gc3RhdGVtZW50LCBpdCBpcyBi
YXNpY2FsbHkgdGhlIHNhbWUgYXMgeW91cg0KZGV2aWNlIHByaXZhdGUgaW50ZXJjb25uZWN0cy4g
VGhlcmUgYXJlIGNlcnRhaW4gZGV2aWNlcyB0aGF0DQp1bmRlcnN0YW5kIGhvdyB0byB1c2UgdGhp
cyBtZW1vcnksIGFuZCBpZiB0aGV5IHdvcmsgdG9nZXRoZXIgdGhleSBjYW4NCmFjY2VzcyBpdC4N
CiANCj4gU2VlIERNQS1idWYgaW4gbWVhbnQgdG8gYmUgdXNlZCBiZXR3ZWVuIGRyaXZlcnMgdG8g
YWxsb3cgRE1BIGFjY2VzcyBvbg0KPiBzaGFyZWQgYnVmZmVycy4NCg0KVGhleSBhcmUgc2hhcmVk
LCBqdXN0IG5vdCB3aXRoIGV2ZXJ5b25lIDopDQogDQo+IFdoYXQgeW91IHRyeSB0byBkbyBoZXJl
IGluc3RlYWQgaXMgdG8gZ2l2ZSBtZW1vcnkgaW4gdGhlIGZvcm0gb2YgYSBmaWxlDQo+IGRlc2Ny
aXB0b3IgdG8gYSBjbGllbnQgVk0gdG8gZG8gdGhpbmdzIGxpa2UgQ1BVIG1hcHBpbmcgYW5kIGdp
dmluZyBpdCB0bw0KPiBkcml2ZXJzIHRvIGRvIERNQSBldGMuLi4NCg0KSG93IGlzIHRoaXMgcGFy
YWdyYXBoIGRpZmZlcmVudCBmcm9tIHRoZSBmaXJzdD8gSXQgaXMgYSBzaGFyZWQgYnVmZmVyDQp0
aGF0IHdlIHdhbnQgcmVhbCBETUEgYW5kIENQVSAiRE1BIiBhY2Nlc3MgdG8uIEl0IGlzICJwcml2
YXRlIiBzbw0KdGhpbmdzIHRoYXQgZG9uJ3QgdW5kZXJzdGFuZCB0aGUgaW50ZXJjb25uZWN0IHJ1
bGVzIGNhbm5vdCBhY2Nlc3MgaXQuDQoNCj4gVGhhdCBzb3VuZHMgbW9yZSBzb21ldGhpbmcgZm9y
IHRoZSBURUUgZHJpdmVyIGluc3RlYWQgb2YgYW55dGhpbmcgRE1BLWJ1Zg0KPiBzaG91bGQgYmUg
ZGVhbGluZyB3aXRoLg0KDQpIYXMgbm90aGluZyB0byBkbyB3aXRoIFRFRS4NCg0KSmFzb24NCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
