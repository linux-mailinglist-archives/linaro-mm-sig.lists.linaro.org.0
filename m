Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E074D4EF207
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Apr 2022 16:46:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 18D18401EC
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Apr 2022 14:46:31 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 588573EC22
	for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Apr 2022 14:46:26 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 76B3BB824AF;
	Fri,  1 Apr 2022 14:46:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37A8DC3410F;
	Fri,  1 Apr 2022 14:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1648824384;
	bh=FdC1Qi/w1GcVPIE3V0IbzsA9PxSqblnKMj//IRcgbGA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LuHGdYN21AXqakC0bwvy6l/qBRr4Kgzm4qw+5JU4S4KXzzwJk+agyLvQCiiYgssIK
	 9IJOTZVYx5O9jwbcTaqzUkDGzoov6bz4cN8IRvtZSCEWvyu6farLXFPNs3428Ee5pU
	 ytfSgSAW0RXCRQW0XWdIyJoP6XjcFCHx9nd+xuJNdpum4VbpwtJm4f55IeYnfNpDnN
	 8i/ETbuas+aNHVRpsCaCLwgJSTmiM7OJuoowMQywmmdBckwDe3kcT8/lBFSWpUMOPH
	 tioeDONo1wybylr7fpsVxdvXBWOFqpp3ZD8Xb4RJu/I2YXTuHou5m/hL9oczv622Rm
	 xqSHkb7pw+Dug==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Fri,  1 Apr 2022 10:45:46 -0400
Message-Id: <20220401144612.1955177-3-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220401144612.1955177-1-sashal@kernel.org>
References: <20220401144612.1955177-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Message-ID-Hash: T4HEO53LMLVDKKYIWCG4GHIJWAUSRGQX
X-Message-ID-Hash: T4HEO53LMLVDKKYIWCG4GHIJWAUSRGQX
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Xin Xiong <xiongx18@fudan.edu.cn>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Xin Tan <tanxin.ctf@gmail.com>, Alex Deucher <alexander.deucher@amd.com>, Sasha Levin <sashal@kernel.org>, Xinhui.Pan@amd.com, airlied@linux.ie, daniel@ffwll.ch, JinhuiEric.Huang@amd.com, nirmoy.das@amd.com, Ken.Xue@amd.com, Lang.Yu@amd.com, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH AUTOSEL 4.19 03/29] drm/amd/amdgpu/amdgpu_cs: fix refcount leak of a dma_fence obj
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T4HEO53LMLVDKKYIWCG4GHIJWAUSRGQX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogWGluIFhpb25nIDx4aW9uZ3gxOEBmdWRhbi5lZHUuY24+DQoNClsgVXBzdHJlYW0gY29t
bWl0IGRmY2VkNDRmMTIyYzUwMDAwNGE0OGVjYzhkYjUxNmJiNmEyOTVhMWIgXQ0KDQpUaGlzIGlz
c3VlIHRha2VzIHBsYWNlIGluIGFuIGVycm9yIHBhdGggaW4NCmFtZGdwdV9jc19mZW5jZV90b19o
YW5kbGVfaW9jdGwoKS4gV2hlbiBgaW5mby0+aW4ud2hhdGAgZmFsbHMgaW50bw0KZGVmYXVsdCBj
YXNlLCB0aGUgZnVuY3Rpb24gc2ltcGx5IHJldHVybnMgLUVJTlZBTCwgZm9yZ2V0dGluZyB0bw0K
ZGVjcmVtZW50IHRoZSByZWZlcmVuY2UgY291bnQgb2YgYSBkbWFfZmVuY2Ugb2JqLCB3aGljaCBp
cyBidW1wZWQNCmVhcmxpZXIgYnkgYW1kZ3B1X2NzX2dldF9mZW5jZSgpLiBUaGlzIG1heSByZXN1
bHQgaW4gcmVmZXJlbmNlIGNvdW50DQpsZWFrcy4NCg0KRml4IGl0IGJ5IGRlY3JlYXNpbmcgdGhl
IHJlZmNvdW50IG9mIHNwZWNpZmljIG9iamVjdCBiZWZvcmUgcmV0dXJuaW5nDQp0aGUgZXJyb3Ig
Y29kZS4NCg0KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4NClNpZ25lZC1vZmYtYnk6IFhpbiBYaW9uZyA8eGlvbmd4MThAZnVkYW4uZWR1LmNu
Pg0KU2lnbmVkLW9mZi1ieTogWGluIFRhbiA8dGFueGluLmN0ZkBnbWFpbC5jb20+DQpTaWduZWQt
b2ZmLWJ5OiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+DQpTaWduZWQt
b2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+DQotLS0NCiBkcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3MuYyB8IDEgKw0KIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3MuYw0KaW5kZXgg
ODEwMDFkODc5MzIyLi4wMjMzMDkyOTZiZmMgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfY3MuYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2NzLmMNCkBAIC0xNDY5LDYgKzE0NjksNyBAQCBpbnQgYW1kZ3B1X2NzX2ZlbmNlX3Rv
X2hhbmRsZV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLA0KIAkJcmV0
dXJuIDA7DQogDQogCWRlZmF1bHQ6DQorCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsNCiAJCXJldHVy
biAtRUlOVkFMOw0KIAl9DQogfQ0KLS0gDQoyLjM0LjENCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
