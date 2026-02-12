Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CD/INqKzjWlz6AAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Feb 2026 12:04:02 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A3E12CD1A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Feb 2026 12:04:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DE0053F75E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Feb 2026 11:04:00 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	by lists.linaro.org (Postfix) with ESMTPS id D13163F770
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Feb 2026 11:03:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b="Xx/a54SW";
	spf=pass (lists.linaro.org: domain of m.szyprowski@samsung.com designates 210.118.77.12 as permitted sender) smtp.mailfrom=m.szyprowski@samsung.com;
	dmarc=pass (policy=none) header.from=samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20260212110351euoutp0246aab550567226968b71525fad719f4b~Teuva7KuY1825218252euoutp02F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Feb 2026 11:03:51 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20260212110351euoutp0246aab550567226968b71525fad719f4b~Teuva7KuY1825218252euoutp02F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1770894231;
	bh=IxeoTLwSUaIpCJwceeWSECzAXTLUXMKlMHh6nbUcmXo=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=Xx/a54SWOjsDEMxs6qeaSQ7Odmn8OrMA9eLavT6NidMycfeQMK2C1H1vWSJWNhvix
	 laAM/BdhN1sHFTCTkESNm8rotB6+HNH4MclqcAX2gYB1AnjTP0nPq25L8Vb+uTCLkM
	 AaVKfj2geCnETndy2qmT61FyJvv/qy0ud6RZ3GPI=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20260212110351eucas1p1ffa80cd3fde9ef5c94e6090c508b8f5c~TeuvGNC9M1161211612eucas1p1H;
	Thu, 12 Feb 2026 11:03:51 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20260212110350eusmtip2ef3e41cf3f95e814e053cc0ce9b38a58~Teut9YrGo2457924579eusmtip2j;
	Thu, 12 Feb 2026 11:03:50 +0000 (GMT)
Message-ID: <621783e8-d77d-4f29-bda0-ef487dd27b5b@samsung.com>
Date: Thu, 12 Feb 2026 12:03:49 +0100
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
To: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev,
	linux-media@vger.kernel.org
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <20260209153809.250835-2-jiri@resnulli.us>
X-CMS-MailID: 20260212110351eucas1p1ffa80cd3fde9ef5c94e6090c508b8f5c
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20260209153816eucas1p22befaa2c5ef3c6d5e67956eea08424ed
X-EPHeader: CA
X-CMS-RootMailID: 20260209153816eucas1p22befaa2c5ef3c6d5e67956eea08424ed
References: <20260209153809.250835-1-jiri@resnulli.us>
	<CGME20260209153816eucas1p22befaa2c5ef3c6d5e67956eea08424ed@eucas1p2.samsung.com>
	<20260209153809.250835-2-jiri@resnulli.us>
X-Spamd-Bar: -----
Message-ID-Hash: ASB7ACECJ4HCF62VSY6B5LUD2HTSRU3V
X-Message-ID-Hash: ASB7ACECJ4HCF62VSY6B5LUD2HTSRU3V
X-MailFrom: m.szyprowski@samsung.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/5] dma-mapping: avoid random addr value print out on error path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ASB7ACECJ4HCF62VSY6B5LUD2HTSRU3V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.70 / 15.00];
	R_DKIM_REJECT(1.00)[samsung.com:s=mail20170921];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[samsung.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[m.szyprowski@samsung.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[samsung.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[samsung.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: 67A3E12CD1A
X-Rspamd-Action: no action

T24gMDkuMDIuMjAyNiAxNjozOCwgSmlyaSBQaXJrbyB3cm90ZToNCj4gRnJvbTogSmlyaSBQaXJr
byA8amlyaUBudmlkaWEuY29tPg0KPg0KPiBkbWFfYWRkciBpcyB1bml0aWFsaXplZCBpbiBkbWFf
ZGlyZWN0X21hcF9waHlzKCkgd2hlbiBzd2lvdGxiIGlzIGZvcmNlZA0KPiBhbmQgRE1BX0FUVFJf
TU1JTyBpcyBzZXQgd2hpY2ggbGVhZHMgdG8gcmFuZG9tIHZhbHVlIHByaW50IG91dCBpbg0KPiB3
YXJuaW5nLiBGaXggdGhhdCBieSBqdXN0IHJldHVybmluZyBETUFfTUFQUElOR19FUlJPUi4NCj4N
Cj4gRml4ZXM6IGU1M2QyOWY5NTdiMyAoImRtYS1tYXBwaW5nOiBjb252ZXJ0IGRtYV9kaXJlY3Rf
Km1hcF9wYWdlIHRvIGJlIHBoeXNfYWRkcl90IGJhc2VkIikNCj4gU2lnbmVkLW9mZi1ieTogSmly
aSBQaXJrbyA8amlyaUBudmlkaWEuY29tPg0KDQpJIHdpbGwgdGFrZSB0aGlzIHBhdGNoIHdoZW7C
oHY3LjAtcmMxIGlzIG91dCwgYXMgdGhpcyBmaXjCoGRlZmluaXRlbHkgaGFzIA0KdG8gYmUgYXBw
bGllZCByZWdhcmRsZXNzIG9mIHRoZSBkaXNjdXNzaW9uIGFib3V0IHRoZSByZW1haW5pbmcgcGF0
Y2hlcy4NCg0KPiAtLS0NCj4gICBrZXJuZWwvZG1hL2RpcmVjdC5oIHwgMiArLQ0KPiAgIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPg0KPiBkaWZmIC0tZ2l0
IGEva2VybmVsL2RtYS9kaXJlY3QuaCBiL2tlcm5lbC9kbWEvZGlyZWN0LmgNCj4gaW5kZXggZGEy
ZmFkZjQ1YmNkLi42MmYwZDlkMGJhMDIgMTAwNjQ0DQo+IC0tLSBhL2tlcm5lbC9kbWEvZGlyZWN0
LmgNCj4gKysrIGIva2VybmVsL2RtYS9kaXJlY3QuaA0KPiBAQCAtODgsNyArODgsNyBAQCBzdGF0
aWMgaW5saW5lIGRtYV9hZGRyX3QgZG1hX2RpcmVjdF9tYXBfcGh5cyhzdHJ1Y3QgZGV2aWNlICpk
ZXYsDQo+ICAgDQo+ICAgCWlmIChpc19zd2lvdGxiX2ZvcmNlX2JvdW5jZShkZXYpKSB7DQo+ICAg
CQlpZiAoYXR0cnMgJiBETUFfQVRUUl9NTUlPKQ0KPiAtCQkJZ290byBlcnJfb3ZlcmZsb3c7DQo+
ICsJCQlyZXR1cm4gRE1BX01BUFBJTkdfRVJST1I7DQo+ICAgDQo+ICAgCQlyZXR1cm4gc3dpb3Rs
Yl9tYXAoZGV2LCBwaHlzLCBzaXplLCBkaXIsIGF0dHJzKTsNCj4gICAJfQ0KDQpCZXN0IHJlZ2Fy
ZHMNCi0tIA0KTWFyZWsgU3p5cHJvd3NraSwgUGhEDQpTYW1zdW5nIFImRCBJbnN0aXR1dGUgUG9s
YW5kDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
