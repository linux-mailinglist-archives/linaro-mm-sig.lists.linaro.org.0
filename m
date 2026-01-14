Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBjIOvYL4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:19:02 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE87411919
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:19:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BC786405D1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:19:01 +0000 (UTC)
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	by lists.linaro.org (Postfix) with ESMTPS id CD5943E90F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Jan 2026 12:40:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=Dm2TZgAR;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp102.mailbox.org (smtp102.mailbox.org [IPv6:2001:67c:2050:b231:465::102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4drm1F5T3Cz9v3Z;
	Wed, 14 Jan 2026 13:40:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1768394434; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YYwk5I7lCjtpTJxINlVPUjkdn63pKMy0eMV22ROGxik=;
	b=Dm2TZgAR7SeAtIzgfB4iUY8y+nae71U4SBJLnH4xKBERkjFeAOQ4Vbbh8cw4dAjtdIotE2
	pOk82rr3hoT9fx9YP1lHVY2YqsSca0+hHU4umkuTbpILHEu1IAHzMKrR2eqXCmI53hIYfr
	+TzXAyV+VSJEJtjTkiS5rCWl2oSMtkcfl899ctRCxN+EQX2nuD1Rs54GluqxHmDKK/gHhy
	hqVUqmtmUtPiP5fQhy/rfIi3lYcpr/p/ZPkk1FUbZzkx+UmiUTB5U6Tgg1IqZK3mQwczrm
	hqQJfXFIRZFpsQteyldJs3an+dC3DdV/Lo+I0ibDBzjNCRfCvY6Fs/GdP34eOQ==
Message-ID: <6afa04f1f5f0908216e9b2bdca26cdd5954ddf69.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	phasta@kernel.org, tursulin@ursulin.net, matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Wed, 14 Jan 2026 13:40:28 +0100
In-Reply-To: <b9c8ec64-ed96-4eaf-9e30-a98dfdd26b5a@gmail.com>
References: <20260113152125.47380-1-christian.koenig@amd.com>
	 <20260113152125.47380-11-christian.koenig@amd.com>
	 <c8c362d73d4f2cff9be685184186a6f3368939f1.camel@mailbox.org>
	 <b9c8ec64-ed96-4eaf-9e30-a98dfdd26b5a@gmail.com>
MIME-Version: 1.0
X-MBO-RS-ID: 19447328edda3a80dec
X-MBO-RS-META: uoerzmctcnsz5dy4t6i8okrcdaps8uxf
X-Spamd-Bar: ----
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: F5RF6CG3G64EVQTARBB4XDVKKNVBKO6Q
X-Message-ID-Hash: F5RF6CG3G64EVQTARBB4XDVKKNVBKO6Q
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:12:02 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 10/10] drm/sched: use inline locks for the drm-sched-fence v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F5RF6CG3G64EVQTARBB4XDVKKNVBKO6Q/>
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
	DATE_IN_PAST(1.00)[2211];
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
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,ursulin.net,intel.com,linaro.org];
	DKIM_TRACE(0.00)[mailbox.org:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.902];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,mailbox.org:mid,linaro.org:email,amd.com:email]
X-Rspamd-Queue-Id: ADE87411919
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCAyMDI2LTAxLTE0IGF0IDEyOjMwICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBPbiAxLzEzLzI2IDE3OjEyLCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6DQo+ID4gT24gVHVl
LCAyMDI2LTAxLTEzIGF0IDE2OjE2ICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiA+
ID4gVXNpbmcgdGhlIGlubGluZSBsb2NrIGlzIG5vdyB0aGUgcmVjb21tZW5kZWQgd2F5IGZvciBk
bWFfZmVuY2UgaW1wbGVtZW50YXRpb25zLg0KPiA+ID4gDQo+ID4gPiBGb3IgdGhlIHNjaGVkdWxl
ciBmZW5jZSB1c2UgdGhlIGlubGluZSBsb2NrIGZvciB0aGUgc2NoZWR1bGVkIGZlbmNlIHBhcnQN
Cj4gPiA+IGFuZCB0aGVuIHRoZSBsb2NrIGZyb20gdGhlIHNjaGVkdWxlZCBmZW5jZSBhcyBleHRl
cm5hbCBsb2NrIGZvciB0aGUgZmluaXNoZWQgZmVuY2UuDQo+ID4gPiANCj4gPiA+IFRoaXMgd2F5
IHRoZXJlIGlzIG5vIGZ1bmN0aW9uYWwgZGlmZmVyZW5jZSwgZXhjZXB0IGZvciBzYXZpbmcgdGhl
IHNwYWNlDQo+ID4gPiBmb3IgdGhlIHNlcGFyYXRlIGxvY2suDQo+ID4gPiANCj4gPiA+IHYyOiBy
ZS13b3JrIHRoZSBwYXRjaCB0byBhdm9pZCBhbnkgZnVuY3Rpb25hbCBkaWZmZXJlbmNlDQo+ID4g
DQo+ID4gKmNvdWdoIGNvdWdoKg0KPiA+IA0KPiA+ID4gDQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+ID4gPiAtLS0NCj4g
PiA+IMKgZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9mZW5jZS5jIHwgNiArKystLS0N
Cj4gPiA+IMKgaW5jbHVkZS9kcm0vZ3B1X3NjaGVkdWxlci5owqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHwgNCAtLS0tDQo+ID4gPiDCoDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA3
IGRlbGV0aW9ucygtKQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L3NjaGVkdWxlci9zY2hlZF9mZW5jZS5jIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hl
ZF9mZW5jZS5jDQo+ID4gPiBpbmRleCA3MjRkNzc2OTQyNDYuLjExMjY3NzIzMWY5YSAxMDA2NDQN
Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYw0KPiA+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9mZW5jZS5jDQo+ID4gPiBA
QCAtMjE3LDcgKzIxNyw2IEBAIHN0cnVjdCBkcm1fc2NoZWRfZmVuY2UgKmRybV9zY2hlZF9mZW5j
ZV9hbGxvYyhzdHJ1Y3QgZHJtX3NjaGVkX2VudGl0eSAqZW50aXR5LA0KPiA+ID4gwqANCj4gPiA+
IMKgCWZlbmNlLT5vd25lciA9IG93bmVyOw0KPiA+ID4gwqAJZmVuY2UtPmRybV9jbGllbnRfaWQg
PSBkcm1fY2xpZW50X2lkOw0KPiA+ID4gLQlzcGluX2xvY2tfaW5pdCgmZmVuY2UtPmxvY2spOw0K
PiA+ID4gwqANCj4gPiA+IMKgCXJldHVybiBmZW5jZTsNCj4gPiA+IMKgfQ0KPiA+ID4gQEAgLTIz
MCw5ICsyMjksMTAgQEAgdm9pZCBkcm1fc2NoZWRfZmVuY2VfaW5pdChzdHJ1Y3QgZHJtX3NjaGVk
X2ZlbmNlICpmZW5jZSwNCj4gPiA+IMKgCWZlbmNlLT5zY2hlZCA9IGVudGl0eS0+cnEtPnNjaGVk
Ow0KPiA+ID4gwqAJc2VxID0gYXRvbWljX2luY19yZXR1cm4oJmVudGl0eS0+ZmVuY2Vfc2VxKTsN
Cj4gPiA+IMKgCWRtYV9mZW5jZV9pbml0KCZmZW5jZS0+c2NoZWR1bGVkLCAmZHJtX3NjaGVkX2Zl
bmNlX29wc19zY2hlZHVsZWQsDQo+ID4gPiAtCQnCoMKgwqDCoMKgwqAgJmZlbmNlLT5sb2NrLCBl
bnRpdHktPmZlbmNlX2NvbnRleHQsIHNlcSk7DQo+ID4gPiArCQnCoMKgwqDCoMKgwqAgTlVMTCwg
ZW50aXR5LT5mZW5jZV9jb250ZXh0LCBzZXEpOw0KPiA+ID4gwqAJZG1hX2ZlbmNlX2luaXQoJmZl
bmNlLT5maW5pc2hlZCwgJmRybV9zY2hlZF9mZW5jZV9vcHNfZmluaXNoZWQsDQo+ID4gPiAtCQnC
oMKgwqDCoMKgwqAgJmZlbmNlLT5sb2NrLCBlbnRpdHktPmZlbmNlX2NvbnRleHQgKyAxLCBzZXEp
Ow0KPiA+ID4gKwkJwqDCoMKgwqDCoMKgIGRtYV9mZW5jZV9zcGlubG9jaygmZmVuY2UtPnNjaGVk
dWxlZCksDQo+ID4gDQo+ID4gSSB0aGluayB3aGlsZSB5b3UgYXJlIGNvcnJlY3QgdGhhdCB0aGlz
IGlzIG5vIGZ1bmN0aW9uYWwgZGlmZmVyZW5jZSwgaXQNCj4gPiBpcyBzdGlsbCBhIGJhZCBpZGVh
IHdoaWNoIHZpb2xhdGVzIHRoZSBlbnRpcmUgaWRlYSBvZiB5b3VyIHNlcmllczoNCj4gPiANCj4g
PiBBbGwgZmVuY2VzIGFyZSBub3cgaW5kZXBlbmRlbnQgZnJvbSBlYWNoIG90aGVyIGFuZCB0aGUg
ZmVuY2UgY29udGV4dCDigJMNCj4gPiBleGNlcHQgZm9yIHRob3NlIHR3by4NCj4gPiANCj4gPiBT
b21lIGZlbmNlcyBhcmUgbW9yZSBlcXVhbCB0aGFuIG90aGVycyA7KQ0KPiANCj4gWWVhaCwgSSB3
YXMgZ29pbmcgYmFjayBhbmQgZm9ydGggb25jZSBtb3JlIGlmIEkgc2hvdWxkIGtlZXAgdGhpcyBw
YXRjaCBhdCBhbGwgb3IganVzdCBkcm9wIGl0Lg0KPiANCj4gPiBCeSBpbXBsZW1lbnRpbmcgdGhp
cywgeW91IHdvdWxkIGFsc28gc2hvdyB0byBwZW9wbGUgYnJvd3NpbmcgdGhlIGNvZGUNCj4gPiB0
aGF0IGl0IGNhbiBiZSBhIGdvb2QgaWRlYSBvciBjYW4gYmUgZG9uZSB0byBoYXZlIGZlbmNlcyBz
aGFyZSBsb2Nrcy4NCj4gPiBEbyB5b3Ugd2FudCB0aGF0Pw0KPiANCj4gR29vZCBxdWVzdGlvbi4g
Rm9yIGFsbW9zdCBhbGwgY2FzZXMgd2UgZG9uJ3Qgd2FudCB0aGlzLCBidXQgb25jZSBtb3JlIHRo
ZSBzY2hlZHVsZXIgaXMgc3BlY2lhbC4NCj4gDQo+IEluIHRoZSBzY2hlZHVsZXIgd2UgaGF2ZSB0
d28gZmVuY2VzIGluIG9uZSwgdGhlIHNjaGVkdWxlZCBvbmUgYW5kIHRoZSBmaW5pc2hlZCBvbmUu
DQo+IA0KPiBTbyBoZXJlIGl0IHRlY2huaWNhbGx5IG1ha2VzIHNlbnNlIHRvIGhhdmUgdGhpcyBj
b25zdHJ1Y3QgdG8gYmUgZGVmZW5zaXZlLg0KPiANCj4gQnV0IG9uIHRoZSBvdGhlciBoYW5kIGl0
IGhhcyBubyBwcmFjdGljYWwgdmFsdWUgYmVjYXVzZSBpdCBzdGlsbCBkb2Vzbid0IGFsbG93IHVz
IHRvIHVubG9hZCB0aGUgc2NoZWR1bGVyIG1vZHVsZS4gV2Ugd291bGQgbmVlZCBhIG11Y2ggd2lk
ZXIgcmV3b3JrIGZvciBiZWluZyBhYmxlIHRvIGRvIHRoYXQuDQo+IA0KPiBTbyBtYXliZSBJIHNo
b3VsZCBqdXN0IHJlYWxseSBkcm9wIHRoaXMgcGF0Y2ggb3IgYXQgbGVhc3Qga2VlcCBpdCBiYWNr
IHVudGlsIHdlIGhhZCB0aW1lIHRvIGZpZ3VyZSBvdXQgd2hhdCB0aGUgbmV4dCBzdGVwcyBhcmUu
DQo+IA0KPiA+IEFzIGZhciBhcyBJIGhhdmUgbGVhcm5lZCBmcm9tIHlvdSBhbmQgb3VyIGRpc2N1
c3Npb25zLCB0aGF0IHdvdWxkIGJlIGENCj4gPiB2ZXJ5IGJvbWJhc3RpYyB2aW9sYXRpb24gb2Yg
dGhlIHNhY3JlZCAiZG1hLWZlbmNlLXJ1bGVzIi4NCj4gDQo+IFdlbGwgdXNpbmcgdGhlIGlubGlu
ZSBmZW5jZSBpcyAib25seSIgYSBzdHJvbmcgcmVjb21tZW5kYXRpb24uIEl0J3Mgbm90IGFzIGhl
YXZ5IGFzIHRoZSBzaWduYWxpbmcgcnVsZXMgYmVjYXVzZSB3aGVuIHlvdSBtZXNzIHVwIHRob3Nl
IHlvdSBjYW4gZWFzaWx5IGtpbGwgdGhlIHdob2xlIHN5c3RlbS4NCj4gDQo+ID4gSSBiZWxpZXZl
IGl0J3MgZGVmaW5pdGVseSB3b3J0aCBzYWNyaWZpY2luZyBzb21lIGJ5dGVzIHNvIHRoYXQgdGhv
c2UNCj4gPiB0d28gZmVuY2VzIGdldCBmdWxseSBkZWNvdXBsZWQuIFdobyB3aWxsIGhhdmUgaXQg
b24gdGhlaXIgcmFkYXIgdGhhdA0KPiA+IHRoZXkgYXJlIHNwZWNpYWw/IFRoaW5rIGFib3V0IGZ1
dHVyZSByZXdvcmtzLg0KPiANCj4gVGhpcyBkb2Vzbid0IGV2ZW4gc2F2ZSBhbnkgYnl0ZXMsIG15
IHRoaW5raW5nIHdhcyBtb3JlIHRoYXQgdGhpcyBpcyB0aGUgbW9yZSBkZWZlbnNpdmUgYXBwcm9h
Y2ggc2hvdWxkIGFueWJvZHkgdXNlIHRoZSBzcGlubG9jayBwb2ludGVyIGZyb20gdGhlIHNjaGVk
dWxlciBmZW5jZSB0byBkbyBzb21lIGxvY2tpbmcuDQo+IA0KDQpVc2luZyB0aGUgc2NoZWR1bGVy
J3MgaW50ZXJuYWwgbG9ja3MgaXMgbm90IGxlZ2FsIChhbnltb3JlKS4gV2l0aCB0aGUNCnNjaGVk
X2ZlbmNlIGl0J3MgYSBiaXQgc3BlY2lhbCB0aG91Z2ggYmVjYXVzZSB0aGF0IGlzIHRoZQ0Kc3lu
Y2hyb25pemF0aW9uIG9iamVjdCBmb3IgdGhlIGRyaXZlciwgYWN0dWFsbHkuIFNvIEkgZG9uJ3Qg
a25vdw0KZWl0aGVyLg0KDQpJIHdvdWxkIHNheSBlaXRoZXIgc2VwYXJhdGUgdGhlIGxvY2tzLCBv
ciBkcm9wIHRoZSBwYXRjaCBhcyB5b3UNCnN1Z2dlc3QuDQoNCg0KUC4NCg0KPiA+IEJlc2lkZXMg
dGhhdCwgbm8gb2JqZWN0aW9ucyBmcm9tIG15IHNpZGUuDQo+IA0KPiBUaGFua3MsDQo+IENocmlz
dGlhbi4NCj4gDQo+ID4gDQo+ID4gDQo+ID4gUC4NCj4gPiANCj4gPiA+ICsJCcKgwqDCoMKgwqDC
oCBlbnRpdHktPmZlbmNlX2NvbnRleHQgKyAxLCBzZXEpOw0KPiA+ID4gwqB9DQo+ID4gPiDCoA0K
PiA+ID4gwqBtb2R1bGVfaW5pdChkcm1fc2NoZWRfZmVuY2Vfc2xhYl9pbml0KTsNCj4gPiA+IGRp
ZmYgLS1naXQgYS9pbmNsdWRlL2RybS9ncHVfc2NoZWR1bGVyLmggYi9pbmNsdWRlL2RybS9ncHVf
c2NoZWR1bGVyLmgNCj4gPiA+IGluZGV4IDc4ZTA3YzI1MDdjNy4uYWQzNzA0Njg1MTYzIDEwMDY0
NA0KPiA+ID4gLS0tIGEvaW5jbHVkZS9kcm0vZ3B1X3NjaGVkdWxlci5oDQo+ID4gPiArKysgYi9p
bmNsdWRlL2RybS9ncHVfc2NoZWR1bGVyLmgNCj4gPiA+IEBAIC0yOTcsMTAgKzI5Nyw2IEBAIHN0
cnVjdCBkcm1fc2NoZWRfZmVuY2Ugew0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgICogYmVsb25n
cyB0by4NCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoCAqLw0KPiA+ID4gwqAJc3RydWN0IGRybV9n
cHVfc2NoZWR1bGVyCSpzY2hlZDsNCj4gPiA+IC3CoMKgwqDCoMKgwqDCoCAvKioNCj4gPiA+IC3C
oMKgwqDCoMKgwqDCoMKgICogQGxvY2s6IHRoZSBsb2NrIHVzZWQgYnkgdGhlIHNjaGVkdWxlZCBh
bmQgdGhlIGZpbmlzaGVkIGZlbmNlcy4NCj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgICovDQo+ID4g
PiAtCXNwaW5sb2NrX3QJCQlsb2NrOw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoCAvKioNCj4gPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoCAqIEBvd25lcjogam9iIG93bmVyIGZvciBkZWJ1Z2dpbmcNCj4g
PiA+IMKgwqDCoMKgwqDCoMKgwqDCoCAqLw0KPiA+IA0KPiANCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
