Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF876D1C2C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 31 Mar 2023 11:27:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EE72F3EC71
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 31 Mar 2023 09:27:16 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 03AE23E975
	for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Mar 2023 09:26:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=dzBRFbow;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 18DE4B82DAD;
	Fri, 31 Mar 2023 09:26:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05B61C4339E;
	Fri, 31 Mar 2023 09:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680254804;
	bh=zuwKMJNqTDoHBJoWH8QH3yXQEHwpZC6+8Slwblrz11M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dzBRFbowGUW/YExXI2jTQQk/JtNvslenNW0Y4g0oY2Dk6yMfna/AhJ0nRE8VSsS+3
	 PYWM9WyB+QL7TZ/0nfbfiIAHK53Q5l1qd2BolEBM4l6XaL26ixqrOzMRpF1C60ZEC/
	 umXpAj7gPpWGyMqN/FdC907acxLU3FNGj5QRZySmOGhvw0WUGaQW5sooG6ClxbOsMQ
	 P4lIpdMnyh1AKrCvBhDFrd5vMqY7Z/1NV2GNnAhBYfZlpGGDQMcbiYPGnLOU0OuYmc
	 YMFmUiDYTg8RvB8RkPeGnOoVxFTY8fkrLil7jOF093eJ5BTgmLjYn+P9+CSTeeUulc
	 mKn+attwDlEdA==
From: Lee Jones <lee@kernel.org>
To: lee@kernel.org
Date: Fri, 31 Mar 2023 10:25:59 +0100
Message-Id: <20230331092607.700644-12-lee@kernel.org>
X-Mailer: git-send-email 2.40.0.348.gf938b09366-goog
In-Reply-To: <20230331092607.700644-1-lee@kernel.org>
References: <20230331092607.700644-1-lee@kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 03AE23E975
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[52.25.139.140:received,145.40.68.75:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+a:ams.source.kernel.org:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:54825, ipnet:145.40.68.0/24, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,linux.intel.com,intel.com,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: YCMY6ZAP4TMBBYM4O55BRXCUXHTEASWX
X-Message-ID-Hash: YCMY6ZAP4TMBBYM4O55BRXCUXHTEASWX
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 11/19] drm/i915/gem/i915_gem_ttm_move: Provide a couple of missing descriptions for 'num_pages' and 'ctx'
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YCMY6ZAP4TMBBYM4O55BRXCUXHTEASWX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6DQoNCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtX21vdmUuYzoyNzI6IHdhcm5pbmc6IEZ1
bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ251bV9wYWdlcycgbm90IGRlc2NyaWJlZCBpbiAn
aTkxNV90dG1fbWVtY3B5X2FyZycNCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
dHRtX21vdmUuYzo1Njk6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ2N0
eCcgbm90IGRlc2NyaWJlZCBpbiAnaTkxNV90dG1fbW92ZScNCg0KQ2M6IEphbmkgTmlrdWxhIDxq
YW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+DQpDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMu
bGFodGluZW5AbGludXguaW50ZWwuY29tPg0KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZp
QGludGVsLmNvbT4NCkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50
ZWwuY29tPg0KQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBnbWFpbC5jb20+DQpDYzogRGFuaWVs
IFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPg0KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2Fs
QGxpbmFyby5vcmc+DQpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+DQpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KQ2M6IGRyaS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcN
CkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNClNpZ25lZC1vZmYtYnk6IExlZSBK
b25lcyA8bGVlQGtlcm5lbC5vcmc+DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fdHRtX21vdmUuYyB8IDMgKysrDQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bV9t
b3ZlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtX21vdmUuYw0KaW5k
ZXggZDAzMDE4MmNhMTc2NC4uZGQxODhkZmNjNDIzZSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG1fbW92ZS5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fdHRtX21vdmUuYw0KQEAgLTI1Myw2ICsyNTMsNyBAQCBzdGF0aWMg
c3RydWN0IGRtYV9mZW5jZSAqaTkxNV90dG1fYWNjZWxfbW92ZShzdHJ1Y3QgdHRtX2J1ZmZlcl9v
YmplY3QgKmJvLA0KICAqIEBfc3JjX2l0ZXI6IFN0b3JhZ2Ugc3BhY2UgZm9yIHRoZSBzb3VyY2Ug
a21hcCBpdGVyYXRvci4NCiAgKiBAZHN0X2l0ZXI6IFBvaW50ZXIgdG8gdGhlIGRlc3RpbmF0aW9u
IGttYXAgaXRlcmF0b3IuDQogICogQHNyY19pdGVyOiBQb2ludGVyIHRvIHRoZSBzb3VyY2Uga21h
cCBpdGVyYXRvci4NCisgKiBAbnVtX3BhZ2VzOiBOdW1iZXIgb2YgcGFnZXMNCiAgKiBAY2xlYXI6
IFdoZXRoZXIgdG8gY2xlYXIgaW5zdGVhZCBvZiBjb3B5Lg0KICAqIEBzcmNfcnNndDogUmVmY291
bnRlZCBzY2F0dGVyLWdhdGhlciBsaXN0IG9mIHNvdXJjZSBtZW1vcnkuDQogICogQGRzdF9yc2d0
OiBSZWZjb3VudGVkIHNjYXR0ZXItZ2F0aGVyIGxpc3Qgb2YgZGVzdGluYXRpb24gbWVtb3J5Lg0K
QEAgLTU1Nyw2ICs1NTgsOCBAQCBfX2k5MTVfdHRtX21vdmUoc3RydWN0IHR0bV9idWZmZXJfb2Jq
ZWN0ICpibywNCiAgKiBpOTE1X3R0bV9tb3ZlIC0gVGhlIFRUTSBtb3ZlIGNhbGxiYWNrIHVzZWQg
YnkgaTkxNS4NCiAgKiBAYm86IFRoZSBidWZmZXIgb2JqZWN0Lg0KICAqIEBldmljdDogV2hldGhl
ciB0aGlzIGlzIGFuIGV2aWN0aW9uLg0KKyAqIEBjdHg6IFBvaW50ZXIgdG8gYSBzdHJ1Y3QgdHRt
X29wZXJhdGlvbl9jdHggaW5kaWNhdGluZyBob3cgdGhlIHdhaXRzIHNob3VsZCBiZQ0KKyAqICAg
ICAgIHBlcmZvcm1lZCBpZiB3YWl0aW5nDQogICogQGRzdF9tZW06IFRoZSBkZXN0aW5hdGlvbiB0
dG0gcmVzb3VyY2UuDQogICogQGhvcDogSWYgd2UgbmVlZCBtdWx0aWhvcCwgd2hhdCB0ZW1wb3Jh
cnkgbWVtb3J5IHR5cGUgdG8gbW92ZSB0by4NCiAgKg0KLS0gDQoyLjQwLjAuMzQ4LmdmOTM4YjA5
MzY2LWdvb2cNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
