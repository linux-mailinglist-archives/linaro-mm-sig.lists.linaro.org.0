Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D83631D32
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Nov 2022 10:47:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B27B33ED0D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Nov 2022 09:47:10 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 8C94B3EA28
	for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Nov 2022 09:47:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b="LP5Bcu/o";
	spf=pass (lists.linaro.org: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 24ACF60F9F;
	Mon, 21 Nov 2022 09:47:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32F77C433D6;
	Mon, 21 Nov 2022 09:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1669024019;
	bh=VQZYBH1bhf90ko3Gyb0TeinDWhHpYreu0f9unIS25Zw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LP5Bcu/o6ov0sKBaLpR4FOMpj0KiyS6oh9p0I60JpynrFARptBhfmho4EJPJ4/m8m
	 8P/d6EM/AqaaQLCXJhqPIcFWHodFvsubWuvWx28DPgaLvAZqckMNaKwqG6/tHpp2k2
	 NhwnVwWHQ5eSkDwvMZ+zEr7bgrLiNVmVBz09kxJI=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Date: Mon, 21 Nov 2022 10:46:47 +0100
Message-Id: <20221121094649.1556002-3-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221121094649.1556002-1-gregkh@linuxfoundation.org>
References: <20221121094649.1556002-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3268; i=gregkh@linuxfoundation.org; h=from:subject; bh=VQZYBH1bhf90ko3Gyb0TeinDWhHpYreu0f9unIS25Zw=; b=owGbwMvMwCRo6H6F97bub03G02pJDMnVnpyPX3yeVMM/57Desw3BLcVtK7dElz68+Jj/h3hLmCLD i9stHbEsDIJMDLJiiixftvEc3V9xSNHL0PY0zBxWJpAhDFycAjAR2ViGBcs28T5zS33/Xe98772MPX fXBXVIsjIsaPjXGMjtXphX9MSuufH7/2k3/JI6AQ==
X-Developer-Key: i=gregkh@linuxfoundation.org; a=openpgp; fpr=F4B60CC5BF78C2214A313DCB3147D40DDB2DFB29
X-Rspamd-Queue-Id: 8C94B3EA28
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,dfw.source.kernel.org:rdns,dfw.source.kernel.org:helo,linuxfoundation.org:email,linuxfoundation.org:dkim];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[52.25.139.140:received];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: EIH2VKC3PL63BTQXY3VL4VEHP374ECSU
X-Message-ID-Hash: EIH2VKC3PL63BTQXY3VL4VEHP374ECSU
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 3/5] kobject: kset_uevent_ops: make filter() callback take a const *
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EIH2VKC3PL63BTQXY3VL4VEHP374ECSU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIGZpbHRlcigpIGNhbGxiYWNrIGluIHN0cnVjdCBrc2V0X3VldmVudF9vcHMgZG9lcyBub3Qg
bW9kaWZ5IHRoZQ0Ka29iamVjdCBwYXNzZWQgaW50byBpdCwgc28gbWFrZSB0aGUgcG9pbnRlciBj
b25zdCB0byBlbmZvcmNlIHRoaXMNCnJlc3RyaWN0aW9uLiAgV2hlbiBkb2luZyBzbywgZml4IHVw
IGFsbCBleGlzdGluZyBmaWx0ZXIoKSBjYWxsYmFja3MgdG8NCmhhdmUgdGhlIGNvcnJlY3Qgc2ln
bmF0dXJlIHRvIHByZXNlcnZlIHRoZSBidWlsZC4NCg0KQ2M6ICJSYWZhZWwgSi4gV3lzb2NraSIg
PHJhZmFlbEBrZXJuZWwub3JnPg0KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFy
by5vcmc+DQpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+
DQpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQpDYzogZHJpLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZw0KQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KU2lnbmVk
LW9mZi1ieTogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4N
Ci0tLQ0KIGRyaXZlcnMvYmFzZS9idXMuYyAgICAgICAgICAgICAgICAgICAgfCAyICstDQogZHJp
dmVycy9iYXNlL2NvcmUuYyAgICAgICAgICAgICAgICAgICB8IDQgKystLQ0KIGRyaXZlcnMvZG1h
LWJ1Zi9kbWEtYnVmLXN5c2ZzLXN0YXRzLmMgfCAyICstDQogaW5jbHVkZS9saW51eC9rb2JqZWN0
LmggICAgICAgICAgICAgICB8IDIgKy0NCiBrZXJuZWwvcGFyYW1zLmMgICAgICAgICAgICAgICAg
ICAgICAgIHwgMiArLQ0KIDUgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0
aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9iYXNlL2J1cy5jIGIvZHJpdmVycy9iYXNl
L2J1cy5jDQppbmRleCA3Y2E0N2U1YjNjMWYuLjRlYzZkYmFiNzNiZSAxMDA2NDQNCi0tLSBhL2Ry
aXZlcnMvYmFzZS9idXMuYw0KKysrIGIvZHJpdmVycy9iYXNlL2J1cy5jDQpAQCAtMTYzLDcgKzE2
Myw3IEBAIHN0YXRpYyBzdHJ1Y3Qga29ial90eXBlIGJ1c19rdHlwZSA9IHsNCiAJLnJlbGVhc2UJ
PSBidXNfcmVsZWFzZSwNCiB9Ow0KIA0KLXN0YXRpYyBpbnQgYnVzX3VldmVudF9maWx0ZXIoc3Ry
dWN0IGtvYmplY3QgKmtvYmopDQorc3RhdGljIGludCBidXNfdWV2ZW50X2ZpbHRlcihjb25zdCBz
dHJ1Y3Qga29iamVjdCAqa29iaikNCiB7DQogCWNvbnN0IHN0cnVjdCBrb2JqX3R5cGUgKmt0eXBl
ID0gZ2V0X2t0eXBlKGtvYmopOw0KIA0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvYmFzZS9jb3JlLmMg
Yi9kcml2ZXJzL2Jhc2UvY29yZS5jDQppbmRleCBhNzliOTllY2Y0ZDguLjAwNWEyYjA5MmYzZSAx
MDA2NDQNCi0tLSBhL2RyaXZlcnMvYmFzZS9jb3JlLmMNCisrKyBiL2RyaXZlcnMvYmFzZS9jb3Jl
LmMNCkBAIC0yMzYyLDEyICsyMzYyLDEyIEBAIHN0YXRpYyBzdHJ1Y3Qga29ial90eXBlIGRldmlj
ZV9rdHlwZSA9IHsNCiB9Ow0KIA0KIA0KLXN0YXRpYyBpbnQgZGV2X3VldmVudF9maWx0ZXIoc3Ry
dWN0IGtvYmplY3QgKmtvYmopDQorc3RhdGljIGludCBkZXZfdWV2ZW50X2ZpbHRlcihjb25zdCBz
dHJ1Y3Qga29iamVjdCAqa29iaikNCiB7DQogCWNvbnN0IHN0cnVjdCBrb2JqX3R5cGUgKmt0eXBl
ID0gZ2V0X2t0eXBlKGtvYmopOw0KIA0KIAlpZiAoa3R5cGUgPT0gJmRldmljZV9rdHlwZSkgew0K
LQkJc3RydWN0IGRldmljZSAqZGV2ID0ga29ial90b19kZXYoa29iaik7DQorCQljb25zdCBzdHJ1
Y3QgZGV2aWNlICpkZXYgPSBrb2JqX3RvX2Rldihrb2JqKTsNCiAJCWlmIChkZXYtPmJ1cykNCiAJ
CQlyZXR1cm4gMTsNCiAJCWlmIChkZXYtPmNsYXNzKQ0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtYnVmLXN5c2ZzLXN0YXRzLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi1zeXNm
cy1zdGF0cy5jDQppbmRleCAyYmJhMGJhYmNiNjIuLmY2OWQ2ODEyMmI5YiAxMDA2NDQNCi0tLSBh
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLXN5c2ZzLXN0YXRzLmMNCisrKyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtYnVmLXN5c2ZzLXN0YXRzLmMNCkBAIC0xMzIsNyArMTMyLDcgQEAgdm9pZCBkbWFf
YnVmX3N0YXRzX3RlYXJkb3duKHN0cnVjdCBkbWFfYnVmICpkbWFidWYpDQogDQogDQogLyogU3Rh
dGlzdGljcyBmaWxlcyBkbyBub3QgbmVlZCB0byBzZW5kIHVldmVudHMuICovDQotc3RhdGljIGlu
dCBkbWFidWZfc3lzZnNfdWV2ZW50X2ZpbHRlcihzdHJ1Y3Qga29iamVjdCAqa29iaikNCitzdGF0
aWMgaW50IGRtYWJ1Zl9zeXNmc191ZXZlbnRfZmlsdGVyKGNvbnN0IHN0cnVjdCBrb2JqZWN0ICpr
b2JqKQ0KIHsNCiAJcmV0dXJuIDA7DQogfQ0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgva29i
amVjdC5oIGIvaW5jbHVkZS9saW51eC9rb2JqZWN0LmgNCmluZGV4IDVhMmQ1OGUxMGJmNS4uNjQw
ZjU5ZDRiM2RlIDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9saW51eC9rb2JqZWN0LmgNCisrKyBiL2lu
Y2x1ZGUvbGludXgva29iamVjdC5oDQpAQCAtMTM1LDcgKzEzNSw3IEBAIHN0cnVjdCBrb2JqX3Vl
dmVudF9lbnYgew0KIH07DQogDQogc3RydWN0IGtzZXRfdWV2ZW50X29wcyB7DQotCWludCAoKiBj
b25zdCBmaWx0ZXIpKHN0cnVjdCBrb2JqZWN0ICprb2JqKTsNCisJaW50ICgqIGNvbnN0IGZpbHRl
cikoY29uc3Qgc3RydWN0IGtvYmplY3QgKmtvYmopOw0KIAljb25zdCBjaGFyICooKiBjb25zdCBu
YW1lKShzdHJ1Y3Qga29iamVjdCAqa29iaik7DQogCWludCAoKiBjb25zdCB1ZXZlbnQpKHN0cnVj
dCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3Qga29ial91ZXZlbnRfZW52ICplbnYpOw0KIH07DQpkaWZm
IC0tZ2l0IGEva2VybmVsL3BhcmFtcy5jIGIva2VybmVsL3BhcmFtcy5jDQppbmRleCA1YjkyMzEw
NDI1YzUuLmQyMjM3MjA5Y2VkYSAxMDA2NDQNCi0tLSBhL2tlcm5lbC9wYXJhbXMuYw0KKysrIGIv
a2VybmVsL3BhcmFtcy5jDQpAQCAtOTI2LDcgKzkyNiw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
c3lzZnNfb3BzIG1vZHVsZV9zeXNmc19vcHMgPSB7DQogCS5zdG9yZSA9IG1vZHVsZV9hdHRyX3N0
b3JlLA0KIH07DQogDQotc3RhdGljIGludCB1ZXZlbnRfZmlsdGVyKHN0cnVjdCBrb2JqZWN0ICpr
b2JqKQ0KK3N0YXRpYyBpbnQgdWV2ZW50X2ZpbHRlcihjb25zdCBzdHJ1Y3Qga29iamVjdCAqa29i
aikNCiB7DQogCWNvbnN0IHN0cnVjdCBrb2JqX3R5cGUgKmt0eXBlID0gZ2V0X2t0eXBlKGtvYmop
Ow0KIA0KLS0gDQoyLjM4LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
