Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLmDK/dg5mmavgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:23:03 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF1543115D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:23:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 59CBB404EB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:23:02 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id 82C4C3F76C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Mar 2026 15:21:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=qxEe2DnE;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1773760913;
	bh=HVmafZgBoeoiVvY3lnwIWzn8T+6u5QCQd/KhDZqlFc0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=qxEe2DnEgxCi3CBkQtZYeU2pGCZxRFfj3zQJJoZzQIgQDmQlCG8SHKTcv/38oRNFy
	 5S4ymAJQPCLoOMkeOZbXboBx3248t9c7m0Kq1wnAaPUh6OxNx5Zb9OPyfxCDS36P+Y
	 RfWS2DyaWtYs6wHOW8fIEG327QV/5vC1khxF7F11SapbsrAvhILXxMRvaLd6WYakXR
	 u8/nhlEzTMY4EBQBghsHJvg9g19ibjj2W8KzJKdWUtiVjwWmL91KMzeBCcBQOJF71v
	 5M3eutiaGixEeGsmW1O0Z6dSSgRLdO6RG4pKETcBbX9bJcwAHTlZe11kWxBJbAryO5
	 lEMUgXbRBl1TQ==
Received: from fedora (unknown [IPv6:2a01:e0a:2c:6930:d919:a6e:5ea1:8a9f])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D4FF717E12AA;
	Tue, 17 Mar 2026 16:21:52 +0100 (CET)
Date: Tue, 17 Mar 2026 16:21:47 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: "Christian =?UTF-8?B?S8O2bmln?=" <ckoenig.leichtzumerken@gmail.com>
Message-ID: <20260317162147.4a7f03ff@fedora>
In-Reply-To: <20260317144825.2318-1-christian.koenig@amd.com>
References: <20260317144825.2318-1-christian.koenig@amd.com>
Organization: Collabora
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BLXYT2F53INS2ZBHTSWRCY4VQBFHJEQT
X-Message-ID-Hash: BLXYT2F53INS2ZBHTSWRCY4VQBFHJEQT
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:21:54 +0000
CC: phasta@mailbox.org, aliceryhl@google.com, gary@garyguo.net, lossin@kernel.org, daniel.almeida@collabora.com, joelagnelf@nvidia.com, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/dma_fence: be more defensive in dma_fence_release
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BLXYT2F53INS2ZBHTSWRCY4VQBFHJEQT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	DATE_IN_PAST(1.00)[818];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	NEURAL_HAM(-0.00)[-0.990];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 5BF1543115D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCAxNyBNYXIgMjAyNiAxNTo0ODoyNSArMDEwMA0KIkNocmlzdGlhbiBLw7ZuaWciIDxj
a29lbmlnLmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6DQoNCj4gSW4gY2FzZSBvZiBh
IHJlZmNvdW50aW5nIGJ1ZyBkbWFfZmVuY2VfcmVsZWFzZSgpIGNhbiBiZSBjYWxsZWQgYmVmb3Jl
IHRoZQ0KPiBmZW5jZSB3YXMgZXZlbiBzaWduYWxlZC4NCj4gDQo+IFByZXZpb3VzbHkgdGhlIGRt
YV9mZW5jZSBmcmFtZXdvcmsgdGhlbiBmb3JjZSBzaWduYWxlZCB0aGUgZmVuY2UgdG8gbWFrZQ0K
PiBzdXJlIHRvIHVuYmxvY2sgd2FpdGVycywgYnV0IHRoYXQgY2FuIHBvdGVudGlhbGx5IGxlYWQg
dG8gcmFuZG9tIG1lbW9yeQ0KPiBjb3JydXB0aW9uIHdoZW4gdGhlIERNQSBvcGVyYXRpb24gY29u
dGludWVzLiBTbyBiZSBtb3JlIGRlZmVuc2l2ZSBoZXJlIGFuZA0KPiBwaWNrIHRoZSBsZXNzZXIg
ZXZpbC4NCj4gDQo+IEluc3RlYWQgb2YgZm9yY2Ugc2lnbmFsaW5nIHRoZSBmZW5jZSBzZXQgYW4g
ZXJyb3IgY29kZSBvbiB0aGUgZmVuY2UsDQo+IHJlLWluaXRpYWxpemUgdGhlIHJlZmNvdW50IHRv
IHNvbWV0aGluZyBsYXJnZSBhbmQgdGFpbnQgdGhlIGtlcm5lbC4NCj4gDQo+IFRoaXMgd2lsbCBs
ZWFrIG1lbW9yeSBhbmQgZXZlbnR1YWxseSBjYW4gY2F1c2UgYSBkZWFkbG9jayB3aGVuIHRoZSBm
ZW5jZQ0KPiBpcyBuZXZlciBzaWduYWxlZCwgYnV0IGF0IGxlYXN0IHdlIHdvbid0IHJ1biBpbnRv
IGFuIHVzZSBhZnRlciBmcmVlIG9yDQo+IHJhbmRvbSBtZW1vcnkgY29ycnVwdGlvbi4NCj4gDQo+
IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNv
bT4NCj4gLS0tDQo+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgfCAxOCArKysrKysrKysr
KysrKy0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiBpbmRleCAxODI2YmE3MzA5NGMuLjhiZjA3Njg1
YTA1MyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+ICsrKyBi
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiBAQCAtNTkzLDE0ICs1OTMsMjQgQEAgdm9p
ZCBkbWFfZmVuY2VfcmVsZWFzZShzdHJ1Y3Qga3JlZiAqa3JlZikNCj4gIAkJLyoNCj4gIAkJICog
RmFpbGVkIHRvIHNpZ25hbCBiZWZvcmUgcmVsZWFzZSwgbGlrZWx5IGEgcmVmY291bnRpbmcgaXNz
dWUuDQo+ICAJCSAqDQo+IC0JCSAqIFRoaXMgc2hvdWxkIG5ldmVyIGhhcHBlbiwgYnV0IGlmIGl0
IGRvZXMgbWFrZSBzdXJlIHRoYXQgd2UNCj4gLQkJICogZG9uJ3QgbGVhdmUgY2hhaW5zIGRhbmds
aW5nLiBXZSBzZXQgdGhlIGVycm9yIGZsYWcgZmlyc3QNCj4gLQkJICogc28gdGhhdCB0aGUgY2Fs
bGJhY2tzIGtub3cgdGhpcyBzaWduYWwgaXMgZHVlIHRvIGFuIGVycm9yLg0KPiArCQkgKiBUaGlz
IHNob3VsZCBuZXZlciBoYXBwZW4sIGJ1dCBpZiB0cnkgdG8gYmUgZGVmZW5zaXZlIGFuZCB0YWtl
DQo+ICsJCSAqIHRoZSBsZXNzZXIgZXZpbC4gSW5pdGlhbGl6ZSB0aGUgcmVmY291bnQgdG8gc29t
ZXRoaW5nIGxhcmdlLA0KPiArCQkgKiBidXQgbm90IHNvIGxhcmdlIHRoYXQgaXQgY2FuIG92ZXJm
bG93Lg0KPiArCQkgKg0KPiArCQkgKiBUaGF0IHdpbGwgbGVhayBtZW1vcnkgYW5kIGNvdWxkIGRl
YWRsb2NrIGlmIHRoZSBmZW5jZSBuZXZlcg0KPiArCQkgKiBzaWduYWxzLCBidXQgYXQgbGVhc3Qg
aXQgZG9lc24ndCBjYXVzZSBhbiB1c2UgYWZ0ZXIgZnJlZSBvcg0KPiArCQkgKiByYW5kb20gbWVt
b3J5IGNvcnJ1cHRpb24uDQo+ICsJCSAqDQo+ICsJCSAqIEFsc28gdGFpbnQgdGhlIGtlcm5lbCB0
byBub3RlIHRoYXQgaXQgaXMgcmF0aGVyIHVucmVsaWFibGUgdG8NCj4gKwkJICogY29udGludWUu
DQo+ICAJCSAqLw0KPiAgCQlkbWFfZmVuY2VfbG9ja19pcnFzYXZlKGZlbmNlLCBmbGFncyk7DQo+
ICAJCWZlbmNlLT5lcnJvciA9IC1FREVBRExLOw0KPiAtCQlkbWFfZmVuY2Vfc2lnbmFsX2xvY2tl
ZChmZW5jZSk7DQo+ICsJCXJlZmNvdW50X3NldCgmZmVuY2UtPnJlZmNvdW50LnJlZmNvdW50LCBJ
TlRfTUFYKTsNCg0KSSdtIG5vdCBjb252aW5jZWQgdGhpcyBpcyB1c2VmdWwuIElmIHdlIGxlYWsg
dGhlIG9iamVjdCwgbm8gb25lIHNob3VsZA0KaGF2ZSBhIHJlZiB0byByZWxlYXNlIGFueXdheS4g
VGhpcyBkb2VzIHJhaXNlIGEgcXVlc3Rpb24gdGhvdWdoLiBUaGUNCmNhc2Ugd2UncmUgdHJ5aW5n
IHRvIHByb3RlY3QgYWdhaW5zdCBpcyBmZW5jZV9jYWxsYmFjayBiZWluZyByZWdpc3RlcmVkDQp0
byB0aGlzIGZlbmNlIGFuZCB3YWl0aW5nIGZvciBhbiBldmVudCB0byBzaWduYWwgYW5vdGhlciBw
cm94eSBmZW5jZS4NCkhvdyBjYW4gdGhlIHJlZmNudCBkcm9wIHRvIHplcm8gaW4gdGhhdCBjYXNl
PyBJc24ndCB0aGUgcHJveHkgc3VwcG9zZWQNCnRvIG93biBhIHJlZiBvbiB0aGUgZmVuY2UuIEJl
Zm9yZSB3ZSBnbyBmdXJ0aGVyLCBJJ2QgbGlrZSB0byB1bmRlcnN0YW5kDQp3aGF0IHdlJ3JlIHRy
eWluZyB0byBkby4NCg0KVGhlIG9yaWdpbmFsIGRpc2N1c3Npb24gdGhhdCBsZWQgeW91IHRvIHdy
aXRlIHRoaXMgcGF0Y2ggd2FzIGFib3V0DQpkZXRlY3Rpbmcgd2hlbiBhIGZlbmNlIGVtaXR0ZXIv
cHJvZHVjZXIgd291bGQgbGVhdmUgdW5zaWduYWxsZWQgZmVuY2VzDQpiZWhpbmQsIGFuZCB0aGUg
cHJvYmxlbSB3ZSBoYXZlIGlzIHdoZW4gc3VjaCB1bnNpZ25hbGxlZCBmZW5jZXMgaGF2ZQ0Kb2Jz
ZXJ2ZXJzIHdhaXRpbmcgZm9yIGEgInNpZ25hbGxlZCIgZXZlbnQuIElmIHRoZSByZWZjbnQgZHJv
cHMgdG8gemVybw0KYW5kIHRoZSBmZW5jZSBpcyByZWxlYXNlZCwgd2UncmUgYWxyZWFkeSBwYXNz
ZWQgdGhhdCBwb2ludCwNCnVuZm9ydHVuYXRlbHkuIEl0IGNhbiBiZSB0aGF0Og0KDQotIHRoZSBm
ZW5jZSB3YXMgbmV2ZXIgZXhwb3NlZCAtPiB0aGlzIGlzIGZpbmUNCi0gdGhlIGZlbmNlIHdhcyBl
eHBvc2VkIGJ1dCBuZXZlciBvYnNlcnZlZCAtPiB0aGlzIGlzIGJyb2tlbiwgYmVjYXVzZSBpZg0K
ICBpdCBoYWQgYmVlbiBvYnNlcnZlZCBpdCB3b3VsZCBoYXZlIGxlZCB0byBhIGRlYWRsb2NrDQot
IHRoZSBmZW5jZSB3YXMgZXhwb3NlZCwgb2JzZXJ2ZWQgZm9yIHNvbWUgdGltZSwgYnV0IHRoZSBv
YnNlcnZlciBnb3QNCiAgYm9yZWQsIHN0b3BwZWQgd2FpdGluZyBhbmQ6DQogICogZGVjaWRlZCB0
byBnbyBhbmQgZXhlY3V0ZSBpdHMgc3R1ZmYgYW55d2F5IC0+IHVzZS1iZWZvcmUtcmVhZHkNCiAg
ICBzaXR1YXRpb24NCiAgKiBnYXZlIHVwIC0+IGtpbmRhIG9rYXksIGJ1dCB3ZSBzaG91bGQgc3Rp
bGwgY29uc2lkZXIgdGhlIGZlbmNlDQogICAgZW1pdHRlciBicm9rZW4NCi0gdGhlIGZlbmNlIG9i
c2VydmVyIHJlZ2lzdGVyZWQgYSBjYWxsYmFjayBidXQgZGlkbid0IHRha2UgYSByZWYgb24gdGhl
DQogIG9iamVjdCAtPiB0aGlzIGlzIHBvdGVudGlhbCBVQUYgb24gdGhlIGRtYV9mZW5jZSwgd2hp
Y2ggY2FuIGFsc28gbGVhZA0KICB0byBhIFZSQU0vc3lzdGVtLW1lbSBVQUYgaWYgdGhlIGVtaXR0
ZXIgZHJvcHMgdGhlIGRtYV9mZW5jZSB3aXRob3V0DQogIHNpZ25hbGxpbmcsIGJlY2F1c2Ugb2Yg
dGhlIGF1dG8tc2lnbmFsIHlvdSdyZSBnZXR0aW5nIHJpZCBvZiBpbiB0aGlzDQogIHBhdGNoLiAg
QnV0IHRoZSBsYXR0ZXIgaXMganVzdCBhIHNpZGUgZWZmZWN0IG9mIHRoZSBkbWFfZmVuY2UgVUFG
LA0KICB3aGljaCBJJ20gbm90IGNvbnZpbmNlZCB3ZSBzaG91bGQgdHJ5IHRvIHByb3RlY3QgYWdh
aW5zdC4NCg0KPiAgCQlkbWFfZmVuY2VfdW5sb2NrX2lycXJlc3RvcmUoZmVuY2UsIGZsYWdzKTsN
Cj4gKwkJcmN1X3JlYWRfdW5sb2NrKCk7DQo+ICsJCWFkZF90YWludChUQUlOVF9TT0ZUTE9DS1VQ
LCBMT0NLREVQX1NUSUxMX09LKTsNCj4gKwkJcmV0dXJuOw0KPiAgCX0NCj4gIA0KPiAgCW9wcyA9
IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
