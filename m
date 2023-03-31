Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 727136D1C47
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 31 Mar 2023 11:28:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8257E3F580
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 31 Mar 2023 09:28:14 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 33B7D3F598
	for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Mar 2023 09:27:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=GXZqS0n3;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 5C6A5B82DAE;
	Fri, 31 Mar 2023 09:27:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49991C433D2;
	Fri, 31 Mar 2023 09:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680254821;
	bh=jDg9+LbHBtf4EjDGettNNrjuuWGpis85RdG5aiSWD5I=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GXZqS0n3DzEGbnhm/VuFgz81qhHhbB8LYxa+QNGAK8aCAKZfMDsCONopQkz8C59WJ
	 g+wiN/k7a9am8lJiu10gLlcLLq0pkMCDKLjQUF9kQV0/UzS6ZgKXtvMjql8GREQSDj
	 JLo/9iiWbrsgQvqctkGbq4tBXdPctKCLSWoKS7w3/uO3PUHxqYSQvycxPNZIa4dQhe
	 ETiYPunbpUdXC1m0XmEaMVB4f1zGu8ws65dTCpINbY9ntnfw+Kmw5iIWHAZGE0U+Rh
	 /HgCOd+PyR8UBGJPb2K5PUtZV95W4tDsGUbWREGq14UCvHYGepF2JwZpMrlSLkVwu6
	 P1tN1uJeoFwmA==
From: Lee Jones <lee@kernel.org>
To: lee@kernel.org
Date: Fri, 31 Mar 2023 10:26:04 +0100
Message-Id: <20230331092607.700644-17-lee@kernel.org>
X-Mailer: git-send-email 2.40.0.348.gf938b09366-goog
In-Reply-To: <20230331092607.700644-1-lee@kernel.org>
References: <20230331092607.700644-1-lee@kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 33B7D3F598
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
Message-ID-Hash: AI5KFHJGUNIZOV3CLK2GOPVBBIPZ23E2
X-Message-ID-Hash: AI5KFHJGUNIZOV3CLK2GOPVBBIPZ23E2
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 16/19] drm/i915/i915_vma: Provide one missing param and demote another non-kerneldoc header
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AI5KFHJGUNIZOV3CLK2GOPVBBIPZ23E2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6DQoNCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jOjc1Njogd2FybmluZzogRnVuY3Rpb24gcGFyYW1l
dGVyIG9yIG1lbWJlciAnd3cnIG5vdCBkZXNjcmliZWQgaW4gJ2k5MTVfdm1hX2luc2VydCcNCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jOjE3NDQ6IHdhcm5pbmc6IEZ1bmN0aW9uIHBh
cmFtZXRlciBvciBtZW1iZXIgJ3ZtYScgbm90IGRlc2NyaWJlZCBpbiAnaTkxNV92bWFfZGVzdHJv
eV9sb2NrZWQnDQoNCkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29t
Pg0KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4N
CkNjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQpDYzogVHZydGtvIFVy
c3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4NCkNjOiBEYXZpZCBBaXJsaWUg
PGFpcmxpZWRAZ21haWwuY29tPg0KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4N
CkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KQ2M6ICJDaHJpc3Rp
YW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KQ2M6IGludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpD
YzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnDQpTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZUBrZXJuZWwub3JnPg0KLS0t
DQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYyB8IDMgKystDQogMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1h
LmMNCmluZGV4IGY1MWZkOWZkNGM4OWMuLjIwYTQ0Nzg4OTk5ZTUgMTAwNjQ0DQotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3ZtYS5jDQpAQCAtNzM5LDYgKzczOSw3IEBAIGJvb2wgaTkxNV9nZW1fdmFsaWRfZ3R0X3Nw
YWNlKHN0cnVjdCBpOTE1X3ZtYSAqdm1hLCB1bnNpZ25lZCBsb25nIGNvbG9yKQ0KIC8qKg0KICAq
IGk5MTVfdm1hX2luc2VydCAtIGZpbmRzIGEgc2xvdCBmb3IgdGhlIHZtYSBpbiBpdHMgYWRkcmVz
cyBzcGFjZQ0KICAqIEB2bWE6IHRoZSB2bWENCisgKiBAd3c6IEFuIG9wdGlvbmFsIHN0cnVjdCBp
OTE1X2dlbV93d19jdHgNCiAgKiBAc2l6ZTogcmVxdWVzdGVkIHNpemUgaW4gYnl0ZXMgKGNhbiBi
ZSBsYXJnZXIgdGhhbiB0aGUgVk1BKQ0KICAqIEBhbGlnbm1lbnQ6IHJlcXVpcmVkIGFsaWdubWVu
dA0KICAqIEBmbGFnczogbWFzayBvZiBQSU5fKiBmbGFncyB0byB1c2UNCkBAIC0xNzE0LDcgKzE3
MTUsNyBAQCBzdGF0aWMgdm9pZCByZWxlYXNlX3JlZmVyZW5jZXMoc3RydWN0IGk5MTVfdm1hICp2
bWEsIHN0cnVjdCBpbnRlbF9ndCAqZ3QsDQogCWk5MTVfdm1hX2ZyZWUodm1hKTsNCiB9DQogDQot
LyoqDQorLyoNCiAgKiBpOTE1X3ZtYV9kZXN0cm95X2xvY2tlZCAtIFJlbW92ZSBhbGwgd2VhayBy
ZWZlcmVuY2UgdG8gdGhlIHZtYSBhbmQgcHV0DQogICogdGhlIGluaXRpYWwgcmVmZXJlbmNlLg0K
ICAqDQotLSANCjIuNDAuMC4zNDguZ2Y5MzhiMDkzNjYtZ29vZw0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
