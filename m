Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2ErDFOZl5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:44:06 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E817431F28
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:44:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 330FE404C4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:44:05 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id F2AAD40498
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Apr 2026 08:32:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=CuUWnSyB;
	dmarc=pass (policy=none) header.from=igalia.com;
	spf=pass (lists.linaro.org: domain of tvrtko.ursulin@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=tvrtko.ursulin@igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=TrNNJa1+30iJ08uCK6HKe3RckGkPHTEMVi6lOyyvx68=; b=CuUWnSyBc+gBlHsJ6JFDHP+Qtf
	pYJKQUPbpDJPB+ikIjqI7CwS79YPl/gtFyztASty4lFrrP/eCHLgR8A/JcSIWK+bhzJOV6m/7P6Um
	F+evbjOHn5PLzTEDSb8CxfnFPAlGZ5r540IJQ2voDNDGEzuh/PZ2zOD6Rk4IeFs7G/Tk4p8b4v3oO
	XeV1EpmK9m2cL1nLEZFyWA+pX3H2v54vMcnqwMEJ+eG4+TTSspVKAhf3TuftyonkI+BLJ4OD4GNOZ
	2pcA5zMUzVgPl7KmgzEzjypymMO2zZYZYJum1JxHgRHL9OefR/vvdT69aVmtHqVTG3EEZHWtgYkbl
	QrOmjsbw==;
Received: from [90.240.106.137] (helo=localhost)
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1wCvfO-00GHZU-Td; Wed, 15 Apr 2026 10:32:11 +0200
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 15 Apr 2026 09:32:07 +0100
Message-ID: <20260415083207.40513-2-tvrtko.ursulin@igalia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260415083207.40513-1-tvrtko.ursulin@igalia.com>
References: <20260415083207.40513-1-tvrtko.ursulin@igalia.com>
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: tvrtko.ursulin@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4ULCFHVR56ED4BCJWH7MEFPG4CRNLCZL
X-Message-ID-Hash: 4ULCFHVR56ED4BCJWH7MEFPG4CRNLCZL
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:42:33 +0000
CC: kernel-dev@igalia.com, Tvrtko Ursulin <tvrtko.ursulin@igalia.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Philipp Stanner <phasta@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/2] dma-fence: Fix potential tracepoint null pointer dereferences
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4ULCFHVR56ED4BCJWH7MEFPG4CRNLCZL/>
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
	DATE_IN_PAST(1.00)[129];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,igalia.com:mid,igalia.com:email,amd.com:email]
X-Rspamd-Queue-Id: 1E817431F28
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
bS1zaWdAbGlzdHMubGluYXJvLm9yZw0KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNo
cmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2Uu
YyAgICAgIHwgIDMgKystDQogaW5jbHVkZS90cmFjZS9ldmVudHMvZG1hX2ZlbmNlLmggfCA0MCAr
KysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLQ0KIDIgZmlsZXMgY2hhbmdlZCwgMzYgaW5z
ZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KaW5kZXggYTJhYTgy
ZjRlZWRkLi5iM2JmYTY5NDNhOGUgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZl
bmNlLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KQEAgLTM2Myw2ICszNjMs
OCBAQCB2b2lkIGRtYV9mZW5jZV9zaWduYWxfdGltZXN0YW1wX2xvY2tlZChzdHJ1Y3QgZG1hX2Zl
bmNlICpmZW5jZSwNCiAJCQkJICAgICAgJmZlbmNlLT5mbGFncykpKQ0KIAkJcmV0dXJuOw0KIA0K
Kwl0cmFjZV9kbWFfZmVuY2Vfc2lnbmFsZWQoZmVuY2UpOw0KKw0KIAkvKg0KIAkgKiBXaGVuIG5l
aXRoZXIgYSByZWxlYXNlIG5vciBhIHdhaXQgb3BlcmF0aW9uIGlzIHNwZWNpZmllZCBzZXQgdGhl
IG9wcw0KIAkgKiBwb2ludGVyIHRvIE5VTEwgdG8gYWxsb3cgdGhlIGZlbmNlIHN0cnVjdHVyZSB0
byBiZWNvbWUgaW5kZXBlbmRlbnQNCkBAIC0zNzcsNyArMzc5LDYgQEAgdm9pZCBkbWFfZmVuY2Vf
c2lnbmFsX3RpbWVzdGFtcF9sb2NrZWQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsDQogDQogCWZl
bmNlLT50aW1lc3RhbXAgPSB0aW1lc3RhbXA7DQogCXNldF9iaXQoRE1BX0ZFTkNFX0ZMQUdfVElN
RVNUQU1QX0JJVCwgJmZlbmNlLT5mbGFncyk7DQotCXRyYWNlX2RtYV9mZW5jZV9zaWduYWxlZChm
ZW5jZSk7DQogDQogCWxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShjdXIsIHRtcCwgJmNiX2xpc3Qs
IG5vZGUpIHsNCiAJCUlOSVRfTElTVF9IRUFEKCZjdXItPm5vZGUpOw0KZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvdHJhY2UvZXZlbnRzL2RtYV9mZW5jZS5oIGIvaW5jbHVkZS90cmFjZS9ldmVudHMvZG1h
X2ZlbmNlLmgNCmluZGV4IDNhYmJhNDVjMDYwMS4uNWIxMGE5ZTA2ZmI0IDEwMDY0NA0KLS0tIGEv
aW5jbHVkZS90cmFjZS9ldmVudHMvZG1hX2ZlbmNlLmgNCisrKyBiL2luY2x1ZGUvdHJhY2UvZXZl
bnRzL2RtYV9mZW5jZS5oDQpAQCAtOSwxMiArOSw0MCBAQA0KIA0KIHN0cnVjdCBkbWFfZmVuY2U7
DQogDQorREVDTEFSRV9FVkVOVF9DTEFTUyhkbWFfZmVuY2UsDQorDQorCVRQX1BST1RPKHN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlKSwNCisNCisJVFBfQVJHUyhmZW5jZSksDQorDQorCVRQX1NUUlVD
VF9fZW50cnkoDQorCQlfX3N0cmluZyhkcml2ZXIsIGRtYV9mZW5jZV9kcml2ZXJfbmFtZShmZW5j
ZSkpDQorCQlfX3N0cmluZyh0aW1lbGluZSwgZG1hX2ZlbmNlX3RpbWVsaW5lX25hbWUoZmVuY2Up
KQ0KKwkJX19maWVsZCh1bnNpZ25lZCBpbnQsIGNvbnRleHQpDQorCQlfX2ZpZWxkKHVuc2lnbmVk
IGludCwgc2Vxbm8pDQorCSksDQorDQorCVRQX2Zhc3RfYXNzaWduKA0KKwkJX19hc3NpZ25fc3Ry
KGRyaXZlcik7DQorCQlfX2Fzc2lnbl9zdHIodGltZWxpbmUpOw0KKwkJX19lbnRyeS0+Y29udGV4
dCA9IGZlbmNlLT5jb250ZXh0Ow0KKwkJX19lbnRyeS0+c2Vxbm8gPSBmZW5jZS0+c2Vxbm87DQor
CSksDQorDQorCVRQX3ByaW50aygiZHJpdmVyPSVzIHRpbWVsaW5lPSVzIGNvbnRleHQ9JXUgc2Vx
bm89JXUiLA0KKwkJICBfX2dldF9zdHIoZHJpdmVyKSwgX19nZXRfc3RyKHRpbWVsaW5lKSwgX19l
bnRyeS0+Y29udGV4dCwNCisJCSAgX19lbnRyeS0+c2Vxbm8pDQorKTsNCisNCiAvKg0KICAqIFNh
ZmUgb25seSBmb3IgY2FsbCBzaXRlcyB3aGljaCBhcmUgZ3VhcmFudGVlZCB0byBub3QgcmFjZSB3
aXRoIGZlbmNlDQotICogc2lnbmFsaW5nLGhvbGRpbmcgdGhlIGZlbmNlLT5sb2NrIGFuZCBoYXZp
bmcgY2hlY2tlZCBmb3Igbm90IHNpZ25hbGVkLCBvciB0aGUNCi0gKiBzaWduYWxpbmcgcGF0aCBp
dHNlbGYuDQorICogc2lnbmFsaW5nLCBob2xkaW5nIHRoZSBmZW5jZS0+bG9jayBhbmQgaGF2aW5n
IGNoZWNrZWQgZm9yIG5vdCBzaWduYWxlZCwgb3INCisgKiB0aGUgc2lnbmFsaW5nIHBhdGggaXRz
ZWxmLg0KKyAqDQorICogVE9ETzogUmVtb3ZlIHRoZSBuZWVkIGZvciB0aGlzIGV2ZW50IGNsYXNz
IHdoZW4gZHJpdmVycyBzd2l0Y2ggdG8gaW5kZXBlbmRlbnQNCisgKiAgICAgICBmZW5jZXMuDQog
ICovDQotREVDTEFSRV9FVkVOVF9DTEFTUyhkbWFfZmVuY2UsDQorREVDTEFSRV9FVkVOVF9DTEFT
UyhkbWFfZmVuY2Vfb3BzLA0KIA0KIAlUUF9QUk9UTyhzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSks
DQogDQpAQCAtNDYsNyArNzQsNyBAQCBERUZJTkVfRVZFTlQoZG1hX2ZlbmNlLCBkbWFfZmVuY2Vf
ZW1pdCwNCiAJVFBfQVJHUyhmZW5jZSkNCiApOw0KIA0KLURFRklORV9FVkVOVChkbWFfZmVuY2Us
IGRtYV9mZW5jZV9pbml0LA0KK0RFRklORV9FVkVOVChkbWFfZmVuY2Vfb3BzLCBkbWFfZmVuY2Vf
aW5pdCwNCiANCiAJVFBfUFJPVE8oc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpLA0KIA0KQEAgLTYw
LDE0ICs4OCwxNCBAQCBERUZJTkVfRVZFTlQoZG1hX2ZlbmNlLCBkbWFfZmVuY2VfZGVzdHJveSwN
CiAJVFBfQVJHUyhmZW5jZSkNCiApOw0KIA0KLURFRklORV9FVkVOVChkbWFfZmVuY2UsIGRtYV9m
ZW5jZV9lbmFibGVfc2lnbmFsLA0KK0RFRklORV9FVkVOVChkbWFfZmVuY2Vfb3BzLCBkbWFfZmVu
Y2VfZW5hYmxlX3NpZ25hbCwNCiANCiAJVFBfUFJPVE8oc3RydWN0IGRtYV9mZW5jZSAqZmVuY2Up
LA0KIA0KIAlUUF9BUkdTKGZlbmNlKQ0KICk7DQogDQotREVGSU5FX0VWRU5UKGRtYV9mZW5jZSwg
ZG1hX2ZlbmNlX3NpZ25hbGVkLA0KK0RFRklORV9FVkVOVChkbWFfZmVuY2Vfb3BzLCBkbWFfZmVu
Y2Vfc2lnbmFsZWQsDQogDQogCVRQX1BST1RPKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKSwNCiAN
Ci0tIA0KMi41Mi4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
