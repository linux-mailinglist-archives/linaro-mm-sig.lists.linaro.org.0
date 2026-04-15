Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBz6EaFE32nzRAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Apr 2026 09:56:17 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A580B401999
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Apr 2026 09:56:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 46A6E40474
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Apr 2026 07:56:15 +0000 (UTC)
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012036.outbound.protection.outlook.com [40.107.200.36])
	by lists.linaro.org (Postfix) with ESMTPS id 322883F7E8
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Apr 2026 07:56:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=lWfEn2fS;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.200.36 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SuPP4SfHBJ9djor/iN596XxlvxfPoOc2Caz8/GSBaxmLOrY3IMJAnEN2oT1Hq+XtLhRzsxgZ+DazcKYii8htXcULy6X085eetNkRX4q5gthaWCY9JFkpqMsRjJ42lSeyOk+YZf8dMyvihs5mm6TGo0cX2WEUwvFd0ZqCi91STXMKF/KC3nqI17xh+ogwdjapM3bWNu4KQKbraue9Cecrm+OfrXtEAxZS5y2Nk8rHXDy8xD8XHCiQpX1szuMA2WFNdDU3AG9JVycMHHWQIgIwOK8csmj3iuwHzVwNi4sEzTy0l31by5bj2V61znq//wVhtgtoVd+qpM1/IiQDCjaM3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4Ou7k4x6jV2bAcvBHxGpIx4E6yoKSPoiQzew/3c9mD0=;
 b=kkEVGOmssfvI2PgQR6UBdWd0tB4EOmEGQYoaupwbutxa/C07KaGRuf3zMn5h3zF0m+6p+GlxRLQNvUEcaPridRthdNUynTdQzRYVoQO70wgi1Lo1PSj0kxqcfvGETKjaN1TxeNvZZquzx/a0fQNOLivAUjaIh/Kdgwrbkd7bIakxG97JXcwQu5RGgesanGY/4ZAiPi1FIWjA705pGeYdw7AhSsg1btg0tJ9VCT6QujADEAS7FMSdsnXsmVxOwzS7dA1FySLgCePqurdw+RICSt8ODcqGlqwIpAfKOZtOXbnnHSBmxhfY9J98+7RRqIA/n9TC6ZLsErN8ZlZAz5pEpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4Ou7k4x6jV2bAcvBHxGpIx4E6yoKSPoiQzew/3c9mD0=;
 b=lWfEn2fSLPJaU+0CKRXNNMYLXUaC8SOdoLdr9vVi7yl/DF0zh2Epc1vvJUUNMxqJRuS06EWSoSQsvHdOeYc+BZejBx9mvlNGdEepvGt49kE7rKuHBOim/77DDZwX8mzg3neCwQk+t1ygCGLfa3yLnhTj+zbnEaEiFYbTVDCBs5M=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SN7PR12MB7204.namprd12.prod.outlook.com (2603:10b6:806:2ab::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Wed, 15 Apr
 2026 07:56:08 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 07:56:08 +0000
Message-ID: <9a33c8b4-64f1-400f-b8a0-0972ea5b5ecf@amd.com>
Date: Wed, 15 Apr 2026 09:56:02 +0200
User-Agent: Mozilla Thunderbird
To: Zack Rusin <zack.rusin@broadcom.com>
References: <20260414105529.9883-1-popov.nkv@gmail.com>
 <ecf4cd01-b05d-4f51-943a-631cc4b27331@amd.com>
 <CABQX2QMH2XFcuz00DQQWU4uKw2B8OzE4rCE5=8LMXDg4t0AqWQ@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CABQX2QMH2XFcuz00DQQWU4uKw2B8OzE4rCE5=8LMXDg4t0AqWQ@mail.gmail.com>
X-ClientProxiedBy: BN9PR03CA0758.namprd03.prod.outlook.com
 (2603:10b6:408:13a::13) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SN7PR12MB7204:EE_
X-MS-Office365-Filtering-Correlation-Id: 90d8d91a-895c-42ad-4245-08de9ac47418
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|7416014|366016|1800799024|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	TRNlNBVd7YzQ96hjYh76StKmFryWS8JdzOcTc7jXEAiRJz7NKz5ElRrTec8m7OydoqmzQoLOnFYYEI8/5N1MltvxST32Aa1Vq2MB84GkWLrvXjbjsu8CEjY48mafKNIQav30WTjNZoYLfGzU3sIOqOs5qZeITp6apiaYxjQA1KiP/N8/Ez1m3AFDBXerxmOXKLB2DSJJ26EjH6HkMrOO9cfHGU1Q0NKanr1n/LLZ9IS9GzIR1O0MEGq6gEHtCrbomnQnrMcSx9H3wgNJR2P4VrczsoVRc2pp8ETCghPjI61CxZqnvLTNZXVercPn0mA39vZ4pvIV11GOYLMhiqOXlUGtJst4MWEMsIw7+XPLd0HVAtkH7UnSjtOvxKNRUMKKyq3bl7SwGWHWRXMSGKKIX6CYTaCv6ICqbbfBG00NF6FdCJlhaZXLUSL22owZUp4t5PoHE4bXF9a6zYqhGiDhaziE5gUiBm44In8ziVzyZR5bmmeeesHZhITgljNL682XXP1lgiMi7oILYequd24thZH/JbVACkA32ySpXHtJP+unzhLJM3pIAaHV9ccf634e3VfLW31KPIUiWtLvVXCQlCH8mFqon2y3f8TB0tIM6theuzOJ+Ved3c9/Me1qcTRPw5UEMu0QyYLgsD//Ei5LLm88/+TmIyFbNVxBiWcw2M6gnQe84P7Z9HzMqaAx08YhOgwoG+xOJwO5zfdryzCgUqumlXeDrRKayA8RuXspULY=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?by9wdlk4dUNUSVgxYWIxWmI3bkI3YVJVV0V4cEFiYmRFaC90UFRVK0JoakZq?=
 =?utf-8?B?YTV0V3RpMENOVmQ4MTNPUUJtanpVVGlqMm9HaTdEakw3R1RnVjZ2STA5N205?=
 =?utf-8?B?NnUremtMbGJkTFVkdmRxRzhEVkc0SVFjbDVPVVRWV3VLTktBNWIxOU9KNHMy?=
 =?utf-8?B?Q2lVbzdIUmd0Rlp6T3VEYjFTckJvUXg5eUMzRncxM1JDWUo0bURkTStjTWpl?=
 =?utf-8?B?RmR0c2laOGx0MFpLQUxHTlhXNnhiM2NlSTZxWUFPby9jZFlMeWxpRkV1eXdI?=
 =?utf-8?B?KzNaOW4raHUzMlc1WldqNVdRSEFxYWxjQ0JsT3NaK0NWamR1OFQwUjJYc2Nn?=
 =?utf-8?B?ZFBHRDVxL3BPTTVkSTMrOVBzbDBBVW9kNU9rMFRqcHo4VmYxODAvY3F1L2hR?=
 =?utf-8?B?Y2Y4ZU55VjV6Um1QSE5IZGJzTjc2VFcvUEhzQ2djNm1nZWJ5RDAzYU9tSDhw?=
 =?utf-8?B?eVJRcE1aSjJLTjU5WjkrYWYzQ1p3NTVtTWRRUmg3d3YzblRnY2wzMDdFYWor?=
 =?utf-8?B?SVZaM0FjdURMb2dLYmJRNThxeGowNGhNL2NHS1B6WUJxcHVmYWRIV25rbGor?=
 =?utf-8?B?SklyajJzRGI3ZVBMcTJMdDA0anEwQzQ1MU03STQwU3BXTlRRTVU5bHVFZnVX?=
 =?utf-8?B?cFVQRW9rejBwbG1FWXRwblBJcnV2b2VtRUtndXZsK2FYVDlmSXZ3M01yamhw?=
 =?utf-8?B?dFpJay9CNVZxU3Q5dkFHaFFzU2pLb1E4SnluNnVGUzNqSUFPanlvK3BsQ3FZ?=
 =?utf-8?B?MHFoT29BRGE1ck9UNzk2NVVBUEg4a2dBb01tZWlVV3VHOTZWbTlhK0dQTnlT?=
 =?utf-8?B?NTRFaGdGdkx1b1FrQnAzYkVIaGlPVUtQS2pvbkprRTNlR25RU21vZmFhTzlM?=
 =?utf-8?B?ampHMHpERmIvZWZXamZ3SllLbW16UDl5RjE5MkdFaWVadnNhR2RnQjFGOXh3?=
 =?utf-8?B?OXBSUUFxSGg5T0JhKzhnb0l5bTJRcU1ubVdqbDVscXlnWi8zMnNTU2xXWmF2?=
 =?utf-8?B?dnE3UGF0a3ZqRXRlZnFER3F6eEdENXlLQ3c5OTlNR0FscnBvSWV2UVFrYWxO?=
 =?utf-8?B?ZjBGYTA1Q0dsaERmeGNUOFBiaW5VRHNJMVdtdzNqS25uRUE4ZHptWDZwZ0tn?=
 =?utf-8?B?bHlCaEIzaExGTk1UWWc4WFJnQndJWmZhNzhpcWFxRXQ5eUEvWlNCT0M5SnJJ?=
 =?utf-8?B?UlRhc3FNUURwbXdQcW5KSmg5ajdhQllTZlNTWjNTMzc0R0dJOXBHNHBvcGVu?=
 =?utf-8?B?WTRtbzdVR3o1N2lHdWtRZVo2Q01xdjNLTzBMMVdxa3R5bzlBeUllSm85aDFF?=
 =?utf-8?B?Z1BSUmxVTVhySjhwM0dJQU53N2V5WEFpTmJ5dlo1RnYrUG5TbVFLUzVRODJy?=
 =?utf-8?B?MXNhUjF5Ym9OR3R2VzJZY1d6dzVrOHFVY1JHWHZOMVA2aTVQT3VEUVQ4TTdQ?=
 =?utf-8?B?RW1adEREemJnTm9rK1RiV21jdHYxbk1Hemt4clZOZlRZcHllT0R0RXNNd1hU?=
 =?utf-8?B?RUxPcTBERVYzbDQrcHJmTVZJU0FVV0Yrei9LZmV1U3FzWEY0djhhOFFYK3Ri?=
 =?utf-8?B?MSswUlFTQkFUT2ppRFRHczhKKzh5QnJiR0Nqd2xYeVVrRng1KzRVeUZJWENp?=
 =?utf-8?B?ekdzNHhtTVUwMFFRenRvckFlNTEydGtnK1ljejhSa3lDQUJTQUprYzEzaS9S?=
 =?utf-8?B?MzZUNnFoc0wvTGw4aGkrbUYxbURlWTdvZ1NHRGFRUlhNK2tqYjVNdnFxOUc2?=
 =?utf-8?B?WW1ib3ZNYzJTSVdEK0ZaUkNyak5BV2JvVjVQNC9BZkkxVzB3UW1JVnFpdlpv?=
 =?utf-8?B?Mk5tY2ZGc3NxOFpYT1NXYU1Ib3VQNUhUcE1oYzBuWUhzcFVFNUhWaTdlRUlR?=
 =?utf-8?B?NHhhVExYejFaYW9hRjhoSXhnL3J3Mzg2NkR2Qkg3OWx1MFpyWkZQcmRYL2RX?=
 =?utf-8?B?bVZRWGswTThnZkd6MnhVTTNNTFgrclpBZUlRbG5YOHdTU1dMaFRXdHhoNmxk?=
 =?utf-8?B?YWZqS1AyQ0NraTRwNmdBWVdJTE5sci9sWUhuTFVpK2hMVktzTmdMQW05eEdE?=
 =?utf-8?B?UFk0TllvNFdwUS9jTlVHWGp0VW9ETEFIZ240c3cwaUlKMHV0Syt1dzN1VTBx?=
 =?utf-8?B?UVo4dnN3dTgwaDR5L2VPK05XYUVVemw4OXpvTmlneWlOaUxPRVc4WWowekFn?=
 =?utf-8?B?Y2M2NUtZRFdsSVVCenhLd3B1aXVPbmxqRUhkUnVsRStJR1k0SUZyU0NzSVFp?=
 =?utf-8?B?UGlacWtmdjlFU3c2bVdCTWlyVlROY1J1L1VaT3RSN1RkMEIxcmNkN2xsTTdw?=
 =?utf-8?Q?gEVXWpNAD9djGOdhSK?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90d8d91a-895c-42ad-4245-08de9ac47418
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 07:56:08.6981
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xucFYftBaboysg8qv9Rg29tUbLVItlulborZrIusWBkl9IokFJfgiOxZ8yO33jTv
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB7204
X-Spamd-Bar: -----
Message-ID-Hash: XGMYLBYXE36M223MYVF5QEYBOG2OLGN2
X-Message-ID-Hash: XGMYLBYXE36M223MYVF5QEYBOG2OLGN2
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: popov.nkv@gmail.com, bcm-kernel-feedback-list@broadcom.com, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, lvc-project@linuxtesting.org, stable@vger.kernel.org, Ian Forbes <ian.forbes@broadcom.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 15901/15901] drm/vmwgfx: fix NULL pointer dereference in vmw_validation_bo_fence()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XGMYLBYXE36M223MYVF5QEYBOG2OLGN2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,broadcom.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,linuxtesting.org];
	DKIM_TRACE(0.00)[amd.com:-];
	NEURAL_HAM(-0.00)[-0.826];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:mid,amd.com:email]
X-Rspamd-Queue-Id: A580B401999
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNC8xNS8yNiAwMzowOCwgWmFjayBSdXNpbiB3cm90ZToNCj4gT24gVHVlLCBBcHIgMTQsIDIw
MjYgYXQgOToyNeKAr0FNIENocmlzdGlhbiBLw7ZuaWcNCj4gPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4gd3JvdGU6DQo+Pg0KPj4gT24gNC8xNC8yNiAxMjo1NSwgcG9wb3Yubmt2QGdtYWlsLmNv
bSB3cm90ZToNCj4+PiBGcm9tOiBWbGFkaW1pciBQb3BvdiA8cG9wb3Yubmt2QGdtYWlsLmNvbT4N
Cj4+Pg0KPj4+IElmIHZtd19leGVjYnVmX2ZlbmNlX2NvbW1hbmRzKCkgY2FsbCBmYWlscyBpbg0K
Pj4+IHZtd19rbXNfaGVscGVyX3ZhbGlkYXRpb25fZmluaXNoKCksIGl0IHNldHMgKnBfZmVuY2Ug
PSBOVUxMLiBJZg0KPj4+IGN0eC0+Ym9fbGlzdCBpcyBub3QgZW1wdHksIHRoZSBjYWxsZXIsIHZt
d19rbXNfaGVscGVyX3ZhbGlkYXRpb25fZmluaXNoKCksDQo+Pj4gcGFzc2VzIHRoZSBmZW5jZSB0
aHJvdWdoIGEgY2hhaW4gb2YgZnVuY3Rpb25zIHRvIGRtYV9mZW5jZV9pc19hcnJheSgpLA0KPj4+
IHdoaWNoIGNhdXNlcyBhIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSBpbiBkbWFfZmVuY2VfaXNf
YXJyYXkoKToNCj4+Pg0KPj4+IHZtd19rbXNfaGVscGVyX3ZhbGlkYXRpb25fZmluaXNoKCkgLy8g
cGFzcyBOVUxMIGZlbmNlDQo+Pj4gICB2bXdfdmFsaWRhdGlvbl9kb25lKCkNCj4+PiAgICAgdm13
X3ZhbGlkYXRpb25fYm9fZmVuY2UoKQ0KPj4+ICAgICAgIHR0bV9ldV9mZW5jZV9idWZmZXJfb2Jq
ZWN0cygpIC8vIHBhc3MgTlVMTCBmZW5jZQ0KPj4+ICAgICAgICAgZG1hX3Jlc3ZfYWRkX2ZlbmNl
KCkNCj4+PiAgICAgICAgICAgZG1hX2ZlbmNlX2lzX2NvbnRhaW5lcigpDQo+Pj4gICAgICAgICAg
ICAgZG1hX2ZlbmNlX2lzX2FycmF5KCkgLy8gTlVMTCBkZXJlZg0KPj4NCj4+IFdlbGwgZ29vZCBj
YXRjaCwgYnV0IHRoYXQgaXMgY2xlYXJseSBub3QgdGhlIHJpZ2h0IGZpeC4NCj4+DQo+PiBJJ20g
bm90IGFuIGV4cGVydCBmb3IgdGhlIHZtd2dmeCBjb2RlIGJ1dCBpbiBjYXNlIG9mIGFuIGVycm9y
IHZtd192YWxpZGF0aW9uX3JldmVydCgpIHNob3VsZCBiZSBjYWxsZWQgYW4gbm90IHZtd19rbXNf
aGVscGVyX3ZhbGlkYXRpb25fZmluaXNoKCkuDQo+IA0KPiBUbyBtZSB0aGUgcGF0Y2ggbG9va3Mg
Y29ycmVjdC4gVGhpcyBwYXRoIGlzIGV4cGxpY2l0bHkgZm9yIHN1Ym1pc3Npb24NCj4gZmFpbHVy
ZSBhbmQgZG9lcyBCTyBiYWNrb2ZmIHBsdXMgdm13X3ZhbGlkYXRpb25fcmVzX3VucmVzZXJ2ZShj
dHgsDQo+IHRydWUpLiBUaGUgYmFja29mZj10cnVlIGJyYW5jaCBza2lwcyBjb21taXR0aW5nIGRp
cnR5LXN0YXRlIC8NCj4gYmFja3VwLU1PQiBjaGFuZ2VzLCB3aGljaCBpcyBvbmx5IGNvcnJlY3Qg
aWYgY29tbWFuZHMgd2VyZSBub3QNCj4gY29tbWl0dGVkLiBIZXJlIHRoZSBjb21tYW5kcyBoYXZl
IGFscmVhZHkgYmVlbiBzdWJtaXR0ZWQ7IG9ubHkgZmVuY2UNCj4gY3JlYXRpb24gZmFpbGVkLiBT
byBJIHRoaW5rIHVubG9ja2luZyBCTyByZXNlcnZhdGlvbnMgd2l0aG91dA0KPiBhdHRhY2hpbmcg
YSBmZW5jZSwgdGhlbiBsZXR0aW5nIHZtd192YWxpZGF0aW9uX2RvbmUoKSBrZWVwIHRha2luZyB0
aGUNCj4gc3VjY2VzcyBwYXRoIGZvciByZXNvdXJjZXMgaXMgY29ycmVjdC4NCg0KQWghIEkgd291
bGQganVzdCBhdm9pZCBhZGRpbmcgbW9yZSBUVE0gZXhlYyBjb2RlIGRlcGVuZGVuY2llcy4NCg0K
V2UgYWxzbyBoYXZlIHRoZSBhbHdheXMgc2lnbmFsZWQgc3R1YiBmZW5jZSBmb3Igc3VjaCB1c2Ug
Y2FzZXMuIEhvdyBhYm91dCB0aGF0IGNoYW5nZSBoZXJlOg0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfZXhlY2J1Zi5jIGIvZHJpdmVycy9ncHUvZHJtL3Ztd2dm
eC92bXdnZnhfZXhlY2J1Zi5jDQppbmRleCBlMWYxODAyMDE3MGEuLjhkY2I4Y2QxOWUyOSAxMDA2
NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X2V4ZWNidWYuYw0KKysrIGIv
ZHJpdmVycy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfZXhlY2J1Zi5jDQpAQCAtMzg0Myw3ICszODQz
LDcgQEAgaW50IHZtd19leGVjYnVmX2ZlbmNlX2NvbW1hbmRzKHN0cnVjdCBkcm1fZmlsZSAqZmls
ZV9wcml2LA0KICAgICAgICBpZiAodW5saWtlbHkocmV0ICE9IDAgJiYgIXN5bmNlZCkpIHsNCiAg
ICAgICAgICAgICAgICAodm9pZCkgdm13X2ZhbGxiYWNrX3dhaXQoZGV2X3ByaXYsIGZhbHNlLCBm
YWxzZSwgc2VxdWVuY2UsDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGZhbHNlLCBWTVdfRkVOQ0VfV0FJVF9USU1FT1VUKTsNCi0gICAgICAgICAgICAgICAqcF9mZW5j
ZSA9IE5VTEw7DQorICAgICAgICAgICAgICAgKnBfZmVuY2UgPSBkbWFfZmVuY2VfZ2V0X3N0dWIo
KTsNCiAgICAgICAgfQ0KIA0KICAgICAgICByZXR1cm4gcmV0Ow0KDQo+IGlpcmMgdGhlIHNhbWUg
aGVscGVyIGlzIHVzZWQgYnkgZXhlY2J1ZiwgYW5kIHRoZSBzaGFyZWQtaGVscGVyIGZpeA0KPiBj
b3JyZWN0bHkgY292ZXJzIGJvdGggcGF0aHMgc28gdGhpcyBpcyBwcm9iYWJseSBub3Qgb25seSBh
IGttcyBpc3N1ZS4NCj4gDQo+IFVudGFuZ2xpbmcgdGhpcyBjb2RlIHdvdWxkIG1ha2Ugc2Vuc2Ug
YmVjYXVzZSBpdCdzIGNvbmZ1c2luZywgYnV0DQo+IHRoYXQncyBub3Qgc29tZXRoaW5nIEknZCBl
eHBlY3QgVmxhZGltaXIgdG8gZG8gOikNCg0KWWVhaCBmZW5jZSBtZW1vcnkgYWxsb2NhdGlvbiBz
aG91bGQgZGVmaW5pdGVseSBiZSBtb3ZlIGJlZm9yZSBzdWJtaXR0aW5nIHRoZSBjb21tYW5kcy4N
Cg0KQnV0IHRoYXQgaXMgY2xlYXJseSBtb3JlIHdvcmsuDQoNClRoYW5rcywNCkNocmlzdGlhbi4N
Cg0KPiANCj4geg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
