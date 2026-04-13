Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMylGIBl5mlmvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:42:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A9371431DC0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:42:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9BEAC4046B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:42:22 +0000 (UTC)
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	by lists.linaro.org (Postfix) with ESMTPS id 3929C402AE
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Apr 2026 06:47:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=ZaJyTE89;
	dmarc=pass (policy=reject) header.from=mailbox.org;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.152 as permitted sender) smtp.mailfrom=phasta@mailbox.org
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4fvHyk06vQz9vBF;
	Mon, 13 Apr 2026 08:47:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1776062846; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zNqg4//AHBbNZ3RoiPIAfyIUx1byLwQcXw94D/twNTo=;
	b=ZaJyTE89qf1juduquhuXt8/2tzZl7dQFn955XFVGTmoWi7PO7hgkBFKpCqVFDja6D8wnPC
	gc40dRFBbXcUHlfkHTf6HWA32/ZnN8BP5i5mEFp8NQUXHUuzrTr6JTxf2NwXj9bPiHRinm
	504FlZytfIvlkkVnoQnhws9TmRuG2l1uNlDX2ILNcvuRVb16/M/t6VLJmlIPIOOilmxFgj
	W6KQgn4bGFjCrEavWXmbV510WhuuaViIZTQoKFStWuxP/0uaPGUGIXbXik0ltMAvp2S7HK
	E8V+6gQJYHsDIbLlgDYBYHOUjAzeQcHRNdW4gZ+tzqvdx6VeCJjeElMcEfnfqw==
Message-ID: <59759507d4fb89d3726092268f17680998d1b4cf.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: =?ISO-8859-1?Q?Ma=EDra?= Canal <mcanal@igalia.com>, Christian
 =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>, Sumit Semwal
 <sumit.semwal@linaro.org>, Boris Brezillon <boris.brezillon@collabora.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,  Philipp Stanner
 <phasta@kernel.org>
Date: Mon, 13 Apr 2026 08:47:21 +0200
In-Reply-To: <20260411185756.1887119-4-mcanal@igalia.com>
References: <20260411185756.1887119-4-mcanal@igalia.com>
MIME-Version: 1.0
X-MBO-RS-ID: f9275734e115b506393
X-MBO-RS-META: t9zjn3p3af6q66cu93yoz5wctseyf7ch
X-Spamd-Bar: ---
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6MBLXNFF5ZDCDVVJT3FZT4B3S6METCOY
X-Message-ID-Hash: 6MBLXNFF5ZDCDVVJT3FZT4B3S6METCOY
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:42:21 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-dev@igalia.com
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: Clarify external lock use case in dma_fence_init() docs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6MBLXNFF5ZDCDVVJT3FZT4B3S6METCOY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	DATE_IN_PAST(1.00)[178];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[igalia.com,gmail.com,linaro.org,collabora.com,kernel.org];
	DKIM_TRACE(0.00)[mailbox.org:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.512];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,mailbox.org:mid]
X-Rspamd-Queue-Id: A9371431DC0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gU2F0LCAyMDI2LTA0LTExIGF0IDE1OjQ3IC0wMzAwLCBNYcOtcmEgQ2FuYWwgd3JvdGU6DQo+
IFRoZSBrZXJuZWxkb2MgY29tbWVudCBvbiBkbWFfZmVuY2VfaW5pdCgpIGFuZCBkbWFfZmVuY2Vf
aW5pdDY0KCkgZGVzY3JpYmUNCj4gdGhlIGxlZ2FjeSByZWFzb24gdG8gcGFzcyBhbiBleHRlcm5h
bCBsb2NrIGFzIGEgbmVlZCB0byBwcmV2ZW50IG11bHRpcGxlDQo+IGZlbmNlcyAiZnJvbSBzaWdu
YWxpbmcgb3V0IG9mIG9yZGVyIi4gSG93ZXZlciwgdGhpcyB3b3JkaW5nIGlzIGEgYml0DQo+IG1p
c2xlYWRpbmc6IGEgc2hhcmVkIHNwaW5sb2NrIGRvZXMgbm90IChhbmQgY2Fubm90KSBwcmV2ZW50
IHRoZSBzaWduYWxlcg0KPiBmcm9tIHNpZ25hbGluZyBvdXQgb2Ygb3JkZXIuIFNpZ25hbGluZyBv
cmRlciBpcyB0aGUgZHJpdmVyJ3MgcmVzcG9uc2liaWxpdHkNCj4gcmVnYXJkbGVzcyBvZiB3aGV0
aGVyIHRoZSBsb2NrIGlzIHNoYXJlZCBvciBwZXItZmVuY2UuDQo+IA0KPiBXaGF0IGEgc2hhcmVk
IGxvY2sgYWN0dWFsbHkgcHJvdmlkZXMgaXMgc2VyaWFsaXphdGlvbiBvZiBzaWduYWxpbmcgYW5k
DQo+IG9ic2VydmF0aW9uIGFjcm9zcyBmZW5jZXMgaW4gYSBnaXZlbiBjb250ZXh0LCBzbyB0aGF0
IG9ic2VydmVycyBuZXZlcg0KPiBzZWUgYSBsYXRlciBmZW5jZSBzaWduYWxlZCB3aGlsZSBhbiBl
YXJsaWVyIG9uZSBpcyBub3QuDQo+IA0KPiBSZXdvcmQgYm90aCBjb21tZW50cyB0byBkZXNjcmli
ZSB0aGlzIG1vcmUgYWNjdXJhdGVseS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IE1hw61yYSBDYW5h
bCA8bWNhbmFsQGlnYWxpYS5jb20+DQo+IC0tLQ0KPiANCj4gSGksDQo+IA0KPiBXaGlsZSByZWFk
aW5nIHRoZSBkb2N1bWVudGF0aW9uLCBJIGZvdW5kIHRoaXMgcGFydGljdWxhciBwYXJhZ3JhcGgg
cXVpdGUNCj4gaGFyZCB0byB1bmRlcnN0YW5kLiBBcyBJIHVuZGVyc3RhbmQgaXQsIGxvY2tzIGRv
bid0IGVuZm9yY2Ugb3JkZXIsIG9ubHkNCj4gc2VyaWFsaXphdGlvbiwgYnV0IHRoZSBwYXJhZ3Jh
cGggc2VlbXMgdG8gY29tbXVuaWNhdGUgdGhlIG90aGVyIHdheSBhcm91bmQuDQoNClllcywgMTAw
JS4NClRoYXQncyBvbmUgb2YgdGhlIHJlYXNvbnMgd2h5IENocmlzdGlhbiByZWNlbnRseSBtb3Zl
ZCB0byB1c2luZyBpbmxpbmUtDQpsb2Nrcy4NCg0KDQoNCj4gRHVlIHRvIHRoYXQsIEkgaGFkIHRo
ZSBpbXByZXNzaW9uIHRoYXQgdGhlIGN1cnJlbnQgd29yZGluZyBjYW4gYmUNCj4gbWlzbGVhZGlu
ZyBmb3IgZHJpdmVyIGRldmVsb3BlcnMuDQo+IA0KPiBJJ20gcHJvcG9zaW5nIGEgbmV3IHdvcmRp
bmcgdG8gYmV0dGVyIGRlc2NyaWJlIHRoZSB1c2UgY2FzZSBvZiB0aGUNCj4gZXh0ZXJuYWwgbG9j
ayBiYXNlZCBvbiBteSB1bmRlcnN0YW5kaW5nLCBidXQgaXQgd291bGQgYmUgZ3JlYXQgdG8gaGVh
cg0KPiB0aGUgZmVlZGJhY2sgYW5kIHN1Z2dlc3Rpb25zIGZyb20gbW9yZSBleHBlcmllbmNlZCBk
ZXZlbG9wZXJzIHdobyBtaWdodA0KPiBoYXZlIG1vcmUgaW5zaWdodCBhYm91dCB0aGVzZSBsZWdh
Y3kgdXNlIGNhc2VzLg0KPiANCj4gQmVzdCByZWdhcmRzLA0KPiAtIE1hw61yYQ0KPiANCj4gwqBk
cml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgfCAxMiArKysrKysrKy0tLS0NCj4gwqAxIGZpbGUg
Y2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVu
Y2UuYw0KPiBpbmRleCAxODI2YmE3MzA5NGMuLmJkYzI5ZDFjMWI1YyAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
ZmVuY2UuYw0KPiBAQCAtMTEwMiw4ICsxMTAyLDEwIEBAIF9fZG1hX2ZlbmNlX2luaXQoc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2UsIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzICpvcHMsDQo+IMKg
ICogdG8gY2hlY2sgd2hpY2ggZmVuY2UgaXMgbGF0ZXIgYnkgc2ltcGx5IHVzaW5nIGRtYV9mZW5j
ZV9sYXRlcigpLg0KPiDCoCAqDQo+IMKgICogSXQgaXMgc3Ryb25nbHkgZGlzY291cmFnZWQgdG8g
cHJvdmlkZSBhbiBleHRlcm5hbCBsb2NrIGJlY2F1c2UgdGhpcyBjb3VwbGVzDQo+IC0gKiBsb2Nr
IGFuZCBmZW5jZSBsaWZlIHRpbWUuIFRoaXMgaXMgb25seSBhbGxvd2VkIGZvciBsZWdhY3kgdXNl
IGNhc2VzIHdoZW4NCj4gLSAqIG11bHRpcGxlIGZlbmNlcyBuZWVkIHRvIGJlIHByZXZlbnRlZCBm
cm9tIHNpZ25hbGluZyBvdXQgb2Ygb3JkZXIuDQo+ICsgKiBsb2NrIGFuZCBmZW5jZSBsaWZldGlt
ZS4gVGhpcyBpcyBvbmx5IGFsbG93ZWQgZm9yIGxlZ2FjeSB1c2UgY2FzZXMgdGhhdCBuZWVkDQo+
ICsgKiBhIHNoYXJlZCBsb2NrIHRvIHNlcmlhbGl6ZSBzaWduYWxpbmcgYW5kIG9ic2VydmF0aW9u
IG9mIGZlbmNlcyB3aXRoaW4gYQ0KPiArICogY29udGV4dCwgc28gdGhhdCBvYnNlcnZlcnMgbmV2
ZXIgc2VlIGEgbGF0ZXIgZmVuY2Ugc2lnbmFsZWQgd2hpbGUgYW4gZWFybGllcg0KPiArICogb25l
IGlzbid0Lg0KDQpJIHdvdWxkIHByb2JhYmx5IGRlbGV0ZSB0aGUgZXhwbGFuYXRpb24gYWx0b2dl
dGhlciBhbmQganVzdCBzdGF0ZQ0KImFsbG93ZWQgZm9yIGxlZ2FjeSByZWFzb25zIi4gVGhlIGxl
Z2FjeSBwZW9wbGUga25vdyB3aHkgaXQncyBhbGxvd2VkLA0KYW5kIG5ldyB1c2VycyBkb24ndCBu
ZWVkIHRvIGNhcmUuIFNhbWUgYmVsb3cgb2YgY291cnNlLg0KDQoNClRoeA0KUC4NCg0KPiDCoCAq
Lw0KPiDCoHZvaWQNCj4gwqBkbWFfZmVuY2VfaW5pdChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwg
Y29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgKm9wcywNCj4gQEAgLTExMjksOCArMTEzMSwxMCBA
QCBFWFBPUlRfU1lNQk9MKGRtYV9mZW5jZV9pbml0KTsNCj4gwqAgKiB0byBjaGVjayB3aGljaCBm
ZW5jZSBpcyBsYXRlciBieSBzaW1wbHkgdXNpbmcgZG1hX2ZlbmNlX2xhdGVyKCkuDQo+IMKgICoN
Cj4gwqAgKiBJdCBpcyBzdHJvbmdseSBkaXNjb3VyYWdlZCB0byBwcm92aWRlIGFuIGV4dGVybmFs
IGxvY2sgYmVjYXVzZSB0aGlzIGNvdXBsZXMNCj4gLSAqIGxvY2sgYW5kIGZlbmNlIGxpZmUgdGlt
ZS4gVGhpcyBpcyBvbmx5IGFsbG93ZWQgZm9yIGxlZ2FjeSB1c2UgY2FzZXMgd2hlbg0KPiAtICog
bXVsdGlwbGUgZmVuY2VzIG5lZWQgdG8gYmUgcHJldmVudGVkIGZyb20gc2lnbmFsaW5nIG91dCBv
ZiBvcmRlci4NCj4gKyAqIGxvY2sgYW5kIGZlbmNlIGxpZmV0aW1lLiBUaGlzIGlzIG9ubHkgYWxs
b3dlZCBmb3IgbGVnYWN5IHVzZSBjYXNlcyB0aGF0IG5lZWQNCj4gKyAqIGEgc2hhcmVkIGxvY2sg
dG8gc2VyaWFsaXplIHNpZ25hbGluZyBhbmQgb2JzZXJ2YXRpb24gb2YgZmVuY2VzIHdpdGhpbiBh
DQo+ICsgKiBjb250ZXh0LCBzbyB0aGF0IG9ic2VydmVycyBuZXZlciBzZWUgYSBsYXRlciBmZW5j
ZSBzaWduYWxlZCB3aGlsZSBhbiBlYXJsaWVyDQo+ICsgKiBvbmUgaXNuJ3QuDQo+IMKgICovDQo+
IMKgdm9pZA0KPiDCoGRtYV9mZW5jZV9pbml0NjQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNv
bnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzICpvcHMsDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
