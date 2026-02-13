Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QM/nIZER4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:42:57 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 401C6411E07
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:42:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4C42244F6C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:42:56 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id E259F3F773
	for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Feb 2026 14:23:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b="VKjS/whA";
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1770992581;
	bh=4ZuFx3oHsXDervj8s2y8ehxlvTGDYpAYSEQXl25VKxU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=VKjS/whAoZgyXAXvbRB0zY5HZMw6SGpUIESLgpCYPsBXbKThZTU0NuZHnM4kU03G0
	 qI58WGjOJswr5jxlB4GSTQFBWIgjAXRRG/guHzfFbGXrJkIDvmjETkxoBIr5MSvoIi
	 2PuChwC7yy0LisIfGJ/AmaR7scVVkmrvI+pCfAuj/Aqe6u/PRb2Gr/P4GPx+F7dMNt
	 Crgmrb4l1q7JGYWt49wcVewaqWLMZABXw24ZlDZadozgT6rZ1rBPPd54tpXqeQ0lFw
	 T1v8D1Hpi99tpag2sDxxUP/ga5oXGup4mbDBdjb0hPCXW+VX07xA7Krcm1BmEOubEI
	 SBAA74F2tpniw==
Received: from fedora (unknown [IPv6:2a01:e0a:2c:6930:d919:a6e:5ea1:8a9f])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E3C2717E01E7;
	Fri, 13 Feb 2026 15:23:00 +0100 (CET)
Date: Fri, 13 Feb 2026 15:22:57 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: "Christian =?UTF-8?B?S8O2bmln?=" <ckoenig.leichtzumerken@gmail.com>
Message-ID: <20260213152257.2651e2bb@fedora>
In-Reply-To: <20260210102232.1642-3-christian.koenig@amd.com>
References: <20260210102232.1642-1-christian.koenig@amd.com>
	<20260210102232.1642-3-christian.koenig@amd.com>
Organization: Collabora
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BTXGT3WHP4V6PRW3I3FOAIA36PUDXQGP
X-Message-ID-Hash: BTXGT3WHP4V6PRW3I3FOAIA36PUDXQGP
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:22 +0000
CC: phasta@mailbox.org, matthew.brost@intel.com, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/8] dma-buf: detach fence ops on signal v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BTXGT3WHP4V6PRW3I3FOAIA36PUDXQGP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	DATE_IN_PAST(1.00)[1490];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.773];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,collabora.com:email]
X-Rspamd-Queue-Id: 401C6411E07
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCAxMCBGZWIgMjAyNiAxMTowMTo1NyArMDEwMA0KIkNocmlzdGlhbiBLw7ZuaWciIDxj
a29lbmlnLmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6DQoNCj4gV2hlbiBuZWl0aGVy
IGEgcmVsZWFzZSBub3IgYSB3YWl0IGJhY2tlbmQgb3BzIGlzIHNwZWNpZmllZCBpdCBpcyBwb3Nz
aWJsZQ0KPiB0byBsZXQgdGhlIGRtYV9mZW5jZSBsaXZlIG9uIGluZGVwZW5kZW50bHkgb2YgdGhl
IG1vZHVsZSB3aG8gaXNzdWVkIGl0Lg0KPiANCj4gVGhpcyBtYWtlcyBpdCBwb3NzaWJsZSB0byB1
bmxvYWQgZHJpdmVycyBhbmQgb25seSB3YWl0IGZvciBhbGwgdGhlaXINCj4gZmVuY2VzIHRvIHNp
Z25hbC4NCj4gDQo+IHYyOiBmaXggdHlwbyBpbiBjb21tZW50DQo+IA0KPiBTaWduZWQtb2ZmLWJ5
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IFJldmlld2Vk
LWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaWdhbGlhLmNvbT4NCj4gUmV2aWV3
ZWQtYnk6IFBoaWxpcHAgU3Rhbm5lciA8cGhhc3RhQGtlcm5lbC5vcmc+DQoNClJldmlld2VkLWJ5
OiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPg0KDQpPbmUg
bml0IGJlbG93Lg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIHwgMTYg
KysrKysrKysrKysrLS0tLQ0KPiAgaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCAgIHwgIDQgKyst
LQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiBpbmRleCBkZTliZjE4YmUzZDQuLmJhMDIzMjFiZWYwYiAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+ICsrKyBiL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiBAQCAtMzcxLDYgKzM3MSwxNCBAQCB2b2lkIGRtYV9m
ZW5jZV9zaWduYWxfdGltZXN0YW1wX2xvY2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwNCj4g
IAkJCQkgICAgICAmZmVuY2UtPmZsYWdzKSkpDQo+ICAJCXJldHVybjsNCj4gIA0KPiArCS8qDQo+
ICsJICogV2hlbiBuZWl0aGVyIGEgcmVsZWFzZSBub3IgYSB3YWl0IG9wZXJhdGlvbiBpcyBzcGVj
aWZpZWQgc2V0IHRoZSBvcHMNCj4gKwkgKiBwb2ludGVyIHRvIE5VTEwgdG8gYWxsb3cgdGhlIGZl
bmNlIHN0cnVjdHVyZSB0byBiZWNvbWUgaW5kZXBlbmRlbnQNCj4gKwkgKiBmcm9tIHdobyBvcmln
aW5hbGx5IGlzc3VlZCBpdC4NCg0KSSB0aGluayB0aGlzIGRlc2VydmVzIHNvbWUgY29tbWVudCBp
biB0aGUgZG1hX2ZlbmNlX29wcyBkb2MsIHNvIHRoYXQNCnBlb3BsZSBrbm93IHdoYXQgdG8gZXhw
ZWN0IHdoZW4gdGhleSBpbXBsZW1lbnQgdGhpcyBpbnRlcmZhY2UuDQoNCj4gKwkgKi8NCj4gKwlp
ZiAoIWZlbmNlLT5vcHMtPnJlbGVhc2UgJiYgIWZlbmNlLT5vcHMtPndhaXQpDQo+ICsJCVJDVV9J
TklUX1BPSU5URVIoZmVuY2UtPm9wcywgTlVMTCk7DQo+ICsNCj4gIAkvKiBTdGFzaCB0aGUgY2Jf
bGlzdCBiZWZvcmUgcmVwbGFjaW5nIGl0IHdpdGggdGhlIHRpbWVzdGFtcCAqLw0KPiAgCWxpc3Rf
cmVwbGFjZSgmZmVuY2UtPmNiX2xpc3QsICZjYl9saXN0KTsNCj4gIA0KPiBAQCAtNTM3LDcgKzU0
NSw3IEBAIGRtYV9mZW5jZV93YWl0X3RpbWVvdXQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGJv
b2wgaW50ciwgc2lnbmVkIGxvbmcgdGltZW91dCkNCj4gIAlyY3VfcmVhZF9sb2NrKCk7DQo+ICAJ
b3BzID0gcmN1X2RlcmVmZXJlbmNlKGZlbmNlLT5vcHMpOw0KPiAgCXRyYWNlX2RtYV9mZW5jZV93
YWl0X3N0YXJ0KGZlbmNlKTsNCj4gLQlpZiAob3BzLT53YWl0KSB7DQo+ICsJaWYgKG9wcyAmJiBv
cHMtPndhaXQpIHsNCj4gIAkJLyoNCj4gIAkJICogSW1wbGVtZW50aW5nIHRoZSB3YWl0IG9wcyBp
cyBkZXByZWNhdGVkIGFuZCBub3Qgc3VwcG9ydGVkIGZvcg0KPiAgCQkgKiBpc3N1ZXIgaW5kZXBl
bmRlbnQgZmVuY2VzLCBzbyBpdCBpcyBvayB0byB1c2UgdGhlIG9wcyBvdXRzaWRlDQo+IEBAIC02
MDIsNyArNjEwLDcgQEAgdm9pZCBkbWFfZmVuY2VfcmVsZWFzZShzdHJ1Y3Qga3JlZiAqa3JlZikN
Cj4gIAl9DQo+ICANCj4gIAlvcHMgPSByY3VfZGVyZWZlcmVuY2UoZmVuY2UtPm9wcyk7DQo+IC0J
aWYgKG9wcy0+cmVsZWFzZSkNCj4gKwlpZiAob3BzICYmIG9wcy0+cmVsZWFzZSkNCj4gIAkJb3Bz
LT5yZWxlYXNlKGZlbmNlKTsNCj4gIAllbHNlDQo+ICAJCWRtYV9mZW5jZV9mcmVlKGZlbmNlKTsN
Cj4gQEAgLTYzOCw3ICs2NDYsNyBAQCBzdGF0aWMgYm9vbCBfX2RtYV9mZW5jZV9lbmFibGVfc2ln
bmFsaW5nKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KPiAgDQo+ICAJcmN1X3JlYWRfbG9jaygp
Ow0KPiAgCW9wcyA9IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCj4gLQlpZiAoIXdhc19z
ZXQgJiYgb3BzLT5lbmFibGVfc2lnbmFsaW5nKSB7DQo+ICsJaWYgKCF3YXNfc2V0ICYmIG9wcyAm
JiBvcHMtPmVuYWJsZV9zaWduYWxpbmcpIHsNCj4gIAkJdHJhY2VfZG1hX2ZlbmNlX2VuYWJsZV9z
aWduYWwoZmVuY2UpOw0KPiAgDQo+ICAJCWlmICghb3BzLT5lbmFibGVfc2lnbmFsaW5nKGZlbmNl
KSkgew0KPiBAQCAtMTAyNCw3ICsxMDMyLDcgQEAgdm9pZCBkbWFfZmVuY2Vfc2V0X2RlYWRsaW5l
KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBrdGltZV90IGRlYWRsaW5lKQ0KPiAgDQo+ICAJcmN1
X3JlYWRfbG9jaygpOw0KPiAgCW9wcyA9IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCj4g
LQlpZiAob3BzLT5zZXRfZGVhZGxpbmUgJiYgIWRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkp
DQo+ICsJaWYgKG9wcyAmJiBvcHMtPnNldF9kZWFkbGluZSAmJiAhZG1hX2ZlbmNlX2lzX3NpZ25h
bGVkKGZlbmNlKSkNCj4gIAkJb3BzLT5zZXRfZGVhZGxpbmUoZmVuY2UsIGRlYWRsaW5lKTsNCj4g
IAlyY3VfcmVhZF91bmxvY2soKTsNCj4gIH0NCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgv
ZG1hLWZlbmNlLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+IGluZGV4IDZiZjRmZWIw
ZTAxZi4uZTFhZmJiNTkwOWY5IDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5j
ZS5oDQo+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4gQEAgLTQ3Miw3ICs0NzIs
NyBAQCBkbWFfZmVuY2VfaXNfc2lnbmFsZWRfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
KQ0KPiAgDQo+ICAJcmN1X3JlYWRfbG9jaygpOw0KPiAgCW9wcyA9IHJjdV9kZXJlZmVyZW5jZShm
ZW5jZS0+b3BzKTsNCj4gLQlpZiAob3BzLT5zaWduYWxlZCAmJiBvcHMtPnNpZ25hbGVkKGZlbmNl
KSkgew0KPiArCWlmIChvcHMgJiYgb3BzLT5zaWduYWxlZCAmJiBvcHMtPnNpZ25hbGVkKGZlbmNl
KSkgew0KPiAgCQlyY3VfcmVhZF91bmxvY2soKTsNCj4gIAkJZG1hX2ZlbmNlX3NpZ25hbF9sb2Nr
ZWQoZmVuY2UpOw0KPiAgCQlyZXR1cm4gdHJ1ZTsNCj4gQEAgLTUwOCw3ICs1MDgsNyBAQCBkbWFf
ZmVuY2VfaXNfc2lnbmFsZWQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+ICANCj4gIAlyY3Vf
cmVhZF9sb2NrKCk7DQo+ICAJb3BzID0gcmN1X2RlcmVmZXJlbmNlKGZlbmNlLT5vcHMpOw0KPiAt
CWlmIChvcHMtPnNpZ25hbGVkICYmIG9wcy0+c2lnbmFsZWQoZmVuY2UpKSB7DQo+ICsJaWYgKG9w
cyAmJiBvcHMtPnNpZ25hbGVkICYmIG9wcy0+c2lnbmFsZWQoZmVuY2UpKSB7DQo+ICAJCXJjdV9y
ZWFkX3VubG9jaygpOw0KPiAgCQlkbWFfZmVuY2Vfc2lnbmFsKGZlbmNlKTsNCj4gIAkJcmV0dXJu
IHRydWU7DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
