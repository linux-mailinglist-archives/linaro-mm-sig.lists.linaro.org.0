Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cOyABOBxymnG8gUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Mar 2026 14:51:44 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7939935B4ED
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Mar 2026 14:51:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5BE573F8E9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Mar 2026 12:51:42 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	by lists.linaro.org (Postfix) with ESMTPS id 6D7DE3F719
	for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Mar 2026 12:51:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=lyd1qaKz;
	dmarc=pass (policy=none) header.from=samsung.com;
	spf=pass (lists.linaro.org: domain of m.szyprowski@samsung.com designates 210.118.77.12 as permitted sender) smtp.mailfrom=m.szyprowski@samsung.com
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20260330125138euoutp027a13e54ec86965e6a7f8973473bf7446~hn3_WGONk2784627846euoutp02S
	for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Mar 2026 12:51:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20260330125138euoutp027a13e54ec86965e6a7f8973473bf7446~hn3_WGONk2784627846euoutp02S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1774875098;
	bh=/K0BfatLUGOzJ2a4upShRyXd92Gck0knBszJjH43XM0=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=lyd1qaKzKOMZ/N8MPCsQmF5PntlcAwPgetCoeDe4ySx4mig0uYBXch9XggXmrVUzr
	 /p05+mew8GhkRI8a9hzvHj3w0AnDpcZM/Wxis75yKmkrr+Z02UZq2MMZZ1XICvd8F9
	 HpbWNeR7q5o6aznWI0alIbd+N/qLrjWo7Z7DLoVI=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20260330125136eucas1p20d38cd3f5c4c3772aeef5b7d2f2b8906~hn381TBya2647926479eucas1p2y;
	Mon, 30 Mar 2026 12:51:36 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20260330125135eusmtip2d7715ffa0968cdc67f37ae3c3026faac~hn37iwEWw2261922619eusmtip2d;
	Mon, 30 Mar 2026 12:51:35 +0000 (GMT)
Message-ID: <ac7fa9bc-e966-4337-ae54-7bb6d8bd6e5a@samsung.com>
Date: Mon, 30 Mar 2026 14:51:34 +0200
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
To: Maxime Ripard <mripard@kernel.org>
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <20260330-glaring-pygmy-dodo-fa06f3@houat>
X-CMS-MailID: 20260330125136eucas1p20d38cd3f5c4c3772aeef5b7d2f2b8906
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20260330084111eucas1p1e7cd5c886e34d0ed41226fe524d2a55a
X-EPHeader: CA
X-CMS-RootMailID: 20260330084111eucas1p1e7cd5c886e34d0ed41226fe524d2a55a
References: <CGME20260330084111eucas1p1e7cd5c886e34d0ed41226fe524d2a55a@eucas1p1.samsung.com>
	<20260330-dma-build-fix-v1-1-748b64f0d8af@kernel.org>
	<62b9e47c-1c31-4654-8347-16516faf73f0@samsung.com>
	<20260330-glaring-pygmy-dodo-fa06f3@houat>
X-Spamd-Bar: ----
Message-ID-Hash: 4UB2SRR3U5H5FG5X7EVGYKB2VWCKO7RJ
X-Message-ID-Hash: 4UB2SRR3U5H5FG5X7EVGYKB2VWCKO7RJ
X-MailFrom: m.szyprowski@samsung.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Albert Esteve <aesteve@redhat.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, Mark Brown <broonie@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma/contiguous: Fix broken build
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4UB2SRR3U5H5FG5X7EVGYKB2VWCKO7RJ/>
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
	RCPT_COUNT_TWELVE(0.00)[15];
	DKIM_TRACE(0.00)[samsung.com:-];
	NEURAL_SPAM(0.00)[0.997];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[m.szyprowski@samsung.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[samsung.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 7939935B4ED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMzAuMDMuMjAyNiAxMzo0MSwgTWF4aW1lIFJpcGFyZCB3cm90ZToNCj4gT24gTW9uLCBNYXIg
MzAsIDIwMjYgYXQgMTA6NTk6NDhBTSArMDIwMCwgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToNCj4+
IE9uIDMwLjAzLjIwMjYgMTA6NDAsIE1heGltZSBSaXBhcmQgd3JvdGU6DQo+Pj4gQ29tbWl0IDNh
MjM2ZjZhNWNmMiAoImRtYTogY29udGlndW91czogVHVybiBoZWFwIHJlZ2lzdHJhdGlvbiBsb2dp
Yw0KPj4+IGFyb3VuZCIpIGRpZG4ndCByZW1vdmUgb25lIGxhc3QgY2FsbCB0byBkbWFfaGVhcF9j
bWFfcmVnaXN0ZXJfaGVhcCgpDQo+Pj4gdGhhdCBpdCByZW1vdmVkLCB0aHVzIGJyZWFraW5nIHRo
ZSBidWlsZC4NCj4+Pg0KPj4+IFRoYXQgbGFzdCBjYWxsIGlzIGluIGRtYV9jb250aWd1b3VzX3Jl
c2VydmUoKSwgdG8gaGFuZGxlIHRoZQ0KPj4+IHJlZ2lzdHJhdGlvbiBvZiB0aGUgZGVmYXVsdCBD
TUEgcmVnaW9uIGhlYXAgaW5zdGFuY2UgaWYgaXQncyBkZWNsYXJlZCBpbg0KPj4+IHRoZSBkZXZp
Y2UgdHJlZS4NCj4+Pg0KPj4+IEhvd2V2ZXIsIHRoZSBkZWZhdWx0IENNQSByZWdpb24gaW5zdGFu
Y2UgaXMgYWxyZWFkeSBoYW5kbGVkIGJ5DQo+Pj4gcmV0cmlldmluZyBpdCB0aHJvdWdoIGRldl9n
ZXRfY21hX2FyZWEoKSBpbiB0aGUgQ01BIGhlYXAgZHJpdmVyLCBzbyB0aGUNCj4+PiBjYWxsIHRv
IGRtYV9oZWFwX2NtYV9yZWdpc3Rlcl9oZWFwKCkgd2Fzbid0IGFjdHVhbGx5IG5lZWRlZC4NCj4+
Pg0KPj4+IExldCdzIHJlbW92ZSB0aGlzIGNhbGwsIHRoZSBub3cgdW51c2VkIGZ1bmN0aW9uIGRl
ZmluaXRpb24sIGl0cyBub3cNCj4+PiBlbXB0eSBoZWFkZXIsIGFuZCBhbGwgaW5jbHVkZXMgb2Yg
dGhpcyBoZWFkZXIuDQo+Pj4NCj4+PiBGaXhlczogM2EyMzZmNmE1Y2YyICgiZG1hOiBjb250aWd1
b3VzOiBUdXJuIGhlYXAgcmVnaXN0cmF0aW9uIGxvZ2ljIGFyb3VuZCIpDQo+Pj4gUmVwb3J0ZWQt
Ynk6IE1hcmsgQnJvd24gPGJyb29uaWVAa2VybmVsLm9yZz4NCj4+PiBDbG9zZXM6IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2xpbnV4LW5leHQvYWNiamFESjFhLVlRQzY0ZEBzaXJlbmEuY28udWsv
DQo+Pj4gU2lnbmVkLW9mZi1ieTogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPg0K
Pj4+IC0tLQ0KPj4+ICBkcml2ZXJzL2RtYS1idWYvaGVhcHMvY21hX2hlYXAuYyAgfCAgMSAtDQo+
Pj4gIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi9oZWFwcy9jbWEuaCB8IDE2IC0tLS0tLS0tLS0tLS0t
LS0NCj4+PiAga2VybmVsL2RtYS9jb250aWd1b3VzLmMgICAgICAgICAgIHwgIDUgLS0tLS0NCj4+
PiAgMyBmaWxlcyBjaGFuZ2VkLCAyMiBkZWxldGlvbnMoLSkNCj4+Pg0KPj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvY21hX2hlYXAuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFw
cy9jbWFfaGVhcC5jDQo+Pj4gaW5kZXggZjhhM2Q4N2YzY2NlZTk2MzAzODNiYTI4NTAyZWI0MGIx
MDY3MWNjMi4uY2M1MTdhYzY4YTBiZWMwNzg4YWJjYjMzOGMwM2Y1MzBkMTY5MDEzYiAxMDA2NDQN
Cj4+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvY21hX2hlYXAuYw0KPj4+ICsrKyBiL2Ry
aXZlcnMvZG1hLWJ1Zi9oZWFwcy9jbWFfaGVhcC5jDQo+Pj4gQEAgLTEyLDExICsxMiwxMCBAQA0K
Pj4+ICANCj4+PiAgI2RlZmluZSBwcl9mbXQoZm10KSAiY21hX2hlYXA6ICIgZm10DQo+Pj4gIA0K
Pj4+ICAjaW5jbHVkZSA8bGludXgvY21hLmg+DQo+Pj4gICNpbmNsdWRlIDxsaW51eC9kbWEtYnVm
Lmg+DQo+Pj4gLSNpbmNsdWRlIDxsaW51eC9kbWEtYnVmL2hlYXBzL2NtYS5oPg0KPj4+ICAjaW5j
bHVkZSA8bGludXgvZG1hLWhlYXAuaD4NCj4+PiAgI2luY2x1ZGUgPGxpbnV4L2RtYS1tYXAtb3Bz
Lmg+DQo+Pj4gICNpbmNsdWRlIDxsaW51eC9lcnIuaD4NCj4+PiAgI2luY2x1ZGUgPGxpbnV4L2hp
Z2htZW0uaD4NCj4+PiAgI2luY2x1ZGUgPGxpbnV4L2lvLmg+DQo+Pj4gZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvbGludXgvZG1hLWJ1Zi9oZWFwcy9jbWEuaCBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi9o
ZWFwcy9jbWEuaA0KPj4+IGRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NA0KPj4+IGluZGV4IGU3NTE0
NzllMjFlNzAzZTI0YTVmNzk5YjRhN2ZjOGJkMGRmM2MxYzQuLjAwMDAwMDAwMDAwMDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDANCj4+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYvaGVh
cHMvY21hLmgNCj4+PiArKysgL2Rldi9udWxsDQo+Pj4gQEAgLTEsMTYgKzAsMCBAQA0KPj4+IC0v
KiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCAqLw0KPj4+IC0jaWZuZGVmIERNQV9C
VUZfSEVBUF9DTUFfSF8NCj4+PiAtI2RlZmluZSBETUFfQlVGX0hFQVBfQ01BX0hfDQo+Pj4gLQ0K
Pj4+IC1zdHJ1Y3QgY21hOw0KPj4+IC0NCj4+PiAtI2lmZGVmIENPTkZJR19ETUFCVUZfSEVBUFNf
Q01BDQo+Pj4gLWludCBkbWFfaGVhcF9jbWFfcmVnaXN0ZXJfaGVhcChzdHJ1Y3QgY21hICpjbWEp
Ow0KPj4+IC0jZWxzZQ0KPj4+IC1zdGF0aWMgaW5saW5lIGludCBkbWFfaGVhcF9jbWFfcmVnaXN0
ZXJfaGVhcChzdHJ1Y3QgY21hICpjbWEpDQo+Pj4gLXsNCj4+PiAtCXJldHVybiAwOw0KPj4+IC19
DQo+Pj4gLSNlbmRpZiAvLyBDT05GSUdfRE1BQlVGX0hFQVBTX0NNQQ0KPj4+IC0NCj4+PiAtI2Vu
ZGlmIC8vIERNQV9CVUZfSEVBUF9DTUFfSF8NCj4+PiBkaWZmIC0tZ2l0IGEva2VybmVsL2RtYS9j
b250aWd1b3VzLmMgYi9rZXJuZWwvZG1hL2NvbnRpZ3VvdXMuYw0KPj4+IGluZGV4IGFkNTA1MTJk
NzFkMzA4OGE3M2U0YjFhYzAyZDZlNjEyMjM3NDg4OGUuLjlmZTAwMWM3MTIzMzlmODM4OGQzZjQw
Y2NhM2RmZmYzZjcwN2ZjYmYgMTAwNjQ0DQo+Pj4gLS0tIGEva2VybmVsL2RtYS9jb250aWd1b3Vz
LmMNCj4+PiArKysgYi9rZXJuZWwvZG1hL2NvbnRpZ3VvdXMuYw0KPj4+IEBAIC00MCwxMSArNDAs
MTAgQEANCj4+PiAgI2luY2x1ZGUgPGFzbS9wYWdlLmg+DQo+Pj4gIA0KPj4+ICAjaW5jbHVkZSA8
bGludXgvbWVtYmxvY2suaD4NCj4+PiAgI2luY2x1ZGUgPGxpbnV4L2Vyci5oPg0KPj4+ICAjaW5j
bHVkZSA8bGludXgvc2l6ZXMuaD4NCj4+PiAtI2luY2x1ZGUgPGxpbnV4L2RtYS1idWYvaGVhcHMv
Y21hLmg+DQo+Pj4gICNpbmNsdWRlIDxsaW51eC9kbWEtbWFwLW9wcy5oPg0KPj4+ICAjaW5jbHVk
ZSA8bGludXgvY21hLmg+DQo+Pj4gICNpbmNsdWRlIDxsaW51eC9ub3NwZWMuaD4NCj4+PiAgDQo+
Pj4gICNpZmRlZiBDT05GSUdfQ01BX1NJWkVfTUJZVEVTDQo+Pj4gQEAgLTI3MCwxNCArMjY5LDEw
IEBAIHZvaWQgX19pbml0IGRtYV9jb250aWd1b3VzX3Jlc2VydmUocGh5c19hZGRyX3QgbGltaXQp
DQo+Pj4gIAkJCQkJCSAgc2VsZWN0ZWRfbGltaXQsDQo+Pj4gIAkJCQkJCSAgJmRtYV9jb250aWd1
b3VzX2RlZmF1bHRfYXJlYSwNCj4+PiAgCQkJCQkJICBmaXhlZCk7DQo+Pj4gIAkJaWYgKHJldCkN
Cj4+PiAgCQkJcmV0dXJuOw0KPj4+IC0NCj4+PiAtCQlyZXQgPSBkbWFfaGVhcF9jbWFfcmVnaXN0
ZXJfaGVhcChkbWFfY29udGlndW91c19kZWZhdWx0X2FyZWEpOw0KPj4+IC0JCWlmIChyZXQpDQo+
Pj4gLQkJCXByX3dhcm4oIkNvdWxkbid0IHJlZ2lzdGVyIGRlZmF1bHQgQ01BIGhlYXAuIik7DQo+
PiBBZnRlciB0aGlzIGNoYW5nZSBubyBkbWEtYnVmIGhlYXAgZm9yIHRoZSBkZWZhdWx0IENNQSBh
cmVhIGlzwqBjcmVhdGVkIGlmIGl0IGhhc8KgDQo+PiBub3QgYmVlbiBzcGVjaWZpZWQgaW4gZGV2
aWNlLXRyZWUuIFRoaXMgbWlnaHQgYmUgZXNwZWNpYWxseSBhIHByb2JsZW0gZm9yIHRoZQ0KPj4g
bm9uLWR0IHN5c3RlbXMuDQo+IEkgZG9uJ3QgdGhpbmsgdGhhdCdzIHRoZSBjYXNlPyBNeSB1bmRl
cnN0YW5kaW5nIGlzIHRoYXQNCj4gZG1hX2NvbnRpZ3VvdXNfcmVzZXJ2ZSgpIGlzIGNhbGxlZCBi
eSB0aGUgYXJjaCBjb2RlLCBhbmQgd2lsbCBjcmVhdGUNCj4gdGhhdCByZWdpb24gb25seSBpZiBp
dCBoYXNuJ3QgYmUgc2V0IGJ5IHRoZSBEVCAodGhhdCBleGNlcnB0IGFib3ZlIGlzDQo+IHJ1biBv
bmx5IGlmICFkbWFfY29udGlndW91c19kZWZhdWx0X2FyZWEpLg0KPg0KPiBIb3dldmVyLCBmb3Ig
dGhlIERUIGNhc2UsIGRtYV9jb250aWd1b3VzX2RlZmF1bHRfYXJlYSB3aWxsIGJlIHNldCBieQ0K
PiBybWVtX2NtYV9zZXR1cCgpIGEgYml0IGJlbG93IGlmIGxpbnV4LGNtYS1kZWZhdWx0IGlzIHNl
dCBpbiB0aGUgRFQuDQo+DQo+IGRtYV9jb250aWd1b3VzX3Jlc2VydmVkKCkgaXMgY2FsbGVkIChv
biBhcm02NCBhdCBsZWFzdCkgdGhyb3VnaA0KPiBib290bWVtX2luaXQoKSwgY2FsbGVkIGFzIHBh
cnQgb2Ygc2V0dXBfYXJjaCgpLg0KPg0KPiBybWVtX2NtYV9zZXR1cCgpIGlzIGNhbGxlZCB0aHJv
dWdoIFJFU0VSVkVETUVNX09GX0RFQ0xBUkUsIHNvIHRocm91Z2gNCj4gX19yZXNlcnZlZF9tZW1f
aW5pdF9ub2RlKCksIHNvLCBpZiB3ZSBjb25zaWRlciBvbmx5IHRoZSBwdWJsaWMNCj4gZnVuY3Rp
b25zLCB0aHJvdWdoOg0KPg0KPiAgICogZmR0X3NjYW5fcmVzZXJ2ZWRfbWVtX3JlZ19ub2Rlcygp
LCBjYWxsZWQgYnkNCj4gICAgIHVuZmxhdHRlbl9kZXZpY2VfdHJlZSgpLCBjYWxsZWQgcmlnaHQg
YmVmb3JlIGJvb3RtZW1faW5pdCgpIGluDQo+ICAgICBzZXR1cF9hcmNoKCk7DQo+DQo+ICAgKiBv
ciBmZHRfc2Nhbl9yZXNlcnZlZF9tZW0oKSBhbmQgdGhlbg0KPiAgICAgZWFybHlfaW5pdF9mZHRf
c2Nhbl9yZXNlcnZlZF9tZW0oKSwgY2FsbGVkIGluIGFybTY0X21lbWJsb2NrX2luaXQoKSwNCj4g
ICAgIGl0c2VsZiBjYWxsZWQgaW4gc2V0dXBfYXJjaCgpIGVhcmxpZXIgdGhhbiBib3RoDQo+ICAg
ICB1bmZsYXR0ZW5fZGV2aWNlX3RyZWUoKSwgYW5kIGJvb3RtZW1faW5pdCgpLg0KPg0KPiBUaHVz
LCB0aGUgRFQgY2FzZSB3aWxsIHJ1biBmaXJzdCBhbmQgc2V0IGRtYV9jb250aWd1b3VzX2RlZmF1
bHRfYXJlYSBpZg0KPiByZWxldmFudCBvbiB0aGF0IHBsYXRmb3JtLCBhbmQgaWYgaXQncyBub3Qg
c2V0LCB0aGUgbm9uLURUIGNhc2Ugd2lsbCBzZXQNCj4gaXQgdXAuIEVpdGhlciB3YXksIGRtYV9j
b250aWd1b3VzX2RlZmF1bHRfYXJlYSB3aWxsIGJlIHNldC4NCj4NCj4gVGhlIENNQSBoZWFwIHJ1
bnMgbXVjaCBsYXRlciB1c2luZyBhIHJlZ3VsYXIgbW9kdWxlX2luaXQuIEl0IHdpbGwNCj4gcmV0
cmlldmUgZG1hX2NvbnRpZ3VvdXNfZGVmYXVsdF9hcmVhIHRocm91Z2ggZGV2X2dldF9jbWFfYXJl
YSgpLCBhbmQNCj4gd2lsbCBjcmVhdGUgYSBoZWFwIGluc3RhbmNlIGZvciB0aGUgZGVmYXVsdCBh
cmVhLg0KPg0KPiBBbSBJIG1pc3VuZGVyc3RhbmRpbmcgc29tZXRoaW5nPw0KDQpUaGUgZGVmYXVs
dCBDTUEgYXJlYSBpcyBhbHNvIG9wdGlvbmFsIGZvciBEVCBwbGF0Zm9ybXMuwqANCg0KSWYgRFQg
ZG9lc24ndCBwcm92aWRlIHN1Y2gsIGl0IHdpbGwgYmUgY3JlYXRlZCBiYXNlZCBvbiB0aGUga2Vy
bmVsIGNtZGxpbmUgY21hPSBwYXJhbWV0ZXIgb3IgdGhlIGRlZmF1bHQgY29uZmlndXJhdGlvbiBk
ZWZpbmVkIGluIHRoZSBrZXJuZWwgLmNvbmZpZyAodGhpcyBpcyBhbHNvIHRydWUgZm9yIHRoZSBu
b24tZHQgcGxhdGZvcm1zKS4gSSBrbm93IHRoYXQgZm9yIG1vc3QgQW5kcm9pZCBHS0kgc3lzdGVt
cyB0aGUgZGVmYXVsdCBDTUEgYXJlYSB3aWxsIGJlIGRlZmluZWQgaW4gRFQsIGJ1dCBJIHNlZSBu
byByZWFzb24gdG8gZGlzYWJsZSBkbWEtYnVmIGhlYXAgc3VwcG9ydCBmb3IgdGhlIGRlZmF1bHQg
Q01BIGFyZWEgaWYgaXQgaGFzIGJlZW4gaW5zdGFudGlhdGVkIGZyb20ga2VybmVsIGNtZGxpbmUg
b3IgLmNvbmZpZy4NCg0KQmVzdCByZWdhcmRzDQotLSANCk1hcmVrIFN6eXByb3dza2ksIFBoRA0K
U2Ftc3VuZyBSJkQgSW5zdGl0dXRlIFBvbGFuZA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
