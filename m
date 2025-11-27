Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHTQNiAB4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:32:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B22ED410E14
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:32:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C83F24431C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:32:47 +0000 (UTC)
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	by lists.linaro.org (Postfix) with ESMTPS id A93B63F847
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Nov 2025 10:29:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=fSIwiwA6;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp2.mailbox.org (smtp2.mailbox.org [10.196.197.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4dHCNH4kq6z9ssn;
	Thu, 27 Nov 2025 11:29:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1764239375; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CttLpGvt+BQI7FK1pMA6SKCpI/oMH9d0l5Icob0Xv4I=;
	b=fSIwiwA6qpIYUorjY8LpQXqNrz6Urb6q/aFKVfNSMud+gZT7ABBG5H2IzwfDsbNLSdpPqC
	feLZZUSyaf0sYn4mO1hnNbFz8/BBUsI8Ktz6JFVBGGCcs/HxceYSr4YJSuEWZUhF4LTY3Z
	9Sj6vD0EVIILmuO+H4TRPTrfZ4mOgyc9Ehgq9KAFNQlPLUzxSNKhF07qvKu5c/qk+nkLZX
	93VegSuldr//XgUG6JFfea0vw7teupZqey2RnELwQ/gEfQBqyKilSFViFGNmVdIJ+EUuTi
	JU6vOjtAfryT8arQzBmy1nNlkIMqOc8o+1yxuZiRM8jx08BZWwCyWitqEhulyg==
Message-ID: <7821929c041b973712968a4f90bd6e81e8051c81.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	alexdeucher@gmail.com, simona.vetter@ffwll.ch, tursulin@ursulin.net,
	matthew.brost@intel.com, dri-devel@lists.freedesktop.org,
	amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	sumit.semwal@linaro.org
Date: Thu, 27 Nov 2025 11:29:32 +0100
In-Reply-To: <20251113145332.16805-4-christian.koenig@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
	 <20251113145332.16805-4-christian.koenig@amd.com>
MIME-Version: 1.0
X-MBO-RS-ID: 4b0056efd151b94d99d
X-MBO-RS-META: jz8qzc3tzot1mnufrpciosqww3ci6q6u
X-Spamd-Bar: ----
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PPN6ZO2FYSYTJNVXAOIJGPUTCYZUBUFE
X-Message-ID-Hash: PPN6ZO2FYSYTJNVXAOIJGPUTCYZUBUFE
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:14 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 03/18] dma-buf: detach fence ops on signal v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PPN6ZO2FYSYTJNVXAOIJGPUTCYZUBUFE/>
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
	DATE_IN_PAST(1.00)[3365];
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
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	DKIM_TRACE(0.00)[mailbox.org:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.902];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email,linaro.org:email]
X-Rspamd-Queue-Id: B22ED410E14
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI1LTExLTEzIGF0IDE1OjUxICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBXaGVuIG5laXRoZXIgYSByZWxlYXNlIG5vciBhIHdhaXQgYmFja2VuZCBvcHMgaXMgc3Bl
Y2lmaWVkIGl0IGlzIHBvc3NpYmxlDQo+IHRvIGxldCB0aGUgZG1hX2ZlbmNlIGxpdmUgb24gaW5k
ZXBlbmRlbnRseSBvZiB0aGUgbW9kdWxlIHdobyBpc3N1ZWQgaXQuDQo+IA0KPiBUaGlzIG1ha2Vz
IGl0IHBvc3NpYmxlIHRvIHVubG9hZCBkcml2ZXJzIGFuZCBvbmx5IHdhaXQgZm9yIGFsbCB0aGVp
cg0KPiBmZW5jZXMgdG8gc2lnbmFsLg0KPiANCj4gdjI6IGZpeCB0eXBvIGluIGNvbW1lbnQNCj4g
DQo+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4NCg0KUmV2aWV3ZWQtYnk6IFBoaWxpcHAgU3Rhbm5lciA8cGhhc3RhQGtlcm5lbC5vcmc+
DQoNCg0KPiAtLS0NCj4gwqBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgfCAxNiArKysrKysr
KysrKystLS0tDQo+IMKgaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaMKgwqAgfMKgIDQgKystLQ0K
PiDCoDIgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2Rt
YS1idWYvZG1hLWZlbmNlLmMNCj4gaW5kZXggZWMyMWJlOWIwODlhLi43MDc0MzQ3ZjUwNmQgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiArKysgYi9kcml2ZXJz
L2RtYS1idWYvZG1hLWZlbmNlLmMNCj4gQEAgLTM3NCw2ICszNzQsMTQgQEAgaW50IGRtYV9mZW5j
ZV9zaWduYWxfdGltZXN0YW1wX2xvY2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwNCj4gwqAJ
CQkJwqDCoMKgwqDCoCAmZmVuY2UtPmZsYWdzKSkpDQo+IMKgCQlyZXR1cm4gLUVJTlZBTDsNCj4g
wqANCj4gKwkvKg0KPiArCSAqIFdoZW4gbmVpdGhlciBhIHJlbGVhc2Ugbm9yIGEgd2FpdCBvcGVy
YXRpb24gaXMgc3BlY2lmaWVkIHNldCB0aGUgb3BzDQo+ICsJICogcG9pbnRlciB0byBOVUxMIHRv
IGFsbG93IHRoZSBmZW5jZSBzdHJ1Y3R1cmUgdG8gYmVjb21lIGluZGVwZW5kZW50DQo+ICsJICog
ZnJvbSB3aG8gb3JpZ2luYWxseSBpc3N1ZWQgaXQuDQo+ICsJICovDQo+ICsJaWYgKCFmZW5jZS0+
b3BzLT5yZWxlYXNlICYmICFmZW5jZS0+b3BzLT53YWl0KQ0KPiArCQlSQ1VfSU5JVF9QT0lOVEVS
KGZlbmNlLT5vcHMsIE5VTEwpOw0KPiArDQo+IMKgCS8qIFN0YXNoIHRoZSBjYl9saXN0IGJlZm9y
ZSByZXBsYWNpbmcgaXQgd2l0aCB0aGUgdGltZXN0YW1wICovDQo+IMKgCWxpc3RfcmVwbGFjZSgm
ZmVuY2UtPmNiX2xpc3QsICZjYl9saXN0KTsNCj4gwqANCj4gQEAgLTUxMyw3ICs1MjEsNyBAQCBk
bWFfZmVuY2Vfd2FpdF90aW1lb3V0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBib29sIGludHIs
IHNpZ25lZCBsb25nIHRpbWVvdXQpDQo+IMKgCXJjdV9yZWFkX2xvY2soKTsNCj4gwqAJb3BzID0g
cmN1X2RlcmVmZXJlbmNlKGZlbmNlLT5vcHMpOw0KPiDCoAl0cmFjZV9kbWFfZmVuY2Vfd2FpdF9z
dGFydChmZW5jZSk7DQo+IC0JaWYgKG9wcy0+d2FpdCkgew0KPiArCWlmIChvcHMgJiYgb3BzLT53
YWl0KSB7DQo+IMKgCQkvKg0KPiDCoAkJICogSW1wbGVtZW50aW5nIHRoZSB3YWl0IG9wcyBpcyBk
ZXByZWNhdGVkIGFuZCBub3Qgc3VwcG9ydGVkIGZvcg0KPiDCoAkJICogaXNzdWVyIGluZGVwZW5k
ZW50IGZlbmNlcywgc28gaXQgaXMgb2sgdG8gdXNlIHRoZSBvcHMgb3V0c2lkZQ0KPiBAQCAtNTc4
LDcgKzU4Niw3IEBAIHZvaWQgZG1hX2ZlbmNlX3JlbGVhc2Uoc3RydWN0IGtyZWYgKmtyZWYpDQo+
IMKgCX0NCj4gwqANCj4gwqAJb3BzID0gcmN1X2RlcmVmZXJlbmNlKGZlbmNlLT5vcHMpOw0KPiAt
CWlmIChvcHMtPnJlbGVhc2UpDQo+ICsJaWYgKG9wcyAmJiBvcHMtPnJlbGVhc2UpDQo+IMKgCQlv
cHMtPnJlbGVhc2UoZmVuY2UpOw0KPiDCoAllbHNlDQo+IMKgCQlkbWFfZmVuY2VfZnJlZShmZW5j
ZSk7DQo+IEBAIC02MTQsNyArNjIyLDcgQEAgc3RhdGljIGJvb2wgX19kbWFfZmVuY2VfZW5hYmxl
X3NpZ25hbGluZyhzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4gwqANCj4gwqAJcmN1X3JlYWRf
bG9jaygpOw0KPiDCoAlvcHMgPSByY3VfZGVyZWZlcmVuY2UoZmVuY2UtPm9wcyk7DQo+IC0JaWYg
KCF3YXNfc2V0ICYmIG9wcy0+ZW5hYmxlX3NpZ25hbGluZykgew0KPiArCWlmICghd2FzX3NldCAm
JiBvcHMgJiYgb3BzLT5lbmFibGVfc2lnbmFsaW5nKSB7DQo+IMKgCQl0cmFjZV9kbWFfZmVuY2Vf
ZW5hYmxlX3NpZ25hbChmZW5jZSk7DQo+IMKgDQo+IMKgCQlpZiAoIW9wcy0+ZW5hYmxlX3NpZ25h
bGluZyhmZW5jZSkpIHsNCj4gQEAgLTEwMDAsNyArMTAwOCw3IEBAIHZvaWQgZG1hX2ZlbmNlX3Nl
dF9kZWFkbGluZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwga3RpbWVfdCBkZWFkbGluZSkNCj4g
wqANCj4gwqAJcmN1X3JlYWRfbG9jaygpOw0KPiDCoAlvcHMgPSByY3VfZGVyZWZlcmVuY2UoZmVu
Y2UtPm9wcyk7DQo+IC0JaWYgKG9wcy0+c2V0X2RlYWRsaW5lICYmICFkbWFfZmVuY2VfaXNfc2ln
bmFsZWQoZmVuY2UpKQ0KPiArCWlmIChvcHMgJiYgb3BzLT5zZXRfZGVhZGxpbmUgJiYgIWRtYV9m
ZW5jZV9pc19zaWduYWxlZChmZW5jZSkpDQo+IMKgCQlvcHMtPnNldF9kZWFkbGluZShmZW5jZSwg
ZGVhZGxpbmUpOw0KPiDCoAlyY3VfcmVhZF91bmxvY2soKTsNCj4gwqB9DQo+IGRpZmYgLS1naXQg
YS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0K
PiBpbmRleCA3N2YwNzczNWY1NTYuLmViNTdiY2M4NzEyZiAxMDA2NDQNCj4gLS0tIGEvaW5jbHVk
ZS9saW51eC9kbWEtZmVuY2UuaA0KPiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+
IEBAIC00MzYsNyArNDM2LDcgQEAgZG1hX2ZlbmNlX2lzX3NpZ25hbGVkX2xvY2tlZChzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZSkNCj4gwqANCj4gwqAJcmN1X3JlYWRfbG9jaygpOw0KPiDCoAlvcHMg
PSByY3VfZGVyZWZlcmVuY2UoZmVuY2UtPm9wcyk7DQo+IC0JaWYgKG9wcy0+c2lnbmFsZWQgJiYg
b3BzLT5zaWduYWxlZChmZW5jZSkpIHsNCj4gKwlpZiAob3BzICYmIG9wcy0+c2lnbmFsZWQgJiYg
b3BzLT5zaWduYWxlZChmZW5jZSkpIHsNCj4gwqAJCXJjdV9yZWFkX3VubG9jaygpOw0KPiDCoAkJ
ZG1hX2ZlbmNlX3NpZ25hbF9sb2NrZWQoZmVuY2UpOw0KPiDCoAkJcmV0dXJuIHRydWU7DQo+IEBA
IC00NzIsNyArNDcyLDcgQEAgZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKHN0cnVjdCBkbWFfZmVuY2Ug
KmZlbmNlKQ0KPiDCoA0KPiDCoAlyY3VfcmVhZF9sb2NrKCk7DQo+IMKgCW9wcyA9IHJjdV9kZXJl
ZmVyZW5jZShmZW5jZS0+b3BzKTsNCj4gLQlpZiAob3BzLT5zaWduYWxlZCAmJiBvcHMtPnNpZ25h
bGVkKGZlbmNlKSkgew0KPiArCWlmIChvcHMgJiYgb3BzLT5zaWduYWxlZCAmJiBvcHMtPnNpZ25h
bGVkKGZlbmNlKSkgew0KPiDCoAkJcmN1X3JlYWRfdW5sb2NrKCk7DQo+IMKgCQlkbWFfZmVuY2Vf
c2lnbmFsKGZlbmNlKTsNCj4gwqAJCXJldHVybiB0cnVlOw0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
