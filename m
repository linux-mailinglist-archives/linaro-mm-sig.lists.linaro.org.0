Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qM8nLkzY1GlxyAcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 07 Apr 2026 12:11:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 379D23AC93F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 07 Apr 2026 12:11:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2E5033F9B4
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Apr 2026 10:11:23 +0000 (UTC)
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013040.outbound.protection.outlook.com [40.93.196.40])
	by lists.linaro.org (Postfix) with ESMTPS id 745B53F9A5
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Apr 2026 10:11:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=RMXX9bcl;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.196.40 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nn3XAXHjHxp6qZzmUlz/Nfi4xVX1MJfNpHN0z+aakywRcbK82f/VTb7tVTTWLFYalQjz4EAYJHX1JTOH3CCZZ9G0fCV/jpBsD+vcZ0swKjJDg1MbXgPtSaNMmVeLeLxS1e0ywx1xCDqSKS9jMZr/lG0yVjedJ0BdI5AAsVBasvgShbr9aFpScqemgBOU6wo1hjvTqeWhg2VOV4RxyHU3r49qLNj0UMWELvEtlLAhfIq7aU63xhPxVjdM4lLVREi0bI+8SRyy0rlI0dc0d4A6KOvU0BYCd5NnVBPeKwoH4d5a80s2+KsNsmvMdLvQl85z3XHSKJnZBDFhKAXKWjwwGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MOEegJjGQJ4cvjiwt8wihrYgXWKvcVrs8kQUp1TJ/fo=;
 b=tz3lWFC9Z5YL0aNoVLlAfHlUC8icaCvNUi2nOGVMn7UQ/fCQDc70507Kmt56Q7yN274QWXxU+jpriQRKcQnsh8YvZYoftKJBNo8UIohHamNfLDEpuC913qDiwjPx5PH0Xld6y5KpVHtWW/9IpSeC6n7sHgQhy7WkWNjekasQti8jWlgJYGh3R/SRMXSpVUcxWiM74IuH6rTxX9GF4EQAgK6PpWBlVbCBgOOHlTDLsO9tfx2ZwezCbElMNZnYZMfmy/xGsYwXVuvijAgUHhKvfFAMrfSgRe6YC6CkI11dM6BdY4JIE3PjTcMXxDps0R8ZMKjfdHwKQSfpez74dblLlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MOEegJjGQJ4cvjiwt8wihrYgXWKvcVrs8kQUp1TJ/fo=;
 b=RMXX9bclj+O2ml3FGajsT0KHq/tYeZ2vh6NqhfK7e1dNEhXNa8ZuyTi9KWyNVnWKNpHg4SSOQx39diE+C4yb11OeNrlEah43C1cxIU7zvPwq+aMGto0OqbT4he00+0hsiERrpXAUt7vOxvCkcdFslXcxUncAulZp57xoCjuOVBc=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DM6PR12MB4404.namprd12.prod.outlook.com (2603:10b6:5:2a7::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.19; Tue, 7 Apr
 2026 10:11:17 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9769.016; Tue, 7 Apr 2026
 10:11:17 +0000
Message-ID: <a85bc6d2-aa0f-485b-84cb-84d0c9f935fb@amd.com>
Date: Tue, 7 Apr 2026 12:11:10 +0200
User-Agent: Mozilla Thunderbird
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
To: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>
References: <20260403083602.1771-1-pierre-eric.pelloux-prayer@amd.com>
 <20260403083602.1771-5-pierre-eric.pelloux-prayer@amd.com>
 <1b46bb85-dcaf-4eee-b5ae-110d711107db@amd.com>
Content-Language: en-US
In-Reply-To: <1b46bb85-dcaf-4eee-b5ae-110d711107db@amd.com>
X-ClientProxiedBy: FR4P281CA0302.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f6::8) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DM6PR12MB4404:EE_
X-MS-Office365-Filtering-Correlation-Id: e85879fe-6b12-4a87-e53f-08de948e0200
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	m/DDhOAwl9AeBgSAuwGMzgBGHs6+8laMqj0ymMYNbKus5wEtsNUNMxttRaf0SECJ4xQhtNnySyhjrVej8oJuDF13/CrdC545m1Wm1hDA2dVwIr4SUgMNwzLuT7b71acScUzC7soVXUiV1m7bprw7nDev/ysfPJYmZH22V0njbjRdIOqsXBPFUgeZJxB/IBtMJ8B2GyW+tZlN/hNc1VpxnCIIzMjJzEcB/RnQBrx4ETn1DAIqweE/mcEe/Ak+RFfVICwWYpfZeq2Lnj7Uox/LlTiWQ9no83CpSVpqARgbyNTVVuGvfe6W9W8M6Ye6kxgGmg5siFtL9IHwd6Qu4WR2Uf82uRlbxzRrU0LbBpfeK70XnpNNR99JQI127EDveAAqzYYf7pXG44w2GKiVVhmRFViuKtn30oCkvfs32hKjqK9anm9cC3pVFIRTaaZWmL9v2YjMT4Ce29Nwk/rhYrrUUZVxHoo2mFYnLDVTlL3mkyFOgvF1m8EMU/7e0NAvEaLRIEB3h6agQ/zeGnuivPh0x65ZrG8drurfHk/GDD6nwtq6hBsjrHsLt8NyM4Jv2zfTIj3U8Xcz74HyetxJ2DdOoKF0juvTOmxjwjhM0lpWqkg+0Fx/hoUZtj3qFjV5aCi/ZLUIJSegECepK6iayFtUcQuwdTjQv8uDhqQddxCJ/QntzJvgWswqFD1eEpCgW5R30s6mdXCVJm7cFUlvGo0pGfCg1PX27F/PLj85o1kzyCc=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bUd6Y3I0bVRaUnI2NlhHSXVCYWgrcDdGSkpMdUttbTE4K2NNOTRXQTVZbWgv?=
 =?utf-8?B?Uk8zdUgzd3R6ODFGQzJYcG9meVNBVThSNEhuRjBTanRsWTluMFk5eW5wWmw2?=
 =?utf-8?B?ZW8xdG82WWxPdUhtQnhjT0ZDUmZhc1N2M1JiV1Z5QWsxZFNvSzZNcWZjMHdx?=
 =?utf-8?B?RW9tb21WOWlSZ3RhOXdaSmoxM1k2WWlPK25PNjNCWkUxRk1JZWR0SjAzYS85?=
 =?utf-8?B?bnlqRDh6czgzOUF6b1N4cTQ1NzdSRlFsaUc2eVpLQ3FVaDcwcmpjMmZZd0sw?=
 =?utf-8?B?TkdIQkZHc1RBSkNLdDFaVytUWEF6djcvdzBSdXNjb3h1dExrTWRCTGxtc2xF?=
 =?utf-8?B?UWhZWFEySmViNEN2UGo2bExxc3p4SjVPYk1JWXcydldyYmt3TWM4Q3EwcFMy?=
 =?utf-8?B?L0k0RkVDbkIzanJ3OVFWREFKa2hXUlhLaWJnSjBUaGMvcFJNSzZZTjVaUUlB?=
 =?utf-8?B?LzV1UGp0UFUwcjJVMHN1RGpxTHZKcGlPdXhlMHFwVjRXN2JDWTI2ZlBjcDV4?=
 =?utf-8?B?RmVpcnpjb21OMCsydlNZdTdveEpUSHI2c0R3RWNMNVY3dThPRytEWDdTVGJi?=
 =?utf-8?B?Q2FCTWZENmpmU3Z0SkNMampHSTdQT1c4dXJ4cjFndnlOVFNDdG9TbXBDYWZQ?=
 =?utf-8?B?Mk56aG1LSlFPMmtoMDZOS2l5SGVrRWNGcFBUaVlIbC9Qdy9vMjJUWlB1MGhN?=
 =?utf-8?B?dkZhc2hVWXcxZVpzZldyUmtTdkdHYWdPeWhJUHpncFZEOUl1NSt3Z3h4ZGp3?=
 =?utf-8?B?NE0vcTB0YTBmQWZ4VU43UzdRMEQwTTEzRXRHS240UnpXQ2NwQis2V2gvWExN?=
 =?utf-8?B?U3d3Z1hkaUpJY0QzMi9OT09pTlFMTVZkbFZKaEtuT25xMnZyRkxMSVJSZC9i?=
 =?utf-8?B?TUlCR2lFT24xb3JtNllxR0NlOVQ5TEVRZlJib2dWZGZZZlZJVHBlYW5qb0xq?=
 =?utf-8?B?TkdNK3M2UWNvcDV0YVdFQzFpUWRzWVBrc1d4S042ZTQ5NjV6eUhmZnB0dXcv?=
 =?utf-8?B?Lzc0R2VWZEI4bS9sZ2xKa0tMNTY4bk9sbzRObmQ2KzNlTnA2K2VOaVR5T3V1?=
 =?utf-8?B?N1p5em16cVpPOWttNnNueHhTWEVDSGZZTS8wTEdIRUpTMThvK1NKOTBXVTRk?=
 =?utf-8?B?WHpTSEpuWnlVdDY1UnYzYlRsRFQ4TkwzTzd6Y3VJNVZFUm9oVTk2aHVXczFr?=
 =?utf-8?B?YlFTakxyajBVNVZrWEdIbjFZS0JZQUxLNEkwQlJQU0p4QWlyUERWNDlFQWZC?=
 =?utf-8?B?SThzdDl1UzNrVmk2cXlhcXB5czdnSmRBcmtNK3VtZWlnSExreGVXS3dpQ3pl?=
 =?utf-8?B?bGFBbFc4a1FPSUFxZSt2VCtHMjRycWtnVXFTVy8wN3lKT29CMUhwdDI0TmtF?=
 =?utf-8?B?UWtsZis2WjdkUkNoTktQUGYrRXR1WGtZdllhSFIwa3dQSXBTOEtnbDFvN2FS?=
 =?utf-8?B?dkNoQnFTVXQ5WFpXWk1ERTcwVTQxRk1BdE9HZW5ZRUUxWndyMkszaXJKWDNq?=
 =?utf-8?B?ZnlPMSt4bHNZV3pwUGRGN1NMU2NiY1J2bmxmYm1CaVgxcENmbGNpeDFVN0hX?=
 =?utf-8?B?RC9WRFBWWk1LbFVyRXFIVlYwdGZ0VFN1WnM0TDdwN1JQYXVMNFBpYlZmU0l2?=
 =?utf-8?B?OFF0eHlGblhjQjVQejdTeHBJNEJpTytGcFI4ckJnTmVmcFE2RVcwR0tsZ3lB?=
 =?utf-8?B?ajQvdEJtbnNJa3BEbDJveWdwall1MllORFB4cUJtdVFtY0pTbWE1QS9lRWM1?=
 =?utf-8?B?VHdGQm5KU29PUjlFZUJZMlU5NFl1SWdud2JJYUozdDV6ck9EU3pmU09mMTRY?=
 =?utf-8?B?NGVLTmxvZ3NyRFF1eHo1QkVuQUU0TER1NURkRmc5ak11U2xYaHBxanlQZFc3?=
 =?utf-8?B?cWs3bFdMYXdTeWpYdWtVbXNXdE9Fa2NyWENmTHJPRUxKTU5jUzE2TDRXRmN3?=
 =?utf-8?B?dlh3czd6VHZDRWpFb2tUKzZpQmVySjEyUTEwb2x6Q3YyZEgzbHgvZXJlVCtp?=
 =?utf-8?B?S2hYZjYwRStHSlB0YWxJcm5oK2IwOExmb256YnRXSjBtYXJ1K05NbXdTUXNT?=
 =?utf-8?B?d2FvUjEyeUVNcVNMMVlrYlZsclJaVnp1RC9KYlp0cWxHUTYyVXA5K1plZUJ0?=
 =?utf-8?B?L0o1enByUkpPckxhYlVsR1J0SVRSSmN0RTRabkdFVXM4ZDhWNXd3SXZwNmE3?=
 =?utf-8?B?OUtvcW56dHNWWEV2VGtTSUR3NXRYQy85K1JZbE9Oc0Zhc3dXdk9PM0hhY0Fw?=
 =?utf-8?B?YW5oQkpkbTFNejkyaWZDd2JrM0RBV2wyUldpUCt0ZFk5K3Bna0xYNng3bzF4?=
 =?utf-8?Q?p1cAAe8kydp3nU/YnF?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e85879fe-6b12-4a87-e53f-08de948e0200
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2026 10:11:17.5485
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1JcNvBi9hWpVNKnegYMhbMilpGUQe+tkb5oR+4JAIklJOjIU7dwTcdrD6QZOXatL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4404
X-Spamd-Bar: -----
Message-ID-Hash: SXIZR76V2ZMU6TZLBDXYTNR3HARBV72G
X-Message-ID-Hash: SXIZR76V2ZMU6TZLBDXYTNR3HARBV72G
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 5/7] drm/amdgpu: get rid of amdgpu_ttm_clear_buffer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SXIZR76V2ZMU6TZLBDXYTNR3HARBV72G/>
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.987];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[amd.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,amd.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 379D23AC93F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCk9uIDQvNy8yNiAxMjowOSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gDQo+IA0KPiBP
biA0LzMvMjYgMTA6MzUsIFBpZXJyZS1FcmljIFBlbGxvdXgtUHJheWVyIHdyb3RlOg0KPj4gSXQn
cyBkb2luZyB0aGUgc2FtZSB0aGluZyBhcyBhbWRncHVfZmlsbF9idWZmZXIoc3JjX2RhdGE9MCks
IHNvIGRyb3AgaXQuDQo+Pg0KPj4gVGhlIG9ubHkgY2F2ZWF0IGlzIHRoYXQgYW1kZ3B1X3Jlc19j
bGVhcmVkKCkgcmV0dXJuIHZhbHVlIGlzIG9ubHkgdmFsaWQNCj4+IHJpZ2h0IGFmdGVyIGFsbG9j
YXRpb24uDQo+Pg0KPj4gLS0tDQo+PiB2MjogaW50cm9kdWNlIG5ldyAiYm9vbCBjb25zaWRlcl9j
bGVhcl9zdGF0dXMiIGFyZw0KPj4gLS0tDQo+Pg0KPj4gU2lnbmVkLW9mZi1ieTogUGllcnJlLUVy
aWMgUGVsbG91eC1QcmF5ZXIgPHBpZXJyZS1lcmljLnBlbGxvdXgtcHJheWVyQGFtZC5jb20+DQo+
PiAtLS0NCj4+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0LmMgfCAx
NiArKy0tDQo+PiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jICAgIHwg
ODggKysrKystLS0tLS0tLS0tLS0tLS0tLQ0KPj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV90dG0uaCAgICB8ICA2ICstDQo+PiAgMyBmaWxlcyBjaGFuZ2VkLCAzMiBpbnNlcnRp
b25zKCspLCA3OCBkZWxldGlvbnMoLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X29iamVjdC5jDQo+PiBpbmRleCA2NmMyMGRkNDZkMTIuLmQwODg0YmJmZmE3NSAx
MDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3Qu
Yw0KPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jDQo+
PiBAQCAtNzE3LDEzICs3MTcsMTcgQEAgaW50IGFtZGdwdV9ib19jcmVhdGUoc3RydWN0IGFtZGdw
dV9kZXZpY2UgKmFkZXYsDQo+PiAgCSAgICBiby0+dGJvLnJlc291cmNlLT5tZW1fdHlwZSA9PSBU
VE1fUExfVlJBTSkgew0KPj4gIAkJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7DQo+PiAgDQo+PiAt
CQlyID0gYW1kZ3B1X3R0bV9jbGVhcl9idWZmZXIoYm8sIGJvLT50Ym8uYmFzZS5yZXN2LCAmZmVu
Y2UpOw0KPj4gKwkJciA9IGFtZGdwdV9maWxsX2J1ZmZlcihhbWRncHVfdHRtX25leHRfY2xlYXJf
ZW50aXR5KGFkZXYpLA0KPj4gKwkJCQkgICAgICAgYm8sIDAsIE5VTEwsICZmZW5jZSwNCj4+ICsJ
CQkJICAgICAgIHRydWUsIEFNREdQVV9LRVJORUxfSk9CX0lEX1RUTV9DTEVBUl9CVUZGRVIpOw0K
Pj4gIAkJaWYgKHVubGlrZWx5KHIpKQ0KPj4gIAkJCWdvdG8gZmFpbF91bnJlc2VydmU7DQo+PiAg
DQo+PiAtCQlkbWFfcmVzdl9hZGRfZmVuY2UoYm8tPnRiby5iYXNlLnJlc3YsIGZlbmNlLA0KPj4g
LQkJCQkgICBETUFfUkVTVl9VU0FHRV9LRVJORUwpOw0KPj4gLQkJZG1hX2ZlbmNlX3B1dChmZW5j
ZSk7DQo+PiArCQlpZiAoZmVuY2UpIHsNCj4+ICsJCQlkbWFfcmVzdl9hZGRfZmVuY2UoYm8tPnRi
by5iYXNlLnJlc3YsIGZlbmNlLA0KPj4gKwkJCQkJICAgRE1BX1JFU1ZfVVNBR0VfS0VSTkVMKTsN
Cj4+ICsJCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsNCj4+ICsJCX0NCj4+ICAJfQ0KPj4gIAlpZiAo
IWJwLT5yZXN2KQ0KPj4gIAkJYW1kZ3B1X2JvX3VucmVzZXJ2ZShibyk7DQo+PiBAQCAtMTMyNiw4
ICsxMzMwLDggQEAgdm9pZCBhbWRncHVfYm9fcmVsZWFzZV9ub3RpZnkoc3RydWN0IHR0bV9idWZm
ZXJfb2JqZWN0ICpibykNCj4+ICAJCWdvdG8gb3V0Ow0KPj4gIA0KPj4gIAlyID0gYW1kZ3B1X2Zp
bGxfYnVmZmVyKGFtZGdwdV90dG1fbmV4dF9jbGVhcl9lbnRpdHkoYWRldiksDQo+PiAtCQkJICAg
ICAgIGFibywgMCwgJmJvLT5iYXNlLl9yZXN2LA0KPj4gLQkJCSAgICAgICAmZmVuY2UsIEFNREdQ
VV9LRVJORUxfSk9CX0lEX0NMRUFSX09OX1JFTEVBU0UpOw0KPj4gKwkJCSAgICAgICBhYm8sIDAs
ICZiby0+YmFzZS5fcmVzdiwgJmZlbmNlLA0KPj4gKwkJCSAgICAgICBmYWxzZSwgQU1ER1BVX0tF
Uk5FTF9KT0JfSURfQ0xFQVJfT05fUkVMRUFTRSk7DQo+PiAgCWlmIChXQVJOX09OKHIpKQ0KPj4g
IAkJZ290byBvdXQ7DQo+PiAgDQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X3R0bS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0
bS5jDQo+PiBpbmRleCA2NDhhZDM0NGU4OWMuLmEzZDA5OThiOGNlYyAxMDA2NDQNCj4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYw0KPj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jDQo+PiBAQCAtNDE4LDcgKzQxOCw3IEBA
IHN0YXRpYyBpbnQgYW1kZ3B1X21vdmVfYmxpdChzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJv
LA0KPj4gIAkgICAgKGFiby0+ZmxhZ3MgJiBBTURHUFVfR0VNX0NSRUFURV9WUkFNX1dJUEVfT05f
UkVMRUFTRSkpIHsNCj4+ICAJCXN0cnVjdCBkbWFfZmVuY2UgKndpcGVfZmVuY2UgPSBOVUxMOw0K
Pj4gIAkJciA9IGFtZGdwdV9maWxsX2J1ZmZlcihlbnRpdHksIGFibywgMCwgTlVMTCwgJndpcGVf
ZmVuY2UsDQo+PiAtCQkJCSAgICAgICBBTURHUFVfS0VSTkVMX0pPQl9JRF9NT1ZFX0JMSVQpOw0K
Pj4gKwkJCQkgICAgICAgZmFsc2UsIEFNREdQVV9LRVJORUxfSk9CX0lEX01PVkVfQkxJVCk7DQo+
PiAgCQlpZiAocikgew0KPj4gIAkJCWdvdG8gZXJyb3I7DQo+PiAgCQl9IGVsc2UgaWYgKHdpcGVf
ZmVuY2UpIHsNCj4+IEBAIC0yNTcyLDc2ICsyNTcyLDI1IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X3R0
bV9maWxsX21lbShzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwNCj4+ICB9DQo+PiAgDQo+PiAg
LyoqDQo+PiAtICogYW1kZ3B1X3R0bV9jbGVhcl9idWZmZXIgLSBjbGVhciBtZW1vcnkgYnVmZmVy
cw0KPj4gLSAqIEBibzogYW1kZ3B1IGJ1ZmZlciBvYmplY3QNCj4+IC0gKiBAcmVzdjogcmVzZXJ2
YXRpb24gb2JqZWN0DQo+PiAtICogQGZlbmNlOiBkbWFfZmVuY2UgYXNzb2NpYXRlZCB3aXRoIHRo
ZSBvcGVyYXRpb24NCj4+ICsgKiBhbWRncHVfZmlsbF9idWZmZXIgLSBmaWxsIGEgYnVmZmVyIHdp
dGggYSBnaXZlbiB2YWx1ZQ0KPj4gKyAqIEBlbnRpdHk6IGVudGl0eSB0byB1c2UNCj4+ICsgKiBA
Ym86IHRoZSBibyB0byBmaWxsDQo+PiArICogQHNyY19kYXRhOiB0aGUgdmFsdWUgdG8gc2V0DQo+
PiArICogQHJlc3Y6IGZlbmNlcyBjb250YWluZWQgaW4gdGhpcyByZXNlcnZhdGlvbiB3aWxsIGJl
IHVzZWQgYXMgZGVwZW5kZW5jaWVzLg0KPj4gKyAqIEBvdXRfZmVuY2U6IHRoZSBmZW5jZSBmcm9t
IHRoZSBsYXN0IGNsZWFyIHdpbGwgYmUgc3RvcmVkIGhlcmUuIEl0IG1pZ2h0IGJlDQo+PiArICog
ICAgICAgICAgICAgTlVMTCBpZiBubyBqb2Igd2FzIHJ1bi4NCj4+ICsgKiBAZGVwZW5kZW5jeTog
b3B0aW9uYWwgaW5wdXQgZGVwZW5kZW5jeSBmZW5jZS4NCj4+ICsgKiBAY29uc2lkZXJfY2xlYXJf
c3RhdHVzOiB0cnVlIGlmIHJlZ2lvbiByZXBvcnRlZCBhcyBjbGVhcmVkIGJ5IGFtZGdwdV9yZXNf
Y2xlYXJlZCgpDQo+PiArICogICAgICAgICAgICAgICAgICAgICAgICAgYXJlIHNraXBwZWQuDQo+
PiArICogQGtfam9iX2lkOiB0cmFjZSBpZA0KPj4gICAqDQo+PiAtICogQ2xlYXIgdGhlIG1lbW9y
eSBidWZmZXIgcmVzb3VyY2UuDQo+PiAtICoNCj4+IC0gKiBSZXR1cm5zOg0KPj4gLSAqIDAgZm9y
IHN1Y2Nlc3Mgb3IgYSBuZWdhdGl2ZSBlcnJvciBjb2RlIG9uIGZhaWx1cmUuDQo+PiAgICovDQo+
PiAtaW50IGFtZGdwdV90dG1fY2xlYXJfYnVmZmVyKHN0cnVjdCBhbWRncHVfYm8gKmJvLA0KPj4g
LQkJCSAgICBzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YsDQo+PiAtCQkJICAgIHN0cnVjdCBkbWFfZmVu
Y2UgKipmZW5jZSkNCj4+IC17DQo+PiAtCXN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2ID0gYW1k
Z3B1X3R0bV9hZGV2KGJvLT50Ym8uYmRldik7DQo+PiAtCXN0cnVjdCBhbWRncHVfdHRtX2J1ZmZl
cl9lbnRpdHkgKmVudGl0eTsNCj4+IC0Jc3RydWN0IGFtZGdwdV9yZXNfY3Vyc29yIGN1cnNvcjsN
Cj4+IC0JdTY0IGFkZHI7DQo+PiAtCWludCByID0gMDsNCj4+IC0NCj4+IC0JaWYgKCFhZGV2LT5t
bWFuLmJ1ZmZlcl9mdW5jc19lbmFibGVkKQ0KPj4gLQkJcmV0dXJuIC1FSU5WQUw7DQo+PiAtDQo+
PiAtCWlmICghZmVuY2UpDQo+PiAtCQlyZXR1cm4gLUVJTlZBTDsNCj4+IC0JZW50aXR5ID0gJmFk
ZXYtPm1tYW4uY2xlYXJfZW50aXRpZXNbMF07DQo+PiAtCSpmZW5jZSA9IGRtYV9mZW5jZV9nZXRf
c3R1YigpOw0KPj4gLQ0KPj4gLQlhbWRncHVfcmVzX2ZpcnN0KGJvLT50Ym8ucmVzb3VyY2UsIDAs
IGFtZGdwdV9ib19zaXplKGJvKSwgJmN1cnNvcik7DQo+PiAtDQo+PiAtCW11dGV4X2xvY2soJmVu
dGl0eS0+bG9jayk7DQo+PiAtCXdoaWxlIChjdXJzb3IucmVtYWluaW5nKSB7DQo+PiAtCQlzdHJ1
Y3QgZG1hX2ZlbmNlICpuZXh0ID0gTlVMTDsNCj4+IC0JCXU2NCBzaXplOw0KPj4gLQ0KPj4gLQkJ
aWYgKGFtZGdwdV9yZXNfY2xlYXJlZCgmY3Vyc29yKSkgew0KPj4gLQkJCWFtZGdwdV9yZXNfbmV4
dCgmY3Vyc29yLCBjdXJzb3Iuc2l6ZSk7DQo+PiAtCQkJY29udGludWU7DQo+PiAtCQl9DQo+PiAt
DQo+PiAtCQkvKiBOZXZlciBjbGVhciBtb3JlIHRoYW4gMjU2TWlCIGF0IG9uY2UgdG8gYXZvaWQg
dGltZW91dHMgKi8NCj4+IC0JCXNpemUgPSBtaW4oY3Vyc29yLnNpemUsIDI1NlVMTCA8PCAyMCk7
DQo+PiAtDQo+PiAtCQlyID0gYW1kZ3B1X3R0bV9tYXBfYnVmZmVyKGVudGl0eSwgJmJvLT50Ym8s
IGJvLT50Ym8ucmVzb3VyY2UsICZjdXJzb3IsDQo+PiAtCQkJCQkgIDAsIGZhbHNlLCAmc2l6ZSwg
JmFkZHIpOw0KPj4gLQkJaWYgKHIpDQo+PiAtCQkJZ290byBlcnI7DQo+PiAtDQo+PiAtCQlyID0g
YW1kZ3B1X3R0bV9maWxsX21lbShhZGV2LCBlbnRpdHksIDAsIGFkZHIsIHNpemUsIHJlc3YsDQo+
PiAtCQkJCQkmbmV4dCwgdHJ1ZSwNCj4+IC0JCQkJCUFNREdQVV9LRVJORUxfSk9CX0lEX1RUTV9D
TEVBUl9CVUZGRVIpOw0KPj4gLQkJaWYgKHIpDQo+PiAtCQkJZ290byBlcnI7DQo+PiAtDQo+PiAt
CQlkbWFfZmVuY2VfcHV0KCpmZW5jZSk7DQo+PiAtCQkqZmVuY2UgPSBuZXh0Ow0KPj4gLQ0KPj4g
LQkJYW1kZ3B1X3Jlc19uZXh0KCZjdXJzb3IsIHNpemUpOw0KPj4gLQl9DQo+PiAtZXJyOg0KPj4g
LQltdXRleF91bmxvY2soJmVudGl0eS0+bG9jayk7DQo+PiAtDQo+PiAtCXJldHVybiByOw0KPj4g
LX0NCj4+IC0NCj4+ICBpbnQgYW1kZ3B1X2ZpbGxfYnVmZmVyKHN0cnVjdCBhbWRncHVfdHRtX2J1
ZmZlcl9lbnRpdHkgKmVudGl0eSwNCj4gDQo+IFdlIHNob3VsZCBwcm9iYWJseSByZW5hbWUgdGhl
IGZ1bmN0aW9uIHRvIGFtZGdwdV90dG1fY2xlYXJfYnVmZmVyKCkgd2hpbGUgZG9pbmcgdGhpcy4N
Cg0KRm9yZ2V0IHRoYXQsIEkndmUganVzdCBzZWVuIHRoYXQgcGF0Y2ggIzYgZG9lcyBleGFjdGx5
IHRoYXQuDQoNCkZlZWwgZnJlZSB0byBhZGQgUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4uDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4g
DQo+IEFwYXJ0IGZyb20gdGhhdCBsb29rcyBnb29kIHRvIG1lLg0KPiANCj4gUmVnYXJkcywNCj4g
Q2hyaXN0aWFuLg0KPiANCj4+ICAJCSAgICAgICBzdHJ1Y3QgYW1kZ3B1X2JvICpibywNCj4+ICAJ
CSAgICAgICB1aW50MzJfdCBzcmNfZGF0YSwNCj4+ICAJCSAgICAgICBzdHJ1Y3QgZG1hX3Jlc3Yg
KnJlc3YsDQo+PiAtCQkgICAgICAgc3RydWN0IGRtYV9mZW5jZSAqKmYsDQo+PiArCQkgICAgICAg
c3RydWN0IGRtYV9mZW5jZSAqKm91dF9mZW5jZSwNCj4+ICsJCSAgICAgICBib29sIGNvbnNpZGVy
X2NsZWFyX3N0YXR1cywNCj4+ICAJCSAgICAgICB1NjQga19qb2JfaWQpDQo+PiAgew0KPj4gIAlz
dHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiA9IGFtZGdwdV90dG1fYWRldihiby0+dGJvLmJkZXYp
Ow0KPj4gQEAgLTI2NTksNiArMjYwOCwxMSBAQCBpbnQgYW1kZ3B1X2ZpbGxfYnVmZmVyKHN0cnVj
dCBhbWRncHVfdHRtX2J1ZmZlcl9lbnRpdHkgKmVudGl0eSwNCj4+ICAJCXN0cnVjdCBkbWFfZmVu
Y2UgKm5leHQ7DQo+PiAgCQl1aW50NjRfdCBjdXJfc2l6ZSwgdG87DQo+PiAgDQo+PiArCQlpZiAo
Y29uc2lkZXJfY2xlYXJfc3RhdHVzICYmIGFtZGdwdV9yZXNfY2xlYXJlZCgmZHN0KSkgew0KPj4g
KwkJCWFtZGdwdV9yZXNfbmV4dCgmZHN0LCBkc3Quc2l6ZSk7DQo+PiArCQkJY29udGludWU7DQo+
PiArCQl9DQo+PiArDQo+PiAgCQkvKiBOZXZlciBmaWxsIG1vcmUgdGhhbiAyNTZNaUIgYXQgb25j
ZSB0byBhdm9pZCB0aW1lb3V0cyAqLw0KPj4gIAkJY3VyX3NpemUgPSBtaW4oZHN0LnNpemUsIDI1
NlVMTCA8PCAyMCk7DQo+PiAgDQo+PiBAQCAtMjY4MCw5ICsyNjM0LDcgQEAgaW50IGFtZGdwdV9m
aWxsX2J1ZmZlcihzdHJ1Y3QgYW1kZ3B1X3R0bV9idWZmZXJfZW50aXR5ICplbnRpdHksDQo+PiAg
CX0NCj4+ICBlcnJvcjoNCj4+ICAJbXV0ZXhfdW5sb2NrKCZlbnRpdHktPmxvY2spOw0KPj4gLQlp
ZiAoZikNCj4+IC0JCSpmID0gZG1hX2ZlbmNlX2dldChmZW5jZSk7DQo+PiAtCWRtYV9mZW5jZV9w
dXQoZmVuY2UpOw0KPj4gKwkqb3V0X2ZlbmNlID0gZmVuY2U7DQo+PiAgCXJldHVybiByOw0KPj4g
IH0NCj4+ICANCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfdHRtLmggYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmgNCj4+IGlu
ZGV4IGE2MjQ5MjUyOTQ4Yi4uNDM2YTNlMDlhMTc4IDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5oDQo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfdHRtLmgNCj4+IEBAIC0xODcsMTQgKzE4NywxMiBAQCBpbnQgYW1k
Z3B1X2NvcHlfYnVmZmVyKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LA0KPj4gIAkJICAgICAg
IHN0cnVjdCBkbWFfcmVzdiAqcmVzdiwNCj4+ICAJCSAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICoq
ZmVuY2UsDQo+PiAgCQkgICAgICAgYm9vbCB2bV9uZWVkc19mbHVzaCwgdWludDMyX3QgY29weV9m
bGFncyk7DQo+PiAtaW50IGFtZGdwdV90dG1fY2xlYXJfYnVmZmVyKHN0cnVjdCBhbWRncHVfYm8g
KmJvLA0KPj4gLQkJCSAgICBzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YsDQo+PiAtCQkJICAgIHN0cnVj
dCBkbWFfZmVuY2UgKipmZW5jZSk7DQo+PiAgaW50IGFtZGdwdV9maWxsX2J1ZmZlcihzdHJ1Y3Qg
YW1kZ3B1X3R0bV9idWZmZXJfZW50aXR5ICplbnRpdHksDQo+PiAgCQkgICAgICAgc3RydWN0IGFt
ZGdwdV9ibyAqYm8sDQo+PiAgCQkgICAgICAgdWludDMyX3Qgc3JjX2RhdGEsDQo+PiAgCQkgICAg
ICAgc3RydWN0IGRtYV9yZXN2ICpyZXN2LA0KPj4gLQkJICAgICAgIHN0cnVjdCBkbWFfZmVuY2Ug
KipmLA0KPj4gKwkJICAgICAgIHN0cnVjdCBkbWFfZmVuY2UgKipvdXRfZmVuY2UsDQo+PiArCQkg
ICAgICAgYm9vbCBjb25zaWRlcl9jbGVhcl9zdGF0dXMsDQo+PiAgCQkgICAgICAgdTY0IGtfam9i
X2lkKTsNCj4+ICBzdHJ1Y3QgYW1kZ3B1X3R0bV9idWZmZXJfZW50aXR5ICphbWRncHVfdHRtX25l
eHRfY2xlYXJfZW50aXR5KHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2KTsNCj4+ICANCj4gDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
