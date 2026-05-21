Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oATlKmIFD2pzEQYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 15:15:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0AA5A581A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 15:15:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 609B440976
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 13:15:12 +0000 (UTC)
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013006.outbound.protection.outlook.com [40.93.196.6])
	by lists.linaro.org (Postfix) with ESMTPS id B18CB3F985
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 May 2026 13:15:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=4m0jxaQI;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.196.6 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VEFhM1U6htEYqlf/4N8kLEupZ86XIZ8A+w/7VWkLPQvMcfk8fR5aAM4raZ7jpWHXLCECeFZuE5doWRfc0gexR2bi+YbtlSy/iiYeoHzqatKosn/eisDnsGFROCVdlB0/j03azi0nf5X46LFAXpwdLiCT1s/gs221wi7nev/bm2GmlmBFF/rtU4goKilOu07+zXwxebanUIk9g2d+05mmwe4zHp4ZQKJsDDLeDtzUNtR2GjMbpIhHC8KJHDl/ZZC/utt4+1VCnzmgcUUmRFojfg/ddr/lCQQek8S1rV38LnuAuob99OfmETYMrHNf5cnQFtdanoY0ZXcKc4kvYiMIqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y0eUWRO1OC1fxvLh1MsspTmWYN3L2CPXYktb1HDGFbw=;
 b=L1Bhvg2e8cE6e/RK1XVdBMH14SBao15xhbzzRrfyCkItCmQgSLuLdXc0+GYOYtMfpfUH5tVIWg2tBHj6y5KeszAXcCw7mmmeT/02nQr/FnGiAYSySnwl0BS9nDYxb42hhxKtchAxVdb7pAPjEkzK+B3gGPyYr9nSRWZ0+p4TX/v5WdoZUHdBb+vdXAGYZHj/oGNc1z3P9G83AlkG9mqXqkDj954Egedl/QVl71tto2f6/gWDPV1cttzWGS5Cpz6nI8i+9TgdY6hnqLeC8LCjIwRwWw2/pbUN8IVchKHBC9nfyIXkWS57JOfombuscZiKD2cB0WaYwCqmfDJ4wJTrkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y0eUWRO1OC1fxvLh1MsspTmWYN3L2CPXYktb1HDGFbw=;
 b=4m0jxaQI8QivcNu2g+nTOkJGOAM8/7Jtj/0CvTSFd1Q/VoqIfyjclxohlqQ+dNxPnh2jf6h22cGAR2pk2VOr8hhANYBtFM9GVktj8ZYhJ2WVwBef5Itjf1Ocmiu8ywpBP6UBbLW25gODIB3X+Rx+hDRd/C/eEHsxWbF9p+6OeKE=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ2PR12MB8884.namprd12.prod.outlook.com (2603:10b6:a03:547::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Thu, 21 May
 2026 13:14:58 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0025.022; Thu, 21 May 2026
 13:14:58 +0000
Message-ID: <e4fe1485-3b66-4f99-ae8d-18db140d3fa6@amd.com>
Date: Thu, 21 May 2026 15:14:51 +0200
User-Agent: Mozilla Thunderbird
To: Albert Esteve <aesteve@redhat.com>
References: <20260521-dmabuf-limit-access-v1-0-26c01e27365a@redhat.com>
 <7b662fcd-3bcd-40a2-b014-d9ce36f6425b@amd.com>
 <CADSE00J1+V4=qFZPOL8Cr8hYw6d=hf_XcDPezjYGkcxAwLYGyw@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CADSE00J1+V4=qFZPOL8Cr8hYw6d=hf_XcDPezjYGkcxAwLYGyw@mail.gmail.com>
X-ClientProxiedBy: MN0PR03CA0004.namprd03.prod.outlook.com
 (2603:10b6:208:52f::10) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ2PR12MB8884:EE_
X-MS-Office365-Filtering-Correlation-Id: b38c75c3-73f7-49cf-9089-08deb73af4db
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|7416014|376014|366016|6133799003|18002099003|22082099003|56012099003|3023799007|11063799006|5023799004|4143699003;
X-Microsoft-Antispam-Message-Info: 
	cg7RC4wL3qS3mp0K5O8yCrJ7m2TmCy0fWakN77RaDswniE9GOUg9PaMzCeoa5CY6TSlXZWwwiUiAzgOvDbgXZW6P80KzsbQ1aIDjygPpLh+3EzoOFA713nlobrCYHOeuegvduRsqCJtwMtVUD4ZdCLWh+r9cCvvcxjeHdA9R7isJxHMOW2ksVZV3q0MuwDsX4psYPTEUy8+s3oJ7EscgVFgLOLNTq46aW8KuCyCEEmCOuB7+I3CxziSqPB6wSVYFRIhkgpD1bzyYafizxXJHFFgBPHRBQgLghZujBrepVqHijxHxB9FdcXb3XidBm1GBH7GvD7TE9bgYOq4bFhv0N5FQcnX58yiLQJoRKmhtKjMYYkRJLeSZHfqNYChwyOd19qT5V8kXwla/a6tuhczGARi5Bb8ePuJ5tpwsChDyGLTL4DRc2YJaLl3n6/3MKHHBGoUzDBi4EBR6qavaftYNN/WGvxjktLK7opppl1MWQbIqRA708cixJqvSTz1oEhQt4gVcdMutTmBqzZ+ov59n6+8aS0cZtaf1pQchTX1g4zLsV2wTg0B/SuzD3Mt6At7RXQbBOSQn4YsbRgfTKYJyIEqWSMhYxkmhv85M+K2f1alMxWv2Hq+j8H+p+B8urXm931EvaGAOQQ3O7MEpTRv2eVeclAS5/Jh1/O97mvi4LjFB1j2upi+XQvrsutjGJ/X5
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016)(6133799003)(18002099003)(22082099003)(56012099003)(3023799007)(11063799006)(5023799004)(4143699003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UzRRTXFqVDd3dE9NY25qRUl5cWtnK1ZVSWdZZ1E3WXpsc0xKT2xJU0tDRldn?=
 =?utf-8?B?K0ZGVkRaQ0doNHJqYTVOTGlDbnRXdEh5NDNpM2V0UEpnS1V1Y1J2eEpadXJS?=
 =?utf-8?B?VFc4VjNsbElyTnJUb3VybjFYYzliVkJUL05mZjhXcXREbHU1a3FtNlc5QXRh?=
 =?utf-8?B?YXNPWWpBSEJhWUNkN1VuR1RxN3puUnFldjl5ZmZzZzQzL2d2NG54aVRFTDNy?=
 =?utf-8?B?ZzFHbGszd2Y5VmY2MEkweHp2TjVSb3VmUUhONDI1ZzNETTZ5ekQ0MVlVVks2?=
 =?utf-8?B?MzBoejNnbmM4aHoyNXdySGlZQjQ5amRyZkxMcWVGZU5oNHdUWUdXRkZUYzNq?=
 =?utf-8?B?Y0pjUTlQblhDemF4VGptbmpyQklnNkI4d20yaUdQNFIrYkZ5S2ZvcDNDL1Jo?=
 =?utf-8?B?NWc4Njc3eDhMclI3dzVDRW05U1R4Vm12d3ZmZ29DTE9qTTllRzFtTS9UWlkw?=
 =?utf-8?B?VC8wUFJpUzdzSFJ5TGljRy82bFBIdTFsRnFSOG5uOVVaY1Ivb2xzSVlzcXpo?=
 =?utf-8?B?QWZWNkpWK0FEU1AzZDNuS21yTUVBZnlzcEEvbk1CYk4vNEpLcTNHbUwvajl5?=
 =?utf-8?B?STlVcVorMGVRYitkaHpPZXpMV1Z1KzVJUjJLcThBVytKckxnRjBSamVIS0hY?=
 =?utf-8?B?dFplblp0QjBKY2JsVll0SXRwWVY3cFpwMkF2YkltaUFYVm1MbTh3dTlaZ0ZP?=
 =?utf-8?B?UUdmay9PbXdOUzQzWnE1bGpySnhJNk5jeGFBSWxFNnpMbHprZkN1SENnMWow?=
 =?utf-8?B?akMxSlhLMzc3SjlFTjVPSGFOUisvZER1ZG5MSnRPdDEwa3dtOXU5UHoxa2lm?=
 =?utf-8?B?TTdRR0poSU51eXpCVWRLci90SHNvWWNSYlpPQW5NZVJsZmw2U0dHVFltN3gy?=
 =?utf-8?B?d1lRVGFPS2JCOVcxejVjRHN3Tk13QzhZMDNDM2g0ZU9ONlVvMmVTUGFjOFRz?=
 =?utf-8?B?c25uM3pzY1lKZkVlL2tnY0ZjeHJSOTcrZFlhc0w5SGdxUlJhejFocnBNellC?=
 =?utf-8?B?ODhTNWxDbFNiVHFoUDRlSlVsYzh3VDduNnZDNE1sOHRWc3J3VktzZ214NW9i?=
 =?utf-8?B?a0w0Znc3eXZkUlJQaGZUNzZIaXBlMlQyL0M4Q3ZjZ0dDSmhBOFRhdXZrZ3kz?=
 =?utf-8?B?dnlsMElycC9VTVlRcmlobmttQ1A0VkpFY24wTjEzT20wVnE0OUdOUVlybkZa?=
 =?utf-8?B?V09KWE40aThzbUhwNDZLOFUvWkZia0dDcXIvODEyQWZma0xYUWtMVkVTNEJl?=
 =?utf-8?B?WW05UmdhdWgzSFBSajY0NFROa1RWQXd4TFZkSVFGM2NMdnY5VSs1VXVjMG13?=
 =?utf-8?B?QWpmQ292K2FtRjNML0hOdTFPZnEzTnk3VmpsV0RCaU9UbGhDQ2ZZRjBJNkpC?=
 =?utf-8?B?Y1FHdWFlZXdSK2NvTkR5VWFhZ3QvZ2ozWGY3eEpmWk1iSnR5dGhtVXU2eWlI?=
 =?utf-8?B?MnRoMzdUVGdMeGFIMjVJRUlPNUhhRVJmM2VXY0RtUC9vWElBQThXaDVwRXFX?=
 =?utf-8?B?aTVDMnBQZjQ4NEFMTXkzL01UOE1xMTlaRVhVNVBnL3ovMmJOY0g2aHBIU2Nq?=
 =?utf-8?B?UE9BeTFUTHJ1OXExZ1NXYTdETGdUaHFhYTJRUk0zV1VHaFcyWkpnNEw1dHkz?=
 =?utf-8?B?QjlJcndBT0NVcE01QXdLK2NwWlBidFhQR1ZJa21DK2dGVkZrOXlGRU0xNVlX?=
 =?utf-8?B?NUF5MFZtQ3hwS25iVG5qeVkveVROYVJkYWtyODF6WFZZcVlSZnIvK1orVlFW?=
 =?utf-8?B?eUNuTkdvMU5yMXBhdHlwSnpoN09oNWR1TEU4MW5pZFhIbUJyc3Fic3hDVlE4?=
 =?utf-8?B?V2Nmc1lBV3JvWjhtcDZzeUNySVdaaGVvN2l5L01uYzl2elI2NWpLb2Y4YnJH?=
 =?utf-8?B?bHdHNTV6Ukc3aDNHOUhGcXQwbWdoYnYra0lybUJRa2NjZnJZcU1LQ3E5SnhL?=
 =?utf-8?B?VWVMK0V6MTFUMjczaDVIaVYycW9rYXVXdGRka0Y0Qzl1enEyR1d4bUp6ZXJX?=
 =?utf-8?B?VVJzZDVmb21qa3BWTTJ6N2t2MUIxN1NnYTRjczhJRFNqcTZEU0JGQjNCaFVn?=
 =?utf-8?B?S3J5NTFpamljMTA2V3pRREZhc2JVVmpHNXVDQ0VkWXlyY3BVUnZOeVhCWWJK?=
 =?utf-8?B?ZFF2WXNCdEVLdEsxZkwzMFJQNjNIRmw2KzFPNEMxYkQ2bkZOcTgwclhoeGtJ?=
 =?utf-8?B?RU9pZGZjWFZ6T2xjZE9tR0pVTXBHQ1ZZZUtRLzBvVWZhU0Y3K2hNb01jZFAr?=
 =?utf-8?B?b0xiMTYwTSsyZzMyaTlvOFBqc1M0dWRFak1za00xNTBXZGtXWi9wdExZYzF1?=
 =?utf-8?Q?WLoY2Pc4locIDoc8o1?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b38c75c3-73f7-49cf-9089-08deb73af4db
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2026 13:14:57.9852
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qRVK0i5/+7meDousmD2jW5Z1hyyIK0k1XH9+QIrTuDUXpGxDaQbNqozPKgNZayyv
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR12MB8884
X-Spamd-Bar: ---
Message-ID-Hash: UU7VQJ65KN7BI65O42ONQUVXUYRBP4QW
X-Message-ID-Hash: UU7VQJ65KN7BI65O42ONQUVXUYRBP4QW
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Shuah Khan <shuah@kernel.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, mripard@kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/2] dma-buf: add DMA_BUF_IOCTL_DERIVE for reduced-permission aliases
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UU7VQJ65KN7BI65O42ONQUVXUYRBP4QW/>
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
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[amd.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 1D0AA5A581A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNS8yMS8yNiAxNTowMSwgQWxiZXJ0IEVzdGV2ZSB3cm90ZToNCj4gSGkgQ2hyaXN0aWFuLA0K
PiANCj4gT24gVGh1LCBNYXkgMjEsIDIwMjYgYXQgMjoyOOKAr1BNIENocmlzdGlhbiBLw7ZuaWcN
Cj4gPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6DQo+Pg0KPj4gT24gNS8yMS8yNiAx
MToxMCwgQWxiZXJ0IEVzdGV2ZSB3cm90ZToNCj4+PiBXaGVuIHNoYXJpbmcgYSBkbWEtYnVmIGJl
dHdlZW4gY29tcG9uZW50cyBvZiBkaWZmZXJlbnQgdHJ1c3QgbGV2ZWxzLCB0aGUNCj4+PiBhbGxv
Y2F0b3IgbWF5IG5lZWQgdG8gaGFuZCBhIGNvbnN1bWVyIGEgcmVhZC1vbmx5IHZpZXcgb2YgYSBi
dWZmZXIgaXQNCj4+PiBob2xkcyB3aXRoIHJlYWQtd3JpdGUgYWNjZXNzLiBBbiBleGFtcGxlIGlz
IGEgY2FtZXJhIHBpcGVsaW5lIHdoZXJlIHRoZQ0KPj4+IGNhcHR1cmUgY29tcG9uZW50IHdyaXRl
cyBmcmFtZXMgaW50byBhIGJ1ZmZlciBhbmQgbmVlZHMgdG8gcGFzcyBhDQo+Pj4gcmVhZC1vbmx5
IGhhbmRsZSB0byBhIGRvd25zdHJlYW0gcHJvY2Vzc2luZyBjb21wb25lbnQgdGhhdCBzaG91bGQg
bm90IGJlDQo+Pj4gYWJsZSB0byBtb2RpZnkgdGhlIGRhdGEuDQo+Pj4NCj4+PiBIb3dldmVyLCBu
byBzdWNoIG1lY2hhbmlzbSBleGlzdHMgdG9kYXkuIFRoZSBhY2Nlc3MgbW9kZSBvZiBhIGRtYS1i
dWYNCj4+PiBmaWxlIGRlc2NyaXB0b3IgaXMgZml4ZWQgYXQgZXhwb3J0IHRpbWUsIGFuZCB0aGUg
c3RhbmRhcmQgUE9TSVgNCj4+PiBpbnRlcmZhY2VzIGZvciBkdXBsaWNhdGluZyBvciBjaGFuZ2lu
ZyBmaWxlIGRlc2NyaXB0b3JzIChpLmUuLCBkdXAoMiksDQo+Pj4gZHVwMygyKSwgYW5kIGZjbnRs
KEZfU0VURkwpKSBjYW5ub3QgYWx0ZXIgdGhlIHJlYWQvd3JpdGUgYWNjZXNzIG1vZGUgb2YNCj4+
PiB0aGUgY29weS4NCj4+Pg0KPj4+IE9uZSBuYXR1cmFsIGNhbmRpZGF0ZSB3b3VsZCBiZSByZW9w
ZW5pbmcgdmlhIC9wcm9jL3NlbGYvZmQvPE4+IHdpdGgNCj4+PiBPX1JET05MWSwgd2hpY2ggd29y
a3MgZm9yIHJlZ3VsYXIgZmlsZXMuIEZvciBkbWEtYnVmIHRoaXMgd291bGQgZmFpbA0KPj4+ICh0
aGF0IGlzLCBpZiB3ZSB3ZXJlIHRvIGFkZCBhIG5ldyBoYW5kbGVyIGZvciBvcGVuIGZfb3ApIHdp
dGggRU5YSU8NCj4+PiBiZWNhdXNlIHRoZSBkbWFidWYgcHNldWRvLWZpbGVzeXN0ZW0gY2Fycmll
cyBTQl9OT1VTRVIsIHdoaWNoIHByZXZlbnRzDQo+Pj4gdGhlIFZGUyBmcm9tIG9wZW5pbmcgaXRz
IGZpbGVzIHRocm91Z2ggcGF0aC1iYXNlZCByZXNvbHV0aW9uIGZyb20NCj4+PiB1c2Vyc3BhY2Uu
DQo+Pg0KPj4gT0ggTVkgR09EISBUaGlzIGlzIHRoZSBsaWtlIHRoZSBzaXh0aCB0aW1lIEkgaGFk
IHRvIGNsYXJpZnkgdGhhdCBpbiB0aGUgbGFzdCBmZXcgd2Vla3MsIEknbSByZWFsbHkgd29uZGVy
aW5nIHdoZXJlIHRoYXQgaXMgc3VkZGVubHkgY29taW5nIGZyb20uDQo+IA0KPiBTb3JyeSEgSSBk
byBub3Qga25vdyB3aGVyZSBvdGhlcnMgY2FtZSBmcm9tLiBCdXQgbXkgaW50ZXJlc3QgY29tZXMN
Cj4gZnJvbSBhdXRvbW90aXZlLCBzYWZldHksIGFuZCBtaXhlZCBjcml0aWNhbGl0eSBzY2VuYXJp
b3MuIEkga2luZCBvZg0KPiBoaW50ZWQgYXQgdGhhdCBpbiB0aGUgb3BlbmluZyB3aGVuIHJlZmVy
cmluZyB0byAiZGlmZmVyZW50IHRydXN0DQo+IGxldmVscyIuDQoNCkFIISBZZWFoLCBhdXRvbW90
aXZlIGlzIG1vc3QgbGlrZWx5IHRoZSBjb21tb24gdG9waWMgaW4gYWxsIHRob3NlIHJlcXVlc3Rz
Lg0KDQo+Pg0KPj4gQ3JlYXRpbmcgdGhlIERNQS1idWYgd2l0aCBPX1JET05MWSBkb2VzICpOT1Qq
IG1ha2UgdGhlIERNQS1idWYgaXRzZWxmIHJlYWQgb25seSENCj4+DQo+PiBUaGF0J3MgYSByZWFs
bHkgY29tbW9uIG1pc2NvbmNlcHRpb24uIFRoZSBmbGFnIG9ubHkgY29udHJvbHMgaWYgbW1hcCgp
IGNhbiBiZSBkb25lIHJlYWQvd3JpdGUgb3IgcmVhZC1vbmx5IHRvIGhhbmRsZSBjYWNoZSBjb2hl
cmVuY3kgaXNzdWVzLg0KPj4NCj4+IEl0IGlzIHN0aWxsIHBlcmZlY3RseSBwb3NzaWJsZSBmb3Ig
YSBkZXZpY2UgdG8gd3JpdGUgaW50byBhIERNQS1idWYgY3JlYXRlZCB3aXRoIE9fUkRPTkxZIHdp
dGggRE1BIQ0KPj4NCj4+IFNvIGxvbmcgc3Rvcnkgc2hvcnQgdGhlcmUgaXMgbm90IHN1Y2ggZmVh
dHVyZSBhcyBhIHJlYWQgb25seSBETUEtYnVmLCBhbmQgcHV0dGluZyByZWFkLW9ubHkgcGFnZXMg
aW50byBhIERNQS1idWYgYW5kIHRoZW4gZXhwZWN0aW5nIHRoYXQgbm9ib2R5IGNhbiB3cml0ZSB0
byB0aGVtIGlzIGFuIGFic29sdXRlbHkgY2xlYXIgTm8tR28uDQo+Pg0KPj4gSWYgd2Ugd291bGQg
d2FudCB0byBpbXBsZW1lbnQgYSByZWFkLW9ubHkgRE1BLWJ1ZiBmZWF0dXJlIHdlIHdvdWxkIG5l
ZWQgdG8gZ28gb3ZlciBhbGwgdGhlIGRpZmZlcmVudCBETUEtYnVmIGltcG9ydGVycyBpbiB0aGUg
a2VybmVsIGFuZCBhZGQgc2VjdXJpdHkgY2hlY2tzLg0KPiANCj4gVGhpcyBjbGFyaWZpZXMgYSBs
b3QuIFRvbyBiYWQsIGJ1dCBpdCBtYWtlcyBzZW5zZS4gSSB3aWxsIGFiYW5kb24gdGhlDQo+IHNl
cmllcyB0aGVuLg0KPiANCj4gVGhhbmtzIGZvciB0aGUgcmV2aWV3IGFuZCB0aGUgZXhwbGFuYXRp
b24hDQoNCk5vIHByb2JsZW0sIEkgd2FzIGp1c3QgcmVhbGx5IHN1cnByaXNlZCB0aGF0IHRoaXMg
Y2FtZSB1cCBvbmNlIG1vcmUuDQoNCkp1c3QgZm9yIGNvbXBsZXRlbmVzczogV2hhdCBzb21lIGV4
cG9ydGVycyBkbyBpcyB0byByZWplY3QgcmVhZC93cml0ZSBtbWFwIGNhbGxzIHdpdGggT19SRE9O
TFkgYW5kIG1hcF9kbWFfYnVmKCkgY2FsbGJhY2tzIHdpdGggRE1BX0JJRElSRUNUSU9OQUwgb3Ig
RE1BX1RPX0RFVklDRS4NCg0KQnV0IGFzIEkgc2FpZCB0aGlzIGlzIGp1c3QgdG8gY2F0Y2ggY2Fj
aGUgY29oZXJlbmN5IGlzc3VlcyBhbmQgbm90IGFjY2VzcyBjb250cm9sLg0KDQpJZiBJJ20gbm90
IGNvbXBsZXRlbHkgbWlzdGFrZW4gc29tZSBIVyBhY3R1YWxseSBjYW4ndCBldmVuIGd1YXJhbnRl
ZSByZWFkIG9ubHkgbWFwcGluZ3MsIGluIG90aGVyIHdvcmRzIGV2ZW4gaWYgeW91IHNheSBkb24n
dCB3cml0ZSB0byB0aGF0IGJ1ZmZlciBpbiB0aGUga2VybmVsIHlvdSBjb3VsZCBzdWJtaXQgc2hh
ZGVyIG9yIERNQSBjb21tYW5kcyBmcm9tIHVzZXJzcGFjZSB3aGljaCBkb2VzIGV4YWN0bHkgdGhh
dCBhbmQgaXQgd29ya3MuDQoNClNvIEkgZG9uJ3QgcmVhbGx5IHNlZSBhIGNoYW5jZSBmb3IgdGhh
dCBmZWF0dXJlIHRvIGZseSBhcyBnZW5lcmFsIERNQS1idWYgdGhpbmcuIE1heWJlIGJldHdlZW4g
dHdvIHNwZWNpZmljIGV4cG9ydGVycy9pbXBvcnRlcnMgY291bGQgd29yaywgYnV0IHllYWguLi4N
Cg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KDQo+IA0KPiBCUiwNCj4gQWxiZXJ0DQo+IA0KPj4N
Cj4+IFJlZ2FyZHMsDQo+PiBDaHJpc3RpYW4uDQo+Pg0KPj4NCj4+Pg0KPj4+IEFsdGVybmF0aXZl
bHksIGV4cG9ydGluZyB0aGUgYnVmZmVyIHR3aWNlIHdvdWxkIHByb2R1Y2UgdHdvIGluZGVwZW5k
ZW50DQo+Pj4gZG1hX2J1ZiBpbnN0YW5jZXMsIHdoaWNoIGJyZWFrcyBmZW5jZSBzeW5jaHJvbml6
YXRpb24uDQo+Pj4NCj4+PiBUaGVyZWZvcmUgd2UgYWRkIGEgbmV3IERNQV9CVUZfSU9DVExfREVS
SVZFIGlvY3RsLCB3aGljaCBwcm9kdWNlcyBhIG5ldw0KPj4+IGZpbGUgZGVzY3JpcHRvciBmb3Ig
YW4gZXhpc3RpbmcgZG1hLWJ1ZiB3aXRoIGEgY2FsbGVyLXNwZWNpZmllZCBzdWJzZXQNCj4+PiBv
ZiB0aGUgb3JpZ2luYWwgcGVybWlzc2lvbnM6DQo+Pj4NCj4+PiBgYGANCj4+PiAgIHN0cnVjdCBk
bWFfYnVmX2Rlcml2ZSB7IF9fdTMyIGZsYWdzOyBfX3MzMiBmZDsgfTsNCj4+Pg0KPj4+ICAgc3Ry
dWN0IGRtYV9idWZfZGVyaXZlIHJlcSA9IHsgLmZsYWdzID0gT19SRE9OTFkgfCBPX0NMT0VYRUMg
fTsNCj4+PiAgIGlvY3RsKHJ3X2ZkLCBETUFfQlVGX0lPQ1RMX0RFUklWRSwgJnJlcSk7DQo+Pj4g
ICAvKiByZXEuZmQgaXMgbm93IGEgcmVhZC1vbmx5IGFsaWFzIG9mIHRoZSBzYW1lIGJ1ZmZlciAq
Lw0KPj4+IGBgYA0KPj4+DQo+Pj4gUGVybWlzc2lvbiBlc2NhbGF0aW9uIGlzIHJlamVjdGVkIHdp
dGggLUVBQ0NFUy4gVGhlIG5ldyBmZCBhbGlhc2VzIHRoZQ0KPj4+IHNhbWUgc3RydWN0IGRtYV9i
dWYgYXMgdGhlIG9yaWdpbmFsLCBzYW1lIGRtYV9yZXN2LCBzYW1lIGV4cG9ydGVyIG9wcywNCj4+
PiBzYW1lIHVuZGVybHlpbmcgbWVtb3J5OyBzbyBpbXBvcnRlcnMgYXR0YWNoaW5nIHRvIGVpdGhl
ciBmZCBzZWUgdGhlIHNhbWUNCj4+PiBmZW5jZSB0aW1lbGluZSBhbmQgb3BlcmF0ZSBvbiB0aGUg
c2FtZSBvYmplY3QuIEFjY2VzcyBjb250cm9sIGZvciB3aGljaA0KPj4+IGNvbXBvbmVudHMgbWF5
IHJlY2VpdmUgb3IgcGFzcyBvbiByZXN0cmljdGVkIGRlc2NyaXB0b3JzIGNhbiBiZSBsYXllcmVk
IG9uDQo+Pj4gdG9wIHZpYSBTRUxpbnV4IGZpbGU6cmVhZCBhbmQgZmlsZTp3cml0ZSBwZXJtaXNz
aW9ucy4NCj4+Pg0KPj4+IEEgc2hhcmVkIHdyaXRhYmxlIG1hcHBpbmcgKFBST1RfV1JJVEUgfCBN
QVBfU0hBUkVEKSBvbiB0aGUgcmVhZC1vbmx5IGZkIGlzDQo+Pj4gcmVqZWN0ZWQgd2l0aCAtRUFD
Q0VTIGluIGRtYV9idWZfbW1hcF9pbnRlcm5hbCgpLg0KPj4+DQo+Pj4gVHdvIHNtYWxsIGludGVy
bmFsIGFkanVzdG1lbnRzIGFjY29tcGFueSB0aGUgaW9jdGw6DQo+Pj4gLSBfX2RtYV9idWZfbGlz
dF9kZWwoKSBpcyBtb3ZlZCB0byBkbWFfYnVmX3JlbGVhc2UoKSBzbyBpdCBmaXJlcyBleGFjdGx5
DQo+Pj4gICBvbmNlIG9uIGRlbnRyeSBkZXN0cnVjdGlvbiByYXRoZXIgdGhhbiBvbiBldmVyeSBm
aWxlIGNsb3NlLg0KPj4+IC0gZG1hX2J1Zl9maWxlX3JlbGVhc2UoKSBpcyB1cGRhdGVkIHRvIGNh
bGwgZG1hX2J1Zl9wdXQoKSBvbmx5IGZvcg0KPj4+ICAgZmlsZXMgdGhhdCBhcmUgbm90IHRoZSBw
cmltYXJ5IGRtYS1idWYgZmlsZS4NCj4+Pg0KPj4+IFRoaXMgbWF5IG5vdCBiZSB0aGUgYmVzdCBh
cHByb2FjaCwgYnV0IGFmdGVyIGNvbnNpZGVyaW5nIGRpZmZlcmVudA0KPj4+IG9wdGlvbnMgYW5k
IGFsdGVybmF0aXZlcyAoYXMgZGVzY3JpYmVkIGFib3ZlKSwgd2UgZGVjaWRlZCB0byByYWlzZSB0
aGUNCj4+PiBkaXNjdXNzaW9uIHVwc3RyZWFtLiBUaHVzLCB3ZSB3ZWxjb21lIGFueSBhbHRlcm5h
dGl2ZSBwcm9wb3NhbCBvciBpZGVhcy4NCj4+Pg0KPj4+IFRoZSBzZXJpZXMgaXMgc3RydWN0dXJl
ZCBhczoNCj4+PiAtIFBhdGNoIDEgYWRkcyB0aGUgbmV3IGlvY3RsIGltcGxlbWVudGF0aW9uLg0K
Pj4+IC0gUGF0Y2ggMiBhZGRzIHNlbGZ0ZXN0cyBjb3ZlcmluZyB0aGUgbmV3IGlvY3RsLg0KPj4+
DQo+Pj4gU2lnbmVkLW9mZi1ieTogQWxiZXJ0IEVzdGV2ZSA8YWVzdGV2ZUByZWRoYXQuY29tPg0K
Pj4+IC0tLQ0KPj4+IEFsYmVydCBFc3RldmUgKDIpOg0KPj4+ICAgICAgIGRtYS1idWY6IGFkZCBE
TUFfQlVGX0lPQ1RMX0RFUklWRSBmb3IgcmVkdWNlZC1wZXJtaXNzaW9uIGFsaWFzZXMNCj4+PiAg
ICAgICBzZWxmdGVzdHM6IGRtYS1idWY6IGFkZCBERVJJVkUgaW9jdGwgdGVzdHMNCj4+Pg0KPj4+
ICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA1
OCArKysrKysrKysrLQ0KPj4+ICBpbmNsdWRlL3VhcGkvbGludXgvZG1hLWJ1Zi5oICAgICAgICAg
ICAgICAgICAgICAgICB8ICAyOCArKysrKw0KPj4+ICB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9k
bWFidWYtaGVhcHMvZG1hYnVmLWhlYXAuYyB8IDExNCArKysrKysrKysrKysrKysrKysrKy0NCj4+
PiAgMyBmaWxlcyBjaGFuZ2VkLCAxOTggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4+
PiAtLS0NCj4+PiBiYXNlLWNvbW1pdDogYWI1ZmNlODdhNzc4Y2I3ODBhMDU5ODRhMmNhNDQ4ZjJi
NDFhYWZiZg0KPj4+IGNoYW5nZS1pZDogMjAyNjA1MjAtZG1hYnVmLWxpbWl0LWFjY2Vzcy03MzI2
MTM1Mzg0MWENCj4+Pg0KPj4+IEJlc3QgcmVnYXJkcywNCj4+DQo+IA0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
