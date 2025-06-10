Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 796DEAD3F0B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Jun 2025 18:34:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 91C0A44AEA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Jun 2025 16:34:32 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	by lists.linaro.org (Postfix) with ESMTPS id C71E044439
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Jun 2025 16:34:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=OE39vPKy;
	spf=pass (lists.linaro.org: domain of m.szyprowski@samsung.com designates 210.118.77.12 as permitted sender) smtp.mailfrom=m.szyprowski@samsung.com;
	dmarc=pass (policy=none) header.from=samsung.com
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20250610163420euoutp021fed3cc1112ff6394bf20292d0963f4c~Hu5xV5Uka1574815748euoutp02Q
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Jun 2025 16:34:20 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20250610163420euoutp021fed3cc1112ff6394bf20292d0963f4c~Hu5xV5Uka1574815748euoutp02Q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1749573260;
	bh=NS7GzjVzxQWVeneNGnikOfI3wBaZea46fIVMRvzt3fA=;
	h=Date:Subject:From:To:Cc:In-Reply-To:References:From;
	b=OE39vPKyqrq7U68twaogEU5JZBFGOcbJJ6ConSRJecWeHnrF1m7BY4w11r7p/M+zQ
	 ZI2dpgINR57Y8CPwpGaWh4dUqPoRYPUKqNNgJXcewuShwRwExE+8KM8wTJCusyjAPa
	 nEkfCGJDopqTNJxi9rs2hQLSoOvUyWwPUb6Huyl0=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20250610163420eucas1p25f008a064b4511f1c3bee4b862eaa94a~Hu5xE6xJS2358223582eucas1p2B;
	Tue, 10 Jun 2025 16:34:20 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20250610163418eusmtip2e9144f0c61d4a2cdcbabc925173949e3~Hu5vrCJWM0431404314eusmtip2f;
	Tue, 10 Jun 2025 16:34:18 +0000 (GMT)
Message-ID: <3d65e71e-5847-4c0f-98ff-318086f14ee2@samsung.com>
Date: Tue, 10 Jun 2025 18:34:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
	dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev
Content-Language: en-US
In-Reply-To: <c90bf515-9050-4ed7-b733-28b14536b913@samsung.com>
X-CMS-MailID: 20250610163420eucas1p25f008a064b4511f1c3bee4b862eaa94a
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20250507160922eucas1p11bd044bb458626dc0004bd2fd83605c0
X-EPHeader: CA
X-CMS-RootMailID: 20250507160922eucas1p11bd044bb458626dc0004bd2fd83605c0
References: <20250507160913.2084079-1-m.szyprowski@samsung.com>
	<CGME20250507160922eucas1p11bd044bb458626dc0004bd2fd83605c0@eucas1p1.samsung.com>
	<20250507160913.2084079-3-m.szyprowski@samsung.com>
	<7a6475cb-4ebe-46a3-92a2-f29fbc8e5e41@amd.com>
	<c90bf515-9050-4ed7-b733-28b14536b913@samsung.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	R_SPF_ALLOW(-0.20)[+ip4:210.118.77.0/24];
	RWL_MAILSPIKE_GOOD(-0.10)[210.118.77.12:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6619, ipnet:210.118.76.0/23, country:KR];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[samsung.com:+]
X-Rspamd-Queue-Id: C71E044439
X-Spamd-Bar: ----
Message-ID-Hash: UNXJ5KRLV32VOB22WGNUKOMDQQI6UD3H
X-Message-ID-Hash: UNXJ5KRLV32VOB22WGNUKOMDQQI6UD3H
X-MailFrom: m.szyprowski@samsung.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gurchetan Singh <gurchetansingh@chromium.org>, Robin Murphy <robin.murphy@arm.com>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/3] udmabuf: use sgtable-based scatterlist wrappers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UNXJ5KRLV32VOB22WGNUKOMDQQI6UD3H/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

T24gMTQuMDUuMjAyNSAxNTo0NCwgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToNCj4gT24gMDguMDUu
MjAyNSAxMTo1NywgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+IE9uIDUvNy8yNSAxODowOSwg
TWFyZWsgU3p5cHJvd3NraSB3cm90ZToNCj4+PiBVc2UgY29tbW9uIHdyYXBwZXJzIG9wZXJhdGlu
ZyBkaXJlY3RseSBvbiB0aGUgc3RydWN0IHNnX3RhYmxlIA0KPj4+IG9iamVjdHMgdG8NCj4+PiBm
aXggaW5jb3JyZWN0IHVzZSBvZiBzY2F0dGVybGlzdHMgc3luYyBjYWxscy4gZG1hX3N5bmNfc2df
Zm9yXyooKQ0KPj4+IGZ1bmN0aW9ucyBoYXZlIHRvIGJlIGNhbGxlZCB3aXRoIHRoZSBudW1iZXIg
b2YgZWxlbWVudHMgb3JpZ2luYWxseSANCj4+PiBwYXNzZWQNCj4+PiB0byBkbWFfbWFwX3NnXyoo
KSBmdW5jdGlvbiwgbm90IHRoZSBvbmUgcmV0dXJuZWQgaW4gc2d0YWJsZSdzIG5lbnRzLg0KPj4+
DQo+Pj4gRml4ZXM6IDFmZmUwOTU5MDEyMSAoInVkbWFidWY6IGZpeCBkbWEtYnVmIGNwdSBhY2Nl
c3MiKQ0KPj4+IENDOiBzdGFibGVAdmdlci5rZXJuZWwub3JnDQo+Pj4gU2lnbmVkLW9mZi1ieTog
TWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPg0KPj4+IEFja2VkLWJ5
OiBWaXZlayBLYXNpcmVkZHkgPHZpdmVrLmthc2lyZWRkeUBpbnRlbC5jb20+DQo+PiBSZXZpZXdl
ZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4NCj4+
IFNob3VsZCBJIHB1c2ggdGhpcyBvbmUgdG8gZHJtLW1pc2MtZml4ZXMgZm9yIHVwc3RyZWFtaW5n
Pw0KPg0KPiBZZXMsIHBsZWFzZS4gVGhlIG90aGVyIDIgcGF0Y2hlcyBoYXZlIGJlZW4gdGFrZW4g
YnkgdGhlIG1lZGlhIG1haW50YWluZXJzLg0KDQpHZW50bGUgcGluZw0KDQpCZXN0IHJlZ2FyZHMN
Ci0tIA0KTWFyZWsgU3p5cHJvd3NraSwgUGhEDQpTYW1zdW5nIFImRCBJbnN0aXR1dGUgUG9sYW5k
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
