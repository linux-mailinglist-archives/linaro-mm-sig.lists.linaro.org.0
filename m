Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cH9pOHs8vWkH8AIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Mar 2026 13:24:27 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 376722DA20B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Mar 2026 13:24:26 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 75F413F761
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Mar 2026 12:24:24 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com [210.118.77.11])
	by lists.linaro.org (Postfix) with ESMTPS id 4DF5D3F761
	for <linaro-mm-sig@lists.linaro.org>; Fri, 20 Mar 2026 12:24:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=Lm+LMJ1N;
	spf=pass (lists.linaro.org: domain of m.szyprowski@samsung.com designates 210.118.77.11 as permitted sender) smtp.mailfrom=m.szyprowski@samsung.com;
	dmarc=pass (policy=none) header.from=samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20260320122421euoutp0153bf82a3335394ee5a557ab038d5953a~ejDS8QwdJ2166521665euoutp01H
	for <linaro-mm-sig@lists.linaro.org>; Fri, 20 Mar 2026 12:24:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20260320122421euoutp0153bf82a3335394ee5a557ab038d5953a~ejDS8QwdJ2166521665euoutp01H
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1774009461;
	bh=zBoVOBx1I566RxpDMI+o2b7Nge6l1DhueDNqbVeTZ9I=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=Lm+LMJ1N2KMDXYMK1DOJQHu+mcsmsRVm47PRbfNKkp8LdCVnjJF+uuVbrRgj1j9cG
	 U6RyPHSthJw3H1wRb6DJWdKEkegzlLK8kjUL4OkQza+IkqiKcpbdhiO2jqVXlE4EAI
	 pmpJvKXTiVmVuJGUhpk10ye6Ti+6l5/UoHmotHuQ=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20260320122421eucas1p17d0a17d9bdd22b45c1e60c78271e1d65~ejDSnuv7b2308323083eucas1p1i;
	Fri, 20 Mar 2026 12:24:21 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260320122419eusmtip117bbdef1d0f760c12e7437f2d83e9ca0~ejDRniVoR0999509995eusmtip1m;
	Fri, 20 Mar 2026 12:24:19 +0000 (GMT)
Message-ID: <c60a3f30-6fc3-41ab-835a-2fdd887e18fd@samsung.com>
Date: Fri, 20 Mar 2026 13:24:18 +0100
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
To: Maxime Ripard <mripard@kernel.org>, Sumit Semwal
	<sumit.semwal@linaro.org>, Benjamin Gaignard
	<benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>,
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy
	<robin.murphy@arm.com>, Andrew Morton <akpm@linux-foundation.org>, David
	Hildenbrand <david@kernel.org>, Lorenzo Stoakes
	<lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>,
	Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren
	Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <20260303-dma-buf-heaps-as-modules-v3-0-24344812c707@kernel.org>
X-CMS-MailID: 20260320122421eucas1p17d0a17d9bdd22b45c1e60c78271e1d65
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20260303101320eucas1p2eb4fea499364ef20825d0d73585a2555
X-EPHeader: CA
X-CMS-RootMailID: 20260303101320eucas1p2eb4fea499364ef20825d0d73585a2555
References: <CGME20260303101320eucas1p2eb4fea499364ef20825d0d73585a2555@eucas1p2.samsung.com>
	<20260303-dma-buf-heaps-as-modules-v3-0-24344812c707@kernel.org>
X-Spamd-Bar: ----
Message-ID-Hash: 4HRLU4HXHUYDLJHIYOPM2CFTCA2LFDNZ
X-Message-ID-Hash: 4HRLU4HXHUYDLJHIYOPM2CFTCA2LFDNZ
X-MailFrom: m.szyprowski@samsung.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Albert Esteve <aesteve@redhat.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 0/8] dma-buf: heaps: Turn heaps into modules
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4HRLU4HXHUYDLJHIYOPM2CFTCA2LFDNZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.70 / 15.00];
	R_DKIM_REJECT(1.00)[samsung.com:s=mail20170921];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[samsung.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	DKIM_TRACE(0.00)[samsung.com:-];
	NEURAL_SPAM(0.00)[0.911];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[m.szyprowski@samsung.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,samsung.com:mid]
X-Rspamd-Queue-Id: 376722DA20B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgTWF4aW1lLA0KDQpPbiAwMy4wMy4yMDI2IDExOjEzLCBNYXhpbWUgUmlwYXJkIHdyb3RlOg0K
PiBUaGUgcmVjZW50IGludHJvZHVjdGlvbiBvZiBoZWFwcyBpbiB0aGUgb3B0ZWUgZHJpdmVyIFsx
XSBtYWRlIHBvc3NpYmxlDQo+IHRoZSBjcmVhdGlvbiBvZiBoZWFwcyBhcyBtb2R1bGVzLg0KPg0K
PiBJdCdzIGdlbmVyYWxseSBhIGdvb2QgaWRlYSBpZiBwb3NzaWJsZSwgaW5jbHVkaW5nIGZvciB0
aGUgYWxyZWFkeQ0KPiBleGlzdGluZyBzeXN0ZW0gYW5kIENNQSBoZWFwcy4NCj4NCj4gVGhlIHN5
c3RlbSBvbmUgaXMgcHJldHR5IHRyaXZpYWwsIHRoZSBDTUEgb25lIGlzIGEgYml0IG1vcmUgaW52
b2x2ZWQsDQo+IGVzcGVjaWFsbHkgc2luY2Ugd2UgaGF2ZSBhIGNhbGwgZnJvbSBrZXJuZWwvZG1h
L2NvbnRpZ3VvdXMuYyB0byB0aGUgQ01BDQo+IGhlYXAgY29kZS4gVGhpcyB3YXMgc29sdmVkIGJ5
IHR1cm5pbmcgdGhlIGxvZ2ljIGFyb3VuZCBhbmQgbWFraW5nIHRoZQ0KPiBDTUEgaGVhcCBjYWxs
IGludG8gdGhlIGNvbnRpZ3VvdXMgRE1BIGNvZGUuDQo+DQo+IExldCBtZSBrbm93IHdoYXQgeW91
IHRoaW5rLA0KPiBNYXhpbWUNCj4NCj4gMTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRl
dmVsLzIwMjUwOTExMTM1MDA3LjEyNzU4MzMtNC1qZW5zLndpa2xhbmRlckBsaW5hcm8ub3JnLw0K
Pg0KPiBTaWduZWQtb2ZmLWJ5OiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+DQoN
CkknbSBva2F5IHdpdGggdGhlIGtlcm5lbC9kbWEvY29udGlndW91cy5jIGNoYW5nZXMuIEkgb25s
eSB3b25kZXIgaG93IHRvIA0KcHJvcGVybHkgbWVyZ2UgdGhlbS4gVGhlcmUgYXJlIG90aGVyIHBl
bmRpbmcgY2hhbmdlcyB0byANCmtlcm5lbC9kbWEvY29udGlndW91cy5jIGZpbGUgWzFdIGFuZCBp
ZiB0aGV5IGZpbmFsbHkgZ2V0IHJldmlld2VkLCBJIA0Kd291bGQgbGlrZSB0byBtZXJnZcKgYm90
aCB2aWEgZG1hLW1hcHBpbmctZm9yLW5leHQgdHJlZS4gVGhlbiBJIGNhbiANCnByb3ZpZGUgYSBz
dGFibGUgYnJhbmNoIGZvciBtZXJnaW5nIHRoZSByZW1haW5pbmcgZG1hLWJ1ZiBwYXRoZXMuIElz
IGl0IA0Kb2theSBmb3IgWW91Pw0KDQoxLiANCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8y
MDI2MDMxMzE1MDgwMi4xMTIxNDQyLTEtbS5zenlwcm93c2tpQHNhbXN1bmcuY29tLyANCg0KDQoN
Cj4gLS0tDQo+IENoYW5nZXMgaW4gdjM6DQo+IC0gU3F1YXNoZWQgY21hX2dldF9uYW1lIGFuZCBj
bWFfYWxsb2MvcmVsZWFzZSBwYXRjaGVzDQo+IC0gRml4ZWQgdHlwbyBpbiBFeHBvcnQgZGV2X2dl
dF9jbWFfYXJlYSBjb21taXQgdGl0bGUNCj4gLSBGaXhlZCBjb21waWxhdGlvbiBmYWlsdXJlIHdp
dGggRE1BX0NNQSBidXQgbm90IE9GX1JFU0VSVkVEX01FTQ0KPiAtIExpbmsgdG8gdjI6IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNjAyMjctZG1hLWJ1Zi1oZWFwcy1hcy1tb2R1bGVzLXYy
LTAtNDU0YWVlN2UwNmNjQGtlcm5lbC5vcmcNCj4NCj4gQ2hhbmdlcyBpbiB2MjoNCj4gLSBDb2xs
ZWN0IHRhZ3MNCj4gLSBEb24ndCBleHBvcnQgZG1hX2NvbnRpZ3VvdXNfZGVmYXVsdF9hcmVhIGFu
eW1vcmUsIGJ1dCBleHBvcnQNCj4gICAgZGV2X2dldF9jbWFfYXJlYSBpbnN0ZWFkDQo+IC0gTWVu
dGlvbmVkIHRoYXQgaGVhcCBtb2R1bGVzIGNhbid0IGJlIHJlbW92ZWQNCj4gLSBMaW5rIHRvIHYx
OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjYwMjI1LWRtYS1idWYtaGVhcHMtYXMtbW9k
dWxlcy12MS0wLTIxMDkyMjVhMDkwZEBrZXJuZWwub3JnDQo+DQo+IC0tLQ0KPiBNYXhpbWUgUmlw
YXJkICg4KToNCj4gICAgICAgIGRtYTogY29udGlndW91czogVHVybiBoZWFwIHJlZ2lzdHJhdGlv
biBsb2dpYyBhcm91bmQNCj4gICAgICAgIGRtYTogY29udGlndW91czogTWFrZSBkZXZfZ2V0X2Nt
YV9hcmVhKCkgYSBwcm9wZXIgZnVuY3Rpb24NCj4gICAgICAgIGRtYTogY29udGlndW91czogTWFr
ZSBkbWFfY29udGlndW91c19kZWZhdWx0X2FyZWEgc3RhdGljDQo+ICAgICAgICBkbWE6IGNvbnRp
Z3VvdXM6IEV4cG9ydCBkZXZfZ2V0X2NtYV9hcmVhKCkNCj4gICAgICAgIG1tOiBjbWE6IEV4cG9y
dCBjbWFfYWxsb2MoKSwgY21hX3JlbGVhc2UoKSBhbmQgY21hX2dldF9uYW1lKCkNCj4gICAgICAg
IGRtYS1idWY6IGhlYXBzOiBFeHBvcnQgbWVtX2FjY291bnRpbmcgcGFyYW1ldGVyDQo+ICAgICAg
ICBkbWEtYnVmOiBoZWFwczogY21hOiBUdXJuIHRoZSBoZWFwIGludG8gYSBtb2R1bGUNCj4gICAg
ICAgIGRtYS1idWY6IGhlYXBzOiBzeXN0ZW06IFR1cm4gdGhlIGhlYXAgaW50byBhIG1vZHVsZQ0K
Pg0KPiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jICAgICAgICAgIHwgIDEgKw0KPiAgIGRy
aXZlcnMvZG1hLWJ1Zi9oZWFwcy9LY29uZmlnICAgICAgIHwgIDQgKystLQ0KPiAgIGRyaXZlcnMv
ZG1hLWJ1Zi9oZWFwcy9jbWFfaGVhcC5jICAgIHwgMjEgKysrKystLS0tLS0tLS0tLS0tLS0tDQo+
ICAgZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMgfCAgNSArKysrKw0KPiAgIGlu
Y2x1ZGUvbGludXgvZG1hLW1hcC1vcHMuaCAgICAgICAgIHwgMTggKysrKysrKysrKy0tLS0tLS0t
DQo+ICAga2VybmVsL2RtYS9jb250aWd1b3VzLmMgICAgICAgICAgICAgfCAzNyArKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrLS0tDQo+ICAgbW0vY21hLmMgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfCAgMyArKysNCj4gICA3IGZpbGVzIGNoYW5nZWQsIDYwIGluc2VydGlvbnMo
KyksIDI5IGRlbGV0aW9ucygtKQ0KPiAtLS0NCj4gYmFzZS1jb21taXQ6IDQ5OWE3MTg1MzZkYzBl
MWMxZDFiNjIxMTg0NzIwN2Q1OGFjZDk5MTYNCj4gY2hhbmdlLWlkOiAyMDI2MDIyNS1kbWEtYnVm
LWhlYXBzLWFzLW1vZHVsZXMtMTAzNGIzZWM5ZjJhDQo+DQo+IEJlc3QgcmVnYXJkcywNCg0KQmVz
dCByZWdhcmRzDQotLSANCk1hcmVrIFN6eXByb3dza2ksIFBoRA0KU2Ftc3VuZyBSJkQgSW5zdGl0
dXRlIFBvbGFuZA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
