Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6007868B5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 09:38:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E07941597
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 07:38:50 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 776AE3F672
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Aug 2023 07:38:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=JvZadWCE;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2276A65AF5;
	Thu, 24 Aug 2023 07:38:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69CD6C433CA;
	Thu, 24 Aug 2023 07:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692862698;
	bh=qTc11hboeB2aZlOqkN91NN/Dw5CZWbyrOr80wSzYNm4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JvZadWCEBYotqkspkGwfoN/lfsikJ/T6fYB+lxsBQ4+b/7xuDAS+euYAqFWJjjorV
	 nJaf7bDOyNhZLRm3jEvgi+JdXdxxzS9roTINN1HfZo41vRV8EC4z/4GLmh1r3q/RAT
	 gwV4hMG5CwA6dEYGxHZe7CV7AYsnuIf7L1K2fVUfHwsFcPxScxjf8LE9ya9ZtVuewB
	 7I8t1tgs8gXolFV3dApvgXNSvl5c9lqSMMkqraj0/2d3Werd/kFOz6G6cKvASlNYXe
	 uJw42JOzUyihKE3BMX638v9Uw9GDCzksJVdFaGOIElhLbpHTxhaocarxF+4KPLuNti
	 pOPqUkbedTifg==
From: Lee Jones <lee@kernel.org>
To: lee@kernel.org
Date: Thu, 24 Aug 2023 08:37:03 +0100
Message-ID: <20230824073710.2677348-19-lee@kernel.org>
X-Mailer: git-send-email 2.42.0.rc1.204.g551eb34607-goog
In-Reply-To: <20230824073710.2677348-1-lee@kernel.org>
References: <20230824073710.2677348-1-lee@kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 776AE3F672
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org:c];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,redhat.com,lists.freedesktop.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 2TIMK5KNJAX5SIHOSXPGCBK3TUBKUFOC
X-Message-ID-Hash: 2TIMK5KNJAX5SIHOSXPGCBK3TUBKUFOC
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Danilo Krummrich <dakr@redhat.com>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 18/20] drm/drm_gpuva_mgr: Remove set but unused variable 'prev'
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2TIMK5KNJAX5SIHOSXPGCBK3TUBKUFOC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6DQoNCiBkcml2
ZXJzL2dwdS9kcm0vZHJtX2dwdXZhX21nci5jOiBJbiBmdW5jdGlvbiDigJhfX2RybV9ncHV2YV9z
bV9tYXDigJk6DQogZHJpdmVycy9ncHUvZHJtL2RybV9ncHV2YV9tZ3IuYzoxMDc5OjM5OiB3YXJu
aW5nOiB2YXJpYWJsZSDigJhwcmV24oCZIHNldCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1z
ZXQtdmFyaWFibGVdDQoNClNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlQGtlcm5lbC5vcmc+
DQotLS0NCkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50
ZWwuY29tPg0KQ2M6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4NCkNjOiBUaG9t
YXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4NCkNjOiBEYXZpZCBBaXJsaWUgPGFp
cmxpZWRAZ21haWwuY29tPg0KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4NCkNj
OiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KQ2M6ICJDaHJpc3RpYW4g
S8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KQ2M6IERhbmlsbyBLcnVtbXJpY2gg
PGRha3JAcmVkaGF0LmNvbT4NCkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpD
YzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnDQotLS0NCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2dwdXZhX21nci5jIHwgMTAgKysr
Ky0tLS0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0p
DQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dwdXZhX21nci5jIGIvZHJpdmVy
cy9ncHUvZHJtL2RybV9ncHV2YV9tZ3IuYw0KaW5kZXggZjg2YmZhZDc0ZmY4YS4uYWQ5OWM5Y2Zl
ZGFjNyAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ3B1dmFfbWdyLmMNCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9kcm1fZ3B1dmFfbWdyLmMNCkBAIC0xMDc2LDcgKzEwNzYsNyBAQCBf
X2RybV9ncHV2YV9zbV9tYXAoc3RydWN0IGRybV9ncHV2YV9tYW5hZ2VyICptZ3IsDQogCQkgICB1
NjQgcmVxX2FkZHIsIHU2NCByZXFfcmFuZ2UsDQogCQkgICBzdHJ1Y3QgZHJtX2dlbV9vYmplY3Qg
KnJlcV9vYmosIHU2NCByZXFfb2Zmc2V0KQ0KIHsNCi0Jc3RydWN0IGRybV9ncHV2YSAqdmEsICpu
ZXh0LCAqcHJldiA9IE5VTEw7DQorCXN0cnVjdCBkcm1fZ3B1dmEgKnZhLCAqbmV4dDsNCiAJdTY0
IHJlcV9lbmQgPSByZXFfYWRkciArIHJlcV9yYW5nZTsNCiAJaW50IHJldDsNCiANCkBAIC0xMTA2
LDcgKzExMDYsNyBAQCBfX2RybV9ncHV2YV9zbV9tYXAoc3RydWN0IGRybV9ncHV2YV9tYW5hZ2Vy
ICptZ3IsDQogCQkJCXJldCA9IG9wX3VubWFwX2NiKG9wcywgcHJpdiwgdmEsIG1lcmdlKTsNCiAJ
CQkJaWYgKHJldCkNCiAJCQkJCXJldHVybiByZXQ7DQotCQkJCWdvdG8gbmV4dDsNCisJCQkJY29u
dGludWU7DQogCQkJfQ0KIA0KIAkJCWlmIChlbmQgPiByZXFfZW5kKSB7DQpAQCAtMTE1MSw3ICsx
MTUxLDcgQEAgX19kcm1fZ3B1dmFfc21fbWFwKHN0cnVjdCBkcm1fZ3B1dmFfbWFuYWdlciAqbWdy
LA0KIAkJCQlyZXQgPSBvcF9yZW1hcF9jYihvcHMsIHByaXYsICZwLCBOVUxMLCAmdSk7DQogCQkJ
CWlmIChyZXQpDQogCQkJCQlyZXR1cm4gcmV0Ow0KLQkJCQlnb3RvIG5leHQ7DQorCQkJCWNvbnRp
bnVlOw0KIAkJCX0NCiANCiAJCQlpZiAoZW5kID4gcmVxX2VuZCkgew0KQEAgLTExODQsNyArMTE4
NCw3IEBAIF9fZHJtX2dwdXZhX3NtX21hcChzdHJ1Y3QgZHJtX2dwdXZhX21hbmFnZXIgKm1nciwN
CiAJCQkJcmV0ID0gb3BfdW5tYXBfY2Iob3BzLCBwcml2LCB2YSwgbWVyZ2UpOw0KIAkJCQlpZiAo
cmV0KQ0KIAkJCQkJcmV0dXJuIHJldDsNCi0JCQkJZ290byBuZXh0Ow0KKwkJCQljb250aW51ZTsN
CiAJCQl9DQogDQogCQkJaWYgKGVuZCA+IHJlcV9lbmQpIHsNCkBAIC0xMjA1LDggKzEyMDUsNiBA
QCBfX2RybV9ncHV2YV9zbV9tYXAoc3RydWN0IGRybV9ncHV2YV9tYW5hZ2VyICptZ3IsDQogCQkJ
CWJyZWFrOw0KIAkJCX0NCiAJCX0NCi1uZXh0Og0KLQkJcHJldiA9IHZhOw0KIAl9DQogDQogCXJl
dHVybiBvcF9tYXBfY2Iob3BzLCBwcml2LA0KLS0gDQoyLjQyLjAucmMxLjIwNC5nNTUxZWIzNDYw
Ny1nb29nDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
