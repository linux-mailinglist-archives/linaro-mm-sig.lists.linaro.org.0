Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 424687868A1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 09:38:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 49941413F0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 07:38:31 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 89E2143BBE
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Aug 2023 07:38:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=fIKJHkj2;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 33C3A65A43;
	Thu, 24 Aug 2023 07:38:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39DC7C433CA;
	Thu, 24 Aug 2023 07:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692862680;
	bh=wEDqvEDOA3vxGIk6EexeUNwMrFtaZlnfxVGm/bMEvr4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fIKJHkj2WVKxeDY/g/PYgsJrPDBu4r0Q2mLQv1WsRpbImdKaDv6Sfi5UmzJHGHlZP
	 /EzC9AQIvwtXl4YkhKBHfnpES4Kp8p0iTysNLX9AZzq9SmHEL4qzBlc/UUDiIZmAoO
	 WjYmTlFojar9djx8fDMorymgkC55/WK22bS4j4KI6Q+CO7XDQuWtDYlT9f/Nr2wf96
	 7Mr2FJAUzQfB3jXamFypkoSKtt0meqhPSRXnRXM4yp9OFzESP3XmU5gNnoJF3G3mt2
	 4UY0GjWBH/koZ4QBgtg/CXHBCwTnJV3cKnMFbNPFwSUldIyq21t5k6dMjg1ZJQZmkQ
	 XslXiYwP5lzgQ==
From: Lee Jones <lee@kernel.org>
To: lee@kernel.org
Date: Thu, 24 Aug 2023 08:36:57 +0100
Message-ID: <20230824073710.2677348-13-lee@kernel.org>
X-Mailer: git-send-email 2.42.0.rc1.204.g551eb34607-goog
In-Reply-To: <20230824073710.2677348-1-lee@kernel.org>
References: <20230824073710.2677348-1-lee@kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 89E2143BBE
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
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 5GHNQC5GY2EOHT5RMUKH53HDLCKX4LKD
X-Message-ID-Hash: 5GHNQC5GY2EOHT5RMUKH53HDLCKX4LKD
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 12/20] drm/amd/amdgpu/amdgpu_device: Provide suitable description for param 'xcc_id'
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5GHNQC5GY2EOHT5RMUKH53HDLCKX4LKD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6DQoNCiBkcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmM6NTE2OiB3YXJuaW5nOiBGdW5j
dGlvbiBwYXJhbWV0ZXIgb3IgbWVtYmVyICd4Y2NfaWQnIG5vdCBkZXNjcmliZWQgaW4gJ2FtZGdw
dV9tbV93cmVnX21taW9fcmxjJw0KDQpTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZUBrZXJu
ZWwub3JnPg0KLS0tDQpDYzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29t
Pg0KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KQ2M6
ICJQYW4sIFhpbmh1aSIgPFhpbmh1aS5QYW5AYW1kLmNvbT4NCkNjOiBEYXZpZCBBaXJsaWUgPGFp
cmxpZWRAZ21haWwuY29tPg0KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4NCkNj
OiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KQ2M6IGFtZC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
Q2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZw0KQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZw0KLS0tDQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rldmlj
ZS5jIHwgMSArDQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspDQoNCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmMgYi9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmMNCmluZGV4IGU3N2YwNDhjOTlkODUuLmQ0
ZjBlNDMyN2RkM2YgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfZGV2aWNlLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZp
Y2UuYw0KQEAgLTUwNyw2ICs1MDcsNyBAQCB2b2lkIGFtZGdwdV9kZXZpY2Vfd3JlZyhzdHJ1Y3Qg
YW1kZ3B1X2RldmljZSAqYWRldiwNCiAgKiBAYWRldjogYW1kZ3B1X2RldmljZSBwb2ludGVyDQog
ICogQHJlZzogbW1pby9ybGMgcmVnaXN0ZXINCiAgKiBAdjogdmFsdWUgdG8gd3JpdGUNCisgKiBA
eGNjX2lkOiB4Y2MgYWNjZWxlcmF0ZWQgY29tcHV0ZSBjb3JlIGlkDQogICoNCiAgKiB0aGlzIGZ1
bmN0aW9uIGlzIGludm9rZWQgb25seSBmb3IgdGhlIGRlYnVnZnMgcmVnaXN0ZXIgYWNjZXNzDQog
ICovDQotLSANCjIuNDIuMC5yYzEuMjA0Lmc1NTFlYjM0NjA3LWdvb2cNCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
