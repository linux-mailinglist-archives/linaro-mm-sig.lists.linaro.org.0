Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +J7fJB1h5mkxvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:23:41 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E094311BB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:23:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5BE493F7D9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:23:40 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id E9BC63F751
	for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Mar 2026 09:18:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=G6l3fAYo;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1773825531;
	bh=G6exftMKtWNb4rf9ACEopeWwfAQ+/po/vPq9sMt0x6Q=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=G6l3fAYoEjZDM5ho9WQoARQvudC1p9JbgfNyoKOKyrNhKqD7KmAx+v3cQ6Vo/Bskc
	 FWIA+bLbUVpfNP/kuHH79HyFF2SqFuFBQtR+GTAF5MUzQb5miavQx7vz9sawXZaSgk
	 Y9lWpqFVLjPR+QHcY4d55CxlzelCrfMCXetS515N0uxYAaFo2BTz3uKAKLjcuo/FII
	 ZrQcWEycJaYw/h4ezlgS+31ijfJ1HUky0ZyiCnQYQShIT5Xv5h7JRRrESqoYj1zo/U
	 W+P4cw//0F5+g2lUq/Kr6TpXvJmb/vzX7e3B/fRWDzrpaensAFOtHsDDb5QM23Vh/7
	 b6nyPaMuYE+kQ==
Received: from fedora (unknown [IPv6:2a01:e0a:2c:6930:d919:a6e:5ea1:8a9f])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id CA47617E026C;
	Wed, 18 Mar 2026 10:18:50 +0100 (CET)
Date: Wed, 18 Mar 2026 10:18:46 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260318101846.4747c9e5@fedora>
In-Reply-To: <3e7ce7bb-75ab-4f73-8a5d-dabd5d56cd61@amd.com>
References: <20260317144825.2318-1-christian.koenig@amd.com>
	<20260317162147.4a7f03ff@fedora>
	<3e7ce7bb-75ab-4f73-8a5d-dabd5d56cd61@amd.com>
Organization: Collabora
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: Q6Z5Z7ZBYS4THX56SGKILWNOGZRWKFKU
X-Message-ID-Hash: Q6Z5Z7ZBYS4THX56SGKILWNOGZRWKFKU
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:21:59 +0000
CC: phasta@mailbox.org, aliceryhl@google.com, gary@garyguo.net, lossin@kernel.org, daniel.almeida@collabora.com, joelagnelf@nvidia.com, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/dma_fence: be more defensive in dma_fence_release
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Q6Z5Z7ZBYS4THX56SGKILWNOGZRWKFKU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.19 / 15.00];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	DATE_IN_PAST(1.00)[800];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.970];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email,yhbt.net:url]
X-Rspamd-Queue-Id: 49E094311BB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgQ2hyaXN0aWFuLA0KDQpPbiBXZWQsIDE4IE1hciAyMDI2IDA5OjIxOjM0ICswMTAwDQpDaHJp
c3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KDQo+IE9uIDMv
MTcvMjYgMTY6MjEsIEJvcmlzIEJyZXppbGxvbiB3cm90ZToNCj4gPiBPbiBUdWUsIDE3IE1hciAy
MDI2IDE1OjQ4OjI1ICswMTAwDQo+ID4gIkNocmlzdGlhbiBLw7ZuaWciIDxja29lbmlnLmxlaWNo
dHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6DQo+ID4gICANCj4gPj4gSW4gY2FzZSBvZiBhIHJl
ZmNvdW50aW5nIGJ1ZyBkbWFfZmVuY2VfcmVsZWFzZSgpIGNhbiBiZSBjYWxsZWQNCj4gPj4gYmVm
b3JlIHRoZSBmZW5jZSB3YXMgZXZlbiBzaWduYWxlZC4NCj4gPj4NCj4gPj4gUHJldmlvdXNseSB0
aGUgZG1hX2ZlbmNlIGZyYW1ld29yayB0aGVuIGZvcmNlIHNpZ25hbGVkIHRoZSBmZW5jZQ0KPiA+
PiB0byBtYWtlIHN1cmUgdG8gdW5ibG9jayB3YWl0ZXJzLCBidXQgdGhhdCBjYW4gcG90ZW50aWFs
bHkgbGVhZCB0bw0KPiA+PiByYW5kb20gbWVtb3J5IGNvcnJ1cHRpb24gd2hlbiB0aGUgRE1BIG9w
ZXJhdGlvbiBjb250aW51ZXMuIFNvIGJlDQo+ID4+IG1vcmUgZGVmZW5zaXZlIGhlcmUgYW5kIHBp
Y2sgdGhlIGxlc3NlciBldmlsLg0KPiA+Pg0KPiA+PiBJbnN0ZWFkIG9mIGZvcmNlIHNpZ25hbGlu
ZyB0aGUgZmVuY2Ugc2V0IGFuIGVycm9yIGNvZGUgb24gdGhlDQo+ID4+IGZlbmNlLCByZS1pbml0
aWFsaXplIHRoZSByZWZjb3VudCB0byBzb21ldGhpbmcgbGFyZ2UgYW5kIHRhaW50IHRoZQ0KPiA+
PiBrZXJuZWwuDQo+ID4+DQo+ID4+IFRoaXMgd2lsbCBsZWFrIG1lbW9yeSBhbmQgZXZlbnR1YWxs
eSBjYW4gY2F1c2UgYSBkZWFkbG9jayB3aGVuIHRoZQ0KPiA+PiBmZW5jZSBpcyBuZXZlciBzaWdu
YWxlZCwgYnV0IGF0IGxlYXN0IHdlIHdvbid0IHJ1biBpbnRvIGFuIHVzZQ0KPiA+PiBhZnRlciBm
cmVlIG9yIHJhbmRvbSBtZW1vcnkgY29ycnVwdGlvbi4NCj4gPj4NCj4gPj4gU2lnbmVkLW9mZi1i
eTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiA+PiAtLS0N
Cj4gPj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDE4ICsrKysrKysrKysrKysrLS0t
LQ0KPiA+PiAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0p
DQo+ID4+DQo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4g
Pj4gYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgaW5kZXggMTgyNmJhNzMwOTRjLi44YmYw
NzY4NWEwNTMNCj4gPj4gMTAwNjQ0IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0K
PiA+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4gPj4gQEAgLTU5MywxNCAr
NTkzLDI0IEBAIHZvaWQgZG1hX2ZlbmNlX3JlbGVhc2Uoc3RydWN0IGtyZWYgKmtyZWYpDQo+ID4+
ICAJCS8qDQo+ID4+ICAJCSAqIEZhaWxlZCB0byBzaWduYWwgYmVmb3JlIHJlbGVhc2UsIGxpa2Vs
eSBhDQo+ID4+IHJlZmNvdW50aW5nIGlzc3VlLiAqDQo+ID4+IC0JCSAqIFRoaXMgc2hvdWxkIG5l
dmVyIGhhcHBlbiwgYnV0IGlmIGl0IGRvZXMgbWFrZQ0KPiA+PiBzdXJlIHRoYXQgd2UNCj4gPj4g
LQkJICogZG9uJ3QgbGVhdmUgY2hhaW5zIGRhbmdsaW5nLiBXZSBzZXQgdGhlIGVycm9yDQo+ID4+
IGZsYWcgZmlyc3QNCj4gPj4gLQkJICogc28gdGhhdCB0aGUgY2FsbGJhY2tzIGtub3cgdGhpcyBz
aWduYWwgaXMgZHVlDQo+ID4+IHRvIGFuIGVycm9yLg0KPiA+PiArCQkgKiBUaGlzIHNob3VsZCBu
ZXZlciBoYXBwZW4sIGJ1dCBpZiB0cnkgdG8gYmUNCj4gPj4gZGVmZW5zaXZlIGFuZCB0YWtlDQo+
ID4+ICsJCSAqIHRoZSBsZXNzZXIgZXZpbC4gSW5pdGlhbGl6ZSB0aGUgcmVmY291bnQgdG8NCj4g
Pj4gc29tZXRoaW5nIGxhcmdlLA0KPiA+PiArCQkgKiBidXQgbm90IHNvIGxhcmdlIHRoYXQgaXQg
Y2FuIG92ZXJmbG93Lg0KPiA+PiArCQkgKg0KPiA+PiArCQkgKiBUaGF0IHdpbGwgbGVhayBtZW1v
cnkgYW5kIGNvdWxkIGRlYWRsb2NrIGlmDQo+ID4+IHRoZSBmZW5jZSBuZXZlcg0KPiA+PiArCQkg
KiBzaWduYWxzLCBidXQgYXQgbGVhc3QgaXQgZG9lc24ndCBjYXVzZSBhbiB1c2UNCj4gPj4gYWZ0
ZXIgZnJlZSBvcg0KPiA+PiArCQkgKiByYW5kb20gbWVtb3J5IGNvcnJ1cHRpb24uDQo+ID4+ICsJ
CSAqDQo+ID4+ICsJCSAqIEFsc28gdGFpbnQgdGhlIGtlcm5lbCB0byBub3RlIHRoYXQgaXQgaXMN
Cj4gPj4gcmF0aGVyIHVucmVsaWFibGUgdG8NCj4gPj4gKwkJICogY29udGludWUuDQo+ID4+ICAJ
CSAqLw0KPiA+PiAgCQlkbWFfZmVuY2VfbG9ja19pcnFzYXZlKGZlbmNlLCBmbGFncyk7DQo+ID4+
ICAJCWZlbmNlLT5lcnJvciA9IC1FREVBRExLOw0KPiA+PiAtCQlkbWFfZmVuY2Vfc2lnbmFsX2xv
Y2tlZChmZW5jZSk7DQo+ID4+ICsJCXJlZmNvdW50X3NldCgmZmVuY2UtPnJlZmNvdW50LnJlZmNv
dW50LCBJTlRfTUFYKTsNCj4gPj4gIA0KPiA+IA0KPiA+IEknbSBub3QgY29udmluY2VkIHRoaXMg
aXMgdXNlZnVsLiBJZiB3ZSBsZWFrIHRoZSBvYmplY3QsIG5vIG9uZQ0KPiA+IHNob3VsZCBoYXZl
IGEgcmVmIHRvIHJlbGVhc2UgYW55d2F5LiBUaGlzIGRvZXMgcmFpc2UgYSBxdWVzdGlvbg0KPiA+
IHRob3VnaC4gVGhlIGNhc2Ugd2UncmUgdHJ5aW5nIHRvIHByb3RlY3QgYWdhaW5zdCBpcyBmZW5j
ZV9jYWxsYmFjaw0KPiA+IGJlaW5nIHJlZ2lzdGVyZWQgdG8gdGhpcyBmZW5jZSBhbmQgd2FpdGlu
ZyBmb3IgYW4gZXZlbnQgdG8gc2lnbmFsDQo+ID4gYW5vdGhlciBwcm94eSBmZW5jZS4gIA0KPiAN
Cj4gTm90IHF1aXRlLiBUaGUgcmVhbCBwcm9ibGVtYXRpYyBjYXNlIGlzIHRoYXQgaXQgaXMgbmVj
ZXNzYXJ5IHRvIHdhaXQNCj4gZm9yIGEgZmVuY2UgdG8gc2lnbmFsIHdpdGggdG9ucyBvZiBtZW1v
cnkgbWFuYWdlbWVudCBsb2NrcyBoZWxkLg0KPiANCj4gU28gaXQgY2FuIGJlIHRoYXQgYSBzaW1w
bGUgbWVtb3J5IGFsbG9jYXRpb24gY3ljbGVzIGJhY2sgYW5kIGRlcGVuZHMNCj4gb24gdGhlIGZl
bmNlIHRvIHNpZ25hbC4NCj4gDQo+ID4gSG93IGNhbiB0aGUgcmVmY250IGRyb3AgdG8gemVybyBp
biB0aGF0IGNhc2U/IElzbid0IHRoZSBwcm94eQ0KPiA+IHN1cHBvc2VkIHRvIG93biBhIHJlZiBv
biB0aGUgZmVuY2UuIEJlZm9yZSB3ZSBnbyBmdXJ0aGVyLCBJJ2QgbGlrZQ0KPiA+IHRvIHVuZGVy
c3RhbmQgd2hhdCB3ZSdyZSB0cnlpbmcgdG8gZG8uICANCj4gDQo+IFdlbGwgd2UgYXJlIGluIEMg
aGVyZSwgc28gaXRzIHNpbXBseSBjb2RpbmcgZXJyb3JzLiBBbiB1bmVjZXNzYXJ5DQo+IGRtYV9m
ZW5jZV9wdXQoKSBpbiBhbiBlcnJvciBwYXRoIGlzIGVub3VnaCB0byB0cmlnZ2VyIHRoaXMuDQo+
IA0KPiA+IFRoZSBvcmlnaW5hbCBkaXNjdXNzaW9uIHRoYXQgbGVkIHlvdSB0byB3cml0ZSB0aGlz
IHBhdGNoIHdhcyBhYm91dA0KPiA+IGRldGVjdGluZyB3aGVuIGEgZmVuY2UgZW1pdHRlci9wcm9k
dWNlciB3b3VsZCBsZWF2ZSB1bnNpZ25hbGxlZA0KPiA+IGZlbmNlcyBiZWhpbmQsIGFuZCB0aGUg
cHJvYmxlbSB3ZSBoYXZlIGlzIHdoZW4gc3VjaCB1bnNpZ25hbGxlZA0KPiA+IGZlbmNlcyBoYXZl
IG9ic2VydmVycyB3YWl0aW5nIGZvciBhICJzaWduYWxsZWQiIGV2ZW50LiBJZiB0aGUNCj4gPiBy
ZWZjbnQgZHJvcHMgdG8gemVybyBhbmQgdGhlIGZlbmNlIGlzIHJlbGVhc2VkLCB3ZSdyZSBhbHJl
YWR5DQo+ID4gcGFzc2VkIHRoYXQgcG9pbnQsIHVuZm9ydHVuYXRlbHkuICANCj4gDQo+IFdlbGwg
dGhhdCBpcyBub3QgcXVpdGUgY29ycmVjdC4NCj4gDQo+IFRoZSBtb3N0IGNvbW1vbiBwcm9ibGVt
IGlzIHRoYXQgd2UgaGF2ZSB1bmJhbGFuY2VkDQo+IGRtYV9mZW5jZV9nZXQoKS9kbWFfZmVuY2Vf
cHV0KCkgYW5kIHdlIGVuZCB1cCBpbiBkbWFfZmVuY2VfcmVsZWFzZSgpDQo+IGJlZm9yZSB0aGUg
aXNzdWVyIG9mIHRoZSBkbWFfZmVuY2UgaGFzIGEgY2hhbmNlIHRvIHNpZ25hbCBpdC4NCg0KT2th
eSwgc28gdGhhdCdzIGNsZWFybHkgbm90IHNvbHZpbmcgdGhlIHByb2JsZW0gd2Ugd2VyZSBkaXNj
dXNzaW5nIG9uDQpbMV0sIEkgdGhvdWdodCBpdCB3YXMgcmVsYXRlZC4gQWxzbywgSSdtIHN0aWxs
IHNrZXB0aWNhbCB0aGF0IHdlIHNob3VsZA0KdHJ5IGFuZCBoYXJkZW4gc2VjdXJpdHkgZm9yIGEg
c2l0dWF0aW9uIHRoYXQncyBhbHJlYWR5IGNvdmVyZWQgYnkNCnJlZmNvdW50IG92ZXJmbG93IGRl
dGVjdGlvbi4gSSBnZXQgd2h5IHlvdSB3YW50IHRvIGRvIHRoYXQsIGJ1dCBpdA0KZmVlbHMgbGlr
ZSB0aGUgd3JvbmcgdG9vbCB0byBtZS4gSSBtZWFuLCB3ZSB3b3VsZG4ndCBldmVuIHNlZSBpdCBh
cw0KYW4gdW5iYWxhbmNlZCBkbWFfZmVuY2VfZ2V0L3B1dCgpIG5vdyB0aGF0IHlvdSBtYW51YWxs
eSBzZXQgdGhlIHJlZmNvdW50DQp0byBJTlRfTUFYLCB3aGljaCBpcyB0aGUgYnVnIHlvdSdyZSB0
cnlpbmcgdG8gY292ZXIgZm9yIGluIHRoZSBmaXJzdA0KcGxhY2UuDQoNCj4gDQo+IFNlZSB0aGUg
bWFpbiBwdXJwb3NlIG9mIERNQSBmZW5jZXMgaXMgdG8gcHJldmVudCByZWxlYXNpbmcgbWVtb3J5
DQo+IGJhY2sgaW50byB0aGUgY29yZSBtZW1vcnkgbWFuYWdlbWVudCBiZWZvcmUgdGhlIERNQSBv
cGVyYXRpb24gaXMNCj4gY29tcGxldGVkLg0KDQpUaGF0J3MgYSBVQUYsIGp1c3QgYSBkaWZmZXJu
dCBraW5kIChkZXZpY2UgVUFGIGluc3RlYWQgb2YgQ1BVIFVBRikuDQpBbnl3YXksIG15IHBvaW50
IHJlbWFpbnMsIHRoZSByb290IG9mIHRoZSBpc3N1ZSB5b3UncmUgY292ZXJpbmcgZm9yIGlzDQph
IGRtYV9mZW5jZSBVQUYgKG1vcmUgcHV0KClzIHRoYW4gZ2V0KClzLCBhbmQgdGhlIENQVSBzdGls
bCBoYXMgYSByZWYNCm9uIGEgcmVsZWFzZWQgZG1hX2ZlbmNlIG9iamVjdCkuIFRoZSBvdXRjb21l
IG9mIHRoaXMgbWlnaHQgYmUgZGV2aWNlDQpVQUYgYmVjYXVzZSBvZiB0aGUgYXV0by1zaWduYWxs
aW5nLCBidXQgdGhhdCdzIHN0aWxsIGp1c3QgYW5vdGhlcg0Kc3ltcHRvbSBvZiB0aGUgZG1hX2Zl
bmNlIFVBRiAod2l0aCB3aWRlciBjb25zZXF1ZW5jZXMsIGFkbWl0dGVkbHkpLg0KDQo+IA0KPiBT
byB3aGVuIGEgRE1BIGZlbmNlIHNpZ25hbHMgdG8gZWFybHkgaXQgbWVhbnMgdGhhdCB0aGUgSFcg
aXMgc3RpbGwNCj4gd3JpdGluZyB0byB0aGF0IG1lbW9yeSBidXQgd2UgYWxyZWFkeSBwb3RlbnRp
YWxseSByZS11c2luZyB0aGUgbWVtb3J5DQo+IGVuZGluZyBpbiByYW5kb20gbWVtb3J5IGNvcnJ1
cHRpb24uDQoNClllcCwgSSdtIHdlbGwgYXdhcmUgb2YgdGhhdC4NCg0KPiANCj4gVUFGIGlzc3Vl
cyBhcmUgaGFybWxlc3MgY29tcGFyZWQgdG8gdGhhdC4NCg0KVGhhdCdzIG5vdCB3aGF0IEknbSBh
cmd1aW5nIGFnYWluc3QuIFdoYXQgSSdtIHNheWluZyBpcyB0aGF0IHlvdSBqdXN0DQpwYXBlciBv
dmVyIGFuIGlzc3VlIGJ5IG1lc3NpbmcgdXAgd2l0aCB0aGUgcmVmY291bnQsIGFuZCBub3cgaXQn
cyBoYXJkDQp0byB0ZWxsIHdoYXQgdGhlIHJvb3QgY2F1c2UgaXMuIA0KDQpSZWdhcmRzLA0KDQpC
b3Jpcw0KDQpbMV1odHRwczovL3loYnQubmV0L2xvcmUvYWxsLzhiYWMxNTU5LWUxMzktNGE3NC1h
NmU4LWMyODQ2MDkzZGI3MkBhbWQuY29tLw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
