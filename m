Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aN3pAptl5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:42:51 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 70257431E1D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:42:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6C8404015C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:42:49 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 8F214404A1
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Apr 2026 10:06:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b="R/IMmElT";
	dmarc=pass (policy=none) header.from=igalia.com;
	spf=pass (lists.linaro.org: domain of tvrtko.ursulin@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=tvrtko.ursulin@igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=4qZm5GjLEkNnItijTnEA/o58JyXKmIqseWHH1wpMnFg=; b=R/IMmElTo+BDxNJiuORDMRvnGF
	UFfqosgh1qSxrCUITT6MnlvMb7TjnfHhWuZVoPu5u8Gjc1uSpA2/m5aY/1iSivz6FHUN3VhQmZwlj
	t/rT8H3qrAlPPfld5SdK//j6Pp9Eqr5QVEqHQfMkvV20O1rIcRoBeGydWMd0x+xAQkzJreV4wdPdK
	Xcqdn/QPSDjXlMqJpY9O5rzekJEVm9gULpxIFe9oUidG2JqG/4jxBUkVwgUA9RP6ReYPLdwkfjZo4
	Za8BwLt+V5aiWTuT5L2A7POGOYs1IFh07gajKQl68cCxFdoqeygr/l20N4LUaU9yEOHvdHcBlmE7d
	HQ07MDMA==;
Received: from [90.240.106.137] (helo=localhost)
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1wCEAw-00FL6F-Ie; Mon, 13 Apr 2026 12:05:50 +0200
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 13 Apr 2026 11:05:25 +0100
Message-ID: <20260413100526.15729-2-tvrtko.ursulin@igalia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260413100526.15729-1-tvrtko.ursulin@igalia.com>
References: <20260413100526.15729-1-tvrtko.ursulin@igalia.com>
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: tvrtko.ursulin@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QT2VUGT4TGTBJ67E74PEXQEWL4C3E6CT
X-Message-ID-Hash: QT2VUGT4TGTBJ67E74PEXQEWL4C3E6CT
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:42:24 +0000
CC: kernel-dev@igalia.com, Tvrtko Ursulin <tvrtko.ursulin@igalia.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Philipp Stanner <phasta@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/3] dma-fence: Fix potential tracepoint null pointer dereferences
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QT2VUGT4TGTBJ67E74PEXQEWL4C3E6CT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.69 / 15.00];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	DATE_IN_PAST(1.00)[175];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.982];
	FROM_NEQ_ENVFROM(0.00)[tvrtko.ursulin@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,igalia.com:mid,igalia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 70257431E1D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

VHJhY2VfZG1hX2ZlbmNlX3NpZ25hbGVkLCB0cmFjZV9kbWFfZmVuY2Vfd2FpdF9lbmQgYW5kDQp0
cmFjZV9kbWFfZmVuY2VfZGVzdHJveSBjYW4gYWxsIGRlcmVmZXJlbmNlIGEgbnVsbCBmZW5jZS0+
b3BzIHBvaW50ZXINCmFmdGVyIGl0IGhhcyBiZWVuIHJlc2V0IG9uIGZlbmNlIHNpZ25hbGxpbmcu
DQoNCkxldHMgdXNlIHRoZSBzYWZlIHN0cmluZyBnZXR0ZXJzIGZvciBtb3N0IHRyYWNlcG9pbnRz
IHRvIGEgdm9pZCB0aGlzLg0KDQpCdXQgZm9yIHRoZSBzaWduYWxsaW5nIHRyYWNlcG9pbnQsIHdl
IG1vdmUgaXQgdG8gYmVmb3JlIHRoZSBmZW5jZS0+b3BzDQppcyByZXNldCBhbmQgc3BlY2lhbCBj
YXNlIGl0cyBkZWZpbml0aW9uIGluIG9yZGVyIHRvIGF2b2lkIGxvc2luZyB0aGUNCmRyaXZlciBh
bmQgdGltZWxpbmUgaW5mb3JtYXRpb24uDQoNClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpZ2FsaWEuY29tPg0KRml4ZXM6IDU0MWM4ZjI0NjhiOSAoImRtYS1i
dWY6IGRldGFjaCBmZW5jZSBvcHMgb24gc2lnbmFsIHYzIikNCkNjOiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpDYzogUGhpbGlwcCBTdGFubmVyIDxwaGFzdGFA
a2VybmVsLm9yZz4NCkNjOiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJv
cmEuY29tPg0KQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZw0KQ2M6IGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZw0KLS0tDQogZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jICAg
ICAgfCAgMyArKy0NCiBpbmNsdWRlL3RyYWNlL2V2ZW50cy9kbWFfZmVuY2UuaCB8IDI5ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKy0tDQogMiBmaWxlcyBjaGFuZ2VkLCAyOSBpbnNlcnRpb25z
KCspLCAzIGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1m
ZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQppbmRleCBhMmFhODJmNGVlZGQu
LmIzYmZhNjk0M2E4ZSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0K
KysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQpAQCAtMzYzLDYgKzM2Myw4IEBAIHZv
aWQgZG1hX2ZlbmNlX3NpZ25hbF90aW1lc3RhbXBfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZl
bmNlLA0KIAkJCQkgICAgICAmZmVuY2UtPmZsYWdzKSkpDQogCQlyZXR1cm47DQogDQorCXRyYWNl
X2RtYV9mZW5jZV9zaWduYWxlZChmZW5jZSk7DQorDQogCS8qDQogCSAqIFdoZW4gbmVpdGhlciBh
IHJlbGVhc2Ugbm9yIGEgd2FpdCBvcGVyYXRpb24gaXMgc3BlY2lmaWVkIHNldCB0aGUgb3BzDQog
CSAqIHBvaW50ZXIgdG8gTlVMTCB0byBhbGxvdyB0aGUgZmVuY2Ugc3RydWN0dXJlIHRvIGJlY29t
ZSBpbmRlcGVuZGVudA0KQEAgLTM3Nyw3ICszNzksNiBAQCB2b2lkIGRtYV9mZW5jZV9zaWduYWxf
dGltZXN0YW1wX2xvY2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwNCiANCiAJZmVuY2UtPnRp
bWVzdGFtcCA9IHRpbWVzdGFtcDsNCiAJc2V0X2JpdChETUFfRkVOQ0VfRkxBR19USU1FU1RBTVBf
QklULCAmZmVuY2UtPmZsYWdzKTsNCi0JdHJhY2VfZG1hX2ZlbmNlX3NpZ25hbGVkKGZlbmNlKTsN
CiANCiAJbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKGN1ciwgdG1wLCAmY2JfbGlzdCwgbm9kZSkg
ew0KIAkJSU5JVF9MSVNUX0hFQUQoJmN1ci0+bm9kZSk7DQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS90
cmFjZS9ldmVudHMvZG1hX2ZlbmNlLmggYi9pbmNsdWRlL3RyYWNlL2V2ZW50cy9kbWFfZmVuY2Uu
aA0KaW5kZXggM2FiYmE0NWMwNjAxLi4yMjBiZjcxNDQ2ZTggMTAwNjQ0DQotLS0gYS9pbmNsdWRl
L3RyYWNlL2V2ZW50cy9kbWFfZmVuY2UuaA0KKysrIGIvaW5jbHVkZS90cmFjZS9ldmVudHMvZG1h
X2ZlbmNlLmgNCkBAIC05LDEyICs5LDM3IEBADQogDQogc3RydWN0IGRtYV9mZW5jZTsNCiANCitE
RUNMQVJFX0VWRU5UX0NMQVNTKGRtYV9mZW5jZSwNCisNCisJVFBfUFJPVE8oc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2UpLA0KKw0KKwlUUF9BUkdTKGZlbmNlKSwNCisNCisJVFBfU1RSVUNUX19lbnRy
eSgNCisJCV9fc3RyaW5nKGRyaXZlciwgZG1hX2ZlbmNlX2RyaXZlcl9uYW1lKGZlbmNlKSkNCisJ
CV9fc3RyaW5nKHRpbWVsaW5lLCBkbWFfZmVuY2VfdGltZWxpbmVfbmFtZShmZW5jZSkpDQorCQlf
X2ZpZWxkKHVuc2lnbmVkIGludCwgY29udGV4dCkNCisJCV9fZmllbGQodW5zaWduZWQgaW50LCBz
ZXFubykNCisJKSwNCisNCisJVFBfZmFzdF9hc3NpZ24oDQorCQlfX2Fzc2lnbl9zdHIoZHJpdmVy
KTsNCisJCV9fYXNzaWduX3N0cih0aW1lbGluZSk7DQorCQlfX2VudHJ5LT5jb250ZXh0ID0gZmVu
Y2UtPmNvbnRleHQ7DQorCQlfX2VudHJ5LT5zZXFubyA9IGZlbmNlLT5zZXFubzsNCisJKSwNCisN
CisJVFBfcHJpbnRrKCJkcml2ZXI9JXMgdGltZWxpbmU9JXMgY29udGV4dD0ldSBzZXFubz0ldSIs
DQorCQkgIF9fZ2V0X3N0cihkcml2ZXIpLCBfX2dldF9zdHIodGltZWxpbmUpLCBfX2VudHJ5LT5j
b250ZXh0LA0KKwkJICBfX2VudHJ5LT5zZXFubykNCispOw0KKw0KIC8qDQogICogU2FmZSBvbmx5
IGZvciBjYWxsIHNpdGVzIHdoaWNoIGFyZSBndWFyYW50ZWVkIHRvIG5vdCByYWNlIHdpdGggZmVu
Y2UNCiAgKiBzaWduYWxpbmcsaG9sZGluZyB0aGUgZmVuY2UtPmxvY2sgYW5kIGhhdmluZyBjaGVj
a2VkIGZvciBub3Qgc2lnbmFsZWQsIG9yIHRoZQ0KICAqIHNpZ25hbGluZyBwYXRoIGl0c2VsZi4N
CiAgKi8NCi1ERUNMQVJFX0VWRU5UX0NMQVNTKGRtYV9mZW5jZSwNCitERUNMQVJFX0VWRU5UX0NM
QVNTKGRtYV9mZW5jZV9vcHMsDQogDQogCVRQX1BST1RPKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
KSwNCiANCkBAIC02Nyw3ICs5Miw3IEBAIERFRklORV9FVkVOVChkbWFfZmVuY2UsIGRtYV9mZW5j
ZV9lbmFibGVfc2lnbmFsLA0KIAlUUF9BUkdTKGZlbmNlKQ0KICk7DQogDQotREVGSU5FX0VWRU5U
KGRtYV9mZW5jZSwgZG1hX2ZlbmNlX3NpZ25hbGVkLA0KK0RFRklORV9FVkVOVChkbWFfZmVuY2Vf
b3BzLCBkbWFfZmVuY2Vfc2lnbmFsZWQsDQogDQogCVRQX1BST1RPKHN0cnVjdCBkbWFfZmVuY2Ug
KmZlbmNlKSwNCiANCi0tIA0KMi41Mi4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
