Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AOtoOMll5mmJvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:43:37 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2FF431EC0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:43:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 45B5940536
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:43:36 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 815633F90B
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2026 15:49:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=stG6I3gs;
	dmarc=pass (policy=none) header.from=igalia.com;
	spf=pass (lists.linaro.org: domain of tvrtko.ursulin@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=tvrtko.ursulin@igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=NH3VFhuA4KTmnv2Djo8xtQoIH/0rZEUzxAByURI9vUg=; b=stG6I3gsqgvfdtVZTDguCcJfNf
	gXAfIrwQpNDQCCp73jOKYg0RMWF2ZbCRMtCWLux1PhBfRjl3JxCp24q1WBMVXh+gvbLqDUvWhTtLd
	IpfsplhtpS81PL7jXXti/5BA67GVooOBN7cHYPVqn41/s89tywrOJPkvZl3SGtT9l9L1EQzY0eDwk
	TmnniWZ29CCI6YUMApd+GvKAkYuHfI86lps9/S/iw70sn2UbKPGYpd2kscAaHQmJaosU6YMILMJ+4
	qQeFlY4kaVm5FQHpGlLZchvWhuSXBWwaUt6MiKwU4zMmt2+6V31lEoIhhj6MxjqA/iAXhaVMneh+B
	tSxqISlw==;
Received: from [90.240.106.137] (helo=localhost)
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1wCg15-00FxmJ-Ay; Tue, 14 Apr 2026 17:49:31 +0200
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 14 Apr 2026 16:49:28 +0100
Message-ID: <20260414154928.32934-2-tvrtko.ursulin@igalia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260414154928.32934-1-tvrtko.ursulin@igalia.com>
References: <20260414154928.32934-1-tvrtko.ursulin@igalia.com>
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: tvrtko.ursulin@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RT7OLQ2JAFANWMVUWX5AXCQKA52LNWT3
X-Message-ID-Hash: RT7OLQ2JAFANWMVUWX5AXCQKA52LNWT3
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:42:30 +0000
CC: kernel-dev@igalia.com, Tvrtko Ursulin <tvrtko.ursulin@igalia.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Philipp Stanner <phasta@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/2] dma-fence: Fix potential tracepoint null pointer dereferences
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RT7OLQ2JAFANWMVUWX5AXCQKA52LNWT3/>
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
	DATE_IN_PAST(1.00)[145];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email,igalia.com:mid,igalia.com:email]
X-Rspamd-Queue-Id: 8F2FF431EC0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

VHJhY2VfZG1hX2ZlbmNlX3NpZ25hbGVkLCB0cmFjZV9kbWFfZmVuY2Vfd2FpdF9lbmQgYW5kDQp0
cmFjZV9kbWFfZmVuY2VfZGVzdHJveSBjYW4gYWxsIGN1cnJlbnRseSBkZXJlZmVyZW5jZSBhIG51
bGwgZmVuY2UtPm9wcw0KcG9pbnRlciBhZnRlciBpdCBoYXMgYmVlbiByZXNldCBvbiBmZW5jZSBz
aWduYWxsaW5nLg0KDQpMZXRzIHVzZSB0aGUgc2FmZSBzdHJpbmcgZ2V0dGVycyBmb3IgbW9zdCB0
cmFjZXBvaW50cyB0byBhdm9pZCB0aGlzIGNsYXNzDQpvZiBhIHByb2JsZW0sIHdoaWxlIGZvciB0
aGUgc2lnbmFsIHRyYWNlcG9pbnQgd2UgbW92ZSBpdCB0byBiZWZvcmUgb3BzIGFyZQ0KY2xlYXJl
ZCB0byBhdm9pZCBsb3NpbmcgdGhlIGRyaXZlciBhbmQgdGltZWxpbmUgbmFtZSBpbmZvcm1hdGlv
bi4gQXBhcnQNCmZyb20gbW92aW5nIGl0IHdlIGFsc28gbmVlZCB0byBhZGQgYSBuZXcgdHJhY2Vw
b2ludCBjbGFzcyB0byBieXBhc3MgdGhlDQpzYWZlIG5hbWUgZ2V0dGVycyBzaW5jZSB0aGUgc2ln
bmFsZWQgYml0IGlzIGFscmVhZHkgc2V0Lg0KDQpGb3IgZG1hX2ZlbmNlX2luaXQgd2UgYWxzbyBu
ZWVkIHRvIHVzZSB0aGUgbmV3IHRyYWNlcG9pbnQgY2xhc3Mgc2luY2UgdGhlDQpyY3UgcmVhZCBs
b2NrIGlzIG5vdCBoZWxkIHRoZXJlLCBhbmQgd2UgY2FuIGRvIHRoZSBzYW1lIGZvciB0aGUgZW5h
YmxlDQpzaWduYWxpbmcgc2luY2UgdGhlcmUgd2UgYXJlIGNlcnRhaW4gdGhlIGZlbmNlIGNhbm5v
dCBiZSBzaWduYWxlZCB3aGlsZQ0Kd2UgYXJlIGhvbGRpbmcgdGhlIGxvY2sgYW5kIGhhdmUgZXZl
biB2YWxpZGF0ZWQgdGhlIGZlbmNlLT5vcHMuDQoNClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1
bGluIDx0dnJ0a28udXJzdWxpbkBpZ2FsaWEuY29tPg0KRml4ZXM6IDU0MWM4ZjI0NjhiOSAoImRt
YS1idWY6IGRldGFjaCBmZW5jZSBvcHMgb24gc2lnbmFsIHYzIikNCkNjOiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpDYzogUGhpbGlwcCBTdGFubmVyIDxwaGFz
dGFAa2VybmVsLm9yZz4NCkNjOiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xs
YWJvcmEuY29tPg0KQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZw0KQ2M6IGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZw0KLS0tDQogZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5j
ICAgICAgfCAgMyArKy0NCiBpbmNsdWRlL3RyYWNlL2V2ZW50cy9kbWFfZmVuY2UuaCB8IDMzICsr
KysrKysrKysrKysrKysrKysrKysrKysrKystLS0tDQogMiBmaWxlcyBjaGFuZ2VkLCAzMSBpbnNl
cnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQppbmRleCBhMmFhODJm
NGVlZGQuLmIzYmZhNjk0M2E4ZSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVu
Y2UuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQpAQCAtMzYzLDYgKzM2Myw4
IEBAIHZvaWQgZG1hX2ZlbmNlX3NpZ25hbF90aW1lc3RhbXBfbG9ja2VkKHN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlLA0KIAkJCQkgICAgICAmZmVuY2UtPmZsYWdzKSkpDQogCQlyZXR1cm47DQogDQor
CXRyYWNlX2RtYV9mZW5jZV9zaWduYWxlZChmZW5jZSk7DQorDQogCS8qDQogCSAqIFdoZW4gbmVp
dGhlciBhIHJlbGVhc2Ugbm9yIGEgd2FpdCBvcGVyYXRpb24gaXMgc3BlY2lmaWVkIHNldCB0aGUg
b3BzDQogCSAqIHBvaW50ZXIgdG8gTlVMTCB0byBhbGxvdyB0aGUgZmVuY2Ugc3RydWN0dXJlIHRv
IGJlY29tZSBpbmRlcGVuZGVudA0KQEAgLTM3Nyw3ICszNzksNiBAQCB2b2lkIGRtYV9mZW5jZV9z
aWduYWxfdGltZXN0YW1wX2xvY2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwNCiANCiAJZmVu
Y2UtPnRpbWVzdGFtcCA9IHRpbWVzdGFtcDsNCiAJc2V0X2JpdChETUFfRkVOQ0VfRkxBR19USU1F
U1RBTVBfQklULCAmZmVuY2UtPmZsYWdzKTsNCi0JdHJhY2VfZG1hX2ZlbmNlX3NpZ25hbGVkKGZl
bmNlKTsNCiANCiAJbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKGN1ciwgdG1wLCAmY2JfbGlzdCwg
bm9kZSkgew0KIAkJSU5JVF9MSVNUX0hFQUQoJmN1ci0+bm9kZSk7DQpkaWZmIC0tZ2l0IGEvaW5j
bHVkZS90cmFjZS9ldmVudHMvZG1hX2ZlbmNlLmggYi9pbmNsdWRlL3RyYWNlL2V2ZW50cy9kbWFf
ZmVuY2UuaA0KaW5kZXggM2FiYmE0NWMwNjAxLi45ZTBjYjljZTIzODggMTAwNjQ0DQotLS0gYS9p
bmNsdWRlL3RyYWNlL2V2ZW50cy9kbWFfZmVuY2UuaA0KKysrIGIvaW5jbHVkZS90cmFjZS9ldmVu
dHMvZG1hX2ZlbmNlLmgNCkBAIC05LDEyICs5LDM3IEBADQogDQogc3RydWN0IGRtYV9mZW5jZTsN
CiANCitERUNMQVJFX0VWRU5UX0NMQVNTKGRtYV9mZW5jZSwNCisNCisJVFBfUFJPVE8oc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2UpLA0KKw0KKwlUUF9BUkdTKGZlbmNlKSwNCisNCisJVFBfU1RSVUNU
X19lbnRyeSgNCisJCV9fc3RyaW5nKGRyaXZlciwgZG1hX2ZlbmNlX2RyaXZlcl9uYW1lKGZlbmNl
KSkNCisJCV9fc3RyaW5nKHRpbWVsaW5lLCBkbWFfZmVuY2VfdGltZWxpbmVfbmFtZShmZW5jZSkp
DQorCQlfX2ZpZWxkKHVuc2lnbmVkIGludCwgY29udGV4dCkNCisJCV9fZmllbGQodW5zaWduZWQg
aW50LCBzZXFubykNCisJKSwNCisNCisJVFBfZmFzdF9hc3NpZ24oDQorCQlfX2Fzc2lnbl9zdHIo
ZHJpdmVyKTsNCisJCV9fYXNzaWduX3N0cih0aW1lbGluZSk7DQorCQlfX2VudHJ5LT5jb250ZXh0
ID0gZmVuY2UtPmNvbnRleHQ7DQorCQlfX2VudHJ5LT5zZXFubyA9IGZlbmNlLT5zZXFubzsNCisJ
KSwNCisNCisJVFBfcHJpbnRrKCJkcml2ZXI9JXMgdGltZWxpbmU9JXMgY29udGV4dD0ldSBzZXFu
bz0ldSIsDQorCQkgIF9fZ2V0X3N0cihkcml2ZXIpLCBfX2dldF9zdHIodGltZWxpbmUpLCBfX2Vu
dHJ5LT5jb250ZXh0LA0KKwkJICBfX2VudHJ5LT5zZXFubykNCispOw0KKw0KIC8qDQogICogU2Fm
ZSBvbmx5IGZvciBjYWxsIHNpdGVzIHdoaWNoIGFyZSBndWFyYW50ZWVkIHRvIG5vdCByYWNlIHdp
dGggZmVuY2UNCiAgKiBzaWduYWxpbmcsaG9sZGluZyB0aGUgZmVuY2UtPmxvY2sgYW5kIGhhdmlu
ZyBjaGVja2VkIGZvciBub3Qgc2lnbmFsZWQsIG9yIHRoZQ0KICAqIHNpZ25hbGluZyBwYXRoIGl0
c2VsZi4NCiAgKi8NCi1ERUNMQVJFX0VWRU5UX0NMQVNTKGRtYV9mZW5jZSwNCitERUNMQVJFX0VW
RU5UX0NMQVNTKGRtYV9mZW5jZV9vcHMsDQogDQogCVRQX1BST1RPKHN0cnVjdCBkbWFfZmVuY2Ug
KmZlbmNlKSwNCiANCkBAIC00Niw3ICs3MSw3IEBAIERFRklORV9FVkVOVChkbWFfZmVuY2UsIGRt
YV9mZW5jZV9lbWl0LA0KIAlUUF9BUkdTKGZlbmNlKQ0KICk7DQogDQotREVGSU5FX0VWRU5UKGRt
YV9mZW5jZSwgZG1hX2ZlbmNlX2luaXQsDQorREVGSU5FX0VWRU5UKGRtYV9mZW5jZV9vcHMsIGRt
YV9mZW5jZV9pbml0LA0KIA0KIAlUUF9QUk9UTyhzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSksDQog
DQpAQCAtNjAsMTQgKzg1LDE0IEBAIERFRklORV9FVkVOVChkbWFfZmVuY2UsIGRtYV9mZW5jZV9k
ZXN0cm95LA0KIAlUUF9BUkdTKGZlbmNlKQ0KICk7DQogDQotREVGSU5FX0VWRU5UKGRtYV9mZW5j
ZSwgZG1hX2ZlbmNlX2VuYWJsZV9zaWduYWwsDQorREVGSU5FX0VWRU5UKGRtYV9mZW5jZV9vcHMs
IGRtYV9mZW5jZV9lbmFibGVfc2lnbmFsLA0KIA0KIAlUUF9QUk9UTyhzdHJ1Y3QgZG1hX2ZlbmNl
ICpmZW5jZSksDQogDQogCVRQX0FSR1MoZmVuY2UpDQogKTsNCiANCi1ERUZJTkVfRVZFTlQoZG1h
X2ZlbmNlLCBkbWFfZmVuY2Vfc2lnbmFsZWQsDQorREVGSU5FX0VWRU5UKGRtYV9mZW5jZV9vcHMs
IGRtYV9mZW5jZV9zaWduYWxlZCwNCiANCiAJVFBfUFJPVE8oc3RydWN0IGRtYV9mZW5jZSAqZmVu
Y2UpLA0KIA0KLS0gDQoyLjUyLjANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
