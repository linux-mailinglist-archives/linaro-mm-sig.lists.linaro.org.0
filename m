Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DD96C430F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Mar 2023 07:22:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A16E3F48A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Mar 2023 06:22:51 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 16D7B3E8AA
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Mar 2023 08:23:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=V8QPGrUr;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 3CBE1B824FB;
	Fri, 17 Mar 2023 08:23:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63E07C4339C;
	Fri, 17 Mar 2023 08:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679041380;
	bh=nglgtsvCUff3hoxAz81mxZbGLyBNAyLesQortl5pRh8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=V8QPGrUr1rKK/pkPnxyrGQHlhqrAhQAz9B8YoyGAyPlwfZjOEa/wZTrJiOl3B1f1V
	 dRxVSsRurlfTpiX7NHysvBEo50rrhwV7ryieiJGGqt3l0mxDh3dkKl91U+uhHHlmDL
	 0tz+cX1m9mSmXzZmkZQkmFPlZkFgsko4Mi+8B8w1UKwQWvuLXGAbXEeX6FQLNqL48l
	 0FokY7w66TNZ/OEGX8XGJbVq9+UaUP9LnL/f1pCIthEt1N3HMwuu4l5CKiqHj3OZnk
	 4GXEw1Z+hA0hi4+teyF1NiENjb6p+qso5uJhJG3VUvfklp9SUzJNG0Tt0fjPFtUDc8
	 wi2RowAwAVwrw==
From: Lee Jones <lee@kernel.org>
To: lee@kernel.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 17 Mar 2023 08:16:58 +0000
Message-Id: <20230317081718.2650744-18-lee@kernel.org>
X-Mailer: git-send-email 2.40.0.rc1.284.g88254d51c5-goog
In-Reply-To: <20230317081718.2650744-1-lee@kernel.org>
References: <20230317081718.2650744-1-lee@kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 16D7B3E8AA
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:ams.source.kernel.org:c];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	ASN(0.00)[asn:54825, ipnet:145.40.68.0/24, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,lists.linaro.org];
	URIBL_BLOCKED(0.00)[linaro.org:email,amd.com:email,ams.source.kernel.org:rdns,ams.source.kernel.org:helo,lists.freedesktop.org:email,ffwll.ch:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[]
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TBUJLF7K57KN4J5DIG6A6V7S7H7BACMU
X-Message-ID-Hash: TBUJLF7K57KN4J5DIG6A6V7S7H7BACMU
X-Mailman-Approved-At: Wed, 22 Mar 2023 06:21:08 +0000
CC: linux-kernel@vger.kernel.org, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Jack Xiao <Jack.Xiao@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>, amd-gfx@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 17/37] drm/amd/amdgpu/amdgpu_mes: Ensure amdgpu_bo_create_kernel()'s return value is checked
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TBUJLF7K57KN4J5DIG6A6V7S7H7BACMU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6DQoNCiBkcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfbWVzLmM6IEluIGZ1bmN0aW9uIOKAmGFtZGdw
dV9tZXNfY3R4X2FsbG9jX21ldGFfZGF0YeKAmToNCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfbWVzLmM6MTA5OToxMzogd2FybmluZzogdmFyaWFibGUg4oCYcuKAmSBzZXQgYnV0
IG5vdCB1c2VkIFstV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlXQ0KDQpDYzogQWxleCBEZXVjaGVy
IDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPg0KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KQ2M6ICJQYW4sIFhpbmh1aSIgPFhpbmh1aS5QYW5AYW1k
LmNvbT4NCkNjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAZ21haWwuY29tPg0KQ2M6IERhbmllbCBW
ZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4NCkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBs
aW5hcm8ub3JnPg0KQ2M6IEphY2sgWGlhbyA8SmFjay5YaWFvQGFtZC5jb20+DQpDYzogSGF3a2lu
ZyBaaGFuZyA8SGF3a2luZy5aaGFuZ0BhbWQuY29tPg0KQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnDQpDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KQ2M6IGxpbnV4
LW1lZGlhQHZnZXIua2VybmVsLm9yZw0KQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
Zw0KU2lnbmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWVAa2VybmVsLm9yZz4NCi0tLQ0KIGRyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9tZXMuYyB8IDUgKysrKysNCiAxIGZpbGUgY2hh
bmdlZCwgNSBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfbWVzLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
bWVzLmMNCmluZGV4IDgyZTI3YmQ0ZjAzODMuLjMwY2Q3MmNhMWVlZmQgMTAwNjQ0DQotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfbWVzLmMNCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9tZXMuYw0KQEAgLTExMDQsNiArMTEwNCwxMSBAQCBpbnQg
YW1kZ3B1X21lc19jdHhfYWxsb2NfbWV0YV9kYXRhKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2
LA0KIAkJCSAgICAmY3R4X2RhdGEtPm1ldGFfZGF0YV9vYmosDQogCQkJICAgICZjdHhfZGF0YS0+
bWV0YV9kYXRhX21jX2FkZHIsDQogCQkJICAgICZjdHhfZGF0YS0+bWV0YV9kYXRhX3B0cik7DQor
CWlmIChyKSB7DQorCQlkZXZfd2FybihhZGV2LT5kZXYsICIoJWQpIGNyZWF0ZSBDVFggYm8gZmFp
bGVkXG4iLCByKTsNCisJCXJldHVybiByOw0KKwl9DQorDQogCWlmICghY3R4X2RhdGEtPm1ldGFf
ZGF0YV9vYmopDQogCQlyZXR1cm4gLUVOT01FTTsNCiANCi0tIA0KMi40MC4wLnJjMS4yODQuZzg4
MjU0ZDUxYzUtZ29vZw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
