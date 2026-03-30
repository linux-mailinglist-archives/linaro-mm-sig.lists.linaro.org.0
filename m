Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLz4Fo07ymnD6gUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Mar 2026 10:59:57 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E7ECF357A31
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Mar 2026 10:59:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D0504402F5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Mar 2026 08:59:55 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	by lists.linaro.org (Postfix) with ESMTPS id C0D1F3F719
	for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Mar 2026 08:59:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=Mbuozpvj;
	dmarc=pass (policy=none) header.from=samsung.com;
	spf=pass (lists.linaro.org: domain of m.szyprowski@samsung.com designates 210.118.77.12 as permitted sender) smtp.mailfrom=m.szyprowski@samsung.com
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20260330085950euoutp02be0839d0a13dae1c1bb5bec0d6a9b48c~hktl1Fpa12016220162euoutp02L
	for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Mar 2026 08:59:50 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20260330085950euoutp02be0839d0a13dae1c1bb5bec0d6a9b48c~hktl1Fpa12016220162euoutp02L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1774861190;
	bh=cYvbV9vmk6ZuLyfnM/KH4B2QOnv37WDoJ8hEc+JQuDg=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=MbuozpvjXWHXgzgjWuHC+ySMxMXxaTWV7Sd/Tq080KossBGSyJjExqCDgMFiG8JfX
	 eL7VwSyau7cyhIx+lHAGVCbHfb5M06r5oiWHa5is7xp0/GV1SYevmTcaYkhB97c0gx
	 fO581/KMGXd2xcbkYqkiT3PAfMOe7O9FoBaEsFs0=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20260330085950eucas1p1f94b35200e0ca2471baa85be6b85512f~hktlSraz10257402574eucas1p1P;
	Mon, 30 Mar 2026 08:59:50 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20260330085949eusmtip2f8fb615228f6bf437e97b25c4fd14566~hktknbyTA1554315543eusmtip2h;
	Mon, 30 Mar 2026 08:59:49 +0000 (GMT)
Message-ID: <62b9e47c-1c31-4654-8347-16516faf73f0@samsung.com>
Date: Mon, 30 Mar 2026 10:59:48 +0200
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
To: Maxime Ripard <mripard@kernel.org>, Sumit Semwal
	<sumit.semwal@linaro.org>, Benjamin Gaignard
	<benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>,
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy
	<robin.murphy@arm.com>, Albert Esteve <aesteve@redhat.com>
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <20260330-dma-build-fix-v1-1-748b64f0d8af@kernel.org>
X-CMS-MailID: 20260330085950eucas1p1f94b35200e0ca2471baa85be6b85512f
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20260330084111eucas1p1e7cd5c886e34d0ed41226fe524d2a55a
X-EPHeader: CA
X-CMS-RootMailID: 20260330084111eucas1p1e7cd5c886e34d0ed41226fe524d2a55a
References: <CGME20260330084111eucas1p1e7cd5c886e34d0ed41226fe524d2a55a@eucas1p1.samsung.com>
	<20260330-dma-build-fix-v1-1-748b64f0d8af@kernel.org>
X-Spamd-Bar: -----
Message-ID-Hash: KQ4VXX2KFJROFQ7ODUYSNTOQSJ4QQUXD
X-Message-ID-Hash: KQ4VXX2KFJROFQ7ODUYSNTOQSJ4QQUXD
X-MailFrom: m.szyprowski@samsung.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, Mark Brown <broonie@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma/contiguous: Fix broken build
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KQ4VXX2KFJROFQ7ODUYSNTOQSJ4QQUXD/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,samsung.com:mid]
X-Rspamd-Queue-Id: E7ECF357A31
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMzAuMDMuMjAyNiAxMDo0MCwgTWF4aW1lIFJpcGFyZCB3cm90ZToNCj4gQ29tbWl0IDNhMjM2
ZjZhNWNmMiAoImRtYTogY29udGlndW91czogVHVybiBoZWFwIHJlZ2lzdHJhdGlvbiBsb2dpYw0K
PiBhcm91bmQiKSBkaWRuJ3QgcmVtb3ZlIG9uZSBsYXN0IGNhbGwgdG8gZG1hX2hlYXBfY21hX3Jl
Z2lzdGVyX2hlYXAoKQ0KPiB0aGF0IGl0IHJlbW92ZWQsIHRodXMgYnJlYWtpbmcgdGhlIGJ1aWxk
Lg0KPg0KPiBUaGF0IGxhc3QgY2FsbCBpcyBpbiBkbWFfY29udGlndW91c19yZXNlcnZlKCksIHRv
IGhhbmRsZSB0aGUNCj4gcmVnaXN0cmF0aW9uIG9mIHRoZSBkZWZhdWx0IENNQSByZWdpb24gaGVh
cCBpbnN0YW5jZSBpZiBpdCdzIGRlY2xhcmVkIGluDQo+IHRoZSBkZXZpY2UgdHJlZS4NCj4NCj4g
SG93ZXZlciwgdGhlIGRlZmF1bHQgQ01BIHJlZ2lvbiBpbnN0YW5jZSBpcyBhbHJlYWR5IGhhbmRs
ZWQgYnkNCj4gcmV0cmlldmluZyBpdCB0aHJvdWdoIGRldl9nZXRfY21hX2FyZWEoKSBpbiB0aGUg
Q01BIGhlYXAgZHJpdmVyLCBzbyB0aGUNCj4gY2FsbCB0byBkbWFfaGVhcF9jbWFfcmVnaXN0ZXJf
aGVhcCgpIHdhc24ndCBhY3R1YWxseSBuZWVkZWQuDQo+DQo+IExldCdzIHJlbW92ZSB0aGlzIGNh
bGwsIHRoZSBub3cgdW51c2VkIGZ1bmN0aW9uIGRlZmluaXRpb24sIGl0cyBub3cNCj4gZW1wdHkg
aGVhZGVyLCBhbmQgYWxsIGluY2x1ZGVzIG9mIHRoaXMgaGVhZGVyLg0KPg0KPiBGaXhlczogM2Ey
MzZmNmE1Y2YyICgiZG1hOiBjb250aWd1b3VzOiBUdXJuIGhlYXAgcmVnaXN0cmF0aW9uIGxvZ2lj
IGFyb3VuZCIpDQo+IFJlcG9ydGVkLWJ5OiBNYXJrIEJyb3duIDxicm9vbmllQGtlcm5lbC5vcmc+
DQo+IENsb3NlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbmV4dC9hY2JqYURKMWEt
WVFDNjRkQHNpcmVuYS5jby51ay8NCj4gU2lnbmVkLW9mZi1ieTogTWF4aW1lIFJpcGFyZCA8bXJp
cGFyZEBrZXJuZWwub3JnPg0KPiAtLS0NCj4gIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9jbWFfaGVh
cC5jICB8ICAxIC0NCj4gIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi9oZWFwcy9jbWEuaCB8IDE2IC0t
LS0tLS0tLS0tLS0tLS0NCj4gIGtlcm5lbC9kbWEvY29udGlndW91cy5jICAgICAgICAgICB8ICA1
IC0tLS0tDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDIyIGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFwLmMgYi9kcml2ZXJzL2RtYS1idWYv
aGVhcHMvY21hX2hlYXAuYw0KPiBpbmRleCBmOGEzZDg3ZjNjY2VlOTYzMDM4M2JhMjg1MDJlYjQw
YjEwNjcxY2MyLi5jYzUxN2FjNjhhMGJlYzA3ODhhYmNiMzM4YzAzZjUzMGQxNjkwMTNiIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvY21hX2hlYXAuYw0KPiArKysgYi9kcml2
ZXJzL2RtYS1idWYvaGVhcHMvY21hX2hlYXAuYw0KPiBAQCAtMTIsMTEgKzEyLDEwIEBADQo+ICAN
Cj4gICNkZWZpbmUgcHJfZm10KGZtdCkgImNtYV9oZWFwOiAiIGZtdA0KPiAgDQo+ICAjaW5jbHVk
ZSA8bGludXgvY21hLmg+DQo+ICAjaW5jbHVkZSA8bGludXgvZG1hLWJ1Zi5oPg0KPiAtI2luY2x1
ZGUgPGxpbnV4L2RtYS1idWYvaGVhcHMvY21hLmg+DQo+ICAjaW5jbHVkZSA8bGludXgvZG1hLWhl
YXAuaD4NCj4gICNpbmNsdWRlIDxsaW51eC9kbWEtbWFwLW9wcy5oPg0KPiAgI2luY2x1ZGUgPGxp
bnV4L2Vyci5oPg0KPiAgI2luY2x1ZGUgPGxpbnV4L2hpZ2htZW0uaD4NCj4gICNpbmNsdWRlIDxs
aW51eC9pby5oPg0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtYnVmL2hlYXBzL2Nt
YS5oIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmL2hlYXBzL2NtYS5oDQo+IGRlbGV0ZWQgZmlsZSBt
b2RlIDEwMDY0NA0KPiBpbmRleCBlNzUxNDc5ZTIxZTcwM2UyNGE1Zjc5OWI0YTdmYzhiZDBkZjNj
MWM0Li4wMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwDQo+IC0tLSBhL2lu
Y2x1ZGUvbGludXgvZG1hLWJ1Zi9oZWFwcy9jbWEuaA0KPiArKysgL2Rldi9udWxsDQo+IEBAIC0x
LDE2ICswLDAgQEANCj4gLS8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wICovDQo+
IC0jaWZuZGVmIERNQV9CVUZfSEVBUF9DTUFfSF8NCj4gLSNkZWZpbmUgRE1BX0JVRl9IRUFQX0NN
QV9IXw0KPiAtDQo+IC1zdHJ1Y3QgY21hOw0KPiAtDQo+IC0jaWZkZWYgQ09ORklHX0RNQUJVRl9I
RUFQU19DTUENCj4gLWludCBkbWFfaGVhcF9jbWFfcmVnaXN0ZXJfaGVhcChzdHJ1Y3QgY21hICpj
bWEpOw0KPiAtI2Vsc2UNCj4gLXN0YXRpYyBpbmxpbmUgaW50IGRtYV9oZWFwX2NtYV9yZWdpc3Rl
cl9oZWFwKHN0cnVjdCBjbWEgKmNtYSkNCj4gLXsNCj4gLQlyZXR1cm4gMDsNCj4gLX0NCj4gLSNl
bmRpZiAvLyBDT05GSUdfRE1BQlVGX0hFQVBTX0NNQQ0KPiAtDQo+IC0jZW5kaWYgLy8gRE1BX0JV
Rl9IRUFQX0NNQV9IXw0KPiBkaWZmIC0tZ2l0IGEva2VybmVsL2RtYS9jb250aWd1b3VzLmMgYi9r
ZXJuZWwvZG1hL2NvbnRpZ3VvdXMuYw0KPiBpbmRleCBhZDUwNTEyZDcxZDMwODhhNzNlNGIxYWMw
MmQ2ZTYxMjIzNzQ4ODhlLi45ZmUwMDFjNzEyMzM5ZjgzODhkM2Y0MGNjYTNkZmZmM2Y3MDdmY2Jm
IDEwMDY0NA0KPiAtLS0gYS9rZXJuZWwvZG1hL2NvbnRpZ3VvdXMuYw0KPiArKysgYi9rZXJuZWwv
ZG1hL2NvbnRpZ3VvdXMuYw0KPiBAQCAtNDAsMTEgKzQwLDEwIEBADQo+ICAjaW5jbHVkZSA8YXNt
L3BhZ2UuaD4NCj4gIA0KPiAgI2luY2x1ZGUgPGxpbnV4L21lbWJsb2NrLmg+DQo+ICAjaW5jbHVk
ZSA8bGludXgvZXJyLmg+DQo+ICAjaW5jbHVkZSA8bGludXgvc2l6ZXMuaD4NCj4gLSNpbmNsdWRl
IDxsaW51eC9kbWEtYnVmL2hlYXBzL2NtYS5oPg0KPiAgI2luY2x1ZGUgPGxpbnV4L2RtYS1tYXAt
b3BzLmg+DQo+ICAjaW5jbHVkZSA8bGludXgvY21hLmg+DQo+ICAjaW5jbHVkZSA8bGludXgvbm9z
cGVjLmg+DQo+ICANCj4gICNpZmRlZiBDT05GSUdfQ01BX1NJWkVfTUJZVEVTDQo+IEBAIC0yNzAs
MTQgKzI2OSwxMCBAQCB2b2lkIF9faW5pdCBkbWFfY29udGlndW91c19yZXNlcnZlKHBoeXNfYWRk
cl90IGxpbWl0KQ0KPiAgCQkJCQkJICBzZWxlY3RlZF9saW1pdCwNCj4gIAkJCQkJCSAgJmRtYV9j
b250aWd1b3VzX2RlZmF1bHRfYXJlYSwNCj4gIAkJCQkJCSAgZml4ZWQpOw0KPiAgCQlpZiAocmV0
KQ0KPiAgCQkJcmV0dXJuOw0KPiAtDQo+IC0JCXJldCA9IGRtYV9oZWFwX2NtYV9yZWdpc3Rlcl9o
ZWFwKGRtYV9jb250aWd1b3VzX2RlZmF1bHRfYXJlYSk7DQo+IC0JCWlmIChyZXQpDQo+IC0JCQlw
cl93YXJuKCJDb3VsZG4ndCByZWdpc3RlciBkZWZhdWx0IENNQSBoZWFwLiIpOw0KQWZ0ZXIgdGhp
cyBjaGFuZ2Ugbm8gZG1hLWJ1ZiBoZWFwIGZvciB0aGUgZGVmYXVsdCBDTUEgYXJlYSBpc8KgY3Jl
YXRlZCBpZiBpdCBoYXPCoA0Kbm90IGJlZW4gc3BlY2lmaWVkIGluIGRldmljZS10cmVlLiBUaGlz
IG1pZ2h0IGJlIGVzcGVjaWFsbHkgYSBwcm9ibGVtIGZvciB0aGUNCm5vbi1kdCBzeXN0ZW1zLg0K
DQoNCj4gIAl9DQo+ICB9DQo+ICANCj4gIHZvaWQgX193ZWFrDQo+ICBkbWFfY29udGlndW91c19l
YXJseV9maXh1cChwaHlzX2FkZHJfdCBiYXNlLCB1bnNpZ25lZCBsb25nIHNpemUpDQo+DQo+DQpC
ZXN0IHJlZ2FyZHMNCi0tIA0KTWFyZWsgU3p5cHJvd3NraSwgUGhEDQpTYW1zdW5nIFImRCBJbnN0
aXR1dGUgUG9sYW5kDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
