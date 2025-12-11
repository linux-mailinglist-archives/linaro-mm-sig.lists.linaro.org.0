Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cEqrK94D4Wn6oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:44:30 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7926E4112A4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:44:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 93E4140F4E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:44:29 +0000 (UTC)
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	by lists.linaro.org (Postfix) with ESMTPS id B4F593F76F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 15:08:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=L0ZpFiyn;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4dRwvv5sG3z9tDp;
	Thu, 11 Dec 2025 16:08:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1765465723; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eqDmg3zc9dwnb6mE7hBkk2nelAbag76EmhON3qlOXtg=;
	b=L0ZpFiyn0hy+CGMIa1KY1WyYKWRekvQJYsYmVbjxNMzBfkVKYEmA7NvlAbiDSRYnPrIgu/
	y+BuRgqEUCFwFXMlf3kTK2JtfZvElQ/IVvkM0I9HuXJXTtqHM+TXRpm1QRJ4+dnQAVlwYL
	H8wTdIOYsFUh+fhKE69jZ1ii8soIjEG38ypQIbcHUv0DjtHF0Mi1Nz0Wh99StLqbW6yrUK
	27qXO+asrrb/KenHChvD3lpCG6JYl/VCP7f88zAL6y4hFn8U4zs1HzvT3GWgmqXFjemixz
	7uZznnop+io3NcP5ynG/6HBK/qhDk66y3c7/9IL/CezLO+Yl6cqdQaZQP6z1vw==
Message-ID: <2ef69b00035fe129bb3f8d4b4b4ad931fa26dc8a.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	tursulin@ursulin.net, matthew.brost@intel.com, sumit.semwal@linaro.org
Date: Thu, 11 Dec 2025 16:08:40 +0100
In-Reply-To: <20251211122407.1709-15-christian.koenig@amd.com>
References: <20251211122407.1709-1-christian.koenig@amd.com>
	 <20251211122407.1709-15-christian.koenig@amd.com>
MIME-Version: 1.0
X-MBO-RS-ID: 5dcc26d3d0b4f4ada74
X-MBO-RS-META: g17zgrig3ns3qcc6sr3sehb4nx4tmdh6
X-Spamd-Bar: ----
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: B7LEBFY5TMOGNYOLRJK5ZTHK7LAGJGDA
X-Message-ID-Hash: B7LEBFY5TMOGNYOLRJK5ZTHK7LAGJGDA
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:44 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 14/19] drm/amdgpu: independence for the amdkfd_fence! v4
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B7LEBFY5TMOGNYOLRJK5ZTHK7LAGJGDA/>
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
	DATE_IN_PAST(1.00)[3024];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ursulin.net,intel.com,linaro.org];
	ARC_NA(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.858];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email];
	MISSING_XM_UA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DKIM_TRACE(0.00)[mailbox.org:-];
	HAS_REPLYTO(0.00)[phasta@kernel.org]
X-Rspamd-Queue-Id: 7926E4112A4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI1LTEyLTExIGF0IDEzOjE2ICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBUaGlzIGFsbG93cyBhbWRrZmRfZmVuY2VzIHRvIG91dGxpdmUgdGhlIGFtZGdwdSBtb2R1
bGUuDQo+IA0KPiB2MjogaW1wbGVtZW50IEZlbGl4IHN1Z2dlc3Rpb24gdG8gbG9jayB0aGUgZmVu
Y2Ugd2hpbGUgc2lnbmFsaW5nIGl0Lg0KPiB2MzogZml4IHR5cG9zDQo+IHY0OiBmaXggcmV0dXJu
IGNvZGUgaW4gc2lnbmFsX2V2aWN0aW9uX2ZlbmNlDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBDaHJp
c3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9hbWRrZmQuaMKgwqDCoCB8wqAgNyArKysNCj4g
wqAuLi4vZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9hbWRrZmRfZmVuY2UuY8KgIHwgNDQgKysr
KysrKysrLS0tLS0tLS0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL2tmZF9wcm9j
ZXNzLmPCoMKgwqDCoMKgIHzCoCAyICstDQo+IMKgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRrZmQv
a2ZkX3N2bS5jwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA0ICstDQo+IMKgNCBmaWxlcyBjaGFuZ2Vk
LCAzMSBpbnNlcnRpb25zKCspLCAyNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYW1ka2ZkLmggYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfYW1ka2ZkLmgNCj4gaW5kZXggOGJkZmNkZTIwMjliLi4yZjJi
Mjc3Y2ZhZWQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9hbWRrZmQuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYW1k
a2ZkLmgNCj4gQEAgLTE5Niw2ICsxOTYsNyBAQCBpbnQga2ZkX2RlYnVnZnNfa2ZkX21lbV9saW1p
dHMoc3RydWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKTsNCj4gwqAjZW5kaWYNCj4gwqAjaWYg
SVNfRU5BQkxFRChDT05GSUdfSFNBX0FNRCkNCj4gwqBib29sIGFtZGtmZF9mZW5jZV9jaGVja19t
bShzdHJ1Y3QgZG1hX2ZlbmNlICpmLCBzdHJ1Y3QgbW1fc3RydWN0ICptbSk7DQo+ICtib29sIGFt
ZGtmZF9mZW5jZV9zaWduYWwoc3RydWN0IGRtYV9mZW5jZSAqZik7DQo+IMKgc3RydWN0IGFtZGdw
dV9hbWRrZmRfZmVuY2UgKnRvX2FtZGdwdV9hbWRrZmRfZmVuY2Uoc3RydWN0IGRtYV9mZW5jZSAq
Zik7DQo+IMKgdm9pZCBhbWRncHVfYW1ka2ZkX3JlbW92ZV9hbGxfZXZpY3Rpb25fZmVuY2VzKHN0
cnVjdCBhbWRncHVfYm8gKmJvKTsNCj4gwqBpbnQgYW1kZ3B1X2FtZGtmZF9ldmljdF91c2VycHRy
KHN0cnVjdCBtbXVfaW50ZXJ2YWxfbm90aWZpZXIgKm1uaSwNCj4gQEAgLTIxMCw2ICsyMTEsMTIg
QEAgYm9vbCBhbWRrZmRfZmVuY2VfY2hlY2tfbW0oc3RydWN0IGRtYV9mZW5jZSAqZiwgc3RydWN0
IG1tX3N0cnVjdCAqbW0pDQo+IMKgCXJldHVybiBmYWxzZTsNCj4gwqB9DQo+IMKgDQo+ICtzdGF0
aWMgaW5saW5lDQo+ICtib29sIGFtZGtmZF9mZW5jZV9zaWduYWwoc3RydWN0IGRtYV9mZW5jZSAq
ZikNCj4gK3sNCj4gKwlyZXR1cm4gZmFsc2U7DQo+ICt9DQoNCkh1aD8gV2hhdCdzIHRoYXQ/DQoN
ClRoYXQgZnVuY3Rpb24gc2VlbXMgdG8gYmUganVzdCBhIE5PUC4gSXQncyByZXR1cm4gY29kZSBp
cyB1c2VkIG5vd2hlcmUsDQppcyBpdD8NCg0KDQoNCj4gKw0KPiDCoHN0YXRpYyBpbmxpbmUNCj4g
wqBzdHJ1Y3QgYW1kZ3B1X2FtZGtmZF9mZW5jZSAqdG9fYW1kZ3B1X2FtZGtmZF9mZW5jZShzdHJ1
Y3QgZG1hX2ZlbmNlICpmKQ0KPiDCoHsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9hbWRrZmRfZmVuY2UuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9hbWRrZmRfZmVuY2UuYw0KPiBpbmRleCAwOWM5MTlmNzJiNmMuLjljZDQxM2Uz
MjVmMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Ft
ZGtmZF9mZW5jZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9h
bWRrZmRfZmVuY2UuYw0KPiBAQCAtMTI3LDI5ICsxMjcsOSBAQCBzdGF0aWMgYm9vbCBhbWRrZmRf
ZmVuY2VfZW5hYmxlX3NpZ25hbGluZyhzdHJ1Y3QgZG1hX2ZlbmNlICpmKQ0KPiDCoAkJaWYgKCFz
dm1fcmFuZ2Vfc2NoZWR1bGVfZXZpY3Rfc3ZtX2JvKGZlbmNlKSkNCj4gwqAJCQlyZXR1cm4gdHJ1
ZTsNCj4gwqAJfQ0KPiAtCXJldHVybiBmYWxzZTsNCj4gLX0NCj4gLQ0KPiAtLyoqDQo+IC0gKiBh
bWRrZmRfZmVuY2VfcmVsZWFzZSAtIGNhbGxiYWNrIHRoYXQgZmVuY2UgY2FuIGJlIGZyZWVkDQo+
IC0gKg0KPiAtICogQGY6IGRtYV9mZW5jZQ0KPiAtICoNCj4gLSAqIFRoaXMgZnVuY3Rpb24gaXMg
Y2FsbGVkIHdoZW4gdGhlIHJlZmVyZW5jZSBjb3VudCBiZWNvbWVzIHplcm8uDQo+IC0gKiBEcm9w
cyB0aGUgbW1fc3RydWN0IHJlZmVyZW5jZSBhbmQgUkNVIHNjaGVkdWxlcyBmcmVlaW5nIHVwIHRo
ZSBmZW5jZS4NCj4gLSAqLw0KPiAtc3RhdGljIHZvaWQgYW1ka2ZkX2ZlbmNlX3JlbGVhc2Uoc3Ry
dWN0IGRtYV9mZW5jZSAqZikNCj4gLXsNCj4gLQlzdHJ1Y3QgYW1kZ3B1X2FtZGtmZF9mZW5jZSAq
ZmVuY2UgPSB0b19hbWRncHVfYW1ka2ZkX2ZlbmNlKGYpOw0KPiAtDQo+IC0JLyogVW5jb25kaXRp
b25hbGx5IHNpZ25hbCB0aGUgZmVuY2UuIFRoZSBwcm9jZXNzIGlzIGdldHRpbmcNCj4gLQkgKiB0
ZXJtaW5hdGVkLg0KPiAtCSAqLw0KPiAtCWlmIChXQVJOX09OKCFmZW5jZSkpDQo+IC0JCXJldHVy
bjsgLyogTm90IGFuIGFtZGdwdV9hbWRrZmRfZmVuY2UgKi8NCj4gLQ0KPiDCoAltbWRyb3AoZmVu
Y2UtPm1tKTsNCj4gLQlrZnJlZV9yY3UoZiwgcmN1KTsNCj4gKwlmZW5jZS0+bW0gPSBOVUxMOw0K
PiArCXJldHVybiBmYWxzZTsNCj4gwqB9DQo+IMKgDQo+IMKgLyoqDQo+IEBAIC0xNzQsOSArMTU0
LDI3IEBAIGJvb2wgYW1ka2ZkX2ZlbmNlX2NoZWNrX21tKHN0cnVjdCBkbWFfZmVuY2UgKmYsIHN0
cnVjdCBtbV9zdHJ1Y3QgKm1tKQ0KPiDCoAlyZXR1cm4gZmFsc2U7DQo+IMKgfQ0KPiDCoA0KPiAr
Ym9vbCBhbWRrZmRfZmVuY2Vfc2lnbmFsKHN0cnVjdCBkbWFfZmVuY2UgKmYpDQo+ICt7DQo+ICsJ
c3RydWN0IGFtZGdwdV9hbWRrZmRfZmVuY2UgKmZlbmNlID0gdG9fYW1kZ3B1X2FtZGtmZF9mZW5j
ZShmKTsNCj4gKwl1bnNpZ25lZCBsb25nIGZsYWdzOw0KPiArCWJvb2wgd2FzX3NpZ25hbGVkOw0K
PiArDQo+ICsJZG1hX2ZlbmNlX2xvY2tfaXJxc2F2ZShmLCBmbGFncyk7DQo+ICsJaWYgKGZlbmNl
LT5tbSkgew0KPiArCQltbWRyb3AoZmVuY2UtPm1tKTsNCj4gKwkJZmVuY2UtPm1tID0gTlVMTDsN
Cj4gKwl9DQo+ICsJd2FzX3NpZ25hbGVkID0gZG1hX2ZlbmNlX2lzX3NpZ25hbGVkX2xvY2tlZChm
KTsNCj4gKwlpZiAoIXdhc19zaWduYWxlZCkNCj4gKwkJZG1hX2ZlbmNlX3NpZ25hbF9sb2NrZWQo
Zik7DQo+ICsJZG1hX2ZlbmNlX3VubG9ja19pcnFyZXN0b3JlKGYsIGZsYWdzKTsNCj4gKw0KPiAr
CXJldHVybiB3YXNfc2lnbmFsZWQ7DQo+ICt9DQo+ICsNCj4gwqBzdGF0aWMgY29uc3Qgc3RydWN0
IGRtYV9mZW5jZV9vcHMgYW1ka2ZkX2ZlbmNlX29wcyA9IHsNCj4gwqAJLmdldF9kcml2ZXJfbmFt
ZSA9IGFtZGtmZF9mZW5jZV9nZXRfZHJpdmVyX25hbWUsDQo+IMKgCS5nZXRfdGltZWxpbmVfbmFt
ZSA9IGFtZGtmZF9mZW5jZV9nZXRfdGltZWxpbmVfbmFtZSwNCj4gwqAJLmVuYWJsZV9zaWduYWxp
bmcgPSBhbWRrZmRfZmVuY2VfZW5hYmxlX3NpZ25hbGluZywNCj4gLQkucmVsZWFzZSA9IGFtZGtm
ZF9mZW5jZV9yZWxlYXNlLA0KPiDCoH07DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGtmZC9rZmRfcHJvY2Vzcy5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRrZmQva2Zk
X3Byb2Nlc3MuYw0KPiBpbmRleCBiYjI1MmVjNDM3MzMuLjJjZjM5ZTNkM2ZhZSAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRrZmQva2ZkX3Byb2Nlc3MuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfcHJvY2Vzcy5jDQo+IEBAIC0xMTczLDcgKzEx
NzMsNyBAQCBzdGF0aWMgdm9pZCBrZmRfcHJvY2Vzc193cV9yZWxlYXNlKHN0cnVjdCB3b3JrX3N0
cnVjdCAqd29yaykNCj4gwqAJc3luY2hyb25pemVfcmN1KCk7DQo+IMKgCWVmID0gcmN1X2FjY2Vz
c19wb2ludGVyKHAtPmVmKTsNCj4gwqAJaWYgKGVmKQ0KPiAtCQlkbWFfZmVuY2Vfc2lnbmFsKGVm
KTsNCj4gKwkJYW1ka2ZkX2ZlbmNlX3NpZ25hbChlZik7DQo+IMKgDQo+IMKgCWtmZF9wcm9jZXNz
X3JlbW92ZV9zeXNmcyhwKTsNCj4gwqAJa2ZkX2RlYnVnZnNfcmVtb3ZlX3Byb2Nlc3MocCk7DQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfc3ZtLmMgYi9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfc3ZtLmMNCj4gaW5kZXggOTdjMjI3MGYyNzhmLi4w
ZTk0ZjNhOTc2YjEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL2tm
ZF9zdm0uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfc3ZtLmMNCj4g
QEAgLTQyOCw3ICs0MjgsNyBAQCBzdGF0aWMgdm9pZCBzdm1fcmFuZ2VfYm9fcmVsZWFzZShzdHJ1
Y3Qga3JlZiAqa3JlZikNCj4gwqANCj4gwqAJaWYgKCFkbWFfZmVuY2VfaXNfc2lnbmFsZWQoJnN2
bV9iby0+ZXZpY3Rpb25fZmVuY2UtPmJhc2UpKQ0KPiDCoAkJLyogV2UncmUgbm90IGluIHRoZSBl
dmljdGlvbiB3b3JrZXIuIFNpZ25hbCB0aGUgZmVuY2UuICovDQo+IC0JCWRtYV9mZW5jZV9zaWdu
YWwoJnN2bV9iby0+ZXZpY3Rpb25fZmVuY2UtPmJhc2UpOw0KPiArCQlhbWRrZmRfZmVuY2Vfc2ln
bmFsKCZzdm1fYm8tPmV2aWN0aW9uX2ZlbmNlLT5iYXNlKTsNCj4gwqAJZG1hX2ZlbmNlX3B1dCgm
c3ZtX2JvLT5ldmljdGlvbl9mZW5jZS0+YmFzZSk7DQo+IMKgCWFtZGdwdV9ib191bnJlZigmc3Zt
X2JvLT5ibyk7DQo+IMKgCWtmcmVlKHN2bV9ibyk7DQo+IEBAIC0zNjI4LDcgKzM2MjgsNyBAQCBz
dGF0aWMgdm9pZCBzdm1fcmFuZ2VfZXZpY3Rfc3ZtX2JvX3dvcmtlcihzdHJ1Y3Qgd29ya19zdHJ1
Y3QgKndvcmspDQo+IMKgCW1tYXBfcmVhZF91bmxvY2sobW0pOw0KPiDCoAltbXB1dChtbSk7DQo+
IMKgDQo+IC0JZG1hX2ZlbmNlX3NpZ25hbCgmc3ZtX2JvLT5ldmljdGlvbl9mZW5jZS0+YmFzZSk7
DQo+ICsJYW1ka2ZkX2ZlbmNlX3NpZ25hbCgmc3ZtX2JvLT5ldmljdGlvbl9mZW5jZS0+YmFzZSk7
DQoNCg0KQW5kIHdoeSBkbyB5b3UgZG8gdGhvc2UgY2hhbmdlcyBhbmQgd2h5IGRvZXNuJ3QgdGhl
IGNvbW1pdCBtZXNzYWdlDQpleHBsYWluIGl0Pw0KDQpZb3Ugc3RvcCBzaWduYWxsaW5nIHRob3Nl
IGZlbmNlcywgYWZ0ZXIgYWxsLg0KDQoNClAuDQoNCj4gwqANCj4gwqAJLyogVGhpcyBpcyB0aGUg
bGFzdCByZWZlcmVuY2UgdG8gc3ZtX2JvLCBhZnRlciBzdm1fcmFuZ2VfdnJhbV9ub2RlX2ZyZWUN
Cj4gwqAJICogaGFzIGJlZW4gY2FsbGVkIGluIHN2bV9taWdyYXRlX3ZyYW1fdG9fcmFtDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
