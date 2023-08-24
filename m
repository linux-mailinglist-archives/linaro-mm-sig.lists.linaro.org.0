Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C0F786895
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 09:38:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5EA463F672
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 07:38:12 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id C066843C9F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Aug 2023 07:37:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=JmDzg8On;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6A1A465936;
	Thu, 24 Aug 2023 07:37:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 450BDC433CB;
	Thu, 24 Aug 2023 07:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692862673;
	bh=U79uOFgK1bj6OBPdyCVW/Y7lNsxketkReBm6q4ZUwCk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JmDzg8On00UB4Q0g8nYLzgcTFG+0jmSIk+AItEutJcS9zfCGrEHl1Egwwtk45sm9M
	 08caRBSAaufQjsHXGJHS+LhNj+FeSpaLQgv9Ao7eXBheuBy+xTaj3y+06wYxXZReuZ
	 RECrvC6TsMRAAmVfagdJ6HwxZCVdar/o/7wIsnNthArxO2rtzuyqzid4ek8egFK37e
	 UQDPau2EcOY1cUPyLjDtYIldPt00bOhbTTOImRCXsS+6eIncUkQsZmE0/M3+/8WGF7
	 k0mTLR+G8d1WWAUOTuM25MeyjBo/tJPNqiYwa8T2gKV01GP9Ob1gKAW6rt66lLxnrH
	 4zs/NXCLrYa4Q==
From: Lee Jones <lee@kernel.org>
To: lee@kernel.org
Date: Thu, 24 Aug 2023 08:36:55 +0100
Message-ID: <20230824073710.2677348-11-lee@kernel.org>
X-Mailer: git-send-email 2.42.0.rc1.204.g551eb34607-goog
In-Reply-To: <20230824073710.2677348-1-lee@kernel.org>
References: <20230824073710.2677348-1-lee@kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: C066843C9F
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[10];
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
Message-ID-Hash: F3HO7VD37IT4JXWRTKCXTSSNBS7ICG3D
X-Message-ID-Hash: F3HO7VD37IT4JXWRTKCXTSSNBS7ICG3D
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 10/20] drm/scheduler/sched_main: Provide short description of missing param 'result'
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F3HO7VD37IT4JXWRTKCXTSSNBS7ICG3D/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6DQoNCiBkcml2
ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYzoyNjY6IHdhcm5pbmc6IEZ1bmN0aW9u
IHBhcmFtZXRlciBvciBtZW1iZXIgJ3Jlc3VsdCcgbm90IGRlc2NyaWJlZCBpbiAnZHJtX3NjaGVk
X2pvYl9kb25lJw0KDQpTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZUBrZXJuZWwub3JnPg0K
LS0tDQpDYzogTHViZW4gVHVpa292IDxsdWJlbi50dWlrb3ZAYW1kLmNvbT4NCkNjOiBEYXZpZCBB
aXJsaWUgPGFpcmxpZWRAZ21haWwuY29tPg0KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZnds
bC5jaD4NCkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KQ2M6ICJD
aHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KQ2M6IGRyaS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcN
CkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCi0tLQ0KIGRyaXZlcnMvZ3B1L2Ry
bS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jIHwgMSArDQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21h
aW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jDQppbmRleCA1MDYz
NzFjNDI3NDUxLi4xZWY1NThjZGE2MGNlIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Nj
aGVkdWxlci9zY2hlZF9tYWluLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2No
ZWRfbWFpbi5jDQpAQCAtMjU5LDYgKzI1OSw3IEBAIGRybV9zY2hlZF9ycV9zZWxlY3RfZW50aXR5
X2ZpZm8oc3RydWN0IGRybV9zY2hlZF9ycSAqcnEpDQogLyoqDQogICogZHJtX3NjaGVkX2pvYl9k
b25lIC0gY29tcGxldGUgYSBqb2INCiAgKiBAc19qb2I6IHBvaW50ZXIgdG8gdGhlIGpvYiB3aGlj
aCBpcyBkb25lDQorICogQHJlc3VsdDogZmVuY2UgZXJyb3IgdG8gZm9yd2FyZCBhbmQgc2V0DQog
ICoNCiAgKiBGaW5pc2ggdGhlIGpvYidzIGZlbmNlIGFuZCB3YWtlIHVwIHRoZSB3b3JrZXIgdGhy
ZWFkLg0KICAqLw0KLS0gDQoyLjQyLjAucmMxLjIwNC5nNTUxZWIzNDYwNy1nb29nDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
