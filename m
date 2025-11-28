Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eFHgBW4B4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:34:06 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1BC410EB0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:34:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D1244444B4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:34:04 +0000 (UTC)
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	by lists.linaro.org (Postfix) with ESMTPS id AF0D33F80B
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Nov 2025 10:11:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=QnFkow+8;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4dHpwS3YDSz9sdZ;
	Fri, 28 Nov 2025 11:11:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1764324664; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=diyPQXL2Qw5FDt7Bp6VAknCUIYnOUGOR+UNKfDdY3pk=;
	b=QnFkow+8knOc6MGgdlNbHOPaNpn98fyeV4U6Thpb0+aAqIuPJvUphwsYP/DFqJmxkqvRJ8
	M0jWW37hrwAD9jwJfBx2lhRZckFTgJvUOkPAxbzXMAs/g+HH/8xH9rPQNGhs26l6oy+vWM
	tWHzgnJgguKlFRSsG9ckKkCZkOuspIBTmaPguADzN0ERYb62h51BnE4GXDXlnt9fHN1Ubj
	8kOJL81mw6ZIKI8Ecvjwj9FzT5UcnGHzlglmjV5+O4LrSTHia68P6TVfDA8BwoIKDUMj7P
	AXFUyXKSBR07zpC9zpZEsMMzw+QaSwwgG2Nq+xhGvXb/k7RGlg+73SLNx5dolQ==
Message-ID: <29754f848abcf7aebf7950862ef780362034fcf2.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 phasta@kernel.org, alexdeucher@gmail.com, simona.vetter@ffwll.ch,
 tursulin@ursulin.net, matthew.brost@intel.com,
 dri-devel@lists.freedesktop.org,  amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,  sumit.semwal@linaro.org
Date: Fri, 28 Nov 2025 11:10:56 +0100
In-Reply-To: <30c8a395-6870-4787-a954-6c9cbc68be62@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
	 <20251113145332.16805-14-christian.koenig@amd.com>
	 <3cf92ff5fa9c9c73c8464434b0e8e13e402091fd.camel@mailbox.org>
	 <30c8a395-6870-4787-a954-6c9cbc68be62@amd.com>
MIME-Version: 1.0
X-MBO-RS-ID: 273c6748449d38d7929
X-MBO-RS-META: pupishafmnrirwwugygfw5qb4p4a3kom
X-Spamd-Bar: ----
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2WAYLNQYEHKICDP4J4K5SMUH3FZFLT5X
X-Message-ID-Hash: 2WAYLNQYEHKICDP4J4K5SMUH3FZFLT5X
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:21 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 13/18] drm/amdgpu: independence for the amdkfd_fence! v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2WAYLNQYEHKICDP4J4K5SMUH3FZFLT5X/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[3341];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,kernel.org,gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	DKIM_TRACE(0.00)[mailbox.org:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email,linaro.org:email]
X-Rspamd-Queue-Id: BF1BC410EB0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCAyMDI1LTExLTI4IGF0IDExOjA2ICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBPbiAxMS8yNy8yNSAxMjoxMCwgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPiA+IE9uIFRo
dSwgMjAyNS0xMS0xMyBhdCAxNTo1MSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4g
PiA+IFRoaXMgc2hvdWxkIGFsbG93IGFtZGtmZF9mZW5jZXMgdG8gb3V0bGl2ZSB0aGUgYW1kZ3B1
IG1vZHVsZS4NCj4gPiA+IA0KPiA+ID4gdjI6IGltcGxlbWVudCBGZWxpeCBzdWdnZXN0aW9uIHRv
IGxvY2sgdGhlIGZlbmNlIHdoaWxlIHNpZ25hbGluZyBpdC4NCj4gPiA+IA0KPiA+ID4gU2lnbmVk
LW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiA+
ID4gLS0tDQo+ID4gPiANCj4gPiA+IA0KDQpb4oCmXQ0KDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRrZmQva2ZkX3Byb2Nlc3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1ka2ZkL2tmZF9wcm9jZXNzLmMNCj4gPiA+IGluZGV4IGEwODVmYWFjOWZlMS4uOGZhYzcw
YjgzOWVkIDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRrZmQva2Zk
X3Byb2Nlc3MuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRrZmQva2ZkX3By
b2Nlc3MuYw0KPiA+ID4gQEAgLTExNzMsNyArMTE3Myw3IEBAIHN0YXRpYyB2b2lkIGtmZF9wcm9j
ZXNzX3dxX3JlbGVhc2Uoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQ0KPiA+ID4gwqAJc3luY2hy
b25pemVfcmN1KCk7DQo+ID4gPiDCoAllZiA9IHJjdV9hY2Nlc3NfcG9pbnRlcihwLT5lZik7DQo+
ID4gPiDCoAlpZiAoZWYpDQo+ID4gPiAtCQlkbWFfZmVuY2Vfc2lnbmFsKGVmKTsNCj4gPiA+ICsJ
CWFtZGtmZF9mZW5jZV9zaWduYWwoZWYpOw0KPiA+ID4gwqANCj4gPiA+IMKgCWtmZF9wcm9jZXNz
X3JlbW92ZV9zeXNmcyhwKTsNCj4gPiA+IMKgCWtmZF9kZWJ1Z2ZzX3JlbW92ZV9wcm9jZXNzKHAp
Ow0KPiA+ID4gQEAgLTE5OTAsNyArMTk5MCw2IEBAIGtmZF9wcm9jZXNzX2dwdWlkX2Zyb21fbm9k
ZShzdHJ1Y3Qga2ZkX3Byb2Nlc3MgKnAsIHN0cnVjdCBrZmRfbm9kZSAqbm9kZSwNCj4gPiA+IMKg
c3RhdGljIGludCBzaWduYWxfZXZpY3Rpb25fZmVuY2Uoc3RydWN0IGtmZF9wcm9jZXNzICpwKQ0K
PiA+ID4gwqB7DQo+ID4gPiDCoAlzdHJ1Y3QgZG1hX2ZlbmNlICplZjsNCj4gPiA+IC0JaW50IHJl
dDsNCj4gPiA+IMKgDQo+ID4gPiDCoAlyY3VfcmVhZF9sb2NrKCk7DQo+ID4gPiDCoAllZiA9IGRt
YV9mZW5jZV9nZXRfcmN1X3NhZmUoJnAtPmVmKTsNCj4gPiA+IEBAIC0xOTk4LDEwICsxOTk3LDEw
IEBAIHN0YXRpYyBpbnQgc2lnbmFsX2V2aWN0aW9uX2ZlbmNlKHN0cnVjdCBrZmRfcHJvY2VzcyAq
cCkNCj4gPiA+IMKgCWlmICghZWYpDQo+ID4gPiDCoAkJcmV0dXJuIC1FSU5WQUw7DQo+ID4gPiDC
oA0KPiA+ID4gLQlyZXQgPSBkbWFfZmVuY2Vfc2lnbmFsKGVmKTsNCj4gPiA+ICsJYW1ka2ZkX2Zl
bmNlX3NpZ25hbChlZik7DQo+ID4gPiDCoAlkbWFfZmVuY2VfcHV0KGVmKTsNCj4gPiA+IMKgDQo+
ID4gPiAtCXJldHVybiByZXQ7DQo+ID4gPiArCXJldHVybiAwOw0KPiA+IA0KPiA+IE9oIHdhaXQs
IHRoYXQncyB0aGUgY29kZSBJJ20gYWxzbyB0b3VjaGluZyBpbiBteSByZXR1cm4gY29kZSBzZXJp
ZXMhDQo+ID4gDQo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsL2NlZjgzZmVk
LTU5OTQtNGM3Ny05NjJjLTljN2FhYzlmNzMwNkBhbWQuY29tLw0KPiA+IA0KPiA+IA0KPiA+IERv
ZXMgdGhpcyBzZXJpZXMgdGhlbiBzb2x2ZSB0aGUgcHJvYmxlbSBGZWxpeCBwb2ludGVkIG91dCBp
bg0KPiA+IGV2aWN0X3Byb2Nlc3Nfd29ya2VyKCk/DQo+IA0KPiBObyBpdCBkb2Vzbid0LCBJIHdh
c24ndCBhd2FyZSB0aGF0IHRoZSBoaWdoZXIgbGV2ZWwgY29kZSBhY3R1YWxseSBuZWVkcyB0aGUg
c3RhdHVzLiBBZnRlciBhbGwgRmVsaXggaXMgdGhlIG1haW50YWluZXIgb2YgdGhpcyBwYXJ0Lg0K
PiANCj4gVGhpcyBwYXRjaCBoZXJlIG5lZWRzIHRvIGJlIHJlYmFzZWQgb24gdG9wIG9mIHlvdXJz
IGFuZCBjaGFuZ2VkIGFjY29yZGluZ2x5IHRvIHN0aWxsIHJldHVybiB0aGUgZmVuY2Ugc3RhdHVz
IGNvcnJlY3RseS4NCj4gDQo+IEJ1dCB0aGFua3MgZm9yIHBvaW50aW5nIHRoYXQgb3V0Lg0KDQoN
CkFscmlnaHQsIHNvIG15IChyZXBhaXJlZCwgdjIpIHN0YXR1cy1jb2RlLXJlbW92YWwgc2VyaWVz
IHNoYWxsIGVudGVyIGRybS1taXNjLW5leHQgZmlyc3QsIGFuZCB0aGVuIHlvdXIgc2VyaWVzIGhl
cmUuIEFDSz8NCg0KDQpQLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
