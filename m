Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cL5KMT4SzmmnkgYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Apr 2026 08:52:46 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 395F3384BD5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Apr 2026 08:52:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3BA4C401F3
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Apr 2026 06:52:45 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	by lists.linaro.org (Postfix) with ESMTPS id 163BB3F7FB
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Apr 2026 06:52:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=c7KoBj+H;
	dmarc=pass (policy=none) header.from=samsung.com;
	spf=pass (lists.linaro.org: domain of m.szyprowski@samsung.com designates 210.118.77.12 as permitted sender) smtp.mailfrom=m.szyprowski@samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20260402065241euoutp024667b664495d6cab1d3051ae729473f7~id6bsVy3g0115901159euoutp02z
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Apr 2026 06:52:41 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20260402065241euoutp024667b664495d6cab1d3051ae729473f7~id6bsVy3g0115901159euoutp02z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1775112761;
	bh=JqJnKEECHMM1x06qmTO+uD6JrQrf2ZS4nGeqK+WTZzo=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=c7KoBj+HLoJ9sWu1hkYtLUUIevwDXI6D3RK20LI8rvG29JUKJiiiahbBwF5EWYT81
	 YYsa2S2U6wfC9v9jKmDjGDjAFUqu4hVrc1o0CJnhBLOgrBBNI4u98esBReAXz7NbdN
	 5HZRhHlKS0NnclWLjqBiY2m961MOpr6oaC9+k1Eo=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20260402065241eucas1p26fe08801bf816ff198a0361e0e00aa7d~id6bQM3u42082120821eucas1p2Q;
	Thu,  2 Apr 2026 06:52:41 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20260402065238eusmtip2465f475377dc393f8274ea72cd5e5991~id6YxQUhd3266432664eusmtip2A;
	Thu,  2 Apr 2026 06:52:38 +0000 (GMT)
Message-ID: <7fc83a05-b392-4fc9-8ddb-1c169c698870@samsung.com>
Date: Thu, 2 Apr 2026 08:52:37 +0200
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
To: Maxime Ripard <mripard@redhat.com>, Andrew Davis <afd@ti.com>
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <20260316-cherubic-eel-of-philosophy-10ef2b@houat>
X-CMS-MailID: 20260402065241eucas1p26fe08801bf816ff198a0361e0e00aa7d
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20260316120911eucas1p26492fa73abe29d02bb7f5da73f047abc
X-EPHeader: CA
X-CMS-RootMailID: 20260316120911eucas1p26492fa73abe29d02bb7f5da73f047abc
References: <20260306-b4-dmabuf-heap-coherent-rmem-v3-0-3d00d36c9bc4@redhat.com>
	<20260306-b4-dmabuf-heap-coherent-rmem-v3-5-3d00d36c9bc4@redhat.com>
	<e8dd476f-1be8-46fa-bf56-65fe0bfe29a1@ti.com>
	<CADSE00+-SQr3wGdgBmLowHPWE5bGxoyO4o20jZs4ma-71aOxUA@mail.gmail.com>
	<1afc696a-9afb-48af-887d-2a209680784e@ti.com>
	<CGME20260316120911eucas1p26492fa73abe29d02bb7f5da73f047abc@eucas1p2.samsung.com>
	<20260316-cherubic-eel-of-philosophy-10ef2b@houat>
X-Spamd-Bar: ----
Message-ID-Hash: OU2OXO4FZCFHL4GFAMJN2XCY72T56ERF
X-Message-ID-Hash: OU2OXO4FZCFHL4GFAMJN2XCY72T56ERF
X-MailFrom: m.szyprowski@samsung.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Albert Esteve <aesteve@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, devicetree@vger.kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 5/6] dma-buf: heaps: Add Coherent heap to dmabuf heaps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OU2OXO4FZCFHL4GFAMJN2XCY72T56ERF/>
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
	RCPT_COUNT_TWELVE(0.00)[19];
	DKIM_TRACE(0.00)[samsung.com:-];
	NEURAL_SPAM(0.00)[0.619];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[m.szyprowski@samsung.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,ti.com:email,samsung.com:mid]
X-Rspamd-Queue-Id: 395F3384BD5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMTYuMDMuMjAyNiAxMzowOCwgTWF4aW1lIFJpcGFyZCB3cm90ZToNCj4gT24gV2VkLCBNYXIg
MTEsIDIwMjYgYXQgMDg6MTg6MjhBTSAtMDUwMCwgQW5kcmV3IERhdmlzIHdyb3RlOg0KPj4gT24g
My8xMS8yNiA1OjE5IEFNLCBBbGJlcnQgRXN0ZXZlIHdyb3RlOg0KPj4+IE9uIFR1ZSwgTWFyIDEw
LCAyMDI2IGF0IDQ6MzTigK9QTSBBbmRyZXcgRGF2aXMgPGFmZEB0aS5jb20+IHdyb3RlOg0KPj4+
PiBPbiAzLzYvMjYgNDozNiBBTSwgQWxiZXJ0IEVzdGV2ZSB3cm90ZToNCj4+Pj4+IEV4cG9zZSBE
VCBjb2hlcmVudCByZXNlcnZlZC1tZW1vcnkgcG9vbHMgKCJzaGFyZWQtZG1hLXBvb2wiDQo+Pj4+
PiB3aXRob3V0ICJyZXVzYWJsZSIpIGFzIGRtYS1idWYgaGVhcHMsIGNyZWF0aW5nIG9uZSBoZWFw
IHBlcg0KPj4+Pj4gcmVnaW9uIHNvIHVzZXJzcGFjZSBjYW4gYWxsb2NhdGUgZnJvbSB0aGUgZXhh
Y3QgZGV2aWNlLWxvY2FsDQo+Pj4+PiBwb29sIGludGVuZGVkIGZvciBjb2hlcmVudCBETUEuDQo+
Pj4+Pg0KPj4+Pj4gVGhpcyBpcyBhIG1pc3NpbmcgYmFja2VuZCBpbiB0aGUgbG9uZy10ZXJtIGVm
Zm9ydCB0byBzdGVlcg0KPj4+Pj4gdXNlcnNwYWNlIGJ1ZmZlciBhbGxvY2F0aW9ucyAoRFJNLCB2
NGwyLCBkbWEtYnVmIGhlYXBzKQ0KPj4+Pj4gdGhyb3VnaCBoZWFwcyBmb3IgY2xlYXJlciBjZ3Jv
dXAgYWNjb3VudGluZy4gQ01BIGFuZCBzeXN0ZW0NCj4+Pj4+IGhlYXBzIGFscmVhZHkgZXhpc3Q7
IG5vbi1yZXVzYWJsZSBjb2hlcmVudCByZXNlcnZlZCBtZW1vcnkNCj4+Pj4+IGRpZCBub3QuDQo+
Pj4+Pg0KPj4+Pj4gVGhlIGhlYXAgYmluZHMgdGhlIGhlYXAgZGV2aWNlIHRvIGVhY2ggbWVtb3J5
IHJlZ2lvbiBzbw0KPj4+Pj4gY29oZXJlbnQgYWxsb2NhdGlvbnMgdXNlIHRoZSBjb3JyZWN0IGRl
di0+ZG1hX21lbSwgYW5kDQo+Pj4+PiBpdCBkZWZlcnMgcmVnaXN0cmF0aW9uIHVudGlsIG1vZHVs
ZV9pbml0IHdoZW4gbm9ybWFsDQo+Pj4+PiBhbGxvY2F0b3JzIGFyZSBhdmFpbGFibGUuDQo+Pj4+
Pg0KPj4+Pj4gU2lnbmVkLW9mZi1ieTogQWxiZXJ0IEVzdGV2ZSA8YWVzdGV2ZUByZWRoYXQuY29t
Pg0KPj4+Pj4gLS0tDQo+Pj4+PiAgICAgZHJpdmVycy9kbWEtYnVmL2hlYXBzL0tjb25maWcgICAg
ICAgICB8ICAgOSArDQo+Pj4+PiAgICAgZHJpdmVycy9kbWEtYnVmL2hlYXBzL01ha2VmaWxlICAg
ICAgICB8ICAgMSArDQo+Pj4+PiAgICAgZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NvaGVyZW50X2hl
YXAuYyB8IDQxNCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrDQo+Pj4+PiAgICAg
MyBmaWxlcyBjaGFuZ2VkLCA0MjQgaW5zZXJ0aW9ucygrKQ0KPj4+Pj4NCj4+Pj4+ICguLi4pDQo+
Pj4+IFlvdSBhcmUgZG9pbmcgdGhpcyBETUEgYWxsb2NhdGlvbiB1c2luZyBhIG5vbi1ETUEgcHNl
dWRvLWRldmljZSAoaGVhcF9kZXYpLg0KPj4+PiBUaGlzIGlzIHdoeSB5b3UgbmVlZCB0byBkbyB0
aGF0IGRtYV9jb2VyY2VfbWFza19hbmRfY29oZXJlbnQoNjQpIG5vbnNlbnNlLCB5b3UNCj4+Pj4g
YXJlIGRvaW5nIGEgRE1BIGFsbG9jIGZvciB0aGUgQ1BVIGl0c2VsZi4gVGhpcyBtaWdodCBzdGls
bCB3b3JrLCBidXQgb25seSBpZg0KPj4+PiBkbWFfbWFwX3NndGFibGUoKSBjYW4gaGFuZGxlIHN3
aW90bGIvaW9tbXUgZm9yIGFsbCBhdHRhY2hpbmcgZGV2aWNlcyBhdCBtYXANCj4+Pj4gdGltZS4N
Cj4+PiBUaGUgY29uY2VybiBpcyB2YWxpZC4gV2UncmUgYWxsb2NhdGluZyB2aWEgYSBzeW50aGV0
aWMgZGV2aWNlLCB3aGljaA0KPj4+IHRpZXMgdGhlIGFsbG9jYXRpb24gdG8gdGhhdCBkZXZpY2Un
cyBETUEgZG9tYWluLiBJIGxvb2tlZCBkZWVwZXIgaW50bw0KPj4+IHRoaXMgdHJ5aW5nIHRvIGFk
ZHJlc3MgdGhlIGNvbmNlcm4uDQo+Pj4NCj4+PiBUaGUgYXBwcm9hY2ggd29ya3MgYmVjYXVzZSBk
bWFfbWFwX3NndGFibGUoKSBoYW5kbGVzIGJvdGgNCj4+PiBkbWFfbWFwX2RpcmVjdCBhbmQgdXNl
X2RtYV9pb21tdSBjYXNlcyBpbiBfX2RtYV9tYXBfc2dfYXR0cnMoKS4gRm9yDQo+Pj4gZWFjaCBw
aHlzaWNhbCBhZGRyZXNzIGluIHRoZSBzZ190YWJsZSAoZXh0cmFjdGVkIHZpYSBzZ19waHlzKCkp
LCBpdA0KPj4+IGNyZWF0ZXMgZGV2aWNlLXNwZWNpZmljIERNQSBtYXBwaW5nczoNCj4+PiAtIEZv
ciBkaXJlY3QgbWFwcGluZzogaXQgY2hlY2tzIGlmIHRoZSBhZGRyZXNzIGlzIGRpcmVjdGx5IGFj
Y2Vzc2libGUNCj4+PiAoZG1hX2NhcGFibGUoKSksIGFuZCBpZiBub3QsIGl0IGZhbGxzIGJhY2sg
dG8gc3dpb3RsYi4NCj4+PiAtIEZvciBJT01NVTogaXQgY3JlYXRlcyBtYXBwaW5ncyB0aGF0IGFs
bG93IHRoZSBkZXZpY2UgdG8gYWNjZXNzDQo+Pj4gcGh5c2ljYWwgYWRkcmVzc2VzLg0KPj4+DQo+
Pj4gVGhpcyBtZWFucyBldmVyeSBhdHRhY2hlZCBkZXZpY2UgZ2V0cyBpdHMgb3duIGRldmljZS1z
cGVjaWZpYyBETUENCj4+PiBtYXBwaW5nLCBwcm9wZXJseSBoYW5kbGluZyBjYXNlcyB3aGVyZSB0
aGUgcGh5c2ljYWwgYWRkcmVzc2VzIGFyZQ0KPj4+IGluYWNjZXNzaWJsZSBvciBoYXZlIERNQSBj
b25zdHJhaW50cy4NCj4+Pg0KPj4gV2hpbGUgdGhpcyBtZWFucyBpdCBtaWdodCBzdGlsbCAid29y
ayIgaXQgd29uJ3QgYWx3YXlzIGJlIGlkZWFsLiBUYWtlDQo+PiB0aGUgY2FzZSB3aGVyZSB0aGUg
Y29uc3VtaW5nIGRldmljZShzKSBoYXZlIGEgMzJiaXQgYWRkcmVzcyByZXN0cmljdGlvbiwNCj4+
IGlmIHRoZSBhbGxvY2F0aW9uIHdhcyBkb25lIHVzaW5nIHRoZSByZWFsIGRldmljZXMgdGhlbiB0
aGUgYmFja2luZyBidWZmZXINCj4+IGl0c2VsZiB3b3VsZCBiZSBhbGxvY2F0ZWQgaW4gPDMyYml0
IG1lbS4gV2hlcmVhcyBoZXJlIHRoZSBhbGxvY2F0aW9uDQo+PiBjb3VsZCBlbmQgdXAgaW4gPjMy
Yml0IG1lbSwgYXMgdGhlIENQVS9zeW50aGV0aWMgZGV2aWNlIHN1cHBvcnRzIHRoYXQuDQo+PiBU
aGVuIGVhY2ggbWFwcGluZyBkZXZpY2Ugd291bGQgaW5zdGVhZCBnZXQgYSBib3VuY2UgYnVmZmVy
Lg0KPj4NCj4+ICh0aGlzIGV4YW1wbGUgbWlnaHQgbm90IGJlIGdyZWF0IGFzIHdlIHVzdWFsbHkg
a25vdyB0aGUgYWRkcmVzcyBvZg0KPj4gY2FydmVvdXQvcmVzZXJ2ZWQgbWVtb3J5IHJlZ2lvbnMs
IGJ1dCBzdWJzdGl0dXRlIGluIHdoYXRldmVyIHJlc3RyaWN0aW9uDQo+PiBtYWtlcyBtb3JlIHNl
bnNlKQ0KPj4NCj4+IFRoZXNlIG5vbi1yZXVzYWJsZSBjYXJ2ZW91dHMgdGVuZCB0byBiZSBtYWRl
IGZvciBzb21lIHNwZWNpZmljIGRldmljZSwgYW5kDQo+PiB0aGV5IGFyZSBtYWRlIHNwZWNpZmlj
YWxseSBiZWNhdXNlIHRoYXQgZGV2aWNlIGhhcyBzb21lIG1lbW9yeSByZXN0cmljdGlvbi4NCj4+
IFNvIHdlIG1pZ2h0IHJ1biBpbnRvIHRoZSBzaXR1YXRpb24gYWJvdmUgbW9yZSB0aGFuIG9uZSB3
b3VsZCBleHBlY3QuDQo+Pg0KPj4gTm90IGEgYmxvY2tlciBoZXJlLCBidXQganVzdCBzb21ldGhp
bmcgd29ydGggdGhpbmtpbmcgb24uDQo+IEFzIEkgZGV0YWlsZWQgaW4gdGhlIHByZXZpb3VzIHZl
cnNpb24gWzFdIHRoZSBtYWluIGlkZWEgYmVoaW5kIHRoYXQgd29yaw0KPiBpcyB0byBhbGxvdyB0
byBnZXQgcmlkIG9mIGRtYV9hbGxvY19hdHRycyBmb3IgZnJhbWV3b3JrIGFuZCBkcml2ZXJzIHRv
DQo+IGFsbG9jYXRlIGZyb20gdGhlIGhlYXBzIGluc3RlYWQuDQo+DQo+IFJvYmluIHdhcyBzYXlp
bmcgaGUgd2Fzbid0IGNvbWZvcnRhYmxlIHdpdGggZXhwb3NpbmcgdGhpcyBoZWFwIHRvDQo+IHVz
ZXJzcGFjZSwgYW5kIHdlJ3JlIHNheWluZyBoZXJlIHRoYXQgbWF5YmUgdGhpcyBtaWdodCBub3Qg
YWx3YXlzIHdvcmsNCj4gYW55d2F5IChvciBhdCBsZWFzdCB0aGF0IHdlIGNvdWxkbid0IHRlc3Qg
aXQgZnVsbHkpLg0KPg0KPiBNYXliZSB0aGUgYmVzdCB0aGluZyBpcyB0byBkZWZlciB0aGlzIHNl
cmllcyB1bnRpbCB3ZSBhcmUgYXQgYSBwb2ludA0KPiB3aGVyZSB3ZSBjYW4gc3RhcnQgZW5hYmxp
bmcgdGhlICJoZWFwIGFsbG9jYXRpb25zIiBpbiBmcmFtZXdvcmtzIHRoZW4/DQo+IEhvcGVmdWxs
eSB3ZSB3aWxsIGhhdmUgaGFyZHdhcmUgdG8gdGVzdCBpdCB3aXRoIGJ5IHRoZW4sIGFuZCB3ZSBt
aWdodA0KPiBub3QgZXZlbiBuZWVkIHRvIGV4cG9zZSBpdCB0byB1c2Vyc3BhY2UgYXQgYWxsIGJ1
dCBvbmx5IHRvIHRoZSBrZXJuZWwuDQo+DQo+IFdoYXQgZG8geW91IHRoaW5rPw0KDQpJTUhPIGEg
Z29vZCBpZGVhLiBNYXliZSBpbi1rZXJuZWwgaGVhcCBmb3IgdGhlIGNvaGVyZW50IGFsbG9jYXRp
b25zIHdpbGwgDQpiZSBqdXN0IGVub3VnaC4NCg0KQmVzdCByZWdhcmRzDQotLSANCk1hcmVrIFN6
eXByb3dza2ksIFBoRA0KU2Ftc3VuZyBSJkQgSW5zdGl0dXRlIFBvbGFuZA0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
