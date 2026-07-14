Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3YObDpYqVmoa0gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 14:24:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 975337547D2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 14:24:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b=I6zmW3OK;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A095D40165
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 12:24:52 +0000 (UTC)
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012064.outbound.protection.outlook.com [40.107.200.64])
	by lists.linaro.org (Postfix) with ESMTPS id 581313F735
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2026 12:24:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=isKA+3WlWv20An9N/0cBVXJZsgWcbMd/Zrj5YZFhXTTQ6yT4QOxZu0mLpgYwre5DZrMh4L0xYgdW9eZ+INW1fvfAS7GleERHslvUqX0PWeFUx00eS7ebU4gjLRPxeqjL955m9Is9CxBgm1sGPrV2Iy9cCx7gqPqOk8ul+c/NmFjX2sEvMpClL+RbwnSFeCIu1fvyzzPklITZRrpQcYFY8LJhSMwPQ6WtvaTJf76B3dTZcfdzkMkIY4iM7y8V13hP9l7a5z+1aUURHvyk1H2F8LPuKWIAIcMbF7mEtvg6oohLY/p37a5EjmEmxA5l8jiWo6com3dM55SmTbO4evp1AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nGeT0F8HdfVtW/QKVHUM86s8Gy7Aqqi2GhckDlsZk+4=;
 b=T++Vuojcobl80AZBq228jWx6wQlsulZiYten/wlSB6HGaUn7XZbxAg6V/nkUqKKIu/COodddosb0FgRgRHOY3p6bYRpGq1a3lYiLmfKrWjgaW6wqDfqfw4Uqt9vMwAtQ7OtsZELB+Lt83+6NgMMJnSo3I580SeuXE3cfwzaA/tfCMqqnf+pcr52kaSTD6L0YQGEbnZR6B7kjg7o08a3BIBzL/VBiabcQhlTwICQiE3uyUcrlwRyL5or76Ik9ouxy6I6lpCCZ15tJSwZCcM6fCyXof5Rdus0eX4jOxMxExNhH1aIX1JOcobMf7S4RwkOVJvkRkHCqY3tESz4b9ThfZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nGeT0F8HdfVtW/QKVHUM86s8Gy7Aqqi2GhckDlsZk+4=;
 b=I6zmW3OKhZ8vQL57IaMnrnkfx+gKLlnyCgP+maLkWYxrCNjmVUi3NHjdK0Xp6o2zS81I5/t+a1BFrniRNGQJ0eQ9QoT8dPy4sr3XiTTG/sfw6iCfQjKU7F8inYUzoM9DxS1oytNQrKixTECMqRnp1QfBIs6eX0WE8pmulS+XpxU=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SN7PR12MB6742.namprd12.prod.outlook.com (2603:10b6:806:26e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.223.10; Tue, 14 Jul
 2026 12:24:12 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0202.014; Tue, 14 Jul 2026
 12:24:12 +0000
Message-ID: <4ccf4ae5-ccd7-4bec-836a-fcebfa271c96@amd.com>
Date: Tue, 14 Jul 2026 14:24:06 +0200
User-Agent: Mozilla Thunderbird
To: Baineng Shou <shoubaineng@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 "T . J . Mercier" <tjmercier@google.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 Sandeep Patil <sspatil@android.com>, "Andrew F . Davis" <afd@ti.com>,
 Srinivas Kandagatla <srini@kernel.org>
References: <CABdmKX21NHc2=9Sk2F-BFpu6is0vTg-QXLE+wiFNEPdsWWjvog@mail.gmail.com>
 <20260714114654.3885457-1-shoubaineng@gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260714114654.3885457-1-shoubaineng@gmail.com>
X-ClientProxiedBy: MN0PR03CA0029.namprd03.prod.outlook.com
 (2603:10b6:208:52f::34) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SN7PR12MB6742:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a963880-8c1c-436d-2268-08dee1a2cf7c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|23010399003|7416014|376014|1800799024|4143699003|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: 
	TmR6DhnrJeDRyQZRfQAcbG6KOyJubG5+JSl71GWoff78uI4PAK+QNMK/VT4qH7q6YYxGUn2pPuBn6O4tMt4HkHMVH09ViYb3h/mgArDnctBroGfFD27IEEjqprxzzZ1JSF8nzX4lJ2Ifr64GsLxLHP3OBC4bl2HHAZ5asWSE7UB7RgmLVCzD8VQy8kuNxR8mIAHq9xtzZ/6bCG7xftNG861Vc8uZT85q1KEJl+Q21F5ELSEYg2N+jbqXdLZUNbY5KcXGFbQ2Fv8rnPSXE2q/f22SweLU0g6HAzHRVsAE9cnvqjJQv4NGAq4sDww2mqtfFBQELrUdwzCAWCyvbGJmmxpO+38BdMDdsaHvRfcSNnPS6oF0VL5kMKQ1+V3fLYHxioQd2zZkb2R4+yZXi2B4deLR5FS1FV90fDS/pBWh3ISMB7Khn84DPlVJRkl+Y/exOEvWEDkTy0rz/3TJr3yMTllfPxyeOMqS6hatBgBHUr89v2Y1MGiqoykXgEvD8PPoDLUGNBH9Jba2iXOrB4QoMsPOn9W7vZI5sQc//KevDi7onWSZhOCrQCQBkc1LMLbQvk06y/bMlvQvY40Bo+KI15VsjAKnXU5i7uQs7lEr4UY0nuAVBer4RbPWt3sfj8bSV9YkTSAzOnIPDTrUzPHwy+RdjZdy9XXS8TMLi6HXXf8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(23010399003)(7416014)(376014)(1800799024)(4143699003)(18002099003)(22082099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?L0ZUbDNFUEZMMThNT0szekwxRDdFR1I5ZVBSS2ZFUnkxUmU3SWZUMWpIOEo2?=
 =?utf-8?B?ekhqUEM5UklxNGtyTnBXRk4wdTEvdERSVWozaGFFa1JsTFMvZ1MrWHo2UkRz?=
 =?utf-8?B?cTRlbEkyZmFNb2N4bStoQWFzVkpFRTE1aG9yNlFtTVl5RkJwWUFaRitqSzR4?=
 =?utf-8?B?UWRtQUNQdm8wdEx1VHBSZXZ3cEJPeEthYmV5OFV0ZVk1SWZmQ3VTOVFBSSs2?=
 =?utf-8?B?QzNwOHo0Lys2T2EvSDluWTlEZmVHdzA5UFZNWmpRUDgxTk5OdTZIdytQSnl0?=
 =?utf-8?B?MHdTV3IrQlJjRkxTajNLdUNpVVFEUys0Q0hMNGpZTXAxUkVRbmJEVEZZRklX?=
 =?utf-8?B?Q3NlYTd5VGpWQUVTalI4LzE2NHlPOHJmblg2TDBOZTRCVDNOTmFicHJZVFk4?=
 =?utf-8?B?N1JNb1hodm9ieDNJNm5IRTNqMmtYbS9zUFg2aktuWDhHb25Pc3l2ZisvZS9S?=
 =?utf-8?B?Z3UwNnM3azJBOHNXbWtOOFVWTnBMMUVFekp0aDlTNXBwT0o4YndwM2hkOE5Z?=
 =?utf-8?B?WTRha1FWY3RJUTBlaG9DaGx6bHA0a3I4MFJuL1ZsMTN6bG5URDIwclRTSTdK?=
 =?utf-8?B?RDRPeEFsRVJlUnhaRlVNaUd2N1VLc2NhVW1zSHdUZE9lNHNyVWcyRFJnenp6?=
 =?utf-8?B?Z21vYXhDakYrQTVmOHY5Y0Zlc3JvbEdaVHZkZWlGVjgxSWs1OGpJdjluVVFY?=
 =?utf-8?B?KzMrNWZUdkdXU3UyVDdlUUhIQzBtbEk4d0FFNURiTDJSUEcvYXBodmE3UDIx?=
 =?utf-8?B?eWphcUF6YjR2U1RMbE14ZjRxV0ZmVEdjVEU2Mk9DaEM4T1I2ZWwyS3JjcTVr?=
 =?utf-8?B?ZVR2RTQ2YzBRc082bmtSSUlrdVhXbmRHQVdNNURkc1loNjVteXhTTUVMZnZB?=
 =?utf-8?B?YVMvaEtCNXBtK0h4R3ExaC9kbFpZMHBjSWE0NFRpZkszMkQzTHJpTXJoQjVR?=
 =?utf-8?B?WGQ3UVdtby9NTHNxYURxMEoxYmJPTkE0Z0dSNk0vWmg5cjJLaGV5TEUyRnZT?=
 =?utf-8?B?OFBEM3kxUThicUEvSzI3Y3V3UW42dWcyY2x4eGtpS0c2Nkl5VnIwZjVLSldt?=
 =?utf-8?B?a2N3a3Z2Q05YSnNaV3dpMUw0akJRM01NWklCOTBxWG11NFNlTTV1dm81dFQz?=
 =?utf-8?B?VnhsUHBHWFBWcGs4TnYvSFJ4QnFmNEI5RlRoWDhvSlNTRDhFdExERWgxUEd0?=
 =?utf-8?B?ZEdnRjBBdHh6a2FuMlY4TWpCSTNaZXJoNVdmdCtkTWZ0STFHdnJ5RTBBUXhw?=
 =?utf-8?B?VnF2dVI3KzBtS2ZvK3VscEltSjJmU2ZmSjkzL25NTE1rSUtjQm9JQnNBZW5G?=
 =?utf-8?B?OHQxYStLcFE0bld5M3dmaEtGQ2xtSmQ0WFNnby9pbGR5UDAxVVZzdFUzVTNP?=
 =?utf-8?B?aGppU0FpUEV1aVZXUGVkTXhzYVpxY3FTSUdKSTdqSmJZRjJ1TXVRanhIMVhY?=
 =?utf-8?B?NHUzOUI1cWJ1K0N2eXZicUtmbDl6NGdadk16MStCdXpOSUZlR3ZFVHNHOGF2?=
 =?utf-8?B?ZFlQa0dDdmZteVNIK0F4TnZKZ2pyeFcrMC9FaHFMNjkyV2xlSWNTcEEwY2t3?=
 =?utf-8?B?UDV1SWFiR1FFcGdPR0hPUjV5WEQzb29xRmZKWC84MjJDa3RQUVlPcXFkOXlG?=
 =?utf-8?B?S2d4b1R1M1YranlDVkcrWXFNTnR4cEl3dVp4ZjFrRnRsWHpzVUJJYmhyZ3Iw?=
 =?utf-8?B?SjBjMXVkeWhSY1FpQjlkOUpWeEVKUUR0dlNUaGRrUlVtWjQwb3o1SkRmRDVs?=
 =?utf-8?B?dythQjBiaXdjZlFnMFc0RTFLc1Y5Vk1Iak04TE9wY0xQTHBPSnpOdXdlWkxj?=
 =?utf-8?B?Wjc1cXlqaVlxZ1FhNHZBM3F4WHBqNXk2aXN5YXEyUW8rNG5tTWFXTUlwWFpk?=
 =?utf-8?B?c0t1OGJlZXlkYThhZTZqTC8yV0ZTQjA1SXJiQzUydVpkbzEwUWVFUGJ5b3My?=
 =?utf-8?B?czZqR0dIZG5ULytYVDZzWFBCMEpLNDZLbnlDYncwUENNQzFZS3dJWnJucjFD?=
 =?utf-8?B?bFJnUGpsUTVuRi9KR0JhVG5pTFVtRzF1SUs1SE10bjBEK0YwU0Jaa2ZQZVFZ?=
 =?utf-8?B?L0FycHlTRElhZDhSQ2w3NVBNZXNJeUs2ajdkZTV2eFJCby9SSTlDQ0V3ZSt4?=
 =?utf-8?B?K0JsZ253SGQxMUVzVEVSRXNhL25ZVkJ5eW5VQUx0ckt3MzViQmIzTGllblVU?=
 =?utf-8?B?Z2UrbnZIc0tRRUo2NlZjbWdoemtwMlNaWjZBMmlKSkV3a29sQyt3aXNzdkJE?=
 =?utf-8?B?amJWRmp0MnBHeGE3c0VNVXV0Y1F4ZGZyS0ZlL2k3ekE2ZklnRG1oaEZHNWdi?=
 =?utf-8?Q?BZQ8xLFIJlzsRfaGul?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a963880-8c1c-436d-2268-08dee1a2cf7c
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2026 12:24:12.0337
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BeQTvqcjq5r1EEk5+QyHmoiqhxx3W+QWaSc+6Lvkdj5w2MobX66DjbBgKN+0Ahdx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB6742
X-Spamd-Bar: ----
Message-ID-Hash: JFA27MTQQYHXS3WLLMHHIVTMK36GGFHN
X-Message-ID-Hash: JFA27MTQQYHXS3WLLMHHIVTMK36GGFHN
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: stable@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 0/2] dma-buf: fix fd leak when copy_to_user() fails after fd_install()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JFA27MTQQYHXS3WLLMHHIVTMK36GGFHN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:shoubaineng@gmail.com,m:sumit.semwal@linaro.org,m:tjmercier@google.com,m:benjamin.gaignard@collabora.com,m:Brian.Starkey@arm.com,m:jstultz@google.com,m:sspatil@android.com,m:afd@ti.com,m:srini@kernel.org,m:stable@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,google.com,collabora.com,arm.com,android.com,ti.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:from_mime,amd.com:email,amd.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 975337547D2

T24gNy8xNC8yNiAxMzo0NiwgQmFpbmVuZyBTaG91IHdyb3RlOg0KPiBTZXZlcmFsIGRyaXZlcnMg
Y2FsbCBkbWFfYnVmX2ZkKCkg4oCUIHdoaWNoIGludGVybmFsbHkgY2FsbHMgZmRfaW5zdGFsbCgp
DQo+IOKAlCBiZWZvcmUgY29weV90b191c2VyKCkgcmV0dXJucyB0aGUgZmQgbnVtYmVyIHRvIHVz
ZXJzcGFjZS4gIElmDQo+IGNvcHlfdG9fdXNlcigpIGZhaWxzLCB0aGUgZmQgaXMgYWxyZWFkeSBw
dWJsaXNoZWQgaW4gdGhlIGNhbGxlcidzIGZkDQo+IHRhYmxlIGJ1dCB0aGUgaW9jdGwgcmV0dXJu
cyBhbiBlcnJvciwgc28gdXNlcnNwYWNlIG5ldmVyIGxlYXJucyB0aGUgZmQNCj4gbnVtYmVyLiAg
V29yc2UsIHRoZSB3aW5kb3cgYmV0d2VlbiBmZF9pbnN0YWxsKCkgYW5kIGNvcHlfdG9fdXNlcigp
DQo+IGFsbG93cyBvdGhlciB0aHJlYWRzIHRvIG9ic2VydmUgYW5kIG1hbmlwdWxhdGUgdGhlIGZk
IChkdXAsIGNsb3NlLA0KPiBTQ01fUklHSFRTKSwgbWFraW5nIGFueSAiY2xvc2UgaXQgb24gdGhl
IGZhaWx1cmUgcGF0aCIgZml4IHVuc2FmZS4NCj4gDQo+IFRoZSBmaXggaXMgdG8gc3BsaXQgdGhl
IGFsbG9jYXRpb24gaW50byB0aHJlZSBzdGVwczogcmVzZXJ2ZSBhbiBmZCB3aXRoDQo+IGdldF91
bnVzZWRfZmRfZmxhZ3MoKSAobm90IHlldCB2aXNpYmxlIHRvIG90aGVyIHRocmVhZHMpLCBkbw0K
PiBjb3B5X3RvX3VzZXIoKSwgYW5kIG9ubHkgdGhlbiBwdWJsaXNoIHRoZSBmZCB3aXRoIGZkX2lu
c3RhbGwoKSB2aWEgdGhlDQo+IG5ldyBkbWFfYnVmX2ZkX2luc3RhbGwoKSBoZWxwZXIuICBPbiBj
b3B5X3RvX3VzZXIoKSBmYWlsdXJlLA0KPiBwdXRfdW51c2VkX2ZkKCkgKyBkbWFfYnVmX3B1dCgp
IGNsZWFubHkgdW53aW5kIHdpdGggbm8gdXNlci12aXNpYmxlDQo+IHNpZGUgZWZmZWN0cy4NCj4g
DQo+IFBhdGNoIDEgaW50cm9kdWNlcyBkbWFfYnVmX2ZkX2luc3RhbGwoKSBpbiBkbWEtYnVmLmMg
KHdyYXBwaW5nDQo+IGZkX2luc3RhbGwoKSB0b2dldGhlciB3aXRoIHRoZSBETUFfQlVGX1RSQUNF
IGNhbGwgdG8gcHJlc2VydmUgZXhwb3J0DQo+IHRyYWNpbmcpIGFuZCBhcHBsaWVzIHRoZSBmaXgg
dG8gZG1hLWhlYXAuDQo+IA0KPiBQYXRjaCAyIGFwcGxpZXMgdGhlIHNhbWUgZml4IHRvIGZhc3Ry
cGMsIHdoaWNoIGV2ZW4gaGFkIGEgY29tbWVudA0KPiBhY2tub3dsZWRnaW5nIHRoZSBwcm9ibGVt
IGNvdWxkIG5vdCBiZSBmaXhlZCBiZWZvcmUuDQoNCmRyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUu
YyBpcyBhbHNvIHVzaW5nIGZkX2luc3RhbGwoKSBvZiBhIERNQS1idWYgZmlsZSBkZXNjcmlwdG9y
IG1hbnVhbGx5Lg0KDQpXb3VsZCBiZSBuaWNlIGlmIHdlIGNvdWxkIHVzIHRoZSBuZXcgZG1hX2J1
Zl9mZF9pbnN0YWxsKCkgZm9yIHRyYWNpbmcgaGVyZSBhcyB3ZWxsLg0KDQpBcGFydCBmcm9tIHRo
YXQgZmVlbCBmcmVlIHRvIGFkZCBBY2tlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPiB0byB0aGUgd2hvbGUgc2VyaWVzLg0KDQpSZWdhcmRzLA0KQ2hyaXN0
aWFuLg0KDQo+IA0KPiB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzIwMjYw
NzAzMDgwOTIyLjE4MzgzNjItMS1zaG91YmFpbmVuZ0BnbWFpbC5jb20vDQo+IHYyOiBodHRwczov
L2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMjAyNjA3MTAxMDU0MzAuMzA1OTY2MS0xLXNob3Vi
YWluZW5nQGdtYWlsLmNvbS8NCj4gDQo+IENoYW5nZXMgaW4gdjM6DQo+ICAtIFNwbGl0IGludG8g
dHdvIHBhdGNoZXMgKGRtYS1oZWFwICsgZmFzdHJwYyBzZXBhcmF0ZWx5KQ0KPiAgLSBBZGQgZG1h
X2J1Zl9mZF9pbnN0YWxsKCkgdG8gcHJlc2VydmUgdHJhY2VfZG1hX2J1Zl9mZCB0cmFjZXBvaW50
DQo+ICAgIChzcG90dGVkIGJ5IFQuSi4gTWVyY2llciBhbmQgc2FzaGlrby1ib3Qgb24gdjIpDQo+
ICAtIEFkZCBmYXN0cnBjIGZpeCB1c2luZyB0aGUgbmV3IGhlbHBlciAoc3VnZ2VzdGVkIGJ5IFQu
Si4gTWVyY2llcikNCj4gDQo+IEJhaW5lbmcgU2hvdSAoMik6DQo+ICAgZG1hLWJ1ZjogZG1hLWhl
YXA6IGRvbid0IHB1Ymxpc2ggZmQgYmVmb3JlIGNvcHlfdG9fdXNlcigpIHN1Y2NlZWRzDQo+ICAg
bWlzYzogZmFzdHJwYzogZG9uJ3QgcHVibGlzaCBmZCBiZWZvcmUgY29weV90b191c2VyKCkgc3Vj
Y2VlZHMNCj4gDQo+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jICB8IDIwICsrKysrKysrKysN
Cj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jIHwgODAgKysrKysrKysrKysrKysrKysrKy0t
LS0tLS0tLS0tLS0tLS0tLS0NCj4gIGRyaXZlcnMvbWlzYy9mYXN0cnBjLmMgICAgIHwgMTYgKysr
LS0tLS0NCj4gIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5oICAgIHwgIDEgKw0KPiAgNCBmaWxlcyBj
aGFuZ2VkLCA2NyBpbnNlcnRpb25zKCspLCA1MCBkZWxldGlvbnMoLSkNCj4gDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
