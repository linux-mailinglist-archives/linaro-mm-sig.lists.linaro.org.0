Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 273C26D1C3B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 31 Mar 2023 11:27:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 399963E977
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 31 Mar 2023 09:27:36 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 6B2CE3F58A
	for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Mar 2023 09:26:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=vDS8Yn2p;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 94AF4B82DAD;
	Fri, 31 Mar 2023 09:26:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56981C433D2;
	Fri, 31 Mar 2023 09:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680254808;
	bh=r5fKy7MNhH7WvIHl7tsH50Rr1NXN1GtPNTehilUeT48=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=vDS8Yn2pSVeuQBmaB8f1DwbAVhzhZF9HxT+M3EzlgbyrEoPsPn4xDEpKOO/s9FYu8
	 b7QndHG5T6MTXL2VI1lL2uvOUiQfx7Vpt/hvVpfXK3XoKnJT2O+kfYj/pbeq/WO2+q
	 ozxEsrOgsxmdxXZjEatn5QXbtkAh9aQxCnZ2PmsbYo8x7Eij9i1brW5omIQZlU+2nC
	 26lu12CzGPnEY7zfz9xs20xUDXYAhEsOhT66IsbYnsciyZyS57vwOnp37JfreRCNwV
	 /vOoCDLTCO3S8mWs47FhhrH9WbfnzV9Lr/PCvLAiSMk0yxdgltPtn1RNov73Hsv2Rr
	 zl4p1and8/Jjg==
From: Lee Jones <lee@kernel.org>
To: lee@kernel.org
Date: Fri, 31 Mar 2023 10:26:00 +0100
Message-Id: <20230331092607.700644-13-lee@kernel.org>
X-Mailer: git-send-email 2.40.0.348.gf938b09366-goog
In-Reply-To: <20230331092607.700644-1-lee@kernel.org>
References: <20230331092607.700644-1-lee@kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spam-Level: ***
X-Rspamd-Queue-Id: 6B2CE3F58A
X-Spamd-Result: default: False [3.30 / 15.00];
	URIBL_BLACK(7.50)[chris-wilson.co.uk:email];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[145.40.68.75:from,52.25.139.140:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,linux.intel.com,intel.com,gmail.com,ffwll.ch,linaro.org,amd.com,chris-wilson.co.uk,lists.freedesktop.org,lists.linaro.org];
	ASN(0.00)[asn:54825, ipnet:145.40.68.0/24, country:US];
	RCPT_COUNT_TWELVE(0.00)[15];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,none];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	R_SPF_ALLOW(0.00)[+a:ams.source.kernel.org:c];
	RCVD_COUNT_TWO(0.00)[2]
X-Spamd-Bar: +++
Message-ID-Hash: 43HN5QPUX7XUBHP37NK2UBEYYQ2QSFRM
X-Message-ID-Hash: 43HN5QPUX7XUBHP37NK2UBEYYQ2QSFRM
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 12/19] drm/i915/gem/i915_gem_wait: Provide function name to validate the kerneldoc header
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/43HN5QPUX7XUBHP37NK2UBEYYQ2QSFRM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spam: Yes

Rml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6DQoNCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fd2FpdC5jOjE2NDogd2FybmluZzogVGhpcyBj
b21tZW50IHN0YXJ0cyB3aXRoICcvKionLCBidXQgaXNuJ3QgYSBrZXJuZWwtZG9jIGNvbW1lbnQu
IFJlZmVyIERvY3VtZW50YXRpb24vZG9jLWd1aWRlL2tlcm5lbC1kb2MucnN0DQoNCkNjOiBKYW5p
IE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPg0KQ2M6IEpvb25hcyBMYWh0aW5l
biA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4NCkNjOiBSb2RyaWdvIFZpdmkgPHJv
ZHJpZ28udml2aUBpbnRlbC5jb20+DQpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGxpbnV4LmludGVsLmNvbT4NCkNjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAZ21haWwuY29tPg0K
Q2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4NCkNjOiBTdW1pdCBTZW13YWwgPHN1
bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPg0KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPg0KQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBkcmktZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQpD
YzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQpTaWduZWQtb2ZmLWJ5OiBMZWUgSm9u
ZXMgPGxlZUBrZXJuZWwub3JnPg0KLS0tDQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX3dhaXQuYyB8IDIgKy0NCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV93YWl0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fd2FpdC5jDQppbmRl
eCBlNmUwMWMyYTc0YTY1Li40YTMzYWQyZDEyMmJkIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3dhaXQuYw0KQEAgLTE2MSw3ICsxNjEsNyBAQCBpOTE1X2dlbV9vYmplY3Rf
d2FpdF9wcmlvcml0eShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLA0KIH0NCiANCiAv
KioNCi0gKiBXYWl0cyBmb3IgcmVuZGVyaW5nIHRvIHRoZSBvYmplY3QgdG8gYmUgY29tcGxldGVk
DQorICogaTkxNV9nZW1fb2JqZWN0X3dhaXQgLSBXYWl0cyBmb3IgcmVuZGVyaW5nIHRvIHRoZSBv
YmplY3QgdG8gYmUgY29tcGxldGVkDQogICogQG9iajogaTkxNSBnZW0gb2JqZWN0DQogICogQGZs
YWdzOiBob3cgdG8gd2FpdCAodW5kZXIgYSBsb2NrLCBmb3IgYWxsIHJlbmRlcmluZyBvciBqdXN0
IGZvciB3cml0ZXMgZXRjKQ0KICAqIEB0aW1lb3V0OiBob3cgbG9uZyB0byB3YWl0DQotLSANCjIu
NDAuMC4zNDguZ2Y5MzhiMDkzNjYtZ29vZw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
