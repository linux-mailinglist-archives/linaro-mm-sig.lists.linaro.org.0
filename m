Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mI9eKW4L4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:16:46 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 67228411842
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:16:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 746304095D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:16:45 +0000 (UTC)
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	by lists.linaro.org (Postfix) with ESMTPS id EC7453F73F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 16:12:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=JuCT79Bt;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.152 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp102.mailbox.org (smtp102.mailbox.org [10.196.197.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4drDmZ0SPKz9v6q;
	Tue, 13 Jan 2026 17:12:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1768320766; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=++IIcqlaEoZJM3Hz9MWIsx4ZrGB8G0F7rnOpzvTBjso=;
	b=JuCT79Bt5OOXlRqEjCLsCW2Z2Cq9sIWlixajjrDh0F+hDqoBTQjU6tiM/jelLGlFstRBE7
	9u/Vhke7s4RyZZD6eu25dHg5/lKZEjI0o6WF2e6Bf7JiQFbWbu/ss+NZ0ICV2CNJ92IjSt
	SqN6lF3wAlWEBuk3svemYvWKvYQcafbT+vJ6RoBCZc+o2O1gtidRnqHgMqpRyKN6McTCer
	ix9YxTMa+x4J0Do6gn9GI8ir8TwZ63Kt40BydlS5bE6JYWltOBwxMfBpBti9Uf5gYE4GJJ
	Ycp71bjzuMmWhj66DB6ugXJDO1c4Z02yZnmQPyYYEas5kvznP0ZMy3N5ruX0ag==
Message-ID: <c8c362d73d4f2cff9be685184186a6f3368939f1.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	tursulin@ursulin.net, matthew.brost@intel.com, sumit.semwal@linaro.org
Date: Tue, 13 Jan 2026 17:12:42 +0100
In-Reply-To: <20260113152125.47380-11-christian.koenig@amd.com>
References: <20260113152125.47380-1-christian.koenig@amd.com>
	 <20260113152125.47380-11-christian.koenig@amd.com>
MIME-Version: 1.0
X-MBO-RS-ID: 1ec9d3404e01e591d37
X-MBO-RS-META: zku5yur77qa4jwpt5is53pctgzetbqac
X-Spamd-Bar: ----
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WFR5VCDPRNUTARDMIF64WPQIABPJRR22
X-Message-ID-Hash: WFR5VCDPRNUTARDMIF64WPQIABPJRR22
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:11:51 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 10/10] drm/sched: use inline locks for the drm-sched-fence v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WFR5VCDPRNUTARDMIF64WPQIABPJRR22/>
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
	DATE_IN_PAST(1.00)[2232];
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
	FREEMAIL_TO(0.00)[gmail.com,ursulin.net,intel.com,linaro.org];
	DKIM_TRACE(0.00)[mailbox.org:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email];
	NEURAL_HAM(-0.00)[-0.868];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org]
X-Rspamd-Queue-Id: 67228411842
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCAyMDI2LTAxLTEzIGF0IDE2OjE2ICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBVc2luZyB0aGUgaW5saW5lIGxvY2sgaXMgbm93IHRoZSByZWNvbW1lbmRlZCB3YXkgZm9y
IGRtYV9mZW5jZSBpbXBsZW1lbnRhdGlvbnMuDQo+IA0KPiBGb3IgdGhlIHNjaGVkdWxlciBmZW5j
ZSB1c2UgdGhlIGlubGluZSBsb2NrIGZvciB0aGUgc2NoZWR1bGVkIGZlbmNlIHBhcnQNCj4gYW5k
IHRoZW4gdGhlIGxvY2sgZnJvbSB0aGUgc2NoZWR1bGVkIGZlbmNlIGFzIGV4dGVybmFsIGxvY2sg
Zm9yIHRoZSBmaW5pc2hlZCBmZW5jZS4NCj4gDQo+IFRoaXMgd2F5IHRoZXJlIGlzIG5vIGZ1bmN0
aW9uYWwgZGlmZmVyZW5jZSwgZXhjZXB0IGZvciBzYXZpbmcgdGhlIHNwYWNlDQo+IGZvciB0aGUg
c2VwYXJhdGUgbG9jay4NCj4gDQo+IHYyOiByZS13b3JrIHRoZSBwYXRjaCB0byBhdm9pZCBhbnkg
ZnVuY3Rpb25hbCBkaWZmZXJlbmNlDQoNCipjb3VnaCBjb3VnaCoNCg0KPiANCj4gU2lnbmVkLW9m
Zi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiAtLS0N
Cj4gwqBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2ZlbmNlLmMgfCA2ICsrKy0tLQ0K
PiDCoGluY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8
IDQgLS0tLQ0KPiDCoDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRf
ZmVuY2UuYyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYw0KPiBpbmRl
eCA3MjRkNzc2OTQyNDYuLjExMjY3NzIzMWY5YSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL3NjaGVkdWxlci9zY2hlZF9mZW5jZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hl
ZHVsZXIvc2NoZWRfZmVuY2UuYw0KPiBAQCAtMjE3LDcgKzIxNyw2IEBAIHN0cnVjdCBkcm1fc2No
ZWRfZmVuY2UgKmRybV9zY2hlZF9mZW5jZV9hbGxvYyhzdHJ1Y3QgZHJtX3NjaGVkX2VudGl0eSAq
ZW50aXR5LA0KPiDCoA0KPiDCoAlmZW5jZS0+b3duZXIgPSBvd25lcjsNCj4gwqAJZmVuY2UtPmRy
bV9jbGllbnRfaWQgPSBkcm1fY2xpZW50X2lkOw0KPiAtCXNwaW5fbG9ja19pbml0KCZmZW5jZS0+
bG9jayk7DQo+IMKgDQo+IMKgCXJldHVybiBmZW5jZTsNCj4gwqB9DQo+IEBAIC0yMzAsOSArMjI5
LDEwIEBAIHZvaWQgZHJtX3NjaGVkX2ZlbmNlX2luaXQoc3RydWN0IGRybV9zY2hlZF9mZW5jZSAq
ZmVuY2UsDQo+IMKgCWZlbmNlLT5zY2hlZCA9IGVudGl0eS0+cnEtPnNjaGVkOw0KPiDCoAlzZXEg
PSBhdG9taWNfaW5jX3JldHVybigmZW50aXR5LT5mZW5jZV9zZXEpOw0KPiDCoAlkbWFfZmVuY2Vf
aW5pdCgmZmVuY2UtPnNjaGVkdWxlZCwgJmRybV9zY2hlZF9mZW5jZV9vcHNfc2NoZWR1bGVkLA0K
PiAtCQnCoMKgwqDCoMKgwqAgJmZlbmNlLT5sb2NrLCBlbnRpdHktPmZlbmNlX2NvbnRleHQsIHNl
cSk7DQo+ICsJCcKgwqDCoMKgwqDCoCBOVUxMLCBlbnRpdHktPmZlbmNlX2NvbnRleHQsIHNlcSk7
DQo+IMKgCWRtYV9mZW5jZV9pbml0KCZmZW5jZS0+ZmluaXNoZWQsICZkcm1fc2NoZWRfZmVuY2Vf
b3BzX2ZpbmlzaGVkLA0KPiAtCQnCoMKgwqDCoMKgwqAgJmZlbmNlLT5sb2NrLCBlbnRpdHktPmZl
bmNlX2NvbnRleHQgKyAxLCBzZXEpOw0KPiArCQnCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX3NwaW5s
b2NrKCZmZW5jZS0+c2NoZWR1bGVkKSwNCg0KSSB0aGluayB3aGlsZSB5b3UgYXJlIGNvcnJlY3Qg
dGhhdCB0aGlzIGlzIG5vIGZ1bmN0aW9uYWwgZGlmZmVyZW5jZSwgaXQNCmlzIHN0aWxsIGEgYmFk
IGlkZWEgd2hpY2ggdmlvbGF0ZXMgdGhlIGVudGlyZSBpZGVhIG9mIHlvdXIgc2VyaWVzOg0KDQpB
bGwgZmVuY2VzIGFyZSBub3cgaW5kZXBlbmRlbnQgZnJvbSBlYWNoIG90aGVyIGFuZCB0aGUgZmVu
Y2UgY29udGV4dCDigJMNCmV4Y2VwdCBmb3IgdGhvc2UgdHdvLg0KDQpTb21lIGZlbmNlcyBhcmUg
bW9yZSBlcXVhbCB0aGFuIG90aGVycyA7KQ0KDQpCeSBpbXBsZW1lbnRpbmcgdGhpcywgeW91IHdv
dWxkIGFsc28gc2hvdyB0byBwZW9wbGUgYnJvd3NpbmcgdGhlIGNvZGUNCnRoYXQgaXQgY2FuIGJl
IGEgZ29vZCBpZGVhIG9yIGNhbiBiZSBkb25lIHRvIGhhdmUgZmVuY2VzIHNoYXJlIGxvY2tzLg0K
RG8geW91IHdhbnQgdGhhdD8NCg0KQXMgZmFyIGFzIEkgaGF2ZSBsZWFybmVkIGZyb20geW91IGFu
ZCBvdXIgZGlzY3Vzc2lvbnMsIHRoYXQgd291bGQgYmUgYQ0KdmVyeSBib21iYXN0aWMgdmlvbGF0
aW9uIG9mIHRoZSBzYWNyZWQgImRtYS1mZW5jZS1ydWxlcyIuDQoNCkkgYmVsaWV2ZSBpdCdzIGRl
ZmluaXRlbHkgd29ydGggc2FjcmlmaWNpbmcgc29tZSBieXRlcyBzbyB0aGF0IHRob3NlDQp0d28g
ZmVuY2VzIGdldCBmdWxseSBkZWNvdXBsZWQuIFdobyB3aWxsIGhhdmUgaXQgb24gdGhlaXIgcmFk
YXIgdGhhdA0KdGhleSBhcmUgc3BlY2lhbD8gVGhpbmsgYWJvdXQgZnV0dXJlIHJld29ya3MuDQoN
Cg0KQmVzaWRlcyB0aGF0LCBubyBvYmplY3Rpb25zIGZyb20gbXkgc2lkZS4NCg0KDQpQLg0KDQo+
ICsJCcKgwqDCoMKgwqDCoCBlbnRpdHktPmZlbmNlX2NvbnRleHQgKyAxLCBzZXEpOw0KPiDCoH0N
Cj4gwqANCj4gwqBtb2R1bGVfaW5pdChkcm1fc2NoZWRfZmVuY2Vfc2xhYl9pbml0KTsNCj4gZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaCBiL2luY2x1ZGUvZHJtL2dwdV9z
Y2hlZHVsZXIuaA0KPiBpbmRleCA3OGUwN2MyNTA3YzcuLmFkMzcwNDY4NTE2MyAxMDA2NDQNCj4g
LS0tIGEvaW5jbHVkZS9kcm0vZ3B1X3NjaGVkdWxlci5oDQo+ICsrKyBiL2luY2x1ZGUvZHJtL2dw
dV9zY2hlZHVsZXIuaA0KPiBAQCAtMjk3LDEwICsyOTcsNiBAQCBzdHJ1Y3QgZHJtX3NjaGVkX2Zl
bmNlIHsNCj4gwqDCoMKgwqDCoMKgwqDCoMKgICogYmVsb25ncyB0by4NCj4gwqDCoMKgwqDCoMKg
wqDCoMKgICovDQo+IMKgCXN0cnVjdCBkcm1fZ3B1X3NjaGVkdWxlcgkqc2NoZWQ7DQo+IC3CoMKg
wqDCoMKgwqDCoCAvKioNCj4gLcKgwqDCoMKgwqDCoMKgwqAgKiBAbG9jazogdGhlIGxvY2sgdXNl
ZCBieSB0aGUgc2NoZWR1bGVkIGFuZCB0aGUgZmluaXNoZWQgZmVuY2VzLg0KPiAtwqDCoMKgwqDC
oMKgwqDCoCAqLw0KPiAtCXNwaW5sb2NrX3QJCQlsb2NrOw0KPiDCoMKgwqDCoMKgwqDCoMKgIC8q
Kg0KPiDCoMKgwqDCoMKgwqDCoMKgwqAgKiBAb3duZXI6IGpvYiBvd25lciBmb3IgZGVidWdnaW5n
DQo+IMKgwqDCoMKgwqDCoMKgwqDCoCAqLw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
