Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TptTLp/2VWoVxAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 10:43:11 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 44EA2752879
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 10:43:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=mailbox.org header.s=mail20150812 header.b=PY+5wKmO;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=mailbox.org (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 39C18404B4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 08:43:10 +0000 (UTC)
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	by lists.linaro.org (Postfix) with ESMTPS id C6B6F40176
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2026 08:43:06 +0000 (UTC)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [10.196.197.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA512)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4gzt9h32YhzKnkS;
	Tue, 14 Jul 2026 10:43:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1784018584; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kcuVd28/B1/gjyhzwuyoKO1FA4PSc1ZXawv4lavDk0g=;
	b=PY+5wKmO7NrZO97V1BWq6hfWTjLqFxemVZr19+pe70WS5T+1In+T2C7IclYuwamarw/j1s
	Hc20Cc5FjVIYg/c4lOAaeOzC8vWqJB+XMhQ/5MSnLQ97JFvr7As8avAjFxXl/9FZh6OtVE
	EYN2Gn1BxvoATXFO2wCmnoMDRUlR21YJC61KxjncigYzO6QpwNt5/38Cax7miMPJ5KweqA
	BHm+jzx1yze0iYmrYsczrL5GQX3XXjqxu3FX43+ALoXw20k9IeNeQd2rHgx+/XH1Buf5uK
	ZJr9/Tgmaflc586NX8blEXAlkxqkCOZP2s2BgnVHEVaNArD6N9/hXCbpuN0W2Q==
Message-ID: <9edeaa17aebc284f1f171b1dd4d9ffee4721b750.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: phasta@kernel.org, Jiri Slaby <jirislaby@kernel.org>, Christian
 =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
 tursulin@ursulin.net, matthew.brost@intel.com, sumit.semwal@linaro.org
Date: Tue, 14 Jul 2026 10:43:00 +0200
In-Reply-To: <aee97ce4aad6bcf63ce9e7066e20a4ff6f082669.camel@mailbox.org>
References: <20260120105655.7134-1-christian.koenig@amd.com>
		 <20260120105655.7134-2-christian.koenig@amd.com>
		 <0d40243b-0929-46d2-be85-e3248d4bd09c@kernel.org>
	 <aee97ce4aad6bcf63ce9e7066e20a4ff6f082669.camel@mailbox.org>
MIME-Version: 1.0
X-MBO-RS-ID: 51ec5f551e682329c92
X-MBO-RS-META: xy77jqgsk5tqheuk9x6qp7fhyrm8obhg
X-Spamd-Bar: /
Message-ID-Hash: MQGD64DHEHVWM3MEWECGSOOWKZJR76NQ
X-Message-ID-Hash: MQGD64DHEHVWM3MEWECGSOOWKZJR76NQ
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 1/9] dma-buf: add dma_fence_was_initialized function v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MQGD64DHEHVWM3MEWECGSOOWKZJR76NQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:jirislaby@kernel.org,m:ckoenig.leichtzumerken@gmail.com,m:tursulin@ursulin.net,m:matthew.brost@intel.com,m:sumit.semwal@linaro.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:ckoenigleichtzumerken@gmail.com,s:lists@lfdr.de];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,ursulin.net,intel.com,linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:from_mime,mailbox.org:mid,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 44EA2752879

T24gVHVlLCAyMDI2LTA3LTE0IGF0IDA5OjUzICswMjAwLCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6
DQo+IE9uIE1vbiwgMjAyNi0wNy0xMyBhdCAxMDo1OCArMDIwMCwgSmlyaSBTbGFieSB3cm90ZToN
Cj4gPiBIaSwNCj4gPiANCj4gPiBPbiAyMC4gMDEuIDI2LCAxMTo1NCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gPiA+IFNvbWUgZHJpdmVyIHVzZSBmZW5jZS0+b3BzIHRvIHRlc3QgaWYgYSBm
ZW5jZSB3YXMgaW5pdGlhbGl6ZWQgb3Igbm90Lg0KPiA+ID4gVGhlIHByb2JsZW0gaXMgdGhhdCB0
aGlzIHV0aWxpemVzIGludGVybmFsIGJlaGF2aW9yIG9mIHRoZSBkbWFfZmVuY2UNCj4gPiA+IGlt
cGxlbWVudGF0aW9uLg0KPiA+ID4gDQo+ID4gPiBTbyBiZXR0ZXIgYWJzdHJhY3QgdGhhdCBpbnRv
IGEgZnVuY3Rpb24uDQo+ID4gPiANCj4gPiA+IHYyOiB1c2UgYSBmbGFnIGluc3RlYWQgb2YgdGVz
dGluZyBmZW5jZS0+b3BzLCByZW5hbWUgdGhlIGZ1bmN0aW9uLCBtb3ZlDQo+ID4gPiDCoMKgwqDC
oCB0byB0aGUgYmVnaW5uaW5nIG9mIHRoZSBwYXRjaCBzZXQuDQo+ID4gLi4uDQo+ID4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9yZWxlYXNlLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9xeGwvcXhsX3JlbGVhc2UuYw0KPiA+ID4gQEAgLTE0Niw3ICsxNDYsNyBAQCBxeGxf
cmVsZWFzZV9mcmVlKHN0cnVjdCBxeGxfZGV2aWNlICpxZGV2LA0KPiA+ID4gwqDCoAlpZHJfcmVt
b3ZlKCZxZGV2LT5yZWxlYXNlX2lkciwgcmVsZWFzZS0+aWQpOw0KPiA+ID4gwqDCoAlzcGluX3Vu
bG9jaygmcWRldi0+cmVsZWFzZV9pZHJfbG9jayk7DQo+ID4gPiDCoCANCj4gPiA+IC0JaWYgKHJl
bGVhc2UtPmJhc2Uub3BzKSB7DQo+ID4gPiArCWlmIChkbWFfZmVuY2Vfd2FzX2luaXRpYWxpemVk
KCZyZWxlYXNlLT5iYXNlKSkgew0KPiANCj4gQ291bGQgeW91IHZlcmlmeSB0aGUgY2F1c2Ugd2l0
aCBzdGggbGlrZQ0KPiANCj4gaWYgKHJlbGVhc2UtPmJhc2Uub3BzICYmIGRtYV9mZW5jZV93YXNf
aW5pdGlhbGl6ZWQo4oCmKSkgew0KDQpGb3JnZXQgYWJvdXQgdGhhdCwgcHJvYmFibHkgd291bGQg
bm90IHdvcmsgb3IgY2F1c2Ugb3RoZXIgaXNzdWVzDQpiZWNhdXNlIHRoZSBOVUxMLXNldHRpbmcg
b24gc2lnbmFsKCkuDQoNCkknZCB0aGVuIHByb2JhYmx5IHRyeSB0byB2ZXJpZnkgaXQgd2l0aCBh
IHNlcGFyYXRlIGJvb2xlYW4gaW4gc3RydWN0DQpyZWxlYXNlLiBUaG91Z2ggSSBhbHNvIGRvbid0
IGdldCB3aHkgdGhlIGZlbmNlLWluaXRpYWxpemVkIGNoZWNrIGRvZXMNCm5vdCBkbyB0aGUgdHJp
Y2suDQoNCg0KUC4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
