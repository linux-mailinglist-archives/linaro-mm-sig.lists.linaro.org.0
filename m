Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AG2dCQ3BCmq87QQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 09:34:37 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C816567B61
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 09:34:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 729E44051A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 07:34:35 +0000 (UTC)
Received: from CH4PR04CU002.outbound.protection.outlook.com (mail-northcentralusazon11013020.outbound.protection.outlook.com [40.107.201.20])
	by lists.linaro.org (Postfix) with ESMTPS id 30C3F40475
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 07:34:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="uBIVhf/f";
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.201.20 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k6jShW/h+ZKD6v5odz7fpHB2bXt0+WrwsafEIyoBSkElbEst7rkFi+PafGPFFJ5UeMwGJoaK0l4ZXWBwprmnMEUAbCXlnN+yyGWxLQH4zBBx/th1wElc7PABELauC7Fm8Y/73VfmzD9TztzheE62TicN/4dIFZTa1fwrHdXAiPWWpHh6hBFU+T5hxQw1PH1mBYRR7JCTJgcbO4PXwq7KSdWjdjVmlZiyx4mhSOY60deVXGRDjgQ/1G8pUdLcH+w31EgYDsnGVN6tdN8LzXoAsRUK8fl/dbv6x5GgnsqyS7ATucfOssrLN9h2gg11VLfYTrnGueqjVysVnHZQk5/Wpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oGK1Fc3IZVi27vk7jBfZylC+6MP/Pejak+VnOxftD/s=;
 b=KnCNPPqGk77rPsFRDt7FgF8XbnK+php/4O/Fs7ToF3fpS150qzmUQvxqqbzmHPtAXwqKXK6QpLh188F1CR7TvqTBnN9b71Bmq4rq6zDIiRq+NiudP0U1/HIQsYTC0yDpQoR02m4YdMBTg35BJA2xyCVQ7JoLNg6x5bykxswTwBQ2YyQG3j/g2llbG4wPTevI9g+tFDSrrtozrT8PGJc5944oIQ9qiPmnDuFTwUE1hzbaCSZfQXy/z1CDx4lZhUZCbVzaeCa+FYoAoydubEllEb4E3njoznDZhIElmWSwKTw8xMYI2gQjOp8JBQOmGqyLzLAHOy5JkPwZ8NVZYpmGLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oGK1Fc3IZVi27vk7jBfZylC+6MP/Pejak+VnOxftD/s=;
 b=uBIVhf/fvieTFEFZs2OVD6895O1RoTHheTs8tsTxulsReZ1Dh/LZOclWzSOV/hWZrKqflLyD0hCqcWGIdZ6DEd3v1b12uJvIEQRCgqKKQItgTu0lK0lwKCwJujnPnrP7IUDVbydFqZWWzLzjs7wUeXKtIx8FVZZa9zFMuluncMk=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DM4PR12MB6327.namprd12.prod.outlook.com (2603:10b6:8:a2::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.25.23; Mon, 18 May 2026 07:34:17 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0025.022; Mon, 18 May 2026
 07:34:17 +0000
Message-ID: <cb84c2ee-9de1-4565-b2e0-60984721228f@amd.com>
Date: Mon, 18 May 2026 09:34:08 +0200
User-Agent: Mozilla Thunderbird
To: Barry Song <baohua@kernel.org>, "T.J. Mercier" <tjmercier@google.com>
References: <20260512-v2_20230123_tjmercier_google_com-v1-0-6326701c3691@redhat.com>
 <20260512-v2_20230123_tjmercier_google_com-v1-2-6326701c3691@redhat.com>
 <8ef38815-6ae9-4359-86d4-042554357639@amd.com>
 <CABdmKX2uwZ12kYJYPJGfWxuMBOJS=64b1GRj72tfB5D=NKM22w@mail.gmail.com>
 <CADSE00Jq_uvNgvxgPze0mEdUd+hF4-DPZkHy0KroWHZzygf4WA@mail.gmail.com>
 <CABdmKX3DhejYBis9htLDnzPrG7vuF3R3URLVNEbnyd61SSsx=g@mail.gmail.com>
 <CAGsJ_4zyecY6E-=Tm4_couT7uoM9LMcFdTMUPkZAjj4zUKE-dQ@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAGsJ_4zyecY6E-=Tm4_couT7uoM9LMcFdTMUPkZAjj4zUKE-dQ@mail.gmail.com>
X-ClientProxiedBy: FR4P281CA0375.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f8::10) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DM4PR12MB6327:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ba71726-fef0-487e-f64e-08deb4afde19
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|7416014|376014|22082099003|18002099003|56012099003|4143699003|11063799003;
X-Microsoft-Antispam-Message-Info: 
	Rz36V3JIkquESeE/DPFbosgntqxhqt/jDujZFBZDb1Ogtbj4OQgLJtz7mdlR0MxOIWkOqmgfPsgIdYqDlbubBariIyQ8R2hiHPfnEWeiA1D27vD/p53H5MorgRfXzx7U8tq/9gSQ7kW+xlOjOqV3lWeX7HPOEsPQSAW4ikR/bxFa4iBrqT++LedFyj2moTbKttnCN5ZB3gXLgWMqTgZqcBGy8GaU8rVpwxF8ZzP07gE33ZwcO9VWm9eYrPQ8LCYACE0gWNCwxZZA9XeNpz2Fmt+WTDB7/53UJAJDk+NPYMfd2LSlkB8vE4dCLQRmMNJxh5sZjbugmsqMK6NMsJw+CbD6mD2K7sRdsrkRRkrCL+Bc2GyN21ZJVuh4xIptIWlIGA5SD2iXVBJ9iDp12SttiupFOecfp5gmYwvdW/HWedT0GUdhLI6Cp2H5XZUt/js1WvDMUi04ZK41VPGHxS4X+Yx1daPSVec1+0rngORI+lzQo75PnL0vHvxwoMAZybtnrt5VmpvtSjEsB8nrhGC0iZ0l3br7WrpWDoc5xHX86LUtonTGY6u3+GdnADPQ/B2M5tixXduShHOpJu+zzgYT+lxRNuDwW2NmRZ2czjcgh1KA2X5DejpxRFZz57VF1oqMjLaMO7MxAhpcTdQwd4bvCKn5MS6rXJwIGYBktHP0GdzLmX6NKcjB2HVS4PeRqAu9
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014)(22082099003)(18002099003)(56012099003)(4143699003)(11063799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YjN2QVN5WW4vRzViUFZ0dVhsT0Q3RnRvU3pVU1h5NWV2bnJST2pBbkxyNWo0?=
 =?utf-8?B?b05KZ0JjVnAwUzhXWnEva0hSVk1Db29JVmtqZlJhbDd3T2twd0FrYk1TZVQ0?=
 =?utf-8?B?NWxxbU1kci9qN1pnV0JEVjlKSzRuZWRpUHRLRDgzSjVoTENPVkp3YmhMNDBi?=
 =?utf-8?B?bWZJb3pMN2hsemE4TG9RRkZQMXVkWDE1OG9HRlBBS1lrZmthczhHa1dzWEVJ?=
 =?utf-8?B?NVZrdkhtYThVd0Z4Tkd3SXNPL3lwTEdwbkM2TSs1V3gvYS83N3U1eXF2NHh3?=
 =?utf-8?B?QTdHUFhaQnMwU0xmd2kyWnhxQlhsOWd5bkF5dXRqREVXMWdrdXY0Q2ViUlZu?=
 =?utf-8?B?QlRDdWtLUm1UQkdaL2RFV1kyNGQrUlRzS21RVS9XWUxzdy9vNlNMcTY1UnRq?=
 =?utf-8?B?b1RwcGFKQ1pmS0EzMkhVUUw0TWg5ZG84dllYczc5UmVvSHJUeExJTzFKaWxM?=
 =?utf-8?B?anViZDZUaldVNEIrYXhtUEdzUDRXK05LL1pncUdBVHFDWTNIUFlDaC9BNW8x?=
 =?utf-8?B?WU5ESTRRQVpQdkhNVzBQcVAyNUMrL3oyakNHT3dyV0YzQXI5Q0hzWWVzUjAy?=
 =?utf-8?B?NjFyQ1kybk1WNE9GY3Q5WGQ1VlJtejVINGUxaUxOeThkRlIwZk9ZWUwvVVky?=
 =?utf-8?B?bElhS2NqWHRYNkR3MzBYQzYvQnZZQldKTnJtR21OOUhHMlRDM1BPdHVSSXQx?=
 =?utf-8?B?NlNObERhTE1DckRmZkRJalFldm9GZk9NVFd0dXBhdnBvMUNxeWlNVS90d1gr?=
 =?utf-8?B?dFRYNmtxdlVXSkN1cnBHT1J1UDc3dXNnNkIrV01sazZFeVo3VVcvS2FlM1Jr?=
 =?utf-8?B?L2hWbCtHRU5WZy82aGx6OVVxTThLR1hRaURSNlo5MTNnOTdYVk5NUVI2WHR1?=
 =?utf-8?B?K0U1WE5xdGtMR0wzRTJ2STBQcXk4YkpqemJHU1J1M091Q3JlVk9yMVp0dDAv?=
 =?utf-8?B?S2FPcDVMd0lDYmhLU2RXVUM5ekZxWE9QWTFmeURaciszdllyUGpWVVl0Y3dl?=
 =?utf-8?B?aElnQlNJaTNwZmhnTlpDRXd3Q3QrVW9nQVFzKzhjYTZtc1NoSUFXeGxrd2pJ?=
 =?utf-8?B?cG9WQjUyencxSGRyclVhUHllYjFLc0kyd0UxTlRTZDlldnlyU1hkVkFCRjZJ?=
 =?utf-8?B?RC82VDlDaUY3VFVMb1JWS3h3eVBpcHpWQlZEcXBBcjQ0TmtzeGZJZnU4bHhH?=
 =?utf-8?B?UVBBa2ErWFh1R0xEaEpBZ0lxeTU2T2p0ZythenlPQXMvVlZkZm5rc3FUNXpB?=
 =?utf-8?B?VmRaazdTY2JoZ1NvL253eEdXVHR1K3RtQXZaUlcvZDlhaTdVbmI4WlJYVG1E?=
 =?utf-8?B?dDZ2d28zSStsYWpFVklOZVZmR2NnUDgzWVRTZHgxOUNoM2FlMzAxQjFJL293?=
 =?utf-8?B?SUtEZTRzcjhnd3MyZ1ErekpONWZZZ01aMXg5TThURWhiWmNXM3l5dHdvTzMx?=
 =?utf-8?B?OEJwd2xYaVJoWmdhTFYvVzEvV0YwNUdpUmdUVTVYZ28xaHgwZ1V2TzkvVlNX?=
 =?utf-8?B?TURZZXZjTURRa2dJKzdyeHRQejdzdktaM1dVZ3I0VnVvOXFBSHpNRWZGMURL?=
 =?utf-8?B?d0ZFYUpkOTJhQVhCMllwdEdYZ1NOc3NYOTh5RDRJUTJrMS9lNHN1VFZrb0hL?=
 =?utf-8?B?SXljSlFVL0d2ZGhJaDJxNVBYbVdRRzdaY1hhSTZ6ZGpzbGJjSC9VMldPUUpZ?=
 =?utf-8?B?UThJTnd4Tm02UE5lbVpkK0kyVWVPM2Nma2dTVk1kVmFDMWU5R1ZJem15bXNL?=
 =?utf-8?B?eWsrY2RyL2wxWUpiOVRoQ0RwdHZFYXRqMmFycHlhdjBvRlFtN0JJWDVsdTlV?=
 =?utf-8?B?aXY5em5GVnJuWHdDM0FJVE5lQkRTV0xuNXVkV1ZNczZTTk1QZ2ZCWmw2NFpz?=
 =?utf-8?B?SVJrTXlxYTNhMm9vSWR0bUdUeGwxa2x2NldLVEhBNDBFY0JmY3ZIeWZaM3dS?=
 =?utf-8?B?SkZHYW1RMXlzekVBU2diSE5CT1RKVzdzT0NGcUNkSm1tREVNVlJJNHdHckoz?=
 =?utf-8?B?NWhITFlLN01JQTBBdGpFM2lzUCt2bDRlUFltTzVMMnFqSjJFNEhuRllRRzBS?=
 =?utf-8?B?ejZDZ0pTZjZTUG9qdFRlcThGSUhFVU16NlFyRjRxeFY4NUovcDExSWxLQ1V2?=
 =?utf-8?B?ZGZtN3lTT3BtTnY4OHI0U3A3NEtUUDIxN1J2WmZSSTl0eFd1ZWdlZXpObE82?=
 =?utf-8?B?TjRoRUhpK3VXL0pHNDkrd3hrNlJrUW02MmxQRGlNYTRQK0dyL2l0QmlHekNJ?=
 =?utf-8?B?M2xEclNLNjNTVzNISXAzanZReHpEMGxxd2d6Q2dIOCtacWI4WWlacWFuR3l6?=
 =?utf-8?Q?izuDB4c3QEpID/cTUJ?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ba71726-fef0-487e-f64e-08deb4afde19
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2026 07:34:17.3042
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dTYc+kXojVBuwAvXkRpJsgRPNSmUM5Y0Q5JghRCK9k9Y4iDqIe+OiSYcXx9z1Gqk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6327
X-Spamd-Bar: --
Message-ID-Hash: ZFP7V4EP2FXKSS5CSZZ63EJMBPFZ7MKX
X-Message-ID-Hash: ZFP7V4EP2FXKSS5CSZZ63EJMBPFZ7MKX
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Albert Esteve <aesteve@redhat.com>, Tejun Heo <tj@kernel.org>, Johannes Weiner <hannes@cmpxchg.org>, =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Michal Hocko <mhocko@kernel.org>, Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeel.butt@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Christian Brauner <brauner@kernel.org>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, Ondrej Mosnacek <omosnace@redhat.com>, Shuah Khan <shuah@kernel.org>, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri- <devel@lists.freedesktop
 .org>, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, linux-kselftest@vger.kernel.org, mripard@kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 2/5] dma-heap: charge dma-buf memory via explicit memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZFP7V4EP2FXKSS5CSZZ63EJMBPFZ7MKX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 9C816567B61
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_TWELVE(0.00)[36];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,kernel.org,cmpxchg.org,suse.com,lwn.net,linuxfoundation.org,linaro.org,linux.dev,linux-foundation.org,collabora.com,arm.com,google.com,paul-moore.com,namei.org,hallyn.com,gmail.com,vger.kernel.org,lists.freedesktop .org,lists.linaro.org,kvack.org];
	DKIM_TRACE(0.00)[amd.com:-];
	NEURAL_HAM(-0.00)[-0.951];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:mid,linaro.org:email]
X-Rspamd-Action: no action

T24gNS8xNi8yNiAxMToxOSwgQmFycnkgU29uZyB3cm90ZToNCj4gT24gVGh1LCBNYXkgMTQsIDIw
MjYgYXQgMTI6MzXigK9BTSBULkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPiB3cm90
ZToNCj4gWy4uLl0NCj4+Pj4gSSBoYXZlIGEgcXVlc3Rpb24gYWJvdXQgdGhpcyBwYXJ0LiBBbGJl
cnQgSSBndWVzcyB5b3UgYXJlIGludGVyZXN0ZWQNCj4+Pj4gb25seSBpbiBhY2NvdW50aW5nIGRt
YWJ1Zi1oZWFwIGFsbG9jYXRpb25zLCBvciBkbyB5b3UgZXhwZWN0IHRvIGFkZA0KPj4+PiBfX0dG
UF9BQ0NPVU5UIG9yIG1lbV9jZ3JvdXBfY2hhcmdlX2RtYWJ1ZiBjYWxscyB0byBvdGhlcg0KPj4+
PiBub24tZG1hYnVmLWhlYXAgZXhwb3J0ZXJzPw0KPj4+DQo+Pj4gV2UncmUgc2NvcGluZyB0aGlz
IHRvIGRtYS1idWYgaGVhcHMgZm9yIG5vdy4gQ01BIGhlYXBzIGFuZCB0aGUgZG1lbQ0KPj4+IGNv
bnRyb2xsZXIgYXJlIG9uIHRoZSByYWRhciBmb3IgZm9sbG93LXVwL3BhcmFsbGVsIHdvcmsgKHRo
ZXJlIHdpbGwgYmUNCj4+PiBkcmFnb25zIGFuZCB3aWxsIHN1cmVseSBuZWVkIGRpc2N1c3Npb24p
LiBGb3IgRFJNIGFuZCBWNEwyIHRoZQ0KPj4+IGxvbmctdGVybSBpbnRlbnQgaXMgbWlncmF0aW9u
IHRvIGhlYXBzLCB3aGljaCB3b3VsZCBtYWtlIGRpcmVjdA0KPj4+IGFjY291bnRpbmcgb24gdGhv
c2UgcGF0aHMgdW5uZWNlc3NhcnkuDQo+Pg0KPj4gQWggSSBzZWUuIEdFTSBidWZmZXJzIGV4cG9y
dGVkIHRvIGRtYWJ1ZnMgYXJlIHdoYXQgSSBoYWQgaW4gbWluZC4gSQ0KPj4gZ3Vlc3MgdGhpcyB3
b3VsZCBvbmx5IGxlYXZlIHRoZSBvZGQgbm9uLURSTSBkcml2ZXIgd2l0aCB0aGUgbmVlZCB0bw0K
Pj4gYWRkIHRoZWlyIG93biBhY2NvdW50aW5nIGNhbGxzLCB3aGljaCBJIGRvbid0IGV4cGVjdCB3
b3VsZCBiZSBhIGJpZw0KPj4gcHJvYmxlbS4NCj4+DQo+IA0KPiBzb3VuZHMgbGlrZSB3ZSBzdGls
bCBoYXZlIGEgbG9uZyB3YXkgdG8gZ28gdG8gY29ycmVjdGx5IGFjY291bnQgZm9yDQo+IHZhcmlv
dXMgdjRsMiwgZHJtLCBHRU0sIENNQSwgZXRjLiBJbiBwYXRjaCAxLCB0aGUgY2hhcmdpbmcgaXMg
ZG9uZSBpbg0KPiBkbWFfYnVmX2V4cG9ydCgpLCBzbyBJIGd1ZXNzIGl0IGNvdmVycyBhbGwgZG1h
LWJ1ZiB0eXBlcyBleGNlcHQNCj4gZG1hX2hlYXAsIGJ1dCB0aGUgcHJvYmxlbSBpcyB0aGF0IGl0
IGhhcyBubyByZW1vdGUgY2hhcmdpbmcgc3VwcG9ydCBhdA0KPiBhbGw/DQoNCk5vLCBqdXN0IHRo
ZSBvdGhlciB3YXkgYXJvdW5kDQoNCkRNQS1idWYgaGVhcHMgY2FuIGJlIGhhbmRsZWQgaGVyZSBi
ZWNhdXNlIHdlIGtub3cgdGhhdCBpdCBpcyBwdXJlIHN5c3RlbSBtZW1vcnkgYW5kIG5vdGhpbmcg
c3BlY2lhbCBzbyBtZW1jZyBhbHdheXMgYXBwbGllcy4NCg0KZG1hX2J1Zl9leHBvcnQoKSBvbiB0
aGUgb3RoZXIgaGFuZCBoYW5kbGVzIHRvbnMgb2YgZGlmZmVyZW50IHVzZSBjYXNlcywgcmFuZ2lu
ZyBmcm9tIGJ1ZmZlciBhY2NvdW50ZWQgdG8gZG1lbSwgb3ZlciBzcGVjaWFsIHJlc291cmNlcyB3
aGljaCBhcmVuJ3QgZXZlbiBtZW1vcnkgYWxsIHRoZSB3YXkgdG8gYnVmZmVycyB3aGljaCBjYW4g
bWlncmF0ZSBmcm9tIGRtZW0gdG8gbWVtY2cgYW5kIGJhY2sgZHVyaW5nIHRoZWlyIGxpZmV0aW1l
Lg0KDQo+Pj4gdWRtYWJ1ZnMgYXJlIGFscmVhZHkNCj4+PiBtZW1jZy1jaGFyZ2VkLCBzbyBhZGRp
bmcgYSBzZXBhcmF0ZSBNRU1DR19ETUFCVUYgd291bGQgZG91YmxlIGNvdW50Lg0KPj4+IEFyZSB0
aGVyZSBhbnkgb3RoZXIgZXhwb3J0ZXJzIHlvdSBoYWQgaW4gbWluZCB0aGF0IHdvdWxkIGJlbmVm
aXQgZnJvbQ0KPj4+IHRoaXMgYXBwcm9hY2g/DQoNCldlbGwgYXBhcnQgZnJvbSBETUEtYnVmIG1l
bWZkX2NyZWF0ZSgpIGlzIG9uZSBvZiB0aGUgdGhpbmdzIHdoaWNoIGFzIGJyb2tlbiBvdXIgbmVj
ayBpbiB0aGUgcGFzdCBhIGNvdXBsZSBvZiB0aW1lcy4NCg0KQnV0IHRoaW5raW5nIG1vcmUgYWJv
dXQgaXQgd2hhdCBpZiBpbnN0ZWFkIG9mIG1ha2luZyB0aGlzIERNQS1idWYgaGVhcHMgc3BlY2lm
aWMgd2hhdCBpZiB3ZSBoYXZlIGEgZ2VuZXJhbCBjZ3JvdXBzIGZ1bmN0aW9uIHdoaWNoIGFsbG93
cyB0byBjaGFuZ2UgYWNjb3VudGluZyBvZiBhIGJ1ZmZlciByZWZlcmVuY2VkIGJ5IGEgZmlsZSBk
ZXNjcmlwdG9yIHRvIGEgZGlmZmVyZW50IHByb2Nlc3M/DQoNClRoYXQgd291bGQgY292ZXIgbm90
IG9ubHkgdGhlIERNQS1idWYgaGVhcHMgdXNlIGNhc2UsIGJ1dCBhbHNvIGFsbCBvdGhlciBETUEt
YnVmIHdpdGggZG1lbSBhbmQgd2hhdGV2ZXIgd2UgY29tZSB1cCBpbiB0aGUgZnV0dXJlIGFzIHdl
bGwuDQoNClRoZSBvbmx5IGRyYXdiYWNrIEkgY2FuIHNlZSBpcyB0aGF0IERNQS1idWYgaGVhcCBh
bGxvY2F0aW9ucyB3b3VsZCBiZSB0ZW1wb3JhcmlseSBhY2NvdW50ZWQgdG8gdGhlIG1lbW9yeSBh
bGxvY2F0aW9uIGRhZW1vbiwgYnV0IEkgZG9uJ3QgdGhpbmsgdGhhdCB0aGlzIHdvdWxkIGJlIGEg
cHJvYmxlbS4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiANCj4gVGhhbmtzDQo+IEJhcnJ5
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
