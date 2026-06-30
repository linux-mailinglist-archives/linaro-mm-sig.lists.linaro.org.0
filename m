Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DwZWBK9uVmqk5QAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:15:27 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2B07573F2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:15:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b=QawnBqQR;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 90AD03F829
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:15:25 +0000 (UTC)
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011064.outbound.protection.outlook.com [40.93.194.64])
	by lists.linaro.org (Postfix) with ESMTPS id 12033402C4
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jun 2026 13:42:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ixsGHJ+J/HYWB6/75GapNCs5ZddhCHPC1sjXeNk0Kka2dKBsao0ub7NbeVEm/JK3TDMlboJLypKKYyQLzTHaFp3ch6q8ySGh/X2xQsWDwI6Jk2cqoAwkM1hQTsC77EFBaZ2NxJ6ElVxvSJe7D+/hBhZJMIUrkMI1KKZt+Ai+Z03aD0AlVUd6LCdCmnCpLnZAAAeWCBpbhAShDZzFWcANS7CmoFgFR0MYLhYxX67Mxr7Nn2MRAFmRWVO48u+sUDhaJkWaF01EE6eQZIDVoRasvS3wdZ1BDuRH/M8t/zV5fY+d4P5Mbcr/AwClO5l5stwhVnPpEGh5eiTJVy4vJhE3Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rk/m6R7y2C+hRNzBUxuUJIUR/ate7yHy/QsoybP/krU=;
 b=Ie4MUsagSOI1ykD6tTDSfEBQHKW2jUl7GvaAtFEEYGmmf5dwyosxsgOmVPwz4CRnvPrUhouDvrzGAb2+P+FmCxhdjPaiIoDh/vdQ/OwMvqERac80F0jsr1ZSKK3/pRZ1NPQat619a94vVNWgHtbsDPr/jrhfz+C3IBDMo8zgyM45iL1+VpJHk3DY4RD2QyCNPLjfHUiPoU4sVq1t7lcvtukXB2Ub0r9RGSkaMiHyOJ28kEeW8bmBphSwUXBPiVe9En6JMqizc6wa2akrJVViN0Pvm/2q/fwCiP4qZHyj1OungjlgJmVaHpUN1HwDIXMpklW47CFTZBZUq4Xtw9ZrfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rk/m6R7y2C+hRNzBUxuUJIUR/ate7yHy/QsoybP/krU=;
 b=QawnBqQRaOdG9aoeNcrabXGz7hwHKJv2w2Yz8qLE1V7oBiu59WGO+MPVtYogZ42ODTmqLKxbAB7PjSUDK1uBR1F+cODKvLKODEcwj/Iij8FC4Rj2X7cP1B91lYMQz+YO7Fpp/aS4zP6gWng1b89ghLauSUtA+3Z87/P8CS/vA6M=
Received: from PH8PR12MB6914.namprd12.prod.outlook.com (2603:10b6:510:1cb::21)
 by IA0PR12MB8422.namprd12.prod.outlook.com (2603:10b6:208:3de::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Tue, 30 Jun
 2026 13:42:15 +0000
Received: from PH8PR12MB6914.namprd12.prod.outlook.com
 ([fe80::2893:177a:72b0:6000]) by PH8PR12MB6914.namprd12.prod.outlook.com
 ([fe80::2893:177a:72b0:6000%6]) with mapi id 15.21.0159.018; Tue, 30 Jun 2026
 13:42:15 +0000
Message-ID: <c790dbb3-72ab-4d86-ad63-bffce5809bee@amd.com>
Date: Tue, 30 Jun 2026 08:42:11 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 sumit.semwal@linaro.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 lizhi.hou@amd.com, Max.Zhen@amd.com, airlied@gmail.com,
 karol.wachowski@linux.intel.com
References: <20260630080112.1117341-1-christian.koenig@amd.com>
From: Mario Limonciello <mario.limonciello@amd.com>
In-Reply-To: <20260630080112.1117341-1-christian.koenig@amd.com>
X-ClientProxiedBy: SN7PR04CA0183.namprd04.prod.outlook.com
 (2603:10b6:806:126::8) To PH8PR12MB6914.namprd12.prod.outlook.com
 (2603:10b6:510:1cb::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR12MB6914:EE_|IA0PR12MB8422:EE_
X-MS-Office365-Filtering-Correlation-Id: cfd7b79c-9dae-4d32-58d8-08ded6ad656e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|23010399003|1800799024|366016|22082099003|18002099003|11063799006|56012099006|6133799003;
X-Microsoft-Antispam-Message-Info: 
	KQN4Az+bPPPJPzdXkV28Ih9b0MvWudi8vrfxEl2tiQu8KKWtNbwEfFdbI3AtWzWeJFsYNkWepDeNvT67L/QlFIuDJ3J7gelzAEMT2bTAZs5RRlTtXT+TYYy050pjQRwcqyplSIHxiHSEFkrN4AbyZBF1o7yjjznkWBJXYbDOXAP52grDL3wqsdVUr+RxNXRxbYlj5qvoxpZrkaBK1gcGlaSWhZ+CemzKx/gdmJHqY44fgALEI8q+OR+KPDEd3/TQKQ+IJV8wFF8aPv7hQQcjbL1Mx50KAFnP+mrZikdodJWsVs+RpNINsvfsJY5AScguO8Yxmwmx0FgLsf4APOpN3G5LRSninA8EmsU43dPb9ctYlYDOuJkuX0RZ9c030J8NaH9VRtgYCwKw25RIAs6PHCkR7xdtXvFviLw986SrFmazj40TGjUpuSleBbaxa8n3dgmX+KHWqJe7CcKAYPFET8S0r5NbzDz2FEAVM6aqGuytYyx1RrntBU0IwBBFO557mZcO05pMgZend9YDQSDIN25devkGwVemgyyDHfSEtvPBLkoNW+PAxXfab6C95wSyEpbN9iUy1DGXYiHb0hk4r3PfBdvlFK1Rq8MrPx0viCq1yjRjjO7xGAYFo3hQkaQuig5YP2/uULfEo53A6nJTh3v/PCNYjP8EJM3oA2LsjQI=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH8PR12MB6914.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(23010399003)(1800799024)(366016)(22082099003)(18002099003)(11063799006)(56012099006)(6133799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NUNSUytEWUNvK2RjNWczSHc4VGdhZitRM2RKRXI3L3gyV3llaUxTdjlLbGM1?=
 =?utf-8?B?Qk9mb3dlbWhyR1JTZW1PNk9saEdIQVZjcWRKWHRtdU5CZ3VGamRsOSs0YlI3?=
 =?utf-8?B?bVR1cG8rTS9DRzBSQlVXYTBadGVXZFJMUURmcmY1TVJlYnlvT3ROTEQveWJD?=
 =?utf-8?B?aTV6UmJVN010eFU0QmFYbjZHQkxrSHpkT1NZNlRMRVVtdFR2U0lVd01CYS92?=
 =?utf-8?B?R3h0emk4RnlNWi81Kzg5WmcweEt5a2RocnhYOHpBZUNHRlZnZUlUTjk0b3FH?=
 =?utf-8?B?UHE3eTBPLzNtWFdmSlRBVjRXNGZqWjB2ZkZDNHhaUXdHQ2tuanNRT29kQ3hR?=
 =?utf-8?B?SjRYTXVvWDJtTWgwNVRaQXAvWmw4TW5yeCtFTWxFREVjNTZKNkZOV1pJVW56?=
 =?utf-8?B?blNyUlVFbk1tU0tjYWNNa0hqMFZwNk1OZ0NhR0hXMHc5V0VvN2hzdFQ5WXNI?=
 =?utf-8?B?eU1CbENPTGdpKzZnMXozaFMrZHIyYS95VVhobWh2cXd2WXkxcVk2cXZ1azRD?=
 =?utf-8?B?WjgxQ1hFSnhJVGE2T0NUbDRkWWNPQk1IeTN3dVFjRGUzclVnVDJtakNvL00v?=
 =?utf-8?B?QXowY1dDdlZKMlJBcFI1Z3RjQW1DSFNJMnFvcnl5SllHclJZOWMxdE5FSHYy?=
 =?utf-8?B?ZDRLZlFndklGTmNyNTYxdHV6bkNrWllQdGlpOVdpTWdsYmtzQ3VzNE1JU2ZQ?=
 =?utf-8?B?clZzRGNJTHpNOGVUUDI0VVA5dWpSVElVNFY1SlllbnFYZElYd3gzQTNrMkQz?=
 =?utf-8?B?bFIyY2U3eFNFaDRqODlCVDlmbGVsK3AxTUV4VnJkKzQzdGV3cG1JR29RQjdN?=
 =?utf-8?B?Q3hVaHl5U25IZGZCb3ZsSUdJUlAyYzg2K2p3dGNwUktoUU9HeWQzbm5HSXJ0?=
 =?utf-8?B?QXhqd0hyb3ZteUxGODBTY2hiQ2tJcHpRTnBvb3N2bjFoRXJ4TkdxYTBucUFx?=
 =?utf-8?B?SjdWSGlzbGV1NmVuZDlhanp2M1FPRXZyUXpsL3BxTGZBRFcrREhKQ1pwdFpp?=
 =?utf-8?B?M2c4cE1VTHV2UlpzbFpoQXVhWlNVR2tPMVRVU2E1NEI2ZkcwcmErcVRWUUlw?=
 =?utf-8?B?c3I2UkVMN2M5NkErb0tLOHREenJKYzl2WnlxN3kwbUtrQUJhZ1A2Y09VWkVT?=
 =?utf-8?B?b2l2VDEyRXAvUU5Pa3FSbzNCbmdneHpHMEEyMVJMT29CWVhIajhsNmhFa2I3?=
 =?utf-8?B?dnk2RWxTTjJVSk1mUW5BVHpncUREL29yQjR5UmxvK0F4ZkNOQUh2THBkQS9O?=
 =?utf-8?B?clZQSUpnRGw2YUcwVS85ZzZ6aWNVRlo1K2d1cUZ0RysyckJQd3dZT1ZONEY5?=
 =?utf-8?B?d2VCcmxodlRqSHlKZTFJUjVyS0pGWTJ2UlBDeEZPaFBYMVF2YVFVYzduenRt?=
 =?utf-8?B?bGRDRnpvZzIrNng2K0s0Yk1sc0NrMUNBTnZsdEdUYlNoWExzNUxXWlE1Y1pp?=
 =?utf-8?B?TlFNZVB5MktZdXRuUytrVjY0MGhNVWpxK25zNDFVT0JVRFNLTVVtVXdiSDBj?=
 =?utf-8?B?WlQxK3REb0FpZkFyVm5yemg2ekd5YVh0V1FTOUlhOTFTNXcrY1NqTmk2d3A0?=
 =?utf-8?B?aHpuSkI2MzZJWUlnWGRqdHBOMHdoUzJLTUNra0JnQ2doWDdjRTVxd3FaM25w?=
 =?utf-8?B?MUl4a1MwaG9oTWdxTnR1SmhkQU1pYnJSSTd4NjZZWDE5ME1sVnZUSm5EaHh6?=
 =?utf-8?B?TGNlZlowWUNiRFF4M0ZHSFBNdUJkeWpEby8zTkFRQnpZZVplTnpyU3lJNGVZ?=
 =?utf-8?B?a2laQnlFZ3JpanpaeG95YTdIYU5aUzVlWDE1L3lzLytJOTR4bkt6NXFQUmxF?=
 =?utf-8?B?elVDNTN1bXBZK0FPZ21ybVdVSzVrWC9wOEVCRGZZSVZSWkRWMWxKcUtiMDR6?=
 =?utf-8?B?dnp4YjlGVnF3bit4bnhDZjUxaWNnd1VBMkJ0Y0RJM1hZNmJoMEZBdW1EVzJQ?=
 =?utf-8?B?Tm1iTi9GeWRhc1FESGdxSEswOFVPWllZdnNGRWl3WHU2djVmWTdORmFlcHpV?=
 =?utf-8?B?U1I5Q2FNOEkvTkd1YVpzTXlkeXYwRFVUZXhCUW9HaURzTFJReDNXMnhaMEJn?=
 =?utf-8?B?THdENzd4RDNKVWx1dTRQbGtSRnJzRmdKbmZidzcwMjVhMTlhTlBXaHJTR2Z3?=
 =?utf-8?B?RnlaTEZEdzUxRG9NaHZrRzQ0QnpZTXR0Y3VCeUs1aGpNZXM2dUtiMXE2anBy?=
 =?utf-8?B?MXR0NlUyRHg5eFlXYnFIZmV5a29FRUlSNThCa09rckdCNXRqeGZUUmZMSFNJ?=
 =?utf-8?B?eDZDSldLTnUwd290VFNBR1BxVGRzTXYvODNRWGdWa2xaSEZxT1dHV0lWNFpa?=
 =?utf-8?Q?Bk2997nMLmLTDD1LBZ?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cfd7b79c-9dae-4d32-58d8-08ded6ad656e
X-MS-Exchange-CrossTenant-AuthSource: PH8PR12MB6914.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2026 13:42:15.4319
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rTr0j/CPNuJBNf2ifsmOvhRjo83PqvsvVsSgJZEZLOV6GJ3ij9ebqJCZ1HDnqv+JVMDIes+1QPMeU/zgCxzduA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB8422
X-Spamd-Bar: ----
X-MailFrom: Mario.Limonciello@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5C2CQWHN4VNFTQYA2WKAD3YIKQ3YWSVC
X-Message-ID-Hash: 5C2CQWHN4VNFTQYA2WKAD3YIKQ3YWSVC
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:13:23 +0000
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: explicitely forbid exposing pages from get_user_pages()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5C2CQWHN4VNFTQYA2WKAD3YIKQ3YWSVC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [5.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	DATE_IN_PAST(1.00)[339];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ckoenig.leichtzumerken@gmail.com,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:lizhi.hou@amd.com,m:Max.Zhen@amd.com,m:airlied@gmail.com,m:karol.wachowski@linux.intel.com,m:christian.koenig@amd.com,m:ckoenigleichtzumerken@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[mario.limonciello@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	GREYLIST(0.00)[pass,meta];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,amd.com,linux.intel.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mario.limonciello@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:from_mime,amd.com:email,amd.com:mid,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7E2B07573F2

DQoNCk9uIDYvMzAvMjYgMDM6MDEsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+IFdlIHJlY2Vu
dGx5IGhhZCBhbm90aGVyIGluY2lkZW50IHdoZXJlIHR3byBkcml2ZXJzIHB1dCBwYWdlcyB0aGV5
IGdvdCBmcm9tDQo+IGdldF91c2VyX3BhZ2VzKCkgaW50byBhIERNQS1idWYgYW5kIGNhdXNlIHF1
aXRlIGEgbnVtYmVyIG9mIHByb2JsZW1zLg0KPiANCj4gRXhwbGljaXRlbHkgZG9jdW1lbnQgdGhh
dCB0aGlzIGlzIG5vdCBzb21ldGhpbmcgZXhwb3J0ZXJzIGNhbiBkby4NCg0KSSB0aGluayBpdCB3
b3VsZCBiZSBhIGdvb2QgaWRlYSB0byBzZW5kIHRoaXMgdXAgdG8gDQpodHRwczovL2dpdGh1Yi5j
b20vbWFzb25jbC9yZXZpZXctcHJvbXB0cy9ibG9iL21haW4va2VybmVsL3N1YnN5c3RlbS9kcm0u
bWQgDQphcyB3ZWxsLg0KDQpUaGF0J3Mgd2hhdCBTYXNoaWtvIHVzZXMgYW5kIGl0IHdpbGwgaGVs
cCBmbGFnIHRoaXMgaW4gY2FzZSBpdCBoYXBwZW5zIA0KaW4gZnV0dXJlLg0KDQo+IA0KPiBTaWdu
ZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+
IC0tLQ0KPiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCA4ICsrKysrKysrDQo+ICAgMSBm
aWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+IGluZGV4IDcx
ZjM3NTQ0YTVjNi4uYWE1YWY0ZjQzOWMyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYv
ZG1hLWJ1Zi5jDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gQEAgLTY4NSw2
ICs2ODUsMTQgQEAgc3RhdGljIHN0cnVjdCBmaWxlICpkbWFfYnVmX2dldGZpbGUoc2l6ZV90IHNp
emUsIGludCBmbGFncykNCj4gICAgKg0KPiAgICAqIEZvciB0aGUgZGV0YWlsZWQgc2VtYW50aWNz
IGV4cG9ydGVycyBhcmUgZXhwZWN0ZWQgdG8gaW1wbGVtZW50IHNlZQ0KPiAgICAqICZkbWFfYnVm
X29wcy4NCj4gKyAqDQo+ICsgKiBJdCBpcyBleHBsaWNpdGVseSBmb3JiaWRkZW4gZm9yIGV4cG9y
dGVycyB0byBleHBvc2UgYnVmZmVycyB0aGV5IGRvbid0ICJvd24iDQo+ICsgKiBhcyBETUEtYnVm
LiBUaGlzIGluY2x1ZGVzIHBhZ2VzIGFjcXVpcmVkIGJ5IGdldF91c2VyX3BhZ2VzKCkgb3Igb3Ro
ZXIgaW1wb3J0DQo+ICsgKiBtZWNoYW5pc20uIE5vdCBmb2xsb3dpbmcgdGhpcyBydWxlIGNhbiBj
cmVhdGUgbnVtZXJvdXMgc2VjdXJpdHkgcHJvYmxlbXMuDQo+ICsgKg0KPiArICogSXQgaXMgYWxz
byBzdHJvbmdseSBkaXNjb3VyYWdlZCB0byBleHBvc2UgdGhlIHNhbWUgYmFja2luZyBzdG9yZSB0
aHJvdWdoDQo+ICsgKiBtdWx0aXBsZSBETUEtYnVmcyBhdCB0aGUgc2FtZSB0aW1lLiBUaGlzIGV2
ZW50dWFsbHkgY3JlYXRlcyBhbGlhc2luZyBhbmQNCj4gKyAqIGNhY2hlIGNvaGVyZW5jeSBwcm9i
bGVtcyB3aGljaCBhcmUgZXh0cmVtZWx5IGhhcmQgdG8gZGVidWcgYW5kIGZpeC4NCj4gICAgKi8N
Cj4gICANCj4gICAvKioNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
