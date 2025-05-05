Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EB277AAA0C8
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 May 2025 00:38:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 04CBD45940
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 22:38:58 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 0819945938
	for <linaro-mm-sig@lists.linaro.org>; Mon,  5 May 2025 22:38:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=TjVWBrcG;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of sashal@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=sashal@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 32392A4CF83;
	Mon,  5 May 2025 22:33:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB8C3C4CEEE;
	Mon,  5 May 2025 22:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746484723;
	bh=UCniFifRyOgWkiIOjJhH5XF41uttbGOwqSC2QXJWxvg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TjVWBrcGazZLdJIIdnAORgzYGg7Pa70h3jVsoftIwO2YddFeBC76F3q0Tg0Ofb2Oz
	 hdBwBIxixQQrgvBK31HPSBW2a200iwlbj7ALbD2tRRVohuG+3tv5TQMpO5dfMTC/hk
	 iBFLyqrSeI4z2UlRBZ7fgDa3IKvy8jE8TCla6ZsFSpuyZ6/pQcm6ZDmfzZXpspHtn7
	 M+mDYinDkLllpXUS9ohn9UE2wrfCSHg81E/ljqb5GpqEKZm7CQf60CBuj54bP/tDVD
	 lWXdP7haBM329A101vd5kiQ/3XyPiOIGsptA8IK2CU7StKURjDmxSbRFV9BBnr8nyV
	 AabMod9vUxQ1g==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon,  5 May 2025 18:14:04 -0400
Message-Id: <20250505221419.2672473-628-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505221419.2672473-1-sashal@kernel.org>
References: <20250505221419.2672473-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.14.5
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0819945938
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[suse.de,163.com,redhat.com,amd.com,linux.intel.com,kernel.org,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,collabora.com];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:email,intel.com:email,linaro.org:email,suse.de:email];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: DLP7QRFFV52IECTG25ETIZDM4ARAO2XW
X-Message-ID-Hash: DLP7QRFFV52IECTG25ETIZDM4ARAO2XW
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andyshrk@163.com>, Anusha Srivatsa <asrivats@redhat.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Boris Brezillon <boris.brezillon@collabora.com>, Simona Vetter <simona.vetter@ffwll.ch>, Sasha Levin <sashal@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH AUTOSEL 6.14 628/642] drm/gem: Internally test import_attach for imported objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DLP7QRFFV52IECTG25ETIZDM4ARAO2XW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+DQoNClsgVXBzdHJl
YW0gY29tbWl0IDgyNjA3MzFjY2FkMDQ1MTIwN2I0NTg0NGJiNjZlYjE2MWEyMDkyMTggXQ0KDQpU
ZXN0IHN0cnVjdCBkcm1fZ2VtX29iamVjdC5pbXBvcnRfYXR0YWNoIHRvIGRldGVjdCBpbXBvcnRl
ZCBvYmplY3RzLg0KDQpEdXJpbmcgb2JqZWN0IGNsZW5hbnVwLCB0aGUgZG1hX2J1ZiBmaWVsZCBt
aWdodCBiZSBOVUxMLiBUZXN0aW5nIGl0IGluDQphbiBvYmplY3QncyBmcmVlIGNhbGxiYWNrIHRo
ZW4gaW5jb3JyZWN0bHkgZG9lcyBhIGNsZWFudXAgYXMgZm9yIG5hdGl2ZQ0Kb2JqZWN0cy4gSGFw
cGVucyBmb3IgY2FsbHMgdG8gZHJtX21vZGVfZGVzdHJveV9kdW1iX2lvY3RsKCkgdGhhdA0KY2xl
YXJzIHRoZSBkbWFfYnVmIGZpZWxkIGluIGRybV9nZW1fb2JqZWN0X2V4cG9ydGVkX2RtYV9idWZf
ZnJlZSgpLg0KDQp2MzoNCi0gb25seSB0ZXN0IGZvciBpbXBvcnRfYXR0YWNoIChCb3JpcykNCnYy
Og0KLSB1c2UgaW1wb3J0X2F0dGFjaC5kbWFidWYgaW5zdGVhZCBvZiBkbWFfYnVmIChDaHJpc3Rp
YW4pDQoNClNpZ25lZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNl
LmRlPg0KRml4ZXM6IGI1N2FhNDdkMzllOSAoImRybS9nZW06IFRlc3QgZm9yIGltcG9ydGVkIEdF
TSBidWZmZXJzIHdpdGggaGVscGVyIikNClJlcG9ydGVkLWJ5OiBBbmR5IFlhbiA8YW5keXNocmtA
MTYzLmNvbT4NCkNsb3NlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzM4ZDA5
ZDM0LjQzNTQuMTk2Mzc5YWE1NjAuQ29yZW1haWwuYW5keXNocmtAMTYzLmNvbS8NClRlc3RlZC1i
eTogQW5keSBZYW4gPGFuZHlzaHJrQDE2My5jb20+DQpDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6
aW1tZXJtYW5uQHN1c2UuZGU+DQpDYzogQW51c2hhIFNyaXZhdHNhIDxhc3JpdmF0c0ByZWRoYXQu
Y29tPg0KQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCkNj
OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPg0K
Q2M6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4NCkNjOiBEYXZpZCBBaXJsaWUg
PGFpcmxpZWRAZ21haWwuY29tPg0KQ2M6IFNpbW9uYSBWZXR0ZXIgPHNpbW9uYUBmZndsbC5jaD4N
CkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KQ2M6ICJDaHJpc3Rp
YW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KQ2M6IGRyaS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCkNjOiBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNClJldmlld2VkLWJ5OiBCb3JpcyBCcmV6aWxs
b24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPg0KUmV2aWV3ZWQtYnk6IFNpbW9uYSBW
ZXR0ZXIgPHNpbW9uYS52ZXR0ZXJAZmZ3bGwuY2g+DQpMaW5rOiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9yLzIwMjUwNDE2MDY1ODIwLjI2MDc2LTEtdHppbW1lcm1hbm5Ac3VzZS5kZQ0KU2lnbmVk
LW9mZi1ieTogU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwub3JnPg0KLS0tDQogaW5jbHVkZS9k
cm0vZHJtX2dlbS5oIHwgMyArLS0NCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIg
ZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fZ2VtLmggYi9pbmNs
dWRlL2RybS9kcm1fZ2VtLmgNCmluZGV4IDJiZjg5M2VhYmI0YjIuLmJjZDU0MDIwZDZiYTUgMTAw
NjQ0DQotLS0gYS9pbmNsdWRlL2RybS9kcm1fZ2VtLmgNCisrKyBiL2luY2x1ZGUvZHJtL2RybV9n
ZW0uaA0KQEAgLTU4NSw4ICs1ODUsNyBAQCBzdGF0aWMgaW5saW5lIGJvb2wgZHJtX2dlbV9vYmpl
Y3RfaXNfc2hhcmVkX2Zvcl9tZW1vcnlfc3RhdHMoc3RydWN0IGRybV9nZW1fb2JqZQ0KICAqLw0K
IHN0YXRpYyBpbmxpbmUgYm9vbCBkcm1fZ2VtX2lzX2ltcG9ydGVkKGNvbnN0IHN0cnVjdCBkcm1f
Z2VtX29iamVjdCAqb2JqKQ0KIHsNCi0JLyogVGhlIGRtYS1idWYncyBwcml2IGZpZWxkIHBvaW50
cyB0byB0aGUgb3JpZ2luYWwgR0VNIG9iamVjdC4gKi8NCi0JcmV0dXJuIG9iai0+ZG1hX2J1ZiAm
JiAob2JqLT5kbWFfYnVmLT5wcml2ICE9IG9iaik7DQorCXJldHVybiAhIW9iai0+aW1wb3J0X2F0
dGFjaDsNCiB9DQogDQogI2lmZGVmIENPTkZJR19MT0NLREVQDQotLSANCjIuMzkuNQ0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
