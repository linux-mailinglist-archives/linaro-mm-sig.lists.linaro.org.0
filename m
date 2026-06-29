Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +HXJBJoxQmpB1gkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 10:49:30 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C396D7AA7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 10:49:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=mailbox.org header.s=mail20150812 header.b=Xo2DxI3n;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=mailbox.org (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A2DDD40AA7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 08:49:28 +0000 (UTC)
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	by lists.linaro.org (Postfix) with ESMTPS id EE47F4049D
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Jun 2026 08:49:16 +0000 (UTC)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4gpg1j70zzz9vCB;
	Mon, 29 Jun 2026 10:49:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1782722954; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bNexwtP6qx9lBB2uR84+WnHRT3J5jrJo35qB4/OoSvo=;
	b=Xo2DxI3nSm1iCegJk8MQv5Ll1eLaAPBnhGRqiegbYbTjCxRaGQqzDB3W07+kH4nKtBOK3X
	dxkTDCXuQUDwC3ZesbR6kjyCUEGGStztrYbNGILYnuOljcBSgRh5/6RAXtVP+gguGSSf+x
	Yp9xjAj2QGvTgG5xfjoDECXVfis/ea/aNTXlV72Invo1LvyMebH9dEi7iC4S+JDfzfAdnQ
	NRnFSdYbz+GRaxibti2WUcwH/Eu4d6B7AwsMUUcfxA9sx16NZNKM+5nDCFuW7+7BGqOKXG
	6xcZzlTKT1me4aIiAYV/TZQcQYu1viLrzGkqyS1iVNviQ4rGqBMWAmeqkCMbHw==
Message-ID: <058f4bb261e408cf17deca9ff7354460675eacbf.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Baineng
 Shou <shoubaineng@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>
Date: Mon, 29 Jun 2026 10:49:08 +0200
In-Reply-To: <becd29b5-9e40-4104-b6c9-3d91e2ddddff@amd.com>
References: <20260629031346.3875683-1-shoubaineng@gmail.com>
	 <becd29b5-9e40-4104-b6c9-3d91e2ddddff@amd.com>
MIME-Version: 1.0
X-MBO-RS-META: qsgddayaj8bgcsbnm6438m7kgxrxucpg
X-MBO-RS-ID: eb9239d37414620f1a5
X-Spamd-Bar: ----
Message-ID-Hash: 7RN4GMO33A2R3GJKSWXQ3WMRP6R3DAZF
X-Message-ID-Hash: 7RN4GMO33A2R3GJKSWXQ3WMRP6R3DAZF
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Tvrtko Ursulin <tursulin@ursulin.net>, Philipp Stanner <phasta@kernel.org>, Akash Goel <akash.goel@arm.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: Make dma_fence_dedup_array() robust against 0-count input
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7RN4GMO33A2R3GJKSWXQ3WMRP6R3DAZF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:christian.koenig@amd.com,m:shoubaineng@gmail.com,m:sumit.semwal@linaro.org,m:tursulin@ursulin.net,m:phasta@kernel.org,m:akash.goel@arm.com,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,linaro.org];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[mailbox.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 90C396D7AA7

T24gTW9uLCAyMDI2LTA2LTI5IGF0IDEwOjQ1ICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBPbiA2LzI5LzI2IDA1OjEzLCBCYWluZW5nIFNob3Ugd3JvdGU6DQo+ID4gZG1hX2ZlbmNl
X2RlZHVwX2FycmF5KCkgcmV0dXJucyAxIHdoZW4gY2FsbGVkIHdpdGggbnVtX2ZlbmNlcyA9PSAw
Og0KPiA+IHRoZSBmb3ItbG9vcCBib2R5IG5ldmVyIGV4ZWN1dGVzLCBqIHN0YXlzIGF0IDAsIGFu
ZCB0aGUgZmluYWwNCj4gPiBgcmV0dXJuICsramAgeWllbGRzIDEuIFRoaXMgY29udHJhZGljdHMg
Ym90aCB0aGUga2VybmVsLWRvYyAoIlJldHVybjoNCj4gPiBOdW1iZXIgb2YgdW5pcXVlIGZlbmNl
cyByZW1haW5pbmcgaW4gdGhlIGFycmF5IikgYW5kIHRoZSBuYXR1cmFsDQo+ID4gZXhwZWN0YXRp
b24gdGhhdCAwIGlucHV0IGdpdmVzIDAgb3V0cHV0Lg0KPiANCj4gR29vZCBjYXRjaC4NCj4gDQo+
ID4gDQo+ID4gQWxsIGluLXRyZWUgY2FsbGVycyBjdXJyZW50bHkgZmlsdGVyIG51bV9mZW5jZXMg
PT0gMCBiZWZvcmUgaW52b2tpbmcNCj4gPiB0aGlzIGhlbHBlciAoX19kbWFfZmVuY2VfdW53cmFw
X21lcmdlKCkgYmFpbHMgb3V0IHZpYSB0aGUNCj4gPiBgaWYgKGNvdW50ID09IDAgfHwgY291bnQg
PT0gMSlgIGZhc3QgcGF0aDsgYW1kZ3B1X3VzZXJxX3dhaXRfKigpDQo+ID4gY2Fubm90IHJlYWNo
IHRoZSBkZWR1cCBjYWxsIHdpdGggYSB6ZXJvIGxvY2FsIGNvdW50IGJlY2F1c2UgdGhlDQo+ID4g
YW1kZ3B1X3VzZXJxX3dhaXRfYWRkX2ZlbmNlKCkgaGVscGVyIGd1YXJhbnRlZXMgbnVtX2ZlbmNl
cyBzdGF5cyBpbg0KPiA+IFswLCB3YWl0X2luZm8tPm51bV9mZW5jZXNdLCBhbmQgd2FpdF9pbmZv
LT5udW1fZmVuY2VzID4gMCBpcyBlbmZvcmNlZA0KPiA+IGF0IHRoZSBpb2N0bCBlbnRyeSkuDQo+
IA0KPiBUaGF0J3Mgbm90IGNvcnJlY3QsIHdhaXRfaW5mby0+bnVtX2ZlbmNlcyBpcyBqdXN0IHRo
ZSBtYXhpbXVtIGFtb3VudCBvZiBmZW5jZXMgd2UgcmV0dXJuLg0KPiANCj4gSXQgaXMgcGVyZmVj
dGx5IHBvc3NpYmxlIHRoYXQgYW1kZ3B1IG5ldmVyIGZpbmRzIGFueSBmZW5jZXMgdG8gYWRkIHRv
IHRoZSBhcnJheS4NCj4gDQo+ID4gDQo+ID4gSG93ZXZlciwgZG1hX2ZlbmNlX2RlZHVwX2FycmF5
KCkgaXMgRVhQT1JUX1NZTUJPTF9HUEwsIHNvIGFueSBmdXR1cmUNCj4gPiBjYWxsZXIgdGhhdCBm
b3JnZXRzIHRvIHByZS1maWx0ZXIgdGhlIHplcm8gY2FzZSB3aWxsIGdldCBhIG1pc2xlYWRpbmcN
Cj4gPiByZXR1cm4gdmFsdWUgb2YgMS4gRGVwZW5kaW5nIG9uIGhvdyB0aGF0IGNhbGxlciB1c2Vz
IHRoZSByZXN1bHQsIGl0DQo+ID4gY291bGQgZGVyZWZlcmVuY2UgYW4gdW5pbml0aWFsaXplZCBm
ZW5jZSBzbG90IGluIHRoZSBhcnJheSwgc2luY2UgdGhlDQo+ID4gY2FsbGVyJ3MgYXJyYXkgbWF5
IGhhdmUgYmVlbiBhbGxvY2F0ZWQgYnV0IG5vdCB5ZXQgcG9wdWxhdGVkLg0KPiA+IA0KPiA+IE1h
a2UgdGhlIGNvbnRyYWN0IG1hdGNoIHRoZSBkb2N1bWVudGF0aW9uIGJ5IHJldHVybmluZyAwIGVh
cmx5LiBUaGlzDQo+ID4gYWxzbyBza2lwcyBhbiB1bm5lY2Vzc2FyeSBzb3J0KCkgY2FsbCBvbiBh
biBlbXB0eSBhcnJheS4NCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBCYWluZW5nIFNob3UgPHNo
b3ViYWluZW5nQGdtYWlsLmNvbT4NCj4gDQo+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IA0KPiBJIHdpbGwgYWRkIGEgQ0Mgc3RhYmxl
IGJlZm9yZSBwdXNoaW5nIHRvIGRybS1taXNjLWZpeGVzLg0KDQpObyBvZmZlbnNlIGludGVuZGVk
IG9yIHRha2VuLCBidXQgZG9uJ3QgdGhlIERSTSBydWxlcyBzYXkgdGhhdCB0aGluZ3MNCmRvIG5v
dCBnZXQgbWVyZ2VkIHdoaWxlIHRoZXJlIGFyZSBvdXRzdGFuZGluZyBjb25jZXJucyBvciBzaWdu
aWZpY2FudA0KcG9pbnRzIGluIHJldmlldyBmZWVkYmFjaz8NCg0KV2hhdCBhYm91dCBteSBjb21t
ZW50cz8NCg0KDQpQLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
