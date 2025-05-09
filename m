Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F6EAB0A39
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 May 2025 08:04:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 20DD54553D
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 May 2025 06:04:18 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2055.outbound.protection.outlook.com [40.107.220.55])
	by lists.linaro.org (Postfix) with ESMTPS id 668CC41111
	for <linaro-mm-sig@lists.linaro.org>; Fri,  9 May 2025 06:04:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=AuFRwDTw;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.220.55 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pP3ZTXC5LmYY1E2KBBqyikKLQjdypR9v1yGAXR22qMzei3GwPvsfiG18rgbF0BJK9vmW3HIBTw/sGIhE3yhtIUieAKK+RUEc42sDCGHXebazWs70rMLDVuMp0z42IlS6VwA/H/x38J6pW0uctVecwtqFY9w2nU5yGbxrZYXsKHdfcyDx0V0VpcnHjRfJBAMLKQMp4P8GS4u8w/EnKXBiBgpsRzcd7TXBOp4aeQRDZh5dEbrqF4/774phm8T5rAMoJYYB+QsOrJsAE6yIQRNIxabLPp6TPEXuMT0Sm44yxGYFwyZsAXzwiWvPkiMX9z5pFytEwK1XzXtQUbZcIB0cMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8RZ47Yr9NC41pKhebl0AJmXhcDFDzOdz3r5E8DUf9Fk=;
 b=fZzpvJ4XjP3HGB6ewtueW0aWLguoIxMnkI4r8bFqy8HxooFgBdlJKXURMv54lKe+Ho2PnS1/Sc/Y5QmEFHABagkOGYF4Cr8ilySSwn4NOeHw9AxTnQnS+mWL/sz5S8cIufre80Jm1+lb8Og4WIgmC+wJcMuZUgZEiYUVRW0w4T/m0elviMhfCOmNwqOvi3ZrAmBT6KiFXIVH/1hveDsMhRKnDSkRzCuLW4IrOEhQUyLkpcVS3Bx0fBrDncspkK+axwq1NH+EEQxmPZ8YO7xfq0kW97pPsSJZ5IX5I6h1Le+b0Vm9LCkEir3LIsjFG4SRMIj0sPA+nkMyyjpEu0EgFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8RZ47Yr9NC41pKhebl0AJmXhcDFDzOdz3r5E8DUf9Fk=;
 b=AuFRwDTwRfMEGO9wY0iGgf31tpHXH8p6uWmobA4ZA3HBrJE45ioChA2CWUYUZcv082SwmaSQfUZiyMYx27tLRNZwJT0wLTHhI2wUsGEHyUCBGzHNSvXPybs/nEmCkR62y+IMzlEoGXRlFhIQSg6OOz12EXoSh/oi/IrVtoZE3W8=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS4PR12MB9609.namprd12.prod.outlook.com (2603:10b6:8:278::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.23; Fri, 9 May
 2025 06:03:59 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8678.028; Fri, 9 May 2025
 06:03:59 +0000
Message-ID: <b1e53d0b-04ba-4ad7-abdf-2406283a9cfb@amd.com>
Date: Fri, 9 May 2025 08:03:50 +0200
User-Agent: Mozilla Thunderbird
To: "T.J. Mercier" <tjmercier@google.com>, sumit.semwal@linaro.org,
 ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org,
 martin.lau@linux.dev, skhan@linuxfoundation.org, alexei.starovoitov@gmail.com
References: <20250508182025.2961555-1-tjmercier@google.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250508182025.2961555-1-tjmercier@google.com>
X-ClientProxiedBy: MN2PR19CA0007.namprd19.prod.outlook.com
 (2603:10b6:208:178::20) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS4PR12MB9609:EE_
X-MS-Office365-Filtering-Correlation-Id: b5f153d6-e9a7-4866-d8ac-08dd8ebf49f0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bkJ2ajRkS2NMU3dtNkdqbzVVL2NDTm9uNWxmSFhKd0ZjM0FFdFJ1ZEU0Y0JD?=
 =?utf-8?B?NHVzcXpldzVFU04wd3oxT3ljeSsrYTIyQW5zVG9JM3RjN3oxVW5xTkJFVFJq?=
 =?utf-8?B?MkhzN0tTaEY4SVBPdko4NnVVWG12QU9tTXNaYkE2eG9JZU1XbXJSaHQzdWho?=
 =?utf-8?B?U2dKSzNKWDZHc0hrUFBzQUJNREdWQUxPRjJzWjRJeG1jZnEya0VzUDdzc2pS?=
 =?utf-8?B?a2NER2RyRmJuQ2dleVd1aUdkb1FsRW5qZlBzcnJVWitnWW5DTFBRM1YxTTNF?=
 =?utf-8?B?ZE8rT0dWRVFQZGdwVWh0MzFwSDRmdHltbVJKVzExNVdXY1B0YWJhSkZMMHh2?=
 =?utf-8?B?TGZIMTZDNGRCMHBiWk93UzdNZW9zYVE4L1N6bVU1R013cHpaTm1ZZUdTejYx?=
 =?utf-8?B?V3VvWTA4SW1FTkFRc3RDZmp4cGU5L3liVGRCMUVyR1grcG9IeGZVTXJCc3Zt?=
 =?utf-8?B?Z0tzZ0N0L0EyejZ1SFVtNE5RdWR0cFFNelZjaC9pcU0zaXZudytHQXB5RHl2?=
 =?utf-8?B?U05oOUtUVkxIbWo5U0p5TlphalVSMWlMb2ZxNmR5MnNiSG4wRjdsaytxcW14?=
 =?utf-8?B?QyswNUE5MkxEYmExVVhiaEhUQ1ZKWDVwNWRhcFdkSnBUMTdON3RJc1pIcmFK?=
 =?utf-8?B?cTNhZXRXOXRRYWVQdHZNYUZ1dzcxNThVbm9tODNpV1dxaVZyRnBTSWxTZlQ1?=
 =?utf-8?B?WVR3ekJsbE5tNkxGcWxxbWdlMnExOFRLYWRLQVlnejU3VHk1YVVLNGh5UGk3?=
 =?utf-8?B?RnJwSVJsazZ4T2xmSUpqWnU5Y0RKM0NLakFvQzVIUk95NU5rM2NHOFRKU1Qr?=
 =?utf-8?B?WERZRUpyRUlNOHhPc2VTMHNrTzlZWGdvYXptNm5Qc1FkSFVJSEtOTDRicnc4?=
 =?utf-8?B?b0xJcXpocVQwRTBPbGFYb0hweG5KUzQvajBNb2NDNHhJWm1WTFlaT3FXWlZi?=
 =?utf-8?B?R21OUCs3QisrS3NhQmZEWU9GRzRiU3ltREpQdSt3WitTRjdwWm91RUNQZ01J?=
 =?utf-8?B?ZUR0VEVQSkhmYUIreG5XdDhuSE1xT1NNc3RkUWkrWlo1MElzVGVWWURzWjlr?=
 =?utf-8?B?bUtyaWxhTzlGR21ISllURGdQbDdHdEdEb2haSUx1ZmRjTzFqRnl0dmt5aW11?=
 =?utf-8?B?a1RPME4xVzc4YXpDR2JOOXVDcURIb2dibkpiM2QxZjIyOVk1bExUWFlPZEFW?=
 =?utf-8?B?bldNWVNjY0RHMnJ2QkVGd3dIRUx5YlZvYitnQmttZG9CYkNzUFlBeUpyRkVV?=
 =?utf-8?B?NWZZMXZyQmFScHVhYkxWbXU3aEhzbSs4anVOTFhXWnlwbEZNVGoySTEyMGtI?=
 =?utf-8?B?cWZtSnJtZ3BOYTdRSFhOOW5PNHcrYkR4V3dEcG5Cb1hpbE41Wk5JWW1vejdi?=
 =?utf-8?B?a2xqWXQ0NFNVdi9jYU1XNVZoYmxpOEFzQlpNeHRUcjNKcWZNTUI0Q1NqZmx5?=
 =?utf-8?B?Wk4wSVczOFFheGdUUUlyVzNIY0kwZmViVG5CTDhVS01ZajIvNTNmaWkvN2Qy?=
 =?utf-8?B?WkhiTUZyVC9salJ1UUJHZmRkbmlQejJDK24wZHlqQ2d5RXpGY1N0QzB5d1V5?=
 =?utf-8?B?a0c5bDZKN1hCUkZWYXhuZzl5bEdXS3hvWUgwWFlnWkFlRy9Ca3IySEtMZmt1?=
 =?utf-8?B?SUR3alRKUTN1NzgvbForM2lHOW4xNjVGL3FwSVJKa0lrMG13NmluZDdLc2Nt?=
 =?utf-8?B?cVA2aTVOaUo0MWpQTFdCc1VIZW45aGZrUVVyQUY4b0QzbjRMQkk4bThGZDBn?=
 =?utf-8?B?THhhN2lrb3hyemdpb1NTQW10YnhpalpWN2lNR0taVUxyd1k0UHRuN3hFeFhh?=
 =?utf-8?B?bUZRbkJzTFFQclk3MzNVb1dVN0V5eUFxWlhmNlF4SHFGQ05wcEkwd1l5TFpx?=
 =?utf-8?B?ZElxOHpYTVZVMWpwU3lTWDdneTRZOVo3eGpXUmhONXpQSVBQdGlQbUkzNnBH?=
 =?utf-8?Q?teGYuDxobEw=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bWFETm44a2lKZ1lWNHJIWU1KRmNPaXNGSnIvZzQ5TVVHb0hkZUhGVzVkaU5B?=
 =?utf-8?B?VE0yZlN5czVUejdKTXZsdVRXMjMyMmVwMk55YzNSbEtteUV3eEFOc29BOWpt?=
 =?utf-8?B?NUtYU2d0SWFUcnV5eDlsQXZlZHQ1T3dDVmMxUG45cW1RUWFkL1BLWW8wRDJs?=
 =?utf-8?B?SS8yZklacnlJclp1S3IvR3dxdDZQNHpkSUtPNVNJSXlnQ3hJNlVKVlNMU296?=
 =?utf-8?B?ZnBoT1B6a1l4MzNFLzFXQW9mdUJlTTR3K0YzK0t2WGR6anR5RlhVNENOY3pw?=
 =?utf-8?B?TjlhVkl6ckFMdGM0Q2dVa1J4SFBhaWNZdEJrc0lISUVrQ0d1QVBkaC84NGlp?=
 =?utf-8?B?NTZ0NFptMjI4dTIwZnlKZ2JhNy9qMjJYL2RseGNXOHV1WW9aSmIvcmYrdFNR?=
 =?utf-8?B?dGx0UVFkdVNuYU1zWHp0REdmM3hHK0NmbXRFeThWTXJLTnoyTEtiMWQxZUM0?=
 =?utf-8?B?amlaZFdWdTdWN0d4SHVqdEV3K29wa2thVkRYQTNxbmN1OUduN0hYRXlCbnk4?=
 =?utf-8?B?dzJOSkNFNHhaa094TnNHazZiOXNjWXpLWDIvcXJyNGVNYXVCMG5Qb2YxaWw5?=
 =?utf-8?B?RHhrbFJlVDlxK3RQdzhLS2tjQUx1NjRKdXlnTjNzSUN3TDRnMllJS0M0OEhY?=
 =?utf-8?B?MGdjNlFhekY0MFN3aTd4YzhHL0F1SURmM1FiL2lkNmc4ZzNGYmwzVUpSR1Y3?=
 =?utf-8?B?bU5sU0pjTENPd045dEl2b2xtZjdYZG9ZSU5uYmgvTzJlUzJiVC8zS2FTa0FD?=
 =?utf-8?B?SnJodzdUNEt3THVsNW80V2w4L3FWVkV4QkxBWk1hMW85T3huQ05kOEJrUlQ0?=
 =?utf-8?B?aE1MK3J6b2VBSTJvc1JDOFBsV1NOTnBZcEpZaGtMbmxDRXh2RWtmdlhJS3hM?=
 =?utf-8?B?QWYvdWlVWnB1VkIwZm9RaUMvTERYZ0RIRHpJWlNhVjF4VVdob2U2ZmdhWVU5?=
 =?utf-8?B?RWdmM0VBUEEvZVNMNUtaN2s0NWdWU003NVNlTXdSQWUvWUI2YUEyb2RsYWxo?=
 =?utf-8?B?WGpmSG1aRkNqeTVGQWlGbE1aSVU2VFhFN2hvcjdoRGlCSHEzU1BHUG1wVWo4?=
 =?utf-8?B?dE9MM1V0dUVwU3I3VmlvNnlIbTl4TlR0TTh2eWxIaUtNNkJnMXY1bWhLV0hR?=
 =?utf-8?B?aTlQUlo1REl2UWNLdXRaU2xrOGwyeGl2cEFnZXZwMW9qamhWTmRvYU9FS3V6?=
 =?utf-8?B?N25LbkdCOU5qdXJhUHJIU29mcFBNbEk1bzgvOTMzVmppYWpYMlRLWDA1K2pj?=
 =?utf-8?B?eFhmMEkwdlZZNE5sQ1hEK0lNR3BWc1B4cUZCd3JmQ0JkK3RjcDR5T0NwcG5Y?=
 =?utf-8?B?K2FIRE96Wlo1Q0QwbVZMTjdwM0NmSXNuTGpjVXg0a3poR3U0TXFEeWExdVoy?=
 =?utf-8?B?S3Vrc1ViZ0U3UmhXeXFlcFZwL1NYZnRET2N3T2dxQXVlQVpuajJnaUdHejZT?=
 =?utf-8?B?YUFlYnBhMkRwRnVGSDlUOFozOHM2UWlnNEt6Q0RWd1pxMVMycitsdmREZ1VF?=
 =?utf-8?B?b1hGY25xeUpkeWJWMjBUL1E5MnpBdW83MHlUSlNnQXRXWnlxS0tjSWlhNmpu?=
 =?utf-8?B?WVJ1UkY2ZldveWRiMXFSZGVvVGppaXR2YWV5SW9UcnQ4ZHJBU3hMRGdqeFZr?=
 =?utf-8?B?elJYeWV0a2tBOEhGL2Y2MWNvcHk3QzlPemE5WnY3QnQ5dDQ0UEl5NnJWV05t?=
 =?utf-8?B?SVJoZlF5Qjl2Z1lQUjVIUU1Eb2J6ay9ETFZxS1NRM3JWWml0MlFocHUxMGhL?=
 =?utf-8?B?ZGVxTmkvSWphSmlMY21aRnF1WGN3bzJrWHdId3JkV0Nac3poK0tzOER6ZGE2?=
 =?utf-8?B?NHVTZ2JXbEE0RlY2cjZhdHhjWjNmN0tRTFREd3JiZDR0WHkydWhDdFJCckdY?=
 =?utf-8?B?NlNhNkRETnVmZVNjbW9yb0Nrb2VTQ2VTclZnYjJNZkhiQ2MwbTZyQkdlQy9O?=
 =?utf-8?B?VTlOeDg5bnN6SzI5TDFLdWJpTERzZGt1ZWd5OWI2SHZHSUJpeWViSG1CMitL?=
 =?utf-8?B?YUQ5ZWlVbEZxalA1MzJUSjhQY2ZBb2ptTEswMnRFYlJjSGQ0bURyNkFnUDlZ?=
 =?utf-8?B?T1l4bllXa2VmOGtNaUprbzd2eGNNbGVrSHJObVFjeEJsSjlaQjdXU2gxdlhK?=
 =?utf-8?Q?TPfNgpajNxOxZXZJL4mH9ERBN?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5f153d6-e9a7-4866-d8ac-08dd8ebf49f0
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2025 06:03:58.8805
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u56zoTLa7CFQmNjjpRKRFhL8mRqeoydPR7haQ6i7pjBFRM2Zoxzobi/z/NeUBdkb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PR12MB9609
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 668CC41111
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.220.55:from];
	FREEMAIL_TO(0.00)[google.com,linaro.org,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,gmail.com,linux.dev,kernel.org,fomichev.me,fb.com];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: U73WIWJA3U7W4LPU4WI73KG5OHMHBNRN
X-Message-ID-Hash: U73WIWJA3U7W4LPU4WI73KG5OHMHBNRN
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, shuah@kernel.org, song@kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH bpf-next v4 0/5] Replace CONFIG_DMABUF_SYSFS_STATS with BPF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U73WIWJA3U7W4LPU4WI73KG5OHMHBNRN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RmVlbCBmcmVlIHRvIGFkZCBteSBBY2tlZC1ieSB0byB0aGUgcGF0Y2hlcyB3aGljaCBkb24ndCBo
YXZlIG15IHJiIHlldC4NCg0KQW5kIHBpbmcgbWUgd2hlbiBJIHNob3VsZCB1cHN0cmVhbSB0aGlz
IHRocm91Z2ggZHJtLW1pc2MtbmV4dCwgYnV0IGlmIHlvdSB3YW50IHRvIHVwc3RyZWFtIHRoaXMg
dGhyb3VnaCBzb21lIG90aGVyIGJyYW5jaCB0aGVuIHRoYXQgaXMgZmluZSB3aXRoIG1lIGFzIHdl
bGwuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCk9uIDUvOC8yNSAyMDoyMCwgVC5KLiBNZXJj
aWVyIHdyb3RlOg0KPiBVbnRpbCBDT05GSUdfRE1BQlVGX1NZU0ZTX1NUQVRTIHdhcyBhZGRlZCBb
MV0gaXQgd2FzIG9ubHkgcG9zc2libGUgdG8NCj4gcGVyZm9ybSBwZXItYnVmZmVyIGFjY291bnRp
bmcgd2l0aCBkZWJ1Z2ZzIHdoaWNoIGlzIG5vdCBzdWl0YWJsZSBmb3INCj4gcHJvZHVjdGlvbiBl
bnZpcm9ubWVudHMuIEV2ZW50dWFsbHkgd2UgZGlzY292ZXJlZCB0aGUgb3ZlcmhlYWQgd2l0aA0K
PiBwZXItYnVmZmVyIHN5c2ZzIGZpbGUgY3JlYXRpb24vcmVtb3ZhbCB3YXMgc2lnbmlmaWNhbnRs
eSBpbXBhY3RpbmcNCj4gYWxsb2NhdGlvbiBhbmQgZnJlZSB0aW1lcywgYW5kIGV4YWNlcmJhdGVk
IGtlcm5mcyBsb2NrIGNvbnRlbnRpb24uIFsyXQ0KPiBkbWFfYnVmX3N0YXRzX3NldHVwKCkgaXMg
cmVzcG9uc2libGUgZm9yIDM5JSBvZiBzaW5nbGUtcGFnZSBidWZmZXINCj4gY3JlYXRpb24gZHVy
YXRpb24sIG9yIDc0JSBvZiBzaW5nbGUtcGFnZSBkbWFfYnVmX2V4cG9ydCgpIGR1cmF0aW9uIHdo
ZW4NCj4gc3RyZXNzaW5nIGRtYWJ1ZiBhbGxvY2F0aW9ucyBhbmQgZnJlZXMuDQo+IA0KPiBJIHBy
b3RvdHlwZWQgYSBjaGFuZ2UgZnJvbSBwZXItYnVmZmVyIHRvIHBlci1leHBvcnRlciBzdGF0aXN0
aWNzIHdpdGggYQ0KPiBSQ1UgcHJvdGVjdGVkIGxpc3Qgb2YgZXhwb3J0ZXIgYWxsb2NhdGlvbnMg
dGhhdCBhY2NvbW1vZGF0ZXMgbW9zdCAoYnV0DQo+IG5vdCBhbGwpIG9mIG91ciB1c2UtY2FzZXMg
YW5kIGF2b2lkcyBhbG1vc3QgYWxsIG9mIHRoZSBzeXNmcyBvdmVyaGVhZC4NCj4gV2hpbGUgdGhh
dCBhZGRzIGxlc3Mgb3ZlcmhlYWQgdGhhbiBwZXItYnVmZmVyIHN5c2ZzLCBhbmQgbGVzcyBldmVu
IHRoYW4NCj4gdGhlIG1haW50ZW5hbmNlIG9mIHRoZSBkbWFidWYgZGVidWdmc19saXN0LCBpdCdz
IHN0aWxsICphZGRpdGlvbmFsKg0KPiBvdmVyaGVhZCBvbiB0b3Agb2YgdGhlIGRlYnVnZnNfbGlz
dCBhbmQgZG9lc24ndCBnaXZlIHVzIHBlci1idWZmZXIgaW5mby4NCj4gDQo+IFRoaXMgc2VyaWVz
IHVzZXMgdGhlIGV4aXN0aW5nIGRtYWJ1ZiBkZWJ1Z2ZzX2xpc3QgdG8gaW1wbGVtZW50IGEgQlBG
DQo+IGRtYWJ1ZiBpdGVyYXRvciwgd2hpY2ggYWRkcyBubyBvdmVyaGVhZCB0byBidWZmZXIgYWxs
b2NhdGlvbi9mcmVlIGFuZA0KPiBwcm92aWRlcyBwZXItYnVmZmVyIGluZm8uIFRoZSBsaXN0IGhh
cyBiZWVuIG1vdmVkIG91dHNpZGUgb2YNCj4gQ09ORklHX0RFQlVHX0ZTIHNjb3BlIHNvIHRoYXQg
aXQgaXMgYWx3YXlzIHBvcHVsYXRlZC4gVGhlIEJQRiBwcm9ncmFtDQo+IGxvYWRlZCBieSB1c2Vy
c3BhY2UgdGhhdCBleHRyYWN0cyBwZXItYnVmZmVyIGluZm9ybWF0aW9uIGdldHMgdG8gZGVmaW5l
DQo+IGl0cyBvd24gaW50ZXJmYWNlIHdoaWNoIGF2b2lkcyB0aGUgbGFjayBvZiBBQkkgc3RhYmls
aXR5IHdpdGggZGVidWdmcy4NCj4gDQo+IFRoaXMgd2lsbCBhbGxvdyB1cyB0byByZXBsYWNlIG91
ciB1c2Ugb2YgQ09ORklHX0RNQUJVRl9TWVNGU19TVEFUUywgYW5kDQo+IHRoZSBwbGFuIGlzIHRv
IHJlbW92ZSBpdCBmcm9tIHRoZSBrZXJuZWwgYWZ0ZXIgdGhlIG5leHQgbG9uZ3Rlcm0gc3RhYmxl
DQo+IHJlbGVhc2UuDQo+IA0KPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbWVk
aWEvMjAyMDEyMTAwNDQ0MDAuMTA4MDMwOC0xLWhyaWR5YUBnb29nbGUuY29tDQo+IFsyXSBodHRw
czovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMjA1MTYxNzEzMTUuMjQwMDU3OC0xLXRqbWVyY2ll
ckBnb29nbGUuY29tDQo+IA0KPiB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUw
NDE0MjI1MjI3LjM2NDI2MTgtMS10am1lcmNpZXJAZ29vZ2xlLmNvbQ0KPiB2MSAtPiB2MjoNCj4g
TWFrZSB0aGUgRE1BIGJ1ZmZlciBsaXN0IGluZGVwZW5kZW50IG9mIENPTkZJR19ERUJVR19GUyBw
ZXIgQ2hyaXN0aWFuIEvDtm5pZw0KPiBBZGQgQ09ORklHX0RNQV9TSEFSRURfQlVGRkVSIGNoZWNr
IHRvIGtlcm5lbC9icGYvTWFrZWZpbGUgcGVyIGtlcm5lbCB0ZXN0IHJvYm90DQo+IFVzZSBCVEZf
SURfTElTVF9TSU5HTEUgaW5zdGVhZCBvZiBCVEZfSURfTElTVF9HTE9CQUxfU0lOR0xFIHBlciBT
b25nIExpdQ0KPiBGaXh1cCBjb21tZW50IHN0eWxlLCBtaXhpbmcgY29kZS9kZWNsYXJhdGlvbnMs
IGFuZCB1c2UgQVNTRVJUX09LX0ZEIGluIHNlbGZ0ZXN0IHBlciBTb25nIExpdQ0KPiBBZGQgQlBG
X0lURVJfUkVTQ0hFRCBmZWF0dXJlIHRvIGJwZl9kbWFidWZfcmVnX2luZm8gcGVyIEFsZXhlaSBT
dGFyb3ZvaXRvdg0KPiBBZGQgb3Blbi1jb2RlZCBpdGVyYXRvciBhbmQgc2VsZnRlc3QgcGVyIEFs
ZXhlaSBTdGFyb3ZvaXRvdg0KPiBBZGQgYSBzZWNvbmQgdGVzdCBidWZmZXIgZnJvbSB0aGUgc3lz
dGVtIGRtYWJ1ZiBoZWFwIHRvIHNlbGZ0ZXN0cw0KPiBVc2UgdGhlIEJQRiBwcm9ncmFtIHdlJ2xs
IHVzZSBpbiBwcm9kdWN0aW9uIGZvciBzZWxmdGVzdCBwZXIgQWxleGVpIFN0YXJvdm9pdG92DQo+
ICAgaHR0cHM6Ly9yLmFuZHJvaWQuY29tL2MvcGxhdGZvcm0vc3lzdGVtL2JwZnByb2dzLysvMzYx
NjEyMy8yL2RtYWJ1Zkl0ZXIuYw0KPiAgIGh0dHBzOi8vci5hbmRyb2lkLmNvbS9jL3BsYXRmb3Jt
L3N5c3RlbS9tZW1vcnkvbGlibWVtaW5mby8rLzM2MTQyNTkvMS9saWJkbWFidWZpbmZvL2RtYWJ1
Zl9icGZfc3RhdHMuY3BwDQo+IHYyOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTA1
MDQyMjQxNDkuMTAzMzg2Ny0xLXRqbWVyY2llckBnb29nbGUuY29tDQo+IHYyIC0+IHYzOg0KPiBS
ZWJhc2Ugb250byBicGYtbmV4dC9tYXN0ZXINCj4gTW92ZSBnZXRfbmV4dF9kbWFidWYoKSBpbnRv
IGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMsIGFsb25nIHdpdGggdGhlDQo+ICAgbmV3IGdldF9m
aXJzdF9kbWFidWYoKS4gVGhpcyBhdm9pZHMgaGF2aW5nIHRvIGV4cG9zZSB0aGUgZG1hYnVmIGxp
c3QNCj4gICBhbmQgbXV0ZXggdG8gdGhlIHJlc3Qgb2YgdGhlIGtlcm5lbCwgYW5kIGtlZXBzIHRo
ZSBkbWFidWYgbXV0ZXgNCj4gICBvcGVyYXRpb25zIG5lYXIgZWFjaCBvdGhlciBpbiB0aGUgc2Ft
ZSBmaWxlLiAoQ2hyaXN0aWFuIEvDtm5pZykNCj4gQWRkIENocmlzdGlhbidzIFJCIHRvIGRtYS1i
dWY6IFJlbmFtZSBkZWJ1Z2ZzIHN5bWJvbHMNCj4gRHJvcCBSRkM6IGRtYS1idWY6IFJlbW92ZSBE
TUEtQlVGIHN0YXRpc3RpY3MNCj4gdjM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI1
MDUwNzAwMTAzNi4yMjc4NzgxLTEtdGptZXJjaWVyQGdvb2dsZS5jb20NCj4gdjMgLT4gdjQ6DQo+
IEZpeCBzZWxmdGVzdCBCUEYgcHJvZ3JhbSBjb21tZW50IHN0eWxlIChub3Qga2RvYykgcGVyIEFs
ZXhlaSBTdGFyb3ZvaXRvdg0KPiBGaXggZG1hLWJ1Zi5jIGtkb2MgY29tbWVudCBzdHlsZSBwZXIg
QWxleGVpIFN0YXJvdm9pdG92DQo+IFJlbmFtZSBnZXRfZmlyc3RfZG1hYnVmIC8gZ2V0X25leHRf
ZG1hYnVmIHRvIGRtYV9idWZfaXRlcl9iZWdpbiAvDQo+ICAgZG1hX2J1Zl9pdGVyX25leHQgcGVy
IENocmlzdGlhbiBLw7ZuaWcNCj4gQWRkIENocmlzdGlhbidzIFJCIHRvIGJwZjogQWRkIGRtYWJ1
ZiBpdGVyYXRvcg0KPiANCj4gVC5KLiBNZXJjaWVyICg1KToNCj4gICBkbWEtYnVmOiBSZW5hbWUg
ZGVidWdmcyBzeW1ib2xzDQo+ICAgYnBmOiBBZGQgZG1hYnVmIGl0ZXJhdG9yDQo+ICAgYnBmOiBB
ZGQgb3BlbiBjb2RlZCBkbWFidWYgaXRlcmF0b3INCj4gICBzZWxmdGVzdHMvYnBmOiBBZGQgdGVz
dCBmb3IgZG1hYnVmX2l0ZXINCj4gICBzZWxmdGVzdHMvYnBmOiBBZGQgdGVzdCBmb3Igb3BlbiBj
b2RlZCBkbWFidWZfaXRlcg0KPiANCj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgICAgICAg
ICAgICAgICAgICAgICB8ICA5OCArKysrKy0tDQo+ICBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaCAg
ICAgICAgICAgICAgICAgICAgICAgfCAgIDQgKy0NCj4gIGtlcm5lbC9icGYvTWFrZWZpbGUgICAg
ICAgICAgICAgICAgICAgICAgICAgICB8ICAgMyArDQo+ICBrZXJuZWwvYnBmL2RtYWJ1Zl9pdGVy
LmMgICAgICAgICAgICAgICAgICAgICAgfCAxNDkgKysrKysrKysrKw0KPiAga2VybmVsL2JwZi9o
ZWxwZXJzLmMgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA1ICsNCj4gIC4uLi90ZXN0aW5n
L3NlbGZ0ZXN0cy9icGYvYnBmX2V4cGVyaW1lbnRhbC5oICB8ICAgNSArDQo+ICB0b29scy90ZXN0
aW5nL3NlbGZ0ZXN0cy9icGYvY29uZmlnICAgICAgICAgICAgfCAgIDMgKw0KPiAgLi4uL3NlbGZ0
ZXN0cy9icGYvcHJvZ190ZXN0cy9kbWFidWZfaXRlci5jICAgIHwgMjU4ICsrKysrKysrKysrKysr
KysrKw0KPiAgLi4uL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy9kbWFidWZfaXRlci5jIHwg
IDkxICsrKysrKw0KPiAgOSBmaWxlcyBjaGFuZ2VkLCA1OTQgaW5zZXJ0aW9ucygrKSwgMjIgZGVs
ZXRpb25zKC0pDQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQga2VybmVsL2JwZi9kbWFidWZfaXRlci5j
DQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2df
dGVzdHMvZG1hYnVmX2l0ZXIuYw0KPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IHRvb2xzL3Rlc3Rpbmcv
c2VsZnRlc3RzL2JwZi9wcm9ncy9kbWFidWZfaXRlci5jDQo+IA0KPiANCj4gYmFzZS1jb21taXQ6
IDQzNzQ1ZDExYmZkOTY4M2FiZGYwOGFkN2E1Y2M0MDNkNmE5ZmZkMTUNCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
