Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aCKSLqQ/DGqqawUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:47:00 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D657757CBE9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:46:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 69351405D4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 10:46:58 +0000 (UTC)
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	by lists.linaro.org (Postfix) with ESMTPS id 3D486404C7
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 13:00:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=yS6J3KR6;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.151 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4gJyb54CT5z9vWk;
	Mon, 18 May 2026 15:00:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1779109233; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=42UjWw8qdkmaeRynzwAOvzZibvc3MMo7iwMmUNfLtAs=;
	b=yS6J3KR6RuMyJdK3Mc1TqUwbuIR2xoaAKONvBNyG4S1+pIXHzY3CD5lQia44N1gzfZQuyy
	OL/KOsmiOnb3iXtCuRd985WSmaY6YseIomOWESsWRwjnp8J/MGH6jzTYA4yVsm1Lc5egEc
	7nkU7g2kpKPWkkSwpv0NyemZHWWJDGgkv2w2yztKkL1tBTWsx9DNs2BqSyERmvAW0o5jAc
	EmobO6DhgzD9KQjapN8PW1Xsx2o5OkWeEVDrb1FYc4YHpmSw77ZMrUHvwXhq9m4SJ3kLRF
	hPTy01WcpJXz76CCeac4gOe2PVAGvT1U1R9qNrzy25Fb3x6PP/Kz/Y7bph3Ycw==
Message-ID: <64a784311f048a0fe4bbf8a89839522cd1e6144e.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 =?ISO-8859-1?Q?Ma=EDra?= Canal <mcanal@igalia.com>, Sumit Semwal
 <sumit.semwal@linaro.org>, Boris Brezillon <boris.brezillon@collabora.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,  Philipp Stanner
 <phasta@kernel.org>
Date: Mon, 18 May 2026 15:00:24 +0200
In-Reply-To: <b202b9f4-9ef6-422a-be39-8050217590ad@amd.com>
References: <20260419134943.54833-2-mcanal@igalia.com>
	 <b202b9f4-9ef6-422a-be39-8050217590ad@amd.com>
MIME-Version: 1.0
X-MBO-RS-ID: 5edb5a488875ca8cd85
X-MBO-RS-META: b9yb8x5mrbg9iepo8jkqeqntbemb3mko
X-Spamd-Bar: ----
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6F2A3BSPLH3UBWDWFBNJNLEEGQC3NUGV
X-Message-ID-Hash: 6F2A3BSPLH3UBWDWFBNJNLEEGQC3NUGV
X-Mailman-Approved-At: Tue, 19 May 2026 10:46:26 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-dev@igalia.com
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-fence: Clarify external lock use case in dma_fence_init() docs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6F2A3BSPLH3UBWDWFBNJNLEEGQC3NUGV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo,igalia.com:email,mailbox.org:mid]
X-Rspamd-Queue-Id: D657757CBE9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCAyMDI2LTA1LTE4IGF0IDEzOjMwICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBPbiA0LzE5LzI2IDE1OjQ4LCBNYcOtcmEgQ2FuYWwgd3JvdGU6DQo+ID4gVGhlIGtlcm5l
bGRvYyBjb21tZW50IG9uIGRtYV9mZW5jZV9pbml0KCkgYW5kIGRtYV9mZW5jZV9pbml0NjQoKSBk
ZXNjcmliZQ0KPiA+IHRoZSBsZWdhY3kgcmVhc29uIHRvIHBhc3MgYW4gZXh0ZXJuYWwgbG9jayBh
cyBhIG5lZWQgdG8gcHJldmVudCBtdWx0aXBsZQ0KPiA+IGZlbmNlcyAiZnJvbSBzaWduYWxpbmcg
b3V0IG9mIG9yZGVyIi4gSG93ZXZlciwgdGhpcyB3b3JkaW5nIGlzIGEgYml0DQo+ID4gbWlzbGVh
ZGluZzogYSBzaGFyZWQgc3BpbmxvY2sgZG9lcyBub3QgKGFuZCBjYW5ub3QpIHByZXZlbnQgdGhl
IHNpZ25hbGVyDQo+ID4gZnJvbSBzaWduYWxpbmcgb3V0IG9mIG9yZGVyLiBTaWduYWxpbmcgb3Jk
ZXIgaXMgdGhlIGRyaXZlcidzIHJlc3BvbnNpYmlsaXR5DQo+ID4gcmVnYXJkbGVzcyBvZiB3aGV0
aGVyIHRoZSBsb2NrIGlzIHNoYXJlZCBvciBwZXItZmVuY2UuDQo+ID4gDQo+ID4gV2hhdCBhIHNo
YXJlZCBsb2NrIGFjdHVhbGx5IHByb3ZpZGVzIGlzIHNlcmlhbGl6YXRpb24gb2Ygc2lnbmFsaW5n
IGFuZA0KPiA+IG9ic2VydmF0aW9uIGFjcm9zcyBmZW5jZXMgaW4gYSBnaXZlbiBjb250ZXh0LCBz
byB0aGF0IG9ic2VydmVycyBuZXZlcg0KPiA+IHNlZSBhIGxhdGVyIGZlbmNlIHNpZ25hbGVkIHdo
aWxlIGFuIGVhcmxpZXIgb25lIGlzIG5vdC4NCj4gPiANCj4gPiBSZXdvcmQgYm90aCBjb21tZW50
cyB0byBkZXNjcmliZSB0aGlzIG1vcmUgYWNjdXJhdGVseS4NCj4gPiANCj4gPiBTaWduZWQtb2Zm
LWJ5OiBNYcOtcmEgQ2FuYWwgPG1jYW5hbEBpZ2FsaWEuY29tPg0KPiA+IA0KPiA+IC0tLQ0KPiA+
IA0KPiA+IHYxIC0+IHYyOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMjAyNjA0
MTExODU3NTYuMTg4NzExOS00LW1jYW5hbEBpZ2FsaWEuY29tLw0KPiA+IA0KPiA+IC0gQmUgbW9y
ZSBleHBsaWNpdCBhYm91dCBub3QgYWxsb3dpbmcgbmV3IHVzZXJzIHRvIHVzZSBhbiBleHRlcm5h
bCBsb2NrLg0KPiA+IC0gRGUtZHVwbGljYXRlIHRoZSBleHBsYW5hdGlvbiBpbiBkbWFfZmVuY2Vf
aW5pdDY0KCkgYnkgcG9pbnRpbmcgdG8gdGhlDQo+ID4gwqAgZG1hX2ZlbmNlX2luaXQoKSBkb2N1
bWVudGF0aW9uLg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIHwg
MTMgKysrKysrKy0tLS0tLQ0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwg
NiBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2Rt
YS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+ID4gaW5kZXggMWMxZWFl
Y2FmMWIwLi42M2IzNDliYTlhMzQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2Rt
YS1mZW5jZS5jDQo+ID4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+ID4gQEAg
LTExMDIsOSArMTEwMiwxMSBAQCBfX2RtYV9mZW5jZV9pbml0KHN0cnVjdCBkbWFfZmVuY2UgKmZl
bmNlLCBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyAqb3BzLA0KPiA+IMKgICogY29udGV4dCBh
bmQgc2Vxbm8gYXJlIHVzZWQgZm9yIGVhc3kgY29tcGFyaXNvbiBiZXR3ZWVuIGZlbmNlcywgYWxs
b3dpbmcNCj4gPiDCoCAqIHRvIGNoZWNrIHdoaWNoIGZlbmNlIGlzIGxhdGVyIGJ5IHNpbXBseSB1
c2luZyBkbWFfZmVuY2VfbGF0ZXIoKS4NCj4gPiDCoCAqDQo+ID4gLSAqIEl0IGlzIHN0cm9uZ2x5
IGRpc2NvdXJhZ2VkIHRvIHByb3ZpZGUgYW4gZXh0ZXJuYWwgbG9jayBiZWNhdXNlIHRoaXMgY291
cGxlcw0KPiA+IC0gKiBsb2NrIGFuZCBmZW5jZSBsaWZlIHRpbWUuIFRoaXMgaXMgb25seSBhbGxv
d2VkIGZvciBsZWdhY3kgdXNlIGNhc2VzIHdoZW4NCj4gPiAtICogbXVsdGlwbGUgZmVuY2VzIG5l
ZWQgdG8gYmUgcHJldmVudGVkIGZyb20gc2lnbmFsaW5nIG91dCBvZiBvcmRlci4NCj4gPiArICog
RXh0ZXJuYWwgbG9ja3MgYXJlIGEgcmVsaWMgZnJvbSBsZWdhY3kgdXNlIGNhc2VzIHRoYXQgbmVl
ZGVkIGEgc2hhcmVkIGxvY2sNCj4gPiArICogdG8gc2VyaWFsaXplIHNpZ25hbGluZyBhbmQgb2Jz
ZXJ2YXRpb24gb2YgZmVuY2VzIHdpdGhpbiBhIGNvbnRleHQsIHNvIHRoYXQNCj4gPiArICogb2Jz
ZXJ2ZXJzIG5ldmVyIHNlZSBhIGxhdGVyIGZlbmNlIHNpZ25hbGVkIHdoaWxlIGFuIGVhcmxpZXIg
b25lIGlzbid0LiBOZXcNCj4gPiArICogdXNlcnMgTVVTVCBOT1QgdXNlIGV4dGVybmFsIGxvY2tz
LCBhcyB0aGV5IGZvcmNlIHRoZSBpc3N1ZXIgdG8gb3V0bGl2ZSBhbGwNCj4gPiArICogZmVuY2Vz
IHRoYXQgcmVmZXJlbmNlIHRoZSBsb2NrLg0KPiANCj4gTm8gdGhhdCdzIG5vdCBjb3JyZWN0LiBU
aGUgdXNlIG9mIHRoZSBleHRlcm5hbCBsb2NrIHdhcyBpbmRlZWQgdG8gcHJldmVudCBzaWduYWxp
bmcgb3V0IG9mIG9yZGVyLg0KPiANCj4gSXQgaXMgcGVyZmVjdGx5IHBvc3NpYmxlIHRvIG9ic2Vy
dmUgdGhlIGZlbmNlIGFzIHNpZ25hbGVkIGV2ZW4gd2l0aG91dCB0YWtpbmcgdGhlIGxvY2sgYmVj
YXVzZSBvZiB0aGUgdW5sb2NrZWQgdGVzdF9iaXQoKSBvcGVyYXRpb24gd2UgdXNlLCBzbyB0aGUg
bmV3IHdvcmRpbmcgaXMgY2xlYXJseSBtaXNsZWFkaW5nIGFuZCBub3QgZXhwbGFpbmluZyBwcm9w
ZXJseSB3aGF0IGlzIGdvaW5nIG9uIGhlcmUuDQo+IA0KDQpJIHRoaW5rIHRoZSBwb2ludCBNYcOt
cmEgLyB3ZSB0cmllZCB0byBtYWtlIHdpdGggdGhhdCBzdGF0ZW1lbnQgaXMgdGhhdA0KYW4gZXh0
ZXJuYWwgbG9jayBpcyBlZmZlY3RpdmVseSB1c2VsZXNzIGZvciBlbnN1cmluZyBjb3JyZWN0IHNp
Z25hbGluZw0Kb3JkZXIuIEFmYWlyIHlvdSBhZ3JlZSB3aXRoIHRoYXQgaW4gZ2VuZXJhbC4NCg0K
RG8geW91IGhhdmUgYSBzdWdnZXN0aW9uIGZvciBhIGJldHRlciBmb3JtdWxhdGlvbj8NCg0KUmVn
YXJkcw0KUC4NCg0KPiBSZWdhcmRzLA0KPiBDaHJpc3RpYW4uDQo+IA0KPiANCj4gPiDCoCAqLw0K
PiA+IMKgdm9pZA0KPiA+IMKgZG1hX2ZlbmNlX2luaXQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2Us
IGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzICpvcHMsDQo+ID4gQEAgLTExMjksOSArMTEzMSw4
IEBAIEVYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX2luaXQpOw0KPiA+IMKgICogQ29udGV4dCBhbmQg
c2Vxbm8gYXJlIHVzZWQgZm9yIGVhc3kgY29tcGFyaXNvbiBiZXR3ZWVuIGZlbmNlcywgYWxsb3dp
bmcNCj4gPiDCoCAqIHRvIGNoZWNrIHdoaWNoIGZlbmNlIGlzIGxhdGVyIGJ5IHNpbXBseSB1c2lu
ZyBkbWFfZmVuY2VfbGF0ZXIoKS4NCj4gPiDCoCAqDQo+ID4gLSAqIEl0IGlzIHN0cm9uZ2x5IGRp
c2NvdXJhZ2VkIHRvIHByb3ZpZGUgYW4gZXh0ZXJuYWwgbG9jayBiZWNhdXNlIHRoaXMgY291cGxl
cw0KPiA+IC0gKiBsb2NrIGFuZCBmZW5jZSBsaWZlIHRpbWUuIFRoaXMgaXMgb25seSBhbGxvd2Vk
IGZvciBsZWdhY3kgdXNlIGNhc2VzIHdoZW4NCj4gPiAtICogbXVsdGlwbGUgZmVuY2VzIG5lZWQg
dG8gYmUgcHJldmVudGVkIGZyb20gc2lnbmFsaW5nIG91dCBvZiBvcmRlci4NCj4gPiArICogTmV3
IHVzZXJzIE1VU1QgTk9UIHVzZSBleHRlcm5hbCBsb2Nrcy4gQ2hlY2sgdGhlIGRvY3VtZW50YXRp
b24gaW4NCj4gPiArICogZG1hX2ZlbmNlX2luaXQoKSB0byB1bmRlcnN0YW5kIHRoZSBtb3RpdmVz
IGJlaGluZCB0aGUgbGVnYWN5IHVzZSBjYXNlcy4NCj4gPiDCoCAqLw0KPiA+IMKgdm9pZA0KPiA+
IMKgZG1hX2ZlbmNlX2luaXQ2NChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgY29uc3Qgc3RydWN0
IGRtYV9mZW5jZV9vcHMgKm9wcywNCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
