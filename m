Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD34A88241
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 15:32:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A346B454D7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 13:32:21 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 1A97A454D5
	for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Apr 2025 13:32:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=NhRCVoRv;
	spf=pass (lists.linaro.org: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7A98D5C5619;
	Mon, 14 Apr 2025 13:29:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97702C4CEE2;
	Mon, 14 Apr 2025 13:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744637524;
	bh=pwIExdFiYdxJXREBib34JoKBikEhRR4vg+205pXMkcw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NhRCVoRvkOHJlk3f5GOTo+ylU9cg9r4TR/95ZHdhJDH7nucBPIgFWhZXPnzqQmQuy
	 oavzVT28K61wcHmOhndo6i03vGOHBfuSjdlq78wTdZrYkWUaNV8USHDVAbnU/wvedw
	 EdFrds5B715M9EEA/ac1woHDSI7QJBqF5IJQ3grcHxzVPbdg0LMXH6/LdDJ62dyXk5
	 PPX+chQUSi07bvcTGiAFllSwbPU89mOL8Tz9QrdcxF1+rkl03jOEYPQ8e7eMkieavY
	 QPD5ZnN3H1IrIzrlshMAuFDwHcFH8pJvmAUPMZvOog/YHPg7yoOiUBGOxH2KusNpJl
	 SH34Ev7i7ObnA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 14 Apr 2025 09:31:49 -0400
Message-Id: <20250414133158.681045-2-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250414133158.681045-1-sashal@kernel.org>
References: <20250414133158.681045-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.10.236
X-Rspamd-Queue-Id: 1A97A454D5
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[139.178.84.217:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217:c];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[12];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received,139.178.84.217:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: KJGAJPSPXIYTDFPM56ULGXRD2XOQM6GX
X-Message-ID-Hash: KJGAJPSPXIYTDFPM56ULGXRD2XOQM6GX
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Xiaogang Chen <xiaogang.chen@amd.com>, Xiaogang Chen <Xiaogang.Chen@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sasha Levin <sashal@kernel.org>, kraxel@redhat.com, vivek.kasireddy@intel.com, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH AUTOSEL 5.10 02/11] udmabuf: fix a buf size overflow issue during udmabuf creation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KJGAJPSPXIYTDFPM56ULGXRD2XOQM6GX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogWGlhb2dhbmcgQ2hlbiA8eGlhb2dhbmcuY2hlbkBhbWQuY29tPg0KDQpbIFVwc3RyZWFt
IGNvbW1pdCAwMjFiYTdmMWJhYmQwMjllNzE0ZDEzYTZiZjI1NzFiMDhhZjk2ZDBmIF0NCg0KYnkg
Y2FzdGluZyBzaXplX2xpbWl0X21iIHRvIHU2NCAgd2hlbiBjYWxjdWxhdGUgcGdsaW1pdC4NCg0K
U2lnbmVkLW9mZi1ieTogWGlhb2dhbmcgQ2hlbjxYaWFvZ2FuZy5DaGVuQGFtZC5jb20+DQpMaW5r
OiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAyNTAzMjEx
NjQxMjYuMzI5NjM4LTEteGlhb2dhbmcuY2hlbkBhbWQuY29tDQpTaWduZWQtb2ZmLWJ5OiBDaHJp
c3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpTaWduZWQtb2ZmLWJ5OiBT
YXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvdWRt
YWJ1Zi5jIHwgMiArLQ0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYyBiL2RyaXZlcnMv
ZG1hLWJ1Zi91ZG1hYnVmLmMNCmluZGV4IDE0Yjc5NDU4YWM3ZjQuLjU5N2E5MjQzOGFmYzEgMTAw
NjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jDQorKysgYi9kcml2ZXJzL2RtYS1i
dWYvdWRtYWJ1Zi5jDQpAQCAtMTc3LDcgKzE3Nyw3IEBAIHN0YXRpYyBsb25nIHVkbWFidWZfY3Jl
YXRlKHN0cnVjdCBtaXNjZGV2aWNlICpkZXZpY2UsDQogCWlmICghdWJ1ZikNCiAJCXJldHVybiAt
RU5PTUVNOw0KIA0KLQlwZ2xpbWl0ID0gKHNpemVfbGltaXRfbWIgKiAxMDI0ICogMTAyNCkgPj4g
UEFHRV9TSElGVDsNCisJcGdsaW1pdCA9ICgodTY0KXNpemVfbGltaXRfbWIgKiAxMDI0ICogMTAy
NCkgPj4gUEFHRV9TSElGVDsNCiAJZm9yIChpID0gMDsgaSA8IGhlYWQtPmNvdW50OyBpKyspIHsN
CiAJCWlmICghSVNfQUxJR05FRChsaXN0W2ldLm9mZnNldCwgUEFHRV9TSVpFKSkNCiAJCQlnb3Rv
IGVycjsNCi0tIA0KMi4zOS41DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
