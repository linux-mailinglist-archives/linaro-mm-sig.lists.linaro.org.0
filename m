Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yhX4GXcyQmp71gkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 10:53:11 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB9B6D7B3F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 10:53:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b=Q986DCiu;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CCD0240A9D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 08:53:09 +0000 (UTC)
Received: from BN8PR05CU002.outbound.protection.outlook.com (mail-eastus2azon11011004.outbound.protection.outlook.com [52.101.57.4])
	by lists.linaro.org (Postfix) with ESMTPS id 686CD3F798
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Jun 2026 08:52:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PjWlq+No56JGLXdo+Dj8AJu5wH+FIBnE5j0XO3gTe01l4962J7vMYJYfRtcDtje3IzbGoRj/Qg1MNihaFxZf17b/iJXBGXcpzM4iR2TDUTkC9MveJRW0RkrQY5g7jJn2CZEFVmuqIIdDEmoSqWFukO5ZazmV9eDtA7fT1MgGVezq3V9qNUiKTkfqT+WaVJ7yC3iH+gcWUXPw45TSFUu2Iq7WLnMPYYaCyG3pa55Me6RWd0lK7CKyZPqg3PfIZGaYPf4ow7Tb9f0Gt7G0sxy9i/gm8cWGuUvTFevO5DRJqikN62MV4Sa2kyxQcUwkf81UbRx2D/MtAI7NWNYmt2ev4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UsOE0Jid2xVVKv1FP3ap2jWQIZIli/rD1TuUM2XSHt8=;
 b=L+jUbSVaj6guo9WASfVAHJxzompNKlf/4mYGGAwP7oN0B0blTujDp7Jwmt+mPJ8jDNYqseKzNUwiBWE/YBqaR6WKpdMeeYR7n8k5tgE0vtHRhiIWx68A5RZZ289KeGKa6J10k9wBd08U7aDPOSnLbgNZqlW1sK3brU2R5ztUaejnzN7XcXnOHDQdVRbuU/DeHDIlzVGHwCJQ5cPb4Is8NCtvSGL26Dzyq9+XE+S4WdKnBzQOryuVph/fvCg51s1kimdJ4e3aayYTVWd6RNEoy3d0dA4OLrQPTaTJuMo2s/+KNSt6ZP9o8yMS/kK090JPesMaFeXNyIjjDaZEf06zVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UsOE0Jid2xVVKv1FP3ap2jWQIZIli/rD1TuUM2XSHt8=;
 b=Q986DCiun9t6zONn5NXa4YfK8kiAEhzKkajPrQFiSK7wybpiQnlFUn6EP3GlDaSeMvOlzjBeZyknbqJQZ2NXdjm7JUr9guHMKovm6QEDBeyee+m4rX+LHrrAt9UlBcDUE4dMGa887AynnqCIpxHmu+Z7n5WbpBxcjbPMp6JplGo=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH3PR12MB7643.namprd12.prod.outlook.com (2603:10b6:610:152::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Mon, 29 Jun
 2026 08:52:55 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0159.018; Mon, 29 Jun 2026
 08:52:55 +0000
Message-ID: <66344c20-ea97-4dfa-ac42-c9d6e061eb95@amd.com>
Date: Mon, 29 Jun 2026 10:52:50 +0200
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, Baineng Shou <shoubaineng@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>
References: <20260629031346.3875683-1-shoubaineng@gmail.com>
 <becd29b5-9e40-4104-b6c9-3d91e2ddddff@amd.com>
 <058f4bb261e408cf17deca9ff7354460675eacbf.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <058f4bb261e408cf17deca9ff7354460675eacbf.camel@mailbox.org>
X-ClientProxiedBy: BL1PR13CA0136.namprd13.prod.outlook.com
 (2603:10b6:208:2bb::21) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH3PR12MB7643:EE_
X-MS-Office365-Filtering-Correlation-Id: c33b3c85-a4ed-4642-3e6f-08ded5bbcf71
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|376014|23010399003|7416014|6133799003|3023799007|22082099003|18002099003|56012099006|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: 
	3vBAu1JrT5D+9xMyUcsQB550w6GpZv79uqXBNiRW5sNAiRXpYaELyfSR0v3xwvh3LlfpCgJCwYpN89IG09XwpiSil4paLT5tE4LR2r3sskn0B39LuwUWl6yjIvrTMce6UEr+gdJX02NYPNJN380xcR9yhK8iIgqVyD4szRidaXO5fsZQ9LMHo7xs0OKIXb4SfWnFBkUuMZQQ+LNgy4kclbSUkFwKF/Oj54hsFiXyeQ4YaxVZtZTbnNpI2Njmr5t+VBJbC3pQeS97YkdkBoOCRbljaxqg2g8414aoFHpGl0rb24xADzTMR1r+LMAKEPSMrl7pdMdkR7Q1D4vBysPrKJLIjtiTdpAoQ6+XZ8Q2JXdaOJSkn0GKAbU9sOjxObImXC/ZSthIJR83MOKn/6Gwd68hesyzcx6i1wYAWR4hHYg8BjYM8eXsIQCb5KLmmCkWlVueYOmIqbH0Gzq+zmWI6oZLk6gN/J8hrkS7IVtO6xajNaW9pkLBTG+/cTEoe2bhFLgl+tScBHLFHAhGsuUJlx1JV4BAqlqdIJmmwRAECLnQvhJ+uIPBP2zb0+PBIbO/M+NBP5QKEAwrgwierkxM+Bg69W/MVzF16frkDFVQ14UUCFErvh+bg2anAhg8jXlzZyBeN5PkqC/c/rGMLn4PxhKxJN1QY7RBc9hmiyyhxTA=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(23010399003)(7416014)(6133799003)(3023799007)(22082099003)(18002099003)(56012099006)(4143699003)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?b1o3NFk1Slg1WUs2VGJMUGFpRHd3Yys2L1NHVnlWN2ZSZ1BBOVZmTGRYKzBa?=
 =?utf-8?B?S0NIS20rSHcrY3lkeEV0eWVuRmo1bTdTWFNnSHRoWUxKQUhrd3NHZGVhaTRV?=
 =?utf-8?B?WmNpWDUwajNhU0ZIYjd2QVM2bU05YmxLYW1xc1BXTXRsdjNLNjU2RDB5VEho?=
 =?utf-8?B?VGpvQThVSWtpZzNOMnNRWThydDFzS2NFNC9nem9XMkhjNXlkWXUza3puS0wy?=
 =?utf-8?B?VWRnTEIvcVRIc1gwZmZySW9qQUQ0a2UrT2hOVThQWnJqNmtzNVRvYkc2NDBl?=
 =?utf-8?B?VXNuMlpjMG8rOXNsNEswUXZvL0IwbWRFdGRnM0FmeTBNWFkyV0NnN3ZmTURl?=
 =?utf-8?B?Vi9jcUsyUFBidFFyNlZIUDZSZktYZVVRcnFZTEFjdXgxKy9kcVVGQ1UrNTB1?=
 =?utf-8?B?ZTRjc2R4Z0VZMUt5Ymoza2Y5MEdJTDNGd25wM3hnTXpRcXBKeFpvQS9IS1Ar?=
 =?utf-8?B?UFJ2aVR0Zy8vWG9xOVJZOW1wS051QkdWWEIzWlhOMU14aytNOEYyc3hCUjU4?=
 =?utf-8?B?aXlyRVhRV1RoNnpSNFhBL0RCKzIyMmZOVjBaVHdEbHp1L1JOZy85UzQweTJp?=
 =?utf-8?B?bmhZRjYwdm4rYmdOc0lYWXpiNXJYdERtWS9TeFRzMG40WDNoNmJUSjZoQmxX?=
 =?utf-8?B?enJhZldKZlZLaHdEVlF4ZGR1RGVlTVlwTEw0UW1tMXNpTTI2clNnTGFkemRi?=
 =?utf-8?B?NTl0Ylk2bW5taTFudFJNbHN2aEQ3R2M5UzFVd016R3hJcTc1bEFDblk1QVBS?=
 =?utf-8?B?d09CeVczbDJKdmNhR0t0cVdjd093WkxMVXRhTVpVbnpxTC9hTkhBYjdBQ2pa?=
 =?utf-8?B?dDU4MGc3NDhNckp3VG9uSmpoRDNBOU9TdXk4U2x4dzMvb3A0cjZSVVFOUHpm?=
 =?utf-8?B?YmRkSkc0TE5ZUzZPaThYWDJnaS9mSkdaYmczd2lHM21McU9Fd0c1Y1NBQUYv?=
 =?utf-8?B?dXcwSHVzNmhpVlZzdXJtakYxNzdvNzJHMzNRU29YaFc1V3FrZFJFeUxJanBQ?=
 =?utf-8?B?dDU5YVlwT3lEZFB1SEd1YjltRjQvWFFNTndSY3A5Y0t4OCt5aWtpa3VRZFg3?=
 =?utf-8?B?SERNa1daQmJ0aVBWYkUrR05oUURKTFgrYTJybGZyZUd1UUFjbU5rSmdEUDRm?=
 =?utf-8?B?NGxCNnVwdVAwMFRVb1JQbksyZG5jZmFiSmhXdmFma0w1ekVWUWZJMUNQaTRR?=
 =?utf-8?B?NVFwZzRCRzF0bDJzTFp0Y0pjSEVPSUtLOUoxUW1CTlRleWxvRzhCaUxyb2U2?=
 =?utf-8?B?eHdQdDVSWmZHNFE3WVVDMzQzbm9iMzJIZUZ6dWJDWjg4b3JjaUNRcldnYzNr?=
 =?utf-8?B?VG1rUlZ4NlFTdUY5a1ZmcmQzYTdLOGNuWEdGVlIxZWdBYUkvMnhuR01BRHhP?=
 =?utf-8?B?aytlYzNOTWprZTVIanBRSG4yMnVrVy9wVFluQll3Vms5bnFTWk1sM3dIVy9T?=
 =?utf-8?B?RkNoK2RBMkErVENIWGpYU3VqN0MzZW9hUkphbS94b2FtRC9oYjZiRUVHMTlp?=
 =?utf-8?B?YkFWWENTcmhXTkJ0eWVseitWKzdGLzVxT3hsdEU4cWJpOWdtREpZa3MrZldo?=
 =?utf-8?B?NGdpSWJxbUdHWGRCRHNLeE1rSzNzWHllMnRRYXhUTko4NGJPYThrOEsxaGkw?=
 =?utf-8?B?emd4dDBmSEkvYTZmelI2TEpGMGVMZjJRSldORGtVb1VETTRVU0JSYTJYV0Mv?=
 =?utf-8?B?aVRtTmcrRWk1UVlRYlFsNWtBbHg1bElLTWF5Zk1OUllBZjAwd3RiZlBoV1Y2?=
 =?utf-8?B?bWlzZXVLYUh5TW5GN0tFMER4djdLRzBGNkFQcnovMEE2VkV2TXVCbDI0SW5r?=
 =?utf-8?B?bkhoUE83UStLT0RwR1VYSnp0TjN5akkzVHd2NlF4U2VZWWtEOVd6ei9lZWIr?=
 =?utf-8?B?OUc5Vi8xMUdvL1oxV2F5aEMrNkNGV2ZYaDZBald4bGk5cVZZMm44ZUEwMk15?=
 =?utf-8?B?a1dhMVZUSFUyY2V4ekI1SzVCN0xCZW9qQm9QdmppbGsrNmZWYXdZaG1ySDJZ?=
 =?utf-8?B?VnhSU1cwMWZ5VkN0VEhZbDZyeWpIMHgyQ2lBNHVUd3dGQkFnS1lNMitaaDc0?=
 =?utf-8?B?Wm4zODUvMjNCNGIxSmpXL1ppQWFPUVpEL3Q0bnIrSHFWbUlEakhKL01ONzlP?=
 =?utf-8?B?SDBEaHB2d3JHanBiOVQrQXRjWHFVbk5TQ3ZLc25xVlF5b2dwNXpCTzFVWnc4?=
 =?utf-8?B?cDEyTEIwNzIzM3QxV2pubGRWYzhHMTlnR0FrL2VJa1YveFpJSm1yd3RXSXNa?=
 =?utf-8?B?WHppSkVYRVl2cmhLOXRnaHpsTys4QWhDdDl6alZyckJiYXVsSzZlUTZKNFU3?=
 =?utf-8?Q?EioKJmLY2JiN1q597J?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c33b3c85-a4ed-4642-3e6f-08ded5bbcf71
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2026 08:52:55.0971
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j1dwGA0DMu5rFL1gVvtr4MKz1qKjJUcmKaqNoVd/vcPpS2+E2igj55yWcsw3005B
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB7643
X-Spamd-Bar: ----
Message-ID-Hash: ZDBOWITYXWM5NF5G2TN32S43A66RZBTU
X-Message-ID-Hash: ZDBOWITYXWM5NF5G2TN32S43A66RZBTU
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tvrtko Ursulin <tursulin@ursulin.net>, Akash Goel <akash.goel@arm.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: Make dma_fence_dedup_array() robust against 0-count input
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZDBOWITYXWM5NF5G2TN32S43A66RZBTU/>
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
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,linaro.org];
	FORGED_SENDER(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:shoubaineng@gmail.com,m:sumit.semwal@linaro.org,m:tursulin@ursulin.net,m:akash.goel@arm.com,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[amd.com:-];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,amd.com:email,amd.com:mid,amd.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CDB9B6D7B3F

T24gNi8yOS8yNiAxMDo0OSwgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPiBPbiBNb24sIDIwMjYt
MDYtMjkgYXQgMTA6NDUgKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBPbiA2LzI5
LzI2IDA1OjEzLCBCYWluZW5nIFNob3Ugd3JvdGU6DQo+Pj4gZG1hX2ZlbmNlX2RlZHVwX2FycmF5
KCkgcmV0dXJucyAxIHdoZW4gY2FsbGVkIHdpdGggbnVtX2ZlbmNlcyA9PSAwOg0KPj4+IHRoZSBm
b3ItbG9vcCBib2R5IG5ldmVyIGV4ZWN1dGVzLCBqIHN0YXlzIGF0IDAsIGFuZCB0aGUgZmluYWwN
Cj4+PiBgcmV0dXJuICsramAgeWllbGRzIDEuIFRoaXMgY29udHJhZGljdHMgYm90aCB0aGUga2Vy
bmVsLWRvYyAoIlJldHVybjoNCj4+PiBOdW1iZXIgb2YgdW5pcXVlIGZlbmNlcyByZW1haW5pbmcg
aW4gdGhlIGFycmF5IikgYW5kIHRoZSBuYXR1cmFsDQo+Pj4gZXhwZWN0YXRpb24gdGhhdCAwIGlu
cHV0IGdpdmVzIDAgb3V0cHV0Lg0KPj4NCj4+IEdvb2QgY2F0Y2guDQo+Pg0KPj4+DQo+Pj4gQWxs
IGluLXRyZWUgY2FsbGVycyBjdXJyZW50bHkgZmlsdGVyIG51bV9mZW5jZXMgPT0gMCBiZWZvcmUg
aW52b2tpbmcNCj4+PiB0aGlzIGhlbHBlciAoX19kbWFfZmVuY2VfdW53cmFwX21lcmdlKCkgYmFp
bHMgb3V0IHZpYSB0aGUNCj4+PiBgaWYgKGNvdW50ID09IDAgfHwgY291bnQgPT0gMSlgIGZhc3Qg
cGF0aDsgYW1kZ3B1X3VzZXJxX3dhaXRfKigpDQo+Pj4gY2Fubm90IHJlYWNoIHRoZSBkZWR1cCBj
YWxsIHdpdGggYSB6ZXJvIGxvY2FsIGNvdW50IGJlY2F1c2UgdGhlDQo+Pj4gYW1kZ3B1X3VzZXJx
X3dhaXRfYWRkX2ZlbmNlKCkgaGVscGVyIGd1YXJhbnRlZXMgbnVtX2ZlbmNlcyBzdGF5cyBpbg0K
Pj4+IFswLCB3YWl0X2luZm8tPm51bV9mZW5jZXNdLCBhbmQgd2FpdF9pbmZvLT5udW1fZmVuY2Vz
ID4gMCBpcyBlbmZvcmNlZA0KPj4+IGF0IHRoZSBpb2N0bCBlbnRyeSkuDQo+Pg0KPj4gVGhhdCdz
IG5vdCBjb3JyZWN0LCB3YWl0X2luZm8tPm51bV9mZW5jZXMgaXMganVzdCB0aGUgbWF4aW11bSBh
bW91bnQgb2YgZmVuY2VzIHdlIHJldHVybi4NCj4+DQo+PiBJdCBpcyBwZXJmZWN0bHkgcG9zc2li
bGUgdGhhdCBhbWRncHUgbmV2ZXIgZmluZHMgYW55IGZlbmNlcyB0byBhZGQgdG8gdGhlIGFycmF5
Lg0KPj4NCj4+Pg0KPj4+IEhvd2V2ZXIsIGRtYV9mZW5jZV9kZWR1cF9hcnJheSgpIGlzIEVYUE9S
VF9TWU1CT0xfR1BMLCBzbyBhbnkgZnV0dXJlDQo+Pj4gY2FsbGVyIHRoYXQgZm9yZ2V0cyB0byBw
cmUtZmlsdGVyIHRoZSB6ZXJvIGNhc2Ugd2lsbCBnZXQgYSBtaXNsZWFkaW5nDQo+Pj4gcmV0dXJu
IHZhbHVlIG9mIDEuIERlcGVuZGluZyBvbiBob3cgdGhhdCBjYWxsZXIgdXNlcyB0aGUgcmVzdWx0
LCBpdA0KPj4+IGNvdWxkIGRlcmVmZXJlbmNlIGFuIHVuaW5pdGlhbGl6ZWQgZmVuY2Ugc2xvdCBp
biB0aGUgYXJyYXksIHNpbmNlIHRoZQ0KPj4+IGNhbGxlcidzIGFycmF5IG1heSBoYXZlIGJlZW4g
YWxsb2NhdGVkIGJ1dCBub3QgeWV0IHBvcHVsYXRlZC4NCj4+Pg0KPj4+IE1ha2UgdGhlIGNvbnRy
YWN0IG1hdGNoIHRoZSBkb2N1bWVudGF0aW9uIGJ5IHJldHVybmluZyAwIGVhcmx5LiBUaGlzDQo+
Pj4gYWxzbyBza2lwcyBhbiB1bm5lY2Vzc2FyeSBzb3J0KCkgY2FsbCBvbiBhbiBlbXB0eSBhcnJh
eS4NCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IEJhaW5lbmcgU2hvdSA8c2hvdWJhaW5lbmdAZ21h
aWwuY29tPg0KPj4NCj4+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4u
a29lbmlnQGFtZC5jb20+DQo+Pg0KPj4gSSB3aWxsIGFkZCBhIENDIHN0YWJsZSBiZWZvcmUgcHVz
aGluZyB0byBkcm0tbWlzYy1maXhlcy4NCj4gDQo+IE5vIG9mZmVuc2UgaW50ZW5kZWQgb3IgdGFr
ZW4sIGJ1dCBkb24ndCB0aGUgRFJNIHJ1bGVzIHNheSB0aGF0IHRoaW5ncw0KPiBkbyBub3QgZ2V0
IG1lcmdlZCB3aGlsZSB0aGVyZSBhcmUgb3V0c3RhbmRpbmcgY29uY2VybnMgb3Igc2lnbmlmaWNh
bnQNCj4gcG9pbnRzIGluIHJldmlldyBmZWVkYmFjaz8NCg0KSSBoYXZlbid0IHNlZW4gdGhhdCBi
ZWZvcmUgd3JpdGluZyB0aGUgcmVzcG9uc2UuDQoNCkkgdXN1YWxseSBnbyBvdmVyIG15IG1haWxz
IHRpbGwgdGhlIGVuZCBhbmQgd2FpdCBhIGNvdXBsZSBvZiBob3VycyBiZWZvcmUgcHVzaGluZyBh
bnl0aGluZy4NCg0KPiBXaGF0IGFib3V0IG15IGNvbW1lbnRzPw0KDQpMb29rcyB2YWxpZCB0byBt
ZSBhcyB3ZWxsLCBidXQgSSB0aGluayB0aGF0IGlzIGEgc2VwYXJhdGUgaXNzdWUuDQoNCklmIEkn
bSBub3QgY29tcGxldGVseSBtaXN0YWtlbiB3ZSBzaG91bGQgdXNlIHNpemVfdCBpbnN0ZWFkIG9m
IGludCBmb3IgYXJyYXkgc2l6ZXMgYWxsIGFyb3VuZCB0aGUgcGxhY2UgaW4gdGhvc2UgZnVuY3Rp
b25zLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+IA0KPiANCj4gUC4NCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
