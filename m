Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A3C6D1C41
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 31 Mar 2023 11:27:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 561E53EC71
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 31 Mar 2023 09:27:55 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id C0E993F596
	for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Mar 2023 09:26:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=SkUG3+i1;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4246662660;
	Fri, 31 Mar 2023 09:26:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3188C433EF;
	Fri, 31 Mar 2023 09:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680254812;
	bh=Br+vno0fyLfK0vDswtuXDu7r0uipb+c1SKUt2eq3Kbw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SkUG3+i1jOY+ZEq6u8LzdDURgEfUOlF4Z7UiHPMkVapNIeNGaMOyzsrIzdkCEmx0W
	 3nA24C0K7BqYIC9ZqtAHfsTRVFi3iTF0HKxSJOEMgVmy7ca6Tiax8sX13sQoOqwyy2
	 I1zhwSuIKil8isuOeF4SrJDxDZvyXBVUfXSvamyNZyyO1UhbcKgCJlhnvivt1buAKL
	 /zTPC6+rLWaRpQWPLTtxTW+fYTH6o1x4fbuWuE77rKyweF1tf3fx000sHfczmMBI3s
	 KZNAiwpypQvIa5QkLy+df8VMnGfvHHiA1yd96VZwgVvQPTJ0CEVoYgiZKY+KTK4orD
	 xXg0CZqn+Ko/w==
From: Lee Jones <lee@kernel.org>
To: lee@kernel.org
Date: Fri, 31 Mar 2023 10:26:01 +0100
Message-Id: <20230331092607.700644-14-lee@kernel.org>
X-Mailer: git-send-email 2.40.0.348.gf938b09366-goog
In-Reply-To: <20230331092607.700644-1-lee@kernel.org>
References: <20230331092607.700644-1-lee@kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C0E993F596
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[52.25.139.140:received,139.178.84.217:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,linux.intel.com,intel.com,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: E252XJ5YJ6XUXWO3OCDRPVG7V6GYS256
X-Message-ID-Hash: E252XJ5YJ6XUXWO3OCDRPVG7V6GYS256
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Matthew Auld <matthew.auld@intel.com>, Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 13/19] drm/i915/gem/i915_gem_object: Demote non-kerneldoc header with no param descriptions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E252XJ5YJ6XUXWO3OCDRPVG7V6GYS256/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6DQoNCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmM6ODg3OiB3YXJuaW5nOiBGdW5j
dGlvbiBwYXJhbWV0ZXIgb3IgbWVtYmVyICdvYmonIG5vdCBkZXNjcmliZWQgaW4gJ2k5MTVfZ2Vt
X29iamVjdF9oYXNfdW5rbm93bl9zdGF0ZScNCg0KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3Vs
YUBsaW51eC5pbnRlbC5jb20+DQpDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5A
bGludXguaW50ZWwuY29tPg0KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNv
bT4NCkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPg0K
Q2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBnbWFpbC5jb20+DQpDYzogRGFuaWVsIFZldHRlciA8
ZGFuaWVsQGZmd2xsLmNoPg0KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5v
cmc+DQpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpD
YzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPg0KQ2M6IE5pcm1veSBEYXMg
PG5pcm1veS5kYXNAaW50ZWwuY29tPg0KQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogbGludXgtbWVkaWFA
dmdlci5rZXJuZWwub3JnDQpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQpTaWdu
ZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZUBrZXJuZWwub3JnPg0KLS0tDQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jIHwgMiArLQ0KIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX29iamVjdC5jDQppbmRleCBlNmQ0ZWZkZTRmYzUxLi40NjY2YmI4MmYzMTJjIDEw
MDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jDQor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMNCkBAIC04NzUs
NyArODc1LDcgQEAgaW50IGk5MTVfZ2VtX29iamVjdF93YWl0X21vdmluZ19mZW5jZShzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLA0KIAlyZXR1cm4gcmV0IDwgMCA/IHJldCA6IDA7DQog
fQ0KIA0KLS8qKg0KKy8qDQogICogaTkxNV9nZW1fb2JqZWN0X2hhc191bmtub3duX3N0YXRlIC0g
UmV0dXJuIHRydWUgaWYgdGhlIG9iamVjdCBiYWNraW5nIHBhZ2VzIGFyZQ0KICAqIGluIGFuIHVu
a25vd25fc3RhdGUuIFRoaXMgbWVhbnMgdGhhdCB1c2Vyc3BhY2UgbXVzdCBORVZFUiBiZSBhbGxv
d2VkIHRvIHRvdWNoDQogICogdGhlIHBhZ2VzLCB3aXRoIGVpdGhlciB0aGUgR1BVIG9yIENQVS4N
Ci0tIA0KMi40MC4wLjM0OC5nZjkzOGIwOTM2Ni1nb29nDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
