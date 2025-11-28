Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 68262C91955
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Nov 2025 11:12:50 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A8593F8EB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Nov 2025 10:12:49 +0000 (UTC)
Received: from DM5PR21CU001.outbound.protection.outlook.com (mail-centralusazon11011005.outbound.protection.outlook.com [52.101.62.5])
	by lists.linaro.org (Postfix) with ESMTPS id DA1093F80B
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Nov 2025 10:12:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=3f92hqA8;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.62.5 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HUliT9RvdY+4sTzRYuCvpx8DnlohXYpa/vAi45mmP7DX7Q6w5EXQMon0q5B/S7EB9iP92ONzA+HKmO8U4/L5sSVSk+Y4A5N+u+L68NKyPK1U4i45jcLwfIBAQeAmVtTIkJYe5AiJAgFFY8MpRPRWcP2dm3QivgOkgv90TzJS04FxZBUJJdOa2DypUP1Y+keIwBr24yiGGXFGpM276fUvGvU8GoPTy3v/Zmr5qnLut/8LsAouILkeGF5p5g4kHNRgU2k5UFN0JzPMT7UzV78JfEStc/PV49oMFigoylDuqqQ2ZIaoFXvqfBQUaL7IdagKliAkaOAaAxZyywDZM7DXtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lQt0/XT5XWQfkfEZuefecuOj2JB+Fi1ghUWo/SlcwrY=;
 b=KPwGjmB2Ymu6LKcuhGhFNShFzd8DT3rwdMuwTXXA927BV0tP/A/Ovwqr5Jsu0Zo57a+XGf1HIzMAT0oNy6ivl9syzgeLr4QS1ESbmlZnCP+hf9kA39/ssODD/7A1bjakea/+ec/adpBahcam0vtSSIJEF2ZrFb5wOaEEQaHNH83BAUQljDSyYWMpLRTaHOoYRdjJff/e9G41+8B6U6lKJaBroZ2m7SJE3bTtRRwPwgbn3hY6SAw7HgmpfXoEWlbraI1mRT3BqArkpRBJ3e+wVaAmlIz5vXghahO0iurqwo6InASpeURoqDcztnxo26EgsVTkoXx8GVdqs+XYP63WUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lQt0/XT5XWQfkfEZuefecuOj2JB+Fi1ghUWo/SlcwrY=;
 b=3f92hqA8QJVEPWq3s+3oQQmXGHtaG2gcKHZo1j782TQOiR6YpoSi9h3ry6t3AhZpF9v4i0DqL9BR4G2Ah6tqvvcZOTPrkh8qkC9ncpQu59AZh5OtGLkFTOEVXLXLCZcodBkAYRPSEymYAcON4Q4o9cdfRloe6GujyAE5zk5p8ac=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by LV8PR12MB9335.namprd12.prod.outlook.com (2603:10b6:408:1fc::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Fri, 28 Nov
 2025 10:12:29 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9366.012; Fri, 28 Nov 2025
 10:12:29 +0000
Message-ID: <fad3320d-e598-4e8c-8c19-7080627da658@amd.com>
Date: Fri, 28 Nov 2025 11:12:23 +0100
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, alexdeucher@gmail.com, simona.vetter@ffwll.ch,
 tursulin@ursulin.net, matthew.brost@intel.com,
 dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org
References: <20251113145332.16805-1-christian.koenig@amd.com>
 <20251113145332.16805-14-christian.koenig@amd.com>
 <3cf92ff5fa9c9c73c8464434b0e8e13e402091fd.camel@mailbox.org>
 <30c8a395-6870-4787-a954-6c9cbc68be62@amd.com>
 <29754f848abcf7aebf7950862ef780362034fcf2.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <29754f848abcf7aebf7950862ef780362034fcf2.camel@mailbox.org>
X-ClientProxiedBy: BN9PR03CA0984.namprd03.prod.outlook.com
 (2603:10b6:408:109::29) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|LV8PR12MB9335:EE_
X-MS-Office365-Filtering-Correlation-Id: c570b175-5443-4c52-a5a6-08de2e66a305
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?WXloeDFaUFBpQVhIMGdXckI1K0VRUUNnbnlLNWVJSG1OSUVlYTFqMUhCUjdy?=
 =?utf-8?B?Mk96NkgxMDVXRW0yZUlST3RNSmd1N3VZNHF4MlhpSDJvRkZ1MXQ2UHc4R3BT?=
 =?utf-8?B?OGJCTk9zZDRjSm5BVzZLOXZVOFVoSFF5VjRpZEpTV2RERzR1aW5MbGE5czBz?=
 =?utf-8?B?UjRZUitvbitPZGJpYUlya3JHQVdTOElYS2ZuUHBNZ0JhZUlpbEhNQXZUcXBW?=
 =?utf-8?B?RDMrcWJyei96eStTOWRXMXV1MTNjZ1NXWi9IamFBcGVnejNLb2JPRXFxU3JG?=
 =?utf-8?B?eDR4QWl4Q2tQUXJmRm1lRzZJaUNJenRtRGtBRFk1Y21LMGM2cHlmdHB4ckpx?=
 =?utf-8?B?TGg3eXV3MzFLcnpQR1lLY09FK2pSZXQwWjlTZ0JIRktTL0JBVTY2b0NzZ1Vt?=
 =?utf-8?B?bDFQM1BDb0Z1Zm1XTWFyQUx6YnhhYXFEbTRJR00wZTdqb0N2UkZPSkluWjdn?=
 =?utf-8?B?M1lUVDhobENuREhpeEh0UVQ0MHdqd3kzd1hFdC9oQkZuK2JvMDFMY3lEMVRC?=
 =?utf-8?B?MXdNczRpcCtIVlc2ZGQzZ0hXZVVjVXNEUUJLb24yZXBkQU92OEJxUm5GQ2NN?=
 =?utf-8?B?UXBZUG1JWTZBZjNtOFpPUzNnYjJvMmcxbk52UU1iNkxPcDdGcXRnQU84RkQr?=
 =?utf-8?B?cEdoRTZpNlJLM1VXMjYvWW1IdUFrcXVwbzVNcEwrYS81cGhBTXREanc5a1Uv?=
 =?utf-8?B?d2JZSm5xTDkvRzRsbkR5L1JJb2NQTWFjeWViK0NUaFUyQjd3MnJubkJyOHp0?=
 =?utf-8?B?TmNaY2pMQmF1ZHRBcWNHMmdWa2JycStqeGhFUDA4Sy9tcTd0dDBDNndvSWhE?=
 =?utf-8?B?ZnZyT2Q1V0w1NTVGZFg4N1ZGOGMwUFZoTmVMa1l5dVRPb3VZT0JQaXkyQkE2?=
 =?utf-8?B?TnVWdnJVNVMrUEF4RXB4UU1xV3hYRzA1THNySEpwL0dOcTlvZGpSMkN4aFly?=
 =?utf-8?B?Uy9uQ01uYURyTEVBd1lZQ2xnUGNMdnU0L2tuSFR0Y2tlSUVjRjRZRm0wbnNC?=
 =?utf-8?B?V2doajJraGVXcGhYdDUwMUo3Qk9VTG9VZ2wxVUpWV3NTMWhhd3ZsaG1tbHQ2?=
 =?utf-8?B?Sk9QQlBhNDFGQXdmdW9hRGZZdGJ0NUowcHB0K1ZXcnhLOXpzNnVTVUFtM09J?=
 =?utf-8?B?RjF3SXd3cHZ0ell6aG43UEFpeTdGVE9FSFlGOFFsVVl0dkkzU2ZHeWdjM0RO?=
 =?utf-8?B?dmtKaC91Rm04NTA0SktQYVlXRzV2bjNsWVY0V0NpRjhSTzduT3VlcU1ZdHNW?=
 =?utf-8?B?REVoMWRJU3hCdU1RRzlhL09Gb3lGRmhUL3Y1N0JPMVNlSkNqUFliNTc3WVQv?=
 =?utf-8?B?Y052M01MZ0FaODMzNjlMYmNSNmlBeEFhaU9yOUdDVjQ3U1g3RTBIcnFjOUxz?=
 =?utf-8?B?RGpUdkVLTjNlL0NLeDZqMERDS0dZSzdlV3hNNjBBeTZvRVVvSW5tZ1NPRHFh?=
 =?utf-8?B?Zk1tK2xqU3JpYjIrVzhrV3gyMENnSy95eHIxdnAvZU83YUdZVVc2S0R6RThM?=
 =?utf-8?B?VlBMZmpVQ0IvdTcxTitDR1RXejVNNm1OZHdjaCswUUVmeFlWbWlUZ1ZYQWJq?=
 =?utf-8?B?NW9aQkJleTg1T051aFFjeUVSdEI0S2l2ODlMZHJSb1hmWWEyam9xbGtJZXZR?=
 =?utf-8?B?OUw3bHB2WWlSOWxDWTdaWktnTjRYc1JhbU9GaEpteDNmS3A5WGZEK3lPM1h4?=
 =?utf-8?B?SEQ1SUl6eUtGMlBackdHakVBMVZvUUVWblM4RmxOQ1d5U0pLSXpNK2ZvNXBG?=
 =?utf-8?B?aCsva1ZyUk1KTXJpdzQ3Yzd4VjFNbS9GS3RhYlBLSHJ4dGJ3cEoyb1VzcWFq?=
 =?utf-8?B?QzdRS0dPK3V4eWVKUkNmUjN2RXdhbitvT1hOYThESXpySEtOMHZFK1I2VENi?=
 =?utf-8?B?elFsemhMR2J0Zmh0dlk4MUFuOWphV0RFYXhvWFJtSm4rZTRZOGFweUlUSGlO?=
 =?utf-8?B?WTBwNElVN2VYdHBrbHVIaDM0eDZ6Y0hmWnVjdmwvVE51SFVZZjdkRDNTZ1hX?=
 =?utf-8?B?cTA2bzdhRnRnPT0=?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YkVsZ0owQXcrak8yS0ZMZmM2V0haekx1MmdyK1BMaitsbEJGaVZsclN4TDhW?=
 =?utf-8?B?MkZDSXFCRjdIM29BZUk3UHFsQTZ2NkkzRXBBVjRXcHI5NXByWXltWi9nVEUv?=
 =?utf-8?B?T1hXQ1lrK3k5anA0WUdOTGNVMUEzdWdxMkRPTVdJWTJDUkhmK1NwUFB2bzRV?=
 =?utf-8?B?QndQbWNWdjc2UVBIQVZiek10ZjZNdDViRHJxYi9wT1JYVThkQXQxMmdyelBk?=
 =?utf-8?B?MHBxVXBQdEQrd0FnVWFoREJENTJsRWxsemtxZ1JobHlhSjg4SU52bE55Zkxr?=
 =?utf-8?B?eGlwaWU3d0hoZ2xoQ2FKcVY2bGtiNVVKQlZ6d2J2YktLbzZMTHZWYXdqNkZs?=
 =?utf-8?B?a0pFTkM3dCtyMlFHRjZ1KzJhYWRPeXJ4elMvOXd0RFJYWkM5eUZic2liN3B6?=
 =?utf-8?B?YWlHOEpQcFJhZ3RrNTBDenkrZ2hNTTlJZ216Uk9ualJiM2lIV1pqTnhWc0h5?=
 =?utf-8?B?bGhNV2QyZEd2dXVEUEU4SSt5SnU4UnB6bUIzcjlZSGlMM2E2UnBhbUxTUDh5?=
 =?utf-8?B?YlBZcWZCV0YvMDArbm9PcS9KblFBQlQrckhBczhhMmFnVmJZek5uYVczS0Nj?=
 =?utf-8?B?bHoxUysxdmJWK2xNeUFBU2FuTnBRZDdva2RsN2QvbXhkSU8zQWtoeGRwbktj?=
 =?utf-8?B?Y1lCM25DWkx4NmUxWU9ySHovZWszWmd6SDJVekJhVkY1cHRESHJPUFZjMWRr?=
 =?utf-8?B?UDJDbGYrbkV5OEQ5Vy82U014Qjk3a3Byc2VhL2NiSWRSM1J1bkpBa1d5Y000?=
 =?utf-8?B?bExsK25tNlI1TlRDcDlFY0ZTRVRncXpZZXVWRGIxNUlOQUxOY3VVUHI0Q1pZ?=
 =?utf-8?B?Z05udmE3UUlVcExWRUVEZUxjTFBHY0t2M2JpeERvd3ArTDlXMnBMenp1VTNH?=
 =?utf-8?B?WjNXdWVSSEJmOWx4b1dubmJQSFQ4TjZvai9vL2pFUmFlSXFsT1QxTE1PRi9O?=
 =?utf-8?B?L0FwaTdZUmFWcWFrOFF6ZDBPSkQxbkhWWVlsRUlEVFphRWVRNjhpaSsyNGtl?=
 =?utf-8?B?YnlFaDNrMGFtTmdIVFM0a01jb0FUWEp1R2JWY0JXOWlJWnlHaVJPRFlMaXRp?=
 =?utf-8?B?U25YWlFobVZKT1dTdGZZRUpEZThMbGVsWmpsWndBbjIxS3RBSCtyQUxBRHZM?=
 =?utf-8?B?bFQxbHk2QkRhK0ptMUZyb25tcm44cjFveldTY1kxSXltMHJSa2lZZE5va3hn?=
 =?utf-8?B?WXkxWGVvdnlTNkFQS3I0Z3I2WlZONUNwRUt0VGRhUllFVTNPUy9MRFdYL25n?=
 =?utf-8?B?YjlwekYvS1c1eml0SWN5QjQ5MTZ6aXJQUTJKdUh2QW1wOXlndkNhV1J6UnJ4?=
 =?utf-8?B?cmp4SytyN25XYys0dEdFT1llUlFZYWwxVlVkeU8vM0tkRFdZNEwyV0twOWNn?=
 =?utf-8?B?dWxsRyt6ejhuQ2xIRTQ3WEpDV2UvUTllUlJIWStrSUNERG1UQ29FU1BLRFNL?=
 =?utf-8?B?Vy96Q1FBbFdUN2d0dG5DMTY1N1ZCcGZMbWV0a3NsQnhpNHYxMFJtSG11MnA1?=
 =?utf-8?B?dEMxKzlzY0lPdWY1VEEvTENUWVJrU1NMZHlIL2RETnFLYldrU2xza25sNUpX?=
 =?utf-8?B?N29kcnFSTFkrcGd4TGpCd3EwdmtQQnF0YUliNUFpU3AweUMvcHJKWDMrb3hI?=
 =?utf-8?B?WldCcUhsUFk4UWhmRXhoWTBBMUFxR296dmw5QmNmU2x3dlBHcElUY2dQT1U1?=
 =?utf-8?B?cHNiVjAzMTVHRG8rZnZxemphNTNqdU1ESDQwM05sUS93UUlyQUh4R0RsVXhP?=
 =?utf-8?B?ZkVueE0vcG5iUDhMYjJSbTlVMU5aa3I4SjJXRUYvUXZVWU1OT2xPQmhndlVw?=
 =?utf-8?B?Nk5iRmswQzZVcWkwWDlhNS9zeG56UHkyRnlMd25BSERkbnpOTHBVMUNLaGx5?=
 =?utf-8?B?QUVwZ296am1JUUM2MTFPT2lBSWxEYUI3MFlvRXkwS2tOeVhEblovK3hSaC9u?=
 =?utf-8?B?b3V3VzlhMHBkRVN6eC9FREtzVzhZU2F1QWZMNk1BdlorSG92a3VQNzZCbldp?=
 =?utf-8?B?VVBPWFFEdnNzRGNZVXhBUFB0UUJvK01BWEovYnZONXFjS1pvd1l6V1pxVG5o?=
 =?utf-8?B?bHg5c0NvajRXbW96anZTTk1jVGc1OXNzWSszKzYvQ1cxaUxGMTBhRXY0QVR1?=
 =?utf-8?Q?YgKo=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c570b175-5443-4c52-a5a6-08de2e66a305
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2025 10:12:29.1694
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1BJuydUf2TEVzt/h0ddF4qhgS890cgPvao11LEsX+yFjg31ghW9J0yE6BiycDebW
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR12MB9335
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.62.5:from];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DA1093F80B
X-Spamd-Bar: ----
Message-ID-Hash: DF5S7QMV5T323AGUIGRGUHFYQQLHRJMH
X-Message-ID-Hash: DF5S7QMV5T323AGUIGRGUHFYQQLHRJMH
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 13/18] drm/amdgpu: independence for the amdkfd_fence! v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DF5S7QMV5T323AGUIGRGUHFYQQLHRJMH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMjgvMjUgMTE6MTAsIFBoaWxpcHAgU3Rhbm5lciB3cm90ZToNCj4gT24gRnJpLCAyMDI1
LTExLTI4IGF0IDExOjA2ICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gT24gMTEv
MjcvMjUgMTI6MTAsIFBoaWxpcHAgU3Rhbm5lciB3cm90ZToNCj4+PiBPbiBUaHUsIDIwMjUtMTEt
MTMgYXQgMTU6NTEgKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4+IFRoaXMgc2hv
dWxkIGFsbG93IGFtZGtmZF9mZW5jZXMgdG8gb3V0bGl2ZSB0aGUgYW1kZ3B1IG1vZHVsZS4NCj4+
Pj4NCj4+Pj4gdjI6IGltcGxlbWVudCBGZWxpeCBzdWdnZXN0aW9uIHRvIGxvY2sgdGhlIGZlbmNl
IHdoaWxlIHNpZ25hbGluZyBpdC4NCj4+Pj4NCj4+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4+PiAtLS0NCj4+Pj4NCj4+Pj4N
Cj4gDQo+IFvigKZdDQo+IA0KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRrZmQva2ZkX3Byb2Nlc3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL2tmZF9wcm9j
ZXNzLmMNCj4+Pj4gaW5kZXggYTA4NWZhYWM5ZmUxLi44ZmFjNzBiODM5ZWQgMTAwNjQ0DQo+Pj4+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL2tmZF9wcm9jZXNzLmMNCj4+Pj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRrZmQva2ZkX3Byb2Nlc3MuYw0KPj4+PiBAQCAtMTE3
Myw3ICsxMTczLDcgQEAgc3RhdGljIHZvaWQga2ZkX3Byb2Nlc3Nfd3FfcmVsZWFzZShzdHJ1Y3Qg
d29ya19zdHJ1Y3QgKndvcmspDQo+Pj4+IMKgCXN5bmNocm9uaXplX3JjdSgpOw0KPj4+PiDCoAll
ZiA9IHJjdV9hY2Nlc3NfcG9pbnRlcihwLT5lZik7DQo+Pj4+IMKgCWlmIChlZikNCj4+Pj4gLQkJ
ZG1hX2ZlbmNlX3NpZ25hbChlZik7DQo+Pj4+ICsJCWFtZGtmZF9mZW5jZV9zaWduYWwoZWYpOw0K
Pj4+PiDCoA0KPj4+PiDCoAlrZmRfcHJvY2Vzc19yZW1vdmVfc3lzZnMocCk7DQo+Pj4+IMKgCWtm
ZF9kZWJ1Z2ZzX3JlbW92ZV9wcm9jZXNzKHApOw0KPj4+PiBAQCAtMTk5MCw3ICsxOTkwLDYgQEAg
a2ZkX3Byb2Nlc3NfZ3B1aWRfZnJvbV9ub2RlKHN0cnVjdCBrZmRfcHJvY2VzcyAqcCwgc3RydWN0
IGtmZF9ub2RlICpub2RlLA0KPj4+PiDCoHN0YXRpYyBpbnQgc2lnbmFsX2V2aWN0aW9uX2ZlbmNl
KHN0cnVjdCBrZmRfcHJvY2VzcyAqcCkNCj4+Pj4gwqB7DQo+Pj4+IMKgCXN0cnVjdCBkbWFfZmVu
Y2UgKmVmOw0KPj4+PiAtCWludCByZXQ7DQo+Pj4+IMKgDQo+Pj4+IMKgCXJjdV9yZWFkX2xvY2so
KTsNCj4+Pj4gwqAJZWYgPSBkbWFfZmVuY2VfZ2V0X3JjdV9zYWZlKCZwLT5lZik7DQo+Pj4+IEBA
IC0xOTk4LDEwICsxOTk3LDEwIEBAIHN0YXRpYyBpbnQgc2lnbmFsX2V2aWN0aW9uX2ZlbmNlKHN0
cnVjdCBrZmRfcHJvY2VzcyAqcCkNCj4+Pj4gwqAJaWYgKCFlZikNCj4+Pj4gwqAJCXJldHVybiAt
RUlOVkFMOw0KPj4+PiDCoA0KPj4+PiAtCXJldCA9IGRtYV9mZW5jZV9zaWduYWwoZWYpOw0KPj4+
PiArCWFtZGtmZF9mZW5jZV9zaWduYWwoZWYpOw0KPj4+PiDCoAlkbWFfZmVuY2VfcHV0KGVmKTsN
Cj4+Pj4gwqANCj4+Pj4gLQlyZXR1cm4gcmV0Ow0KPj4+PiArCXJldHVybiAwOw0KPj4+DQo+Pj4g
T2ggd2FpdCwgdGhhdCdzIHRoZSBjb2RlIEknbSBhbHNvIHRvdWNoaW5nIGluIG15IHJldHVybiBj
b2RlIHNlcmllcyENCj4+Pg0KPj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC9j
ZWY4M2ZlZC01OTk0LTRjNzctOTYyYy05YzdhYWM5ZjczMDZAYW1kLmNvbS8NCj4+Pg0KPj4+DQo+
Pj4gRG9lcyB0aGlzIHNlcmllcyB0aGVuIHNvbHZlIHRoZSBwcm9ibGVtIEZlbGl4IHBvaW50ZWQg
b3V0IGluDQo+Pj4gZXZpY3RfcHJvY2Vzc193b3JrZXIoKT8NCj4+DQo+PiBObyBpdCBkb2Vzbid0
LCBJIHdhc24ndCBhd2FyZSB0aGF0IHRoZSBoaWdoZXIgbGV2ZWwgY29kZSBhY3R1YWxseSBuZWVk
cyB0aGUgc3RhdHVzLiBBZnRlciBhbGwgRmVsaXggaXMgdGhlIG1haW50YWluZXIgb2YgdGhpcyBw
YXJ0Lg0KPj4NCj4+IFRoaXMgcGF0Y2ggaGVyZSBuZWVkcyB0byBiZSByZWJhc2VkIG9uIHRvcCBv
ZiB5b3VycyBhbmQgY2hhbmdlZCBhY2NvcmRpbmdseSB0byBzdGlsbCByZXR1cm4gdGhlIGZlbmNl
IHN0YXR1cyBjb3JyZWN0bHkuDQo+Pg0KPj4gQnV0IHRoYW5rcyBmb3IgcG9pbnRpbmcgdGhhdCBv
dXQuDQo+IA0KPiANCj4gQWxyaWdodCwgc28gbXkgKHJlcGFpcmVkLCB2Mikgc3RhdHVzLWNvZGUt
cmVtb3ZhbCBzZXJpZXMgc2hhbGwgZW50ZXIgZHJtLW1pc2MtbmV4dCBmaXJzdCwgYW5kIHRoZW4g
eW91ciBzZXJpZXMgaGVyZS4gQUNLPw0KDQpXb3JrcyBmb3IgbWUsIEkganVzdCBuZWVkIGJvdGgg
dG8gcmUtYmFzZSB0aGUgYW1kZ3B1IHBhdGNoZXMgb24gdG9wLg0KDQpDaHJpc3RpYW4uDQoNCj4g
DQo+IA0KPiBQLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
