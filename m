Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJoAC0NA3mlvpwkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Apr 2026 15:25:23 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA4D3FA754
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Apr 2026 15:25:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5F78940431
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Apr 2026 13:25:21 +0000 (UTC)
Received: from SN4PR2101CU001.outbound.protection.outlook.com (mail-southcentralusazon11012063.outbound.protection.outlook.com [40.93.195.63])
	by lists.linaro.org (Postfix) with ESMTPS id 640B73F767
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2026 13:25:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=qeHZKFMj;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.195.63 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rUFDYrbM1JTGQureaDAxb8n5l9YuIEn3OPjCsW2655I2AVPwfUxjXZcuj2xnyOnEAwDRNCMXvtXkp+iZROJYyQOnOHzaER+jC5Rxh8ULvU4pf3blRXZVwqZNgIkdGHWO0UURsxkjIyDOuapIIK9mg7s6ED2aGn1j0/NrUkEBrHhdi2348KfH/ZdUBEkLt7oAg3Pv8bdouJvQ7mTkbHbTxuAGsriTa3kgOC94XFY17nL0/PWamaRYPf3dC4QQUzxLX1/Z51OjSU8uKU3OPs5mVEmuaagf4AQJaaQ6PLMYnD6aT2jrQa7qtNzenMpgVftl06bSojTIamkbP8gk9z45lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cTmUP8+PcXHqPVKaCaea0EJ/CsFvhgklwEDUmmvFu60=;
 b=s4UL3fc9I57X/2p8TbJD6xJWB5J7hQLbodzsNBynAk7uOXq3ywgoFDyv2+7ZYUfiipGeOYGePknZ2yquL/UMpJv9CWB0RQPI3sbk/jPOV9MP0gbyVbJIPNinxts6j0RDK/tQN8ZqJ40tAq4QlJyJtMWSBaikM3HfECA5PjcmzgIMqa5eoZFJbOm2A35A41e0CzbylV4PHd+wQbHLZyERRyRgFm/4zcfWfyOKcnAkPEzdryY8hOdF/GIehoD9d/BIe0DBjGsNJ4CAjEX3VE6BbL8GzIOwwLzBFbIwU50Rb5rXQAaO0sFTSMDtSQ/QePe7hOHVdeuDBca1lA6pHyAJRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cTmUP8+PcXHqPVKaCaea0EJ/CsFvhgklwEDUmmvFu60=;
 b=qeHZKFMjMAY/51qULDJfsx0ToFTMWYaSlV1ezOqjGCgXPfsLKaEDRQlr3fy7o9KgdukLUH/y9MzWv8aPaVk2MzkK5+8dThg7daoJDhSjR9ULrOZAtnQ5gJj6x06Gql7Dmj1/lcrPOwRxttMCwPpxEI/VoGF9dn+RTT7Vlg4VCf4=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MW6PR12MB9017.namprd12.prod.outlook.com (2603:10b6:303:23b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.48; Tue, 14 Apr
 2026 13:25:14 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9818.017; Tue, 14 Apr 2026
 13:25:14 +0000
Message-ID: <ecf4cd01-b05d-4f51-943a-631cc4b27331@amd.com>
Date: Tue, 14 Apr 2026 15:25:07 +0200
User-Agent: Mozilla Thunderbird
To: popov.nkv@gmail.com, Zack Rusin <zack.rusin@broadcom.com>
References: <20260414105529.9883-1-popov.nkv@gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260414105529.9883-1-popov.nkv@gmail.com>
X-ClientProxiedBy: FR2P281CA0186.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9f::20) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MW6PR12MB9017:EE_
X-MS-Office365-Filtering-Correlation-Id: 50bb8c88-e745-4c6b-c38c-08de9a2942de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|1800799024|376014|366016|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	8LeT4zAp2N773b48ZTE2JDDogXrZLJ2vbVXIrkLFT9jr3iXppkGyreXJMhLvX1hV6MoCrXld1nPIcA1wLWYPPfhIraPOPgIUT+yfIQttLr+0oMj30RB7l4LOD6RHxkH5JO90BHZweKfOXpf8TWt/+7T5stX6A2XMspLfyEvigTFckxGGbDWF6eILIVUkVH4dLS6sKe1O2rhD21ih1DBWkNafr+QMVP/Hlnmf3mF+ZVsU3uroIeLR0VItKA3kz1KlZ2eivehmlrczuvpASkWy1AQr/jitxqFOAYzYPbK+JtiR7YqRx4VT2uJpBTMthXWQnnqm5InnpXmDEjgRdtQvGEfRxAxGE5rjAFiT+FMgeLDYIg8pp97N9XIshi3UjJMBHaXKZFVVMQHjp26L+H9VR/1f7LFAUt7hIRabU38LgMPOyealVfZ1vW9amxnp9aXVa0QZhP473WBFcOsmwRsHbm06/CyM3v/OM4AW2Hw+pIPc/P/wosyAMp+7tIrd+QceuEl6ljdhWgB7IlkGXEtHBVQSztjAWNB5b/flaR2fAhx6kCcWqsjpfUgrFpX5/rcqL1D8mVdOIVNik/ftOPfI3gacYjkzAWfDawnR+JQqoR+B9ut9x3SgS2+sAPAet9wqNrd4V7MFXorYJLlICUfefd0FhiUwidFs/9VSLrIX86qCwlRn6T3mv6lv+mKKEmLdN8exP4iAmjXti86+VZ3j70hEQ/xYTCS00LE2BPBhc3o=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(1800799024)(376014)(366016)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OUlLZmE1a3NOQnE2aVI4Zy9vaHZhb2NkM2QzZE9SVnRmNnMzaSs1YWd1WXN4?=
 =?utf-8?B?NjRVbEROY3JBZ21zbWtkZjQ2Qjg5d1g3VHp6ZlVFUHZBdXhIOTMwak1vNmtS?=
 =?utf-8?B?cDVKK0lRbmlYNnM0QTRWUlVPSlFKSEF3Y0hwVXdvQnR6Viszbk50aGhLR3c1?=
 =?utf-8?B?dStFdS85S1BaMXBvOTBBbDltYXdCSzhScENFSHJCZmZDVng3S0RTZ0NmemZD?=
 =?utf-8?B?VFpHc3o5N1JnNzRYL3hmVkRSMnQxdTlMbnFlYyt5alNJMnh1TXBHWVRzRTg4?=
 =?utf-8?B?Q0N3ZEFWTHc5UStDak9IczM5NnloeFg4MGxBY1hCOEhmTzNmbzRiY0F5SWVU?=
 =?utf-8?B?c3BIb3BZc0NzQkNhZGdJK29YZEVzY2U4ZVhIVHN6SXc2WXlyTDlTQ0FRbEdJ?=
 =?utf-8?B?eE9mcTRIRSt5bFp5OXhwbUpGeERrYlZjVEg3MWRBQWJGMnlmVjZ3bHNXWm40?=
 =?utf-8?B?VnVZeXlOOEYvV3p0NUJaTHZZajZmUWpCR0VNZnZEdDR4YUNiS3VCU2hlZVRC?=
 =?utf-8?B?NWlFanRacnhqSzJCeC9BTEtKRVVmUUtQUnMwcFFzSHVhb0dtYVpsTW9LemhW?=
 =?utf-8?B?cEkrVUlrNE51WnQyQXI3d2NsZi9jaUVHbmVhRHpZK1l2VWkvUGF1UlBTUmpH?=
 =?utf-8?B?Tlk1TlFsRzBucEwyVU1FSEJ5dWJiMjVKQWtVTkwxNDFINzlKYUxGYTRvRy9S?=
 =?utf-8?B?bnpnTHg3TS8yaDVQTW0yclZNMkMzdzlZdjhBNnJSZHlDb0FBbnlHK3d3VzJr?=
 =?utf-8?B?WGN2UXZ5ZExJL1U4QVZPRDdTSElQN0NpYm84Z0U0b0VCNi9zZlNKaDZ1N1gy?=
 =?utf-8?B?TnhWcDNka3FrU2kzNEh2em1id3J5YlAwSHFoaFZLTGFLaW5EWExnSkZvbXBw?=
 =?utf-8?B?VmhOQUdrMFlGY3pOUkVQUmozQzNsZVVTc1BQQWU1UDBWcnVzcjdJSzhlb0Q1?=
 =?utf-8?B?dUg2dTk2c0t4a1JPYjB3Zm52em82MzlkUXo1dUFJRm9DNmIyczFBTEFjRTcw?=
 =?utf-8?B?Q3duNmRLNDdhcFlCaW1CUWwwM3NnVzdWOU8xZGhzaGxEMkJVR3JvdUY0Rno3?=
 =?utf-8?B?QmMvQ245NEdLcE83Y3NINXNtdmpTNndYblE2ZjZndGNIdGh1RnhQdGF0NHlW?=
 =?utf-8?B?eTJXV2VxRk5CdTQ2cHIyT01HaUhVL3hRTG4wS2hyc3M5LzNYVEZ4NElReEFF?=
 =?utf-8?B?YUp3enIwUE56R2hSMU54dEp5aEE4bmVyU3VmcnJPem1WZm1DZjM1ZHZqUUF4?=
 =?utf-8?B?UUN4dVZEUjB4MEZiRk5FNk1BOFB4VHphR2xKRUp1a0dFVisxUFN0TkVZMlAv?=
 =?utf-8?B?OXRoRXk4TUEwbHBtSVZ3eE5MSkRTV3lhMWkyMnRVcGF3UWpiVnp0OEpwMWkr?=
 =?utf-8?B?WTFjN3pseVZsNzEvdUltQnVqNktDOU1kQVJtNWRNTjZOdWhyU0NyQzNMRXZ4?=
 =?utf-8?B?SXVob1d1eURtMXBFZlY5Z0YrOXd5UWp2QmRCVmhEZE9SVEtIRjI3VFNYZWRZ?=
 =?utf-8?B?ZmppMmxEU1I5SGYxUHVKeVc2Mjc3RXFsSjBCNkM2bURRM3Vod29jM1pPcmh1?=
 =?utf-8?B?Uk94bkluZll4U3BZVlZYV1FvZitzalV1UjBzMXNnaHI2M21UTVBDWHBsTmpn?=
 =?utf-8?B?cHFqcXhxMHNHbXI3dmc5RjloN1FCUjNQcXBFZEE4aDF6UmZiQXdUTmFZOWRh?=
 =?utf-8?B?Qi9RbkhNRk9McCtscTBvUGVNTDNwRmlNMy8xeXU5dGpJdW1CdXV3aGc2ejhx?=
 =?utf-8?B?NWFDUHErQ2xKd1QrR2tyZWROck40NlEwS0pNUEZwRnQyZ2hYWkVtcmMycTlx?=
 =?utf-8?B?aDVPTGtLSTBVbDlNYjJxaW01RGJra3pEcXdPWmpJM2NtQTE3elFKOVdUOTl3?=
 =?utf-8?B?YnpYYnU5eVJ2OVg2aWdkSzZBSlk5clpnOEhwK0tqQnhyeWYrL0g3Z1UzNE5m?=
 =?utf-8?B?SUFURER2NElkc2FpQSt0UkJHa0xNNUppR3JobDJSeUNsYlVvM3BIR2Z2WmVK?=
 =?utf-8?B?TUNtc0Z0STRrVWx0MUNxVmM4OWphOExERm5LdjJxYy9ZeGtKdHFxTnVCK1lN?=
 =?utf-8?B?a1BMZVZ0SWhvNVYwaVpxY0dqcEozYmlLbllMQi9JVkZxdDBlajJCNG1lZTgy?=
 =?utf-8?B?aE83bW42LzNKWEFqNXlIdWR4Y1lWL3dtbVpUS1kxWVlrM1ZGTjNoaE1rWGZH?=
 =?utf-8?B?dG9BNmVzc01JMFV1MWJvYXpVUmdLZXNqZGcrVkQ0RllOZEhSWGQzVWxFeGJG?=
 =?utf-8?B?WUdCeWY5K2tGRkNaV0dDZ2hRdkNIVnR4NGFpQ1BleEhET1FDb1BpZEl3VDdP?=
 =?utf-8?Q?zS5seXCesC1C2+eOZM?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50bb8c88-e745-4c6b-c38c-08de9a2942de
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2026 13:25:14.1110
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: se8gAuYspTfk/CdMNIkS0Vvl4yPv23uvAkea+IS+t8S+N6YN2HIbsSsFOffKpyBK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR12MB9017
X-Spamd-Bar: -----
Message-ID-Hash: HGFNUXN2HELESQ6NSJLJUVW7IP7XIOTC
X-Message-ID-Hash: HGFNUXN2HELESQ6NSJLJUVW7IP7XIOTC
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: bcm-kernel-feedback-list@broadcom.com, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Deepak Rawat <drawat@vmware.com>, Sinclair Yeh <syeh@vmware.com>, Thomas Hellstrom <thellstrom@vmware.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, lvc-project@linuxtesting.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 15901/15901] drm/vmwgfx: fix NULL pointer dereference in vmw_validation_bo_fence()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HGFNUXN2HELESQ6NSJLJUVW7IP7XIOTC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,broadcom.com];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[broadcom.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,vmware.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,linuxtesting.org];
	DKIM_TRACE(0.00)[amd.com:-];
	NEURAL_HAM(-0.00)[-0.198];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:mid,linuxtesting.org:url,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 8DA4D3FA754
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/14/26 12:55, popov.nkv@gmail.com wrote:
> From: Vladimir Popov <popov.nkv@gmail.com>
> 
> If vmw_execbuf_fence_commands() call fails in
> vmw_kms_helper_validation_finish(), it sets *p_fence = NULL. If
> ctx->bo_list is not empty, the caller, vmw_kms_helper_validation_finish(),
> passes the fence through a chain of functions to dma_fence_is_array(),
> which causes a NULL pointer dereference in dma_fence_is_array():
> 
> vmw_kms_helper_validation_finish() // pass NULL fence
>   vmw_validation_done()
>     vmw_validation_bo_fence()
>       ttm_eu_fence_buffer_objects() // pass NULL fence
>         dma_resv_add_fence()
>           dma_fence_is_container()
>             dma_fence_is_array() // NULL deref

Well good catch, but that is clearly not the right fix.

I'm not an expert for the vmwgfx code but in case of an error vmw_validation_revert() should be called an not vmw_kms_helper_validation_finish().

Regards,
Christian.

> 
> Fix this by adding a NULL check in vmw_validation_bo_fence(): if the fence
> is NULL, fall back to ttm_eu_backoff_reservation()to safely release
> the buffer object reservations without attempting to add a NULL fence to
> dma_resv. This is safe because when fence is NULL, vmw_fallback_wait()
> has already been called inside vmw_execbuf_fence_commands() to synchronize
> the GPU.
> 
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
> 
> Fixes: 038ecc503236 ("drm/vmwgfx: Add a validation module v2")
> Cc: stable@vger.kernel.org
> Signed-off-by: Vladimir Popov <popov.nkv@gmail.com>
> ---
>  drivers/gpu/drm/vmwgfx/vmwgfx_validation.h | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_validation.h b/drivers/gpu/drm/vmwgfx/vmwgfx_validation.h
> index 353d837907d8..fc04555ca505 100644
> --- a/drivers/gpu/drm/vmwgfx/vmwgfx_validation.h
> +++ b/drivers/gpu/drm/vmwgfx/vmwgfx_validation.h
> @@ -127,16 +127,23 @@ vmw_validation_bo_reserve(struct vmw_validation_context *ctx,
>   * vmw_validation_bo_fence - Unreserve and fence buffer objects registered
>   * with a validation context
>   * @ctx: The validation context
> + * @fence: Fence with which to fence all buffer objects taking part in the
> + * command submission.
>   *
>   * This function unreserves the buffer objects previously reserved using
> - * vmw_validation_bo_reserve, and fences them with a fence object.
> + * vmw_validation_bo_reserve, and fences them with a fence object if the
> + * given fence object is not NULL.
>   */
>  static inline void
>  vmw_validation_bo_fence(struct vmw_validation_context *ctx,
>                         struct vmw_fence_obj *fence)
>  {
> -       ttm_eu_fence_buffer_objects(&ctx->ticket, &ctx->bo_list,
> -                                   (void *) fence);
> +       /* fence is able to be NULL if vmw_execbuf_fence_commands() fails */
> +       if (fence)
> +               ttm_eu_fence_buffer_objects(&ctx->ticket, &ctx->bo_list,
> +                                           (void *)fence);
> +       else
> +               ttm_eu_backoff_reservation(&ctx->ticket, &ctx->bo_list);
>  }
> 
>  /**
> --
> 2.43.0
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
