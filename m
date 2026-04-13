Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cIJOMqxl5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:43:08 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9175B431E3E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:43:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ABBF640536
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:43:07 +0000 (UTC)
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	by lists.linaro.org (Postfix) with ESMTPS id 7CCBB3F83D
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Apr 2026 15:18:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=ET1cPrgC;
	dmarc=pass (policy=reject) header.from=mailbox.org;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.172 as permitted sender) smtp.mailfrom=phasta@mailbox.org
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4fvWJt612kz9sFB;
	Mon, 13 Apr 2026 17:18:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1776093534; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3PxxStrZgBn5ynxD2Aasdb66LvhdbOOKogmOPA4Swtw=;
	b=ET1cPrgCejm8kbB9JjLUf4F9lEGrmlZ7Ki73VXw1EReWS0xZjxIaH6Pl2kKxh/k0Ff/irt
	HSgbg5CRPqfS24CzscNiGJm3Lgq6LNpjImiGKouGO84sDtXpw4ciUo4fJIRnTYE4c092bX
	ahkKsR4vEcq5gQ0dKpwFJHYn6taeG/WjQ9ANCagtPYyhNC8AENyPvlbpn0D2Kwpsh6e6Ts
	NeClMJEKcaF68zWIP+MxBdgDxqiD3K2UkvMCeRkQfnLtK/BuvNLFBZYKcwClLtClps8GM9
	TbParxnU8btGaK2qnjLGbmnAXL4XoXjtFQ32EmJVo147psPj2VnZxvI19qa00g==
Message-ID: <e0d1ac4e4fc69696e42f00dad4a2bbf8a4076c7b.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: =?ISO-8859-1?Q?Ma=EDra?= Canal <mcanal@igalia.com>, phasta@kernel.org,
 Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,  Boris Brezillon
 <boris.brezillon@collabora.com>, Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
Date: Mon, 13 Apr 2026 17:18:51 +0200
In-Reply-To: <a873a7ba-7309-4c80-86c1-2f009365266b@igalia.com>
References: <20260411185756.1887119-4-mcanal@igalia.com>
	 <59759507d4fb89d3726092268f17680998d1b4cf.camel@mailbox.org>
	 <a873a7ba-7309-4c80-86c1-2f009365266b@igalia.com>
MIME-Version: 1.0
X-MBO-RS-ID: 99ea47477b8a6797b98
X-MBO-RS-META: cem96uj5pydkontd8qjn5c1tfzmwqf6q
X-Spamd-Bar: ----
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HT2GNLRFVFKCZBD56AB7SPOQTMNTOURG
X-Message-ID-Hash: HT2GNLRFVFKCZBD56AB7SPOQTMNTOURG
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:42:27 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-dev@igalia.com
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: Clarify external lock use case in dma_fence_init() docs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HT2GNLRFVFKCZBD56AB7SPOQTMNTOURG/>
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
	DATE_IN_PAST(1.00)[170];
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
	FREEMAIL_TO(0.00)[igalia.com,kernel.org,gmail.com,linaro.org,collabora.com];
	DKIM_TRACE(0.00)[mailbox.org:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.485];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:email,linaro.org:email,mailbox.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 9175B431E3E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCAyMDI2LTA0LTEzIGF0IDA5OjAwIC0wMzAwLCBNYcOtcmEgQ2FuYWwgd3JvdGU6DQo+
IEhpIFBoaWxpcHAsDQo+IA0KPiBPbiA0LzEzLzI2IDAzOjQ3LCBQaGlsaXBwIFN0YW5uZXIgd3Jv
dGU6DQo+ID4gT24gU2F0LCAyMDI2LTA0LTExIGF0IDE1OjQ3IC0wMzAwLCBNYcOtcmEgQ2FuYWwg
d3JvdGU6DQo+ID4gPiBUaGUga2VybmVsZG9jIGNvbW1lbnQgb24gZG1hX2ZlbmNlX2luaXQoKSBh
bmQgZG1hX2ZlbmNlX2luaXQ2NCgpIGRlc2NyaWJlDQo+ID4gPiB0aGUgbGVnYWN5IHJlYXNvbiB0
byBwYXNzIGFuIGV4dGVybmFsIGxvY2sgYXMgYSBuZWVkIHRvIHByZXZlbnQgbXVsdGlwbGUNCj4g
PiA+IGZlbmNlcyAiZnJvbSBzaWduYWxpbmcgb3V0IG9mIG9yZGVyIi4gSG93ZXZlciwgdGhpcyB3
b3JkaW5nIGlzIGEgYml0DQo+ID4gPiBtaXNsZWFkaW5nOiBhIHNoYXJlZCBzcGlubG9jayBkb2Vz
IG5vdCAoYW5kIGNhbm5vdCkgcHJldmVudCB0aGUgc2lnbmFsZXINCj4gPiA+IGZyb20gc2lnbmFs
aW5nIG91dCBvZiBvcmRlci4gU2lnbmFsaW5nIG9yZGVyIGlzIHRoZSBkcml2ZXIncyByZXNwb25z
aWJpbGl0eQ0KPiA+ID4gcmVnYXJkbGVzcyBvZiB3aGV0aGVyIHRoZSBsb2NrIGlzIHNoYXJlZCBv
ciBwZXItZmVuY2UuDQo+ID4gPiANCj4gPiA+IFdoYXQgYSBzaGFyZWQgbG9jayBhY3R1YWxseSBw
cm92aWRlcyBpcyBzZXJpYWxpemF0aW9uIG9mIHNpZ25hbGluZyBhbmQNCj4gPiA+IG9ic2VydmF0
aW9uIGFjcm9zcyBmZW5jZXMgaW4gYSBnaXZlbiBjb250ZXh0LCBzbyB0aGF0IG9ic2VydmVycyBu
ZXZlcg0KPiA+ID4gc2VlIGEgbGF0ZXIgZmVuY2Ugc2lnbmFsZWQgd2hpbGUgYW4gZWFybGllciBv
bmUgaXMgbm90Lg0KPiA+ID4gDQo+ID4gPiBSZXdvcmQgYm90aCBjb21tZW50cyB0byBkZXNjcmli
ZSB0aGlzIG1vcmUgYWNjdXJhdGVseS4NCj4gPiA+IA0KPiA+ID4gU2lnbmVkLW9mZi1ieTogTWHD
rXJhIENhbmFsIDxtY2FuYWxAaWdhbGlhLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gDQo+ID4gPiBI
aSwNCj4gPiA+IA0KPiA+ID4gV2hpbGUgcmVhZGluZyB0aGUgZG9jdW1lbnRhdGlvbiwgSSBmb3Vu
ZCB0aGlzIHBhcnRpY3VsYXIgcGFyYWdyYXBoIHF1aXRlDQo+ID4gPiBoYXJkIHRvIHVuZGVyc3Rh
bmQuIEFzIEkgdW5kZXJzdGFuZCBpdCwgbG9ja3MgZG9uJ3QgZW5mb3JjZSBvcmRlciwgb25seQ0K
PiA+ID4gc2VyaWFsaXphdGlvbiwgYnV0IHRoZSBwYXJhZ3JhcGggc2VlbXMgdG8gY29tbXVuaWNh
dGUgdGhlIG90aGVyIHdheSBhcm91bmQuDQo+ID4gDQo+ID4gWWVzLCAxMDAlLg0KPiA+IFRoYXQn
cyBvbmUgb2YgdGhlIHJlYXNvbnMgd2h5IENocmlzdGlhbiByZWNlbnRseSBtb3ZlZCB0byB1c2lu
ZyBpbmxpbmUtDQo+ID4gbG9ja3MuDQo+ID4gDQo+ID4gDQo+ID4gDQo+ID4gPiBEdWUgdG8gdGhh
dCwgSSBoYWQgdGhlIGltcHJlc3Npb24gdGhhdCB0aGUgY3VycmVudCB3b3JkaW5nIGNhbiBiZQ0K
PiA+ID4gbWlzbGVhZGluZyBmb3IgZHJpdmVyIGRldmVsb3BlcnMuDQo+ID4gPiANCj4gPiA+IEkn
bSBwcm9wb3NpbmcgYSBuZXcgd29yZGluZyB0byBiZXR0ZXIgZGVzY3JpYmUgdGhlIHVzZSBjYXNl
IG9mIHRoZQ0KPiA+ID4gZXh0ZXJuYWwgbG9jayBiYXNlZCBvbiBteSB1bmRlcnN0YW5kaW5nLCBi
dXQgaXQgd291bGQgYmUgZ3JlYXQgdG8gaGVhcg0KPiA+ID4gdGhlIGZlZWRiYWNrIGFuZCBzdWdn
ZXN0aW9ucyBmcm9tIG1vcmUgZXhwZXJpZW5jZWQgZGV2ZWxvcGVycyB3aG8gbWlnaHQNCj4gPiA+
IGhhdmUgbW9yZSBpbnNpZ2h0IGFib3V0IHRoZXNlIGxlZ2FjeSB1c2UgY2FzZXMuDQo+ID4gPiAN
Cj4gPiA+IEJlc3QgcmVnYXJkcywNCj4gPiA+IC0gTWHDrXJhDQo+ID4gPiANCj4gPiA+IMKgwqBk
cml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgfCAxMiArKysrKysrKy0tLS0NCj4gPiA+IMKgwqAx
IGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiA+ID4gDQo+
ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS5jDQo+ID4gPiBpbmRleCAxODI2YmE3MzA5NGMuLmJkYzI5ZDFjMWI1
YyAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiA+ID4g
KysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+ID4gPiBAQCAtMTEwMiw4ICsxMTAy
LDEwIEBAIF9fZG1hX2ZlbmNlX2luaXQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNvbnN0IHN0
cnVjdCBkbWFfZmVuY2Vfb3BzICpvcHMsDQo+ID4gPiDCoMKgICogdG8gY2hlY2sgd2hpY2ggZmVu
Y2UgaXMgbGF0ZXIgYnkgc2ltcGx5IHVzaW5nIGRtYV9mZW5jZV9sYXRlcigpLg0KPiA+ID4gwqDC
oCAqDQo+ID4gPiDCoMKgICogSXQgaXMgc3Ryb25nbHkgZGlzY291cmFnZWQgdG8gcHJvdmlkZSBh
biBleHRlcm5hbCBsb2NrIGJlY2F1c2UgdGhpcyBjb3VwbGVzDQo+ID4gPiAtICogbG9jayBhbmQg
ZmVuY2UgbGlmZSB0aW1lLiBUaGlzIGlzIG9ubHkgYWxsb3dlZCBmb3IgbGVnYWN5IHVzZSBjYXNl
cyB3aGVuDQo+ID4gPiAtICogbXVsdGlwbGUgZmVuY2VzIG5lZWQgdG8gYmUgcHJldmVudGVkIGZy
b20gc2lnbmFsaW5nIG91dCBvZiBvcmRlci4NCj4gPiA+ICsgKiBsb2NrIGFuZCBmZW5jZSBsaWZl
dGltZS4gVGhpcyBpcyBvbmx5IGFsbG93ZWQgZm9yIGxlZ2FjeSB1c2UgY2FzZXMgdGhhdCBuZWVk
DQo+ID4gPiArICogYSBzaGFyZWQgbG9jayB0byBzZXJpYWxpemUgc2lnbmFsaW5nIGFuZCBvYnNl
cnZhdGlvbiBvZiBmZW5jZXMgd2l0aGluIGENCj4gPiA+ICsgKiBjb250ZXh0LCBzbyB0aGF0IG9i
c2VydmVycyBuZXZlciBzZWUgYSBsYXRlciBmZW5jZSBzaWduYWxlZCB3aGlsZSBhbiBlYXJsaWVy
DQo+ID4gPiArICogb25lIGlzbid0Lg0KPiA+IA0KPiA+IEkgd291bGQgcHJvYmFibHkgZGVsZXRl
IHRoZSBleHBsYW5hdGlvbiBhbHRvZ2V0aGVyIGFuZCBqdXN0IHN0YXRlDQo+ID4gImFsbG93ZWQg
Zm9yIGxlZ2FjeSByZWFzb25zIi4gVGhlIGxlZ2FjeSBwZW9wbGUga25vdyB3aHkgaXQncyBhbGxv
d2VkLA0KPiA+IGFuZCBuZXcgdXNlcnMgZG9uJ3QgbmVlZCB0byBjYXJlLiBTYW1lIGJlbG93IG9m
IGNvdXJzZS4NCj4gDQo+IEFjdHVhbGx5LCBJIGVuZGVkIHVwIGluIHRoaXMgcGFydCBvZiB0aGUg
ZG9jdW1lbnRhdGlvbiBhcyBJJ20gdGhpbmtpbmcNCj4gYWJvdXQgZHJvcHBpbmcgdGhlIGV4dGVy
bmFsIGxvY2sgaW4gdjNkIGRyaXZlci4gSSB3YXMgcmVhZGluZyB0aGUgZG9jcw0KPiBleGFjdGx5
IHRvIGtub3cgaWYgdjNkIGlzIGEgbGVnYWN5IHVzZSBjYXNlIChzcG9pbGVyOiBpdCBpc24ndCkg
YW5kIEkNCj4gZ290IGNvbmZ1c2VkIGJ5IHRoZSBjdXJyZW50IHdvcmRpbmcuIFNvLCBJIHRoaW5r
IHRoZXJlIGlzIHZhbHVlIGluDQo+IGRvY3VtZW50aW5nIHRoZSBsZWdhY3kgdXNlIGNhc2VzIGZv
ciB0aGUgZXh0ZXJuYWwgbG9jay4NCj4gDQo+IE1heWJlLCBpbnN0ZWFkIG9mICJzdHJvbmdseSBk
aXNjb3VyYWdlZCIsIHdlIGNvdWxkIGFkZCBhIGRpc2NsYWltZXINCj4gbGlrZTogIk5ldyBkcml2
ZXJzIE1VU1QgTk9UIHVzZSBhbiBleHRlcm5hbCBsb2NrIGJlY2F1c2UuLi4iLiBXaGF0IGRvDQo+
IHlvdSB0aGluaz8NCg0KSG1tLiBZZWFoLCBJIG1lYW4geW91IGFyZSByaWdodCB0aGF0IHdoYXQg
dGhlIGxvY2sgd2FzIHN1cHBvc2VkIHRvIGJlDQpnb29kIGZvciB3YXMgbmV2ZXIgcmVhbGx5IGFw
cGxpY2FibGUgYW55d2F5cy4NCg0KVGhpbmtpbmcgYWJvdXQgaXQsIEkgd291bGQgcHJvYmFibHkg
c3RhdGU6DQoNCiJFeHRlcm5hbCBsb2NrcyBhcmUgYSByZWxpYyBmcm9tIGEgcGFzdCBkZXNpZ24g
bWlzdGFrZS4gTmV3IHVzZXJzIG11c3QNCm5vdCB1c2UgZXh0ZXJuYWwgbG9ja3Mgc2luY2UgdGhl
eSBkbyBub3QgcHJvdmlkZSB2YWx1ZSBhbmQgcHJldmVudA0KZmVuY2VzJyBsaWZlIHRpbWUgdG8g
YmUgY29tcGxldGVseSBkZWNvdXBsZWQgZnJvbSB0aGVpciBpc3N1ZXIncy4iDQoNClN0aCBsaWtl
IHRoYXQgc291bmRzIHRvIHRoZSBwb2ludCB0byBtZS4NCg0KDQpQLg0KDQoNCj4gDQo+IEJlc3Qg
cmVnYXJkcywNCj4gLSBNYcOtcmENCj4gDQo+ID4gDQo+ID4gDQo+ID4gVGh4DQo+ID4gUC4NCj4g
PiANCj4gPiA+IMKgwqAgKi8NCj4gPiA+IMKgwqB2b2lkDQo+ID4gPiDCoMKgZG1hX2ZlbmNlX2lu
aXQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzICpv
cHMsDQo+ID4gPiBAQCAtMTEyOSw4ICsxMTMxLDEwIEBAIEVYUE9SVF9TWU1CT0woZG1hX2ZlbmNl
X2luaXQpOw0KPiA+ID4gwqDCoCAqIHRvIGNoZWNrIHdoaWNoIGZlbmNlIGlzIGxhdGVyIGJ5IHNp
bXBseSB1c2luZyBkbWFfZmVuY2VfbGF0ZXIoKS4NCj4gPiA+IMKgwqAgKg0KPiA+ID4gwqDCoCAq
IEl0IGlzIHN0cm9uZ2x5IGRpc2NvdXJhZ2VkIHRvIHByb3ZpZGUgYW4gZXh0ZXJuYWwgbG9jayBi
ZWNhdXNlIHRoaXMgY291cGxlcw0KPiA+ID4gLSAqIGxvY2sgYW5kIGZlbmNlIGxpZmUgdGltZS4g
VGhpcyBpcyBvbmx5IGFsbG93ZWQgZm9yIGxlZ2FjeSB1c2UgY2FzZXMgd2hlbg0KPiA+ID4gLSAq
IG11bHRpcGxlIGZlbmNlcyBuZWVkIHRvIGJlIHByZXZlbnRlZCBmcm9tIHNpZ25hbGluZyBvdXQg
b2Ygb3JkZXIuDQo+ID4gPiArICogbG9jayBhbmQgZmVuY2UgbGlmZXRpbWUuIFRoaXMgaXMgb25s
eSBhbGxvd2VkIGZvciBsZWdhY3kgdXNlIGNhc2VzIHRoYXQgbmVlZA0KPiA+ID4gKyAqIGEgc2hh
cmVkIGxvY2sgdG8gc2VyaWFsaXplIHNpZ25hbGluZyBhbmQgb2JzZXJ2YXRpb24gb2YgZmVuY2Vz
IHdpdGhpbiBhDQo+ID4gPiArICogY29udGV4dCwgc28gdGhhdCBvYnNlcnZlcnMgbmV2ZXIgc2Vl
IGEgbGF0ZXIgZmVuY2Ugc2lnbmFsZWQgd2hpbGUgYW4gZWFybGllcg0KPiA+ID4gKyAqIG9uZSBp
c24ndC4NCj4gPiA+IMKgwqAgKi8NCj4gPiA+IMKgwqB2b2lkDQo+ID4gPiDCoMKgZG1hX2ZlbmNl
X2luaXQ2NChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9v
cHMgKm9wcywNCj4gPiANCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
