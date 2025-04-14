Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 342E0A8820A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 15:29:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 52037454D5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 13:29:33 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 689D5454D5
	for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Apr 2025 13:29:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=iVXAXUee;
	spf=pass (lists.linaro.org: domain of sashal@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=sashal@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id CCAB6A400D4;
	Mon, 14 Apr 2025 13:23:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85F4DC4CEE2;
	Mon, 14 Apr 2025 13:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744637357;
	bh=c4bb7948CzGoj3oK8R1FhfxFgh0zTsJGIPCWe8mgqO0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=iVXAXUeeFIpbuFrX1dt9n5owMHjvrN0THlc3RDTVhG/9QhBg7NlJOD8mxsnDigNar
	 JBWor0hZC+yxq4jVix51Y2dWZqkBwdNiPELjU1U4sBWQ6tTaQkOduj4KISU6M+xNyc
	 3fG4oF7sNvSRTVmwaWSHO/h4PKbnXAJofj4r8JOrImr7IaKWZdaAyfWISvv1or9ufl
	 2tXYTOGxPc5g45W+xiWZf/bA8q8YsJ9fkY41lUywjhWtAWErrhMeC+mFU0OeHxV8+b
	 oXxnw3MKKFeUj30uvFghqMHO0PFGXqtNzm8IJN8PhjO7S8VXcQPfmhz9VN+CejvF+1
	 gYK6wCc7kI26A==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 14 Apr 2025 09:28:28 -0400
Message-Id: <20250414132848.679855-11-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250414132848.679855-1-sashal@kernel.org>
References: <20250414132848.679855-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.12.23
X-Rspamd-Queue-Id: 689D5454D5
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[147.75.193.91:from];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[amd.com,ffwll.ch,kernel.org,gmail.com,linaro.org,intel.com,igalia.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[147.75.193.91:from,100.75.92.58:received];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: HZKWGAF6XQKL47J2IIROXGCO67QBA5JA
X-Message-ID-Hash: HZKWGAF6XQKL47J2IIROXGCO67QBA5JA
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Simona Vetter <simona.vetter@ffwll.ch>, Felix Kuehling <felix.kuehling@amd.com>, Pak Nin Lui <pak.lui@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Sasha Levin <sashal@kernel.org>, simona@ffwll.ch, sumit.semwal@linaro.org, Yunxiang.Li@amd.com, matthew.auld@intel.com, tvrtko.ursulin@igalia.com, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH AUTOSEL 6.12 11/30] drm/amdgpu: allow pinning DMA-bufs into VRAM if all importers can do P2P
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HZKWGAF6XQKL47J2IIROXGCO67QBA5JA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KDQpbIFVw
c3RyZWFtIGNvbW1pdCBmNWU3ZmFiZDFmNWM2NWIyZTA3N2VmY2RiMTE4Y2ZhNjdlYWU3MzExIF0N
Cg0KVHJ5IHBpbm5pbmcgaW50byBWUkFNIHRvIGFsbG93IFAyUCB3aXRoIFJETUEgTklDcyB3aXRo
b3V0IE9EUA0Kc3VwcG9ydCBpZiBhbGwgYXR0YWNobWVudHMgY2FuIGRvIFAyUC4gSWYgYW55IGF0
dGFjaG1lbnQgY2FuJ3QgZG8NClAyUCBqdXN0IHBpbiBpbnRvIEdUVCBpbnN0ZWFkLg0KDQpBY2tl
ZC1ieTogU2ltb25hIFZldHRlciA8c2ltb25hLnZldHRlckBmZndsbC5jaD4NClNpZ25lZC1vZmYt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NClNpZ25lZC1v
ZmYtYnk6IEZlbGl4IEt1ZWhsaW5nIDxmZWxpeC5rdWVobGluZ0BhbWQuY29tPg0KUmV2aWV3ZWQt
Ynk6IEZlbGl4IEt1ZWhsaW5nIDxmZWxpeC5rdWVobGluZ0BhbWQuY29tPg0KVGVzdGVkLWJ5OiBQ
YWsgTmluIEx1aSA8cGFrLmx1aUBhbWQuY29tPg0KQ2M6IFNpbW9uYSBWZXR0ZXIgPHNpbW9uYS52
ZXR0ZXJAZmZ3bGwuY2g+DQpTaWduZWQtb2ZmLWJ5OiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5k
ZXVjaGVyQGFtZC5jb20+DQpTaWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5l
bC5vcmc+DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5j
IHwgMjUgKysrKysrKysrKysrKysrLS0tLS0tDQogMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlv
bnMoKyksIDcgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X2RtYV9idWYuYw0KaW5kZXggOGU4MWE4M2QzN2Q4NC4uODMzOTAxNDNjMmU5ZiAxMDA2NDQN
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMNCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMNCkBAIC03MiwxMSAr
NzIsMjUgQEAgc3RhdGljIGludCBhbWRncHVfZG1hX2J1Zl9hdHRhY2goc3RydWN0IGRtYV9idWYg
KmRtYWJ1ZiwNCiAgKi8NCiBzdGF0aWMgaW50IGFtZGdwdV9kbWFfYnVmX3BpbihzdHJ1Y3QgZG1h
X2J1Zl9hdHRhY2htZW50ICphdHRhY2gpDQogew0KLQlzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9i
aiA9IGF0dGFjaC0+ZG1hYnVmLT5wcml2Ow0KLQlzdHJ1Y3QgYW1kZ3B1X2JvICpibyA9IGdlbV90
b19hbWRncHVfYm8ob2JqKTsNCisJc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiA9IGF0dGFjaC0+ZG1h
YnVmOw0KKwlzdHJ1Y3QgYW1kZ3B1X2JvICpibyA9IGdlbV90b19hbWRncHVfYm8oZG1hYnVmLT5w
cml2KTsNCisJdTMyIGRvbWFpbnMgPSBiby0+cHJlZmVycmVkX2RvbWFpbnM7DQogDQotCS8qIHBp
biBidWZmZXIgaW50byBHVFQgKi8NCi0JcmV0dXJuIGFtZGdwdV9ib19waW4oYm8sIEFNREdQVV9H
RU1fRE9NQUlOX0dUVCk7DQorCWRtYV9yZXN2X2Fzc2VydF9oZWxkKGRtYWJ1Zi0+cmVzdik7DQor
DQorCS8qDQorCSAqIFRyeSBwaW5uaW5nIGludG8gVlJBTSB0byBhbGxvdyBQMlAgd2l0aCBSRE1B
IE5JQ3Mgd2l0aG91dCBPRFANCisJICogc3VwcG9ydCBpZiBhbGwgYXR0YWNobWVudHMgY2FuIGRv
IFAyUC4gSWYgYW55IGF0dGFjaG1lbnQgY2FuJ3QgZG8NCisJICogUDJQIGp1c3QgcGluIGludG8g
R1RUIGluc3RlYWQuDQorCSAqLw0KKwlsaXN0X2Zvcl9lYWNoX2VudHJ5KGF0dGFjaCwgJmRtYWJ1
Zi0+YXR0YWNobWVudHMsIG5vZGUpDQorCQlpZiAoIWF0dGFjaC0+cGVlcjJwZWVyKQ0KKwkJCWRv
bWFpbnMgJj0gfkFNREdQVV9HRU1fRE9NQUlOX1ZSQU07DQorDQorCWlmIChkb21haW5zICYgQU1E
R1BVX0dFTV9ET01BSU5fVlJBTSkNCisJCWJvLT5mbGFncyB8PSBBTURHUFVfR0VNX0NSRUFURV9D
UFVfQUNDRVNTX1JFUVVJUkVEOw0KKw0KKwlyZXR1cm4gYW1kZ3B1X2JvX3BpbihibywgZG9tYWlu
cyk7DQogfQ0KIA0KIC8qKg0KQEAgLTEzMSw5ICsxNDUsNiBAQCBzdGF0aWMgc3RydWN0IHNnX3Rh
YmxlICphbWRncHVfZG1hX2J1Zl9tYXAoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNo
LA0KIAkJciA9IHR0bV9ib192YWxpZGF0ZSgmYm8tPnRibywgJmJvLT5wbGFjZW1lbnQsICZjdHgp
Ow0KIAkJaWYgKHIpDQogCQkJcmV0dXJuIEVSUl9QVFIocik7DQotDQotCX0gZWxzZSBpZiAoYm8t
PnRiby5yZXNvdXJjZS0+bWVtX3R5cGUgIT0gVFRNX1BMX1RUKSB7DQotCQlyZXR1cm4gRVJSX1BU
UigtRUJVU1kpOw0KIAl9DQogDQogCXN3aXRjaCAoYm8tPnRiby5yZXNvdXJjZS0+bWVtX3R5cGUp
IHsNCi0tIA0KMi4zOS41DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
