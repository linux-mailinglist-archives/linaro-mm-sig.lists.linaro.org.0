Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A35EEAC560B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 May 2025 19:17:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BB5534600B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 May 2025 17:17:12 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id F17EC45FF5
	for <linaro-mm-sig@lists.linaro.org>; Tue, 27 May 2025 17:17:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=NNg+bJxU;
	spf=pass (lists.linaro.org: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 88E695C3DD6;
	Tue, 27 May 2025 17:14:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D13EC4CEEB;
	Tue, 27 May 2025 17:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1748366220;
	bh=rXR+j7SzkBphvPCQmVf0AQbUzKSDcaE0HgfxPMuKOsI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NNg+bJxUOAt/PcwQYa/noEn0OWxych4EvIChVQ67RktpCrXiU09rgXyZgKCMj61/B
	 yB7URlKSEYR/BqFJNXFZ0BkmIDjn55P+414KAhI5N8sX02Ml1CKg1L5TajXRO9is+A
	 z5PoTN4te78iJMdKFp+qNmsBU8Hy9AhV69ZeEIvI=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Date: Tue, 27 May 2025 18:28:39 +0200
Message-ID: <20250527162510.435633025@linuxfoundation.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250527162445.028718347@linuxfoundation.org>
References: <20250527162445.028718347@linuxfoundation.org>
User-Agent: quilt/0.68
X-stable: review
X-Patchwork-Hint: ignore
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[17];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linuxfoundation.org,lists.linux.dev,suse.de,163.com,redhat.com,amd.com,linux.intel.com,kernel.org,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,collabora.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[linuxfoundation.org:+]
X-Rspamd-Queue-Id: F17EC45FF5
X-Spamd-Bar: --------
Message-ID-Hash: RRURUGTG77MXPVZXHIPPDOSMTISKFXPP
X-Message-ID-Hash: RRURUGTG77MXPVZXHIPPDOSMTISKFXPP
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, patches@lists.linux.dev, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andyshrk@163.com>, Anusha Srivatsa <asrivats@redhat.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Boris Brezillon <boris.brezillon@collabora.com>, Simona Vetter <simona.vetter@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 6.12 626/626] drm/gem: Internally test import_attach for imported objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RRURUGTG77MXPVZXHIPPDOSMTISKFXPP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Ni4xMi1zdGFibGUgcmV2aWV3IHBhdGNoLiAgSWYgYW55b25lIGhhcyBhbnkgb2JqZWN0aW9ucywg
cGxlYXNlIGxldCBtZSBrbm93Lg0KDQotLS0tLS0tLS0tLS0tLS0tLS0NCg0KRnJvbTogVGhvbWFz
IFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+DQoNCmNvbW1pdCA4MjYwNzMxY2NhZDA0
NTEyMDdiNDU4NDRiYjY2ZWIxNjFhMjA5MjE4IHVwc3RyZWFtLg0KDQpUZXN0IHN0cnVjdCBkcm1f
Z2VtX29iamVjdC5pbXBvcnRfYXR0YWNoIHRvIGRldGVjdCBpbXBvcnRlZCBvYmplY3RzLg0KDQpE
dXJpbmcgb2JqZWN0IGNsZW5hbnVwLCB0aGUgZG1hX2J1ZiBmaWVsZCBtaWdodCBiZSBOVUxMLiBU
ZXN0aW5nIGl0IGluDQphbiBvYmplY3QncyBmcmVlIGNhbGxiYWNrIHRoZW4gaW5jb3JyZWN0bHkg
ZG9lcyBhIGNsZWFudXAgYXMgZm9yIG5hdGl2ZQ0Kb2JqZWN0cy4gSGFwcGVucyBmb3IgY2FsbHMg
dG8gZHJtX21vZGVfZGVzdHJveV9kdW1iX2lvY3RsKCkgdGhhdA0KY2xlYXJzIHRoZSBkbWFfYnVm
IGZpZWxkIGluIGRybV9nZW1fb2JqZWN0X2V4cG9ydGVkX2RtYV9idWZfZnJlZSgpLg0KDQp2MzoN
Ci0gb25seSB0ZXN0IGZvciBpbXBvcnRfYXR0YWNoIChCb3JpcykNCnYyOg0KLSB1c2UgaW1wb3J0
X2F0dGFjaC5kbWFidWYgaW5zdGVhZCBvZiBkbWFfYnVmIChDaHJpc3RpYW4pDQoNClNpZ25lZC1v
ZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KRml4ZXM6IGI1
N2FhNDdkMzllOSAoImRybS9nZW06IFRlc3QgZm9yIGltcG9ydGVkIEdFTSBidWZmZXJzIHdpdGgg
aGVscGVyIikNClJlcG9ydGVkLWJ5OiBBbmR5IFlhbiA8YW5keXNocmtAMTYzLmNvbT4NCkNsb3Nl
czogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzM4ZDA5ZDM0LjQzNTQuMTk2Mzc5
YWE1NjAuQ29yZW1haWwuYW5keXNocmtAMTYzLmNvbS8NClRlc3RlZC1ieTogQW5keSBZYW4gPGFu
ZHlzaHJrQDE2My5jb20+DQpDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2Uu
ZGU+DQpDYzogQW51c2hhIFNyaXZhdHNhIDxhc3JpdmF0c0ByZWRoYXQuY29tPg0KQ2M6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCkNjOiBNYWFydGVuIExhbmto
b3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPg0KQ2M6IE1heGltZSBSaXBh
cmQgPG1yaXBhcmRAa2VybmVsLm9yZz4NCkNjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAZ21haWwu
Y29tPg0KQ2M6IFNpbW9uYSBWZXR0ZXIgPHNpbW9uYUBmZndsbC5jaD4NCkNjOiBTdW1pdCBTZW13
YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCkNjOiBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcNClJldmlld2VkLWJ5OiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXpp
bGxvbkBjb2xsYWJvcmEuY29tPg0KUmV2aWV3ZWQtYnk6IFNpbW9uYSBWZXR0ZXIgPHNpbW9uYS52
ZXR0ZXJAZmZ3bGwuY2g+DQpMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUwNDE2
MDY1ODIwLjI2MDc2LTEtdHppbW1lcm1hbm5Ac3VzZS5kZQ0KU2lnbmVkLW9mZi1ieTogR3JlZyBL
cm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4NCi0tLQ0KIGluY2x1ZGUv
ZHJtL2RybV9nZW0uaCB8ICAgIDMgKy0tDQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAyIGRlbGV0aW9ucygtKQ0KDQotLS0gYS9pbmNsdWRlL2RybS9kcm1fZ2VtLmgNCisrKyBiL2lu
Y2x1ZGUvZHJtL2RybV9nZW0uaA0KQEAgLTU4MCw4ICs1ODAsNyBAQCBzdGF0aWMgaW5saW5lIGJv
b2wgZHJtX2dlbV9vYmplY3RfaXNfc2hhDQogICovDQogc3RhdGljIGlubGluZSBib29sIGRybV9n
ZW1faXNfaW1wb3J0ZWQoY29uc3Qgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopDQogew0KLQkv
KiBUaGUgZG1hLWJ1ZidzIHByaXYgZmllbGQgcG9pbnRzIHRvIHRoZSBvcmlnaW5hbCBHRU0gb2Jq
ZWN0LiAqLw0KLQlyZXR1cm4gb2JqLT5kbWFfYnVmICYmIChvYmotPmRtYV9idWYtPnByaXYgIT0g
b2JqKTsNCisJcmV0dXJuICEhb2JqLT5pbXBvcnRfYXR0YWNoOw0KIH0NCiANCiAjaWZkZWYgQ09O
RklHX0xPQ0tERVANCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
