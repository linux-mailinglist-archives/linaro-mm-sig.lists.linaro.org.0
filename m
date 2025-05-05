Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B397DAAA281
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 May 2025 01:00:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E5E645939
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 23:00:39 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id E5E5545939
	for <linaro-mm-sig@lists.linaro.org>; Mon,  5 May 2025 23:00:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=n1U912O0;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of sashal@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=sashal@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 74D4144447;
	Mon,  5 May 2025 23:00:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82E0EC4CEED;
	Mon,  5 May 2025 23:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746486022;
	bh=ZchkXoDyD7r8OEYD1u42HjJUEz45xF48xeTC4e2IYxo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=n1U912O05HaJXatmkLPBFgNMpwPNbNeAhOzB0etgjrtR307hY2v2quGHAViILiKYX
	 RpSPrqjnPHgkGA8Gb04rwFyZVcZuesI0W5nVkqAbH8P6AZGznl7CR6x/hx9dBGCU4A
	 VLvXN37DwzspZ5dTTtIHteIPCjByKCPxoMKiwflgC8txMaaFvhOhuWobpo6GizcQ4l
	 2gJSoC2xUiuqUFhLk/W9nAWC3MHFpI49yanIC4JZadJkyILTdpIXUi3KvkChfS4/63
	 Hb99yrzvw+hB3v2wiE2pttxI/njipAzxvocEAb8mk7aQVy/XScHT/R3/FlLazEPx3N
	 TU50fjZ8pnF4g==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon,  5 May 2025 18:53:35 -0400
Message-Id: <20250505225634.2688578-115-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505225634.2688578-1-sashal@kernel.org>
References: <20250505225634.2688578-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6.89
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E5E5545939
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:20940, ipnet:172.232.0.0/13, country:NL];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[suse.de,redhat.com,amd.com,kernel.org,linux.intel.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[suse.de:email,patchwork.freedesktop.org:url];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: SBCNQZOYTS5HBI2TXVPR5S34VPQZAYSB
X-Message-ID-Hash: SBCNQZOYTS5HBI2TXVPR5S34VPQZAYSB
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Thomas Zimmermann <tzimmermann@suse.de>, Anusha Srivatsa <asrivats@redhat.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sasha Levin <sashal@kernel.org>, maarten.lankhorst@linux.intel.com, mripard@kernel.org, simona@ffwll.ch, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH AUTOSEL 6.6 115/294] drm/gem: Test for imported GEM buffers with helper
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SBCNQZOYTS5HBI2TXVPR5S34VPQZAYSB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+DQoNClsgVXBzdHJl
YW0gY29tbWl0IGI1N2FhNDdkMzllOTRkYzQ3NDAzYTc0NWUyMDI0NjY0ZTU0NDA3OGMgXQ0KDQpB
ZGQgZHJtX2dlbV9pc19pbXBvcnRlZCgpIHRoYXQgdGVzdHMgaWYgYSBHRU0gb2JqZWN0J3MgYnVm
ZmVyIGhhcw0KYmVlbiBpbXBvcnRlZC4gVXBkYXRlIHRoZSBHRU0gY29kZSBhY2NvcmRpbmdseS4N
Cg0KR0VNIGNvZGUgdXN1YWxseSB0ZXN0cyBmb3IgaW1wb3J0cyBpZiBpbXBvcnRfYXR0YWNoIGhh
cyBiZWVuIHNldA0KaW4gc3RydWN0IGRybV9nZW1fb2JqZWN0LiBCdXQgYXR0YWNoaW5nIGEgZG1h
LWJ1ZiBvbiBpbXBvcnQgcmVxdWlyZXMNCmEgRE1BLWNhcGFibGUgaW1wb3J0ZXIgZGV2aWNlLCB3
aGljaCBpcyBub3QgdGhlIGNhc2UgZm9yIG1hbnkgc2VyaWFsDQpidXNzZXMgbGlrZSBVU0Igb3Ig
STJDLiBUaGUgbmV3IGhlbHBlciB0ZXN0cyBpZiBhIEdFTSBvYmplY3QncyBkbWEtYnVmDQpoYXMg
YmVlbiBjcmVhdGVkIGZyb20gdGhlIEdFTSBvYmplY3QuDQoNClNpZ25lZC1vZmYtYnk6IFRob21h
cyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KUmV2aWV3ZWQtYnk6IEFudXNoYSBT
cml2YXRzYSA8YXNyaXZhdHNAcmVkaGF0LmNvbT4NClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpMaW5rOiBodHRwczovL3BhdGNod29yay5m
cmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAyNTAyMjYxNzI0NTcuMjE3NzI1LTItdHppbW1l
cm1hbm5Ac3VzZS5kZQ0KU2lnbmVkLW9mZi1ieTogU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwu
b3JnPg0KLS0tDQogZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYyB8ICA0ICsrLS0NCiBpbmNsdWRl
L2RybS9kcm1fZ2VtLmggICAgIHwgMTQgKysrKysrKysrKysrKysNCiAyIGZpbGVzIGNoYW5nZWQs
IDE2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vZHJtX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYw0KaW5kZXggNDRh
OTQ4YjgwZWUxNC4uZGViOTNmNzhjZTM0NCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fZ2VtLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMNCkBAIC0zMjIsNyArMzIy
LDcgQEAgaW50IGRybV9nZW1fZHVtYl9tYXBfb2Zmc2V0KHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwg
c3RydWN0IGRybV9kZXZpY2UgKmRldiwNCiAJCXJldHVybiAtRU5PRU5UOw0KIA0KIAkvKiBEb24n
dCBhbGxvdyBpbXBvcnRlZCBvYmplY3RzIHRvIGJlIG1hcHBlZCAqLw0KLQlpZiAob2JqLT5pbXBv
cnRfYXR0YWNoKSB7DQorCWlmIChkcm1fZ2VtX2lzX2ltcG9ydGVkKG9iaikpIHsNCiAJCXJldCA9
IC1FSU5WQUw7DQogCQlnb3RvIG91dDsNCiAJfQ0KQEAgLTExNTUsNyArMTE1NSw3IEBAIHZvaWQg
ZHJtX2dlbV9wcmludF9pbmZvKHN0cnVjdCBkcm1fcHJpbnRlciAqcCwgdW5zaWduZWQgaW50IGlu
ZGVudCwNCiAJCQkgIGRybV92bWFfbm9kZV9zdGFydCgmb2JqLT52bWFfbm9kZSkpOw0KIAlkcm1f
cHJpbnRmX2luZGVudChwLCBpbmRlbnQsICJzaXplPSV6dVxuIiwgb2JqLT5zaXplKTsNCiAJZHJt
X3ByaW50Zl9pbmRlbnQocCwgaW5kZW50LCAiaW1wb3J0ZWQ9JXNcbiIsDQotCQkJICBzdHJfeWVz
X25vKG9iai0+aW1wb3J0X2F0dGFjaCkpOw0KKwkJCSAgc3RyX3llc19ubyhkcm1fZ2VtX2lzX2lt
cG9ydGVkKG9iaikpKTsNCiANCiAJaWYgKG9iai0+ZnVuY3MtPnByaW50X2luZm8pDQogCQlvYmot
PmZ1bmNzLT5wcmludF9pbmZvKHAsIGluZGVudCwgb2JqKTsNCmRpZmYgLS1naXQgYS9pbmNsdWRl
L2RybS9kcm1fZ2VtLmggYi9pbmNsdWRlL2RybS9kcm1fZ2VtLmgNCmluZGV4IDdjMmVjMTM5YzQ2
NGEuLmZiZmNjYjk2ZGQxN2IgMTAwNjQ0DQotLS0gYS9pbmNsdWRlL2RybS9kcm1fZ2VtLmgNCisr
KyBiL2luY2x1ZGUvZHJtL2RybV9nZW0uaA0KQEAgLTM1LDYgKzM1LDcgQEANCiAgKi8NCiANCiAj
aW5jbHVkZSA8bGludXgva3JlZi5oPg0KKyNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLmg+DQogI2lu
Y2x1ZGUgPGxpbnV4L2RtYS1yZXN2Lmg+DQogI2luY2x1ZGUgPGxpbnV4L2xpc3QuaD4NCiAjaW5j
bHVkZSA8bGludXgvbXV0ZXguaD4NCkBAIC01NTcsNiArNTU4LDE5IEBAIHN0YXRpYyBpbmxpbmUg
Ym9vbCBkcm1fZ2VtX29iamVjdF9pc19zaGFyZWRfZm9yX21lbW9yeV9zdGF0cyhzdHJ1Y3QgZHJt
X2dlbV9vYmplDQogCXJldHVybiAob2JqLT5oYW5kbGVfY291bnQgPiAxKSB8fCBvYmotPmRtYV9i
dWY7DQogfQ0KIA0KKy8qKg0KKyAqIGRybV9nZW1faXNfaW1wb3J0ZWQoKSAtIFRlc3RzIGlmIEdF
TSBvYmplY3QncyBidWZmZXIgaGFzIGJlZW4gaW1wb3J0ZWQNCisgKiBAb2JqOiB0aGUgR0VNIG9i
amVjdA0KKyAqDQorICogUmV0dXJuczoNCisgKiBUcnVlIGlmIHRoZSBHRU0gb2JqZWN0J3MgYnVm
ZmVyIGhhcyBiZWVuIGltcG9ydGVkLCBmYWxzZSBvdGhlcndpc2UNCisgKi8NCitzdGF0aWMgaW5s
aW5lIGJvb2wgZHJtX2dlbV9pc19pbXBvcnRlZChjb25zdCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3Qg
Km9iaikNCit7DQorCS8qIFRoZSBkbWEtYnVmJ3MgcHJpdiBmaWVsZCBwb2ludHMgdG8gdGhlIG9y
aWdpbmFsIEdFTSBvYmplY3QuICovDQorCXJldHVybiBvYmotPmRtYV9idWYgJiYgKG9iai0+ZG1h
X2J1Zi0+cHJpdiAhPSBvYmopOw0KK30NCisNCiAjaWZkZWYgQ09ORklHX0xPQ0tERVANCiAvKioN
CiAgKiBkcm1fZ2VtX2dwdXZhX3NldF9sb2NrKCkgLSBTZXQgdGhlIGxvY2sgcHJvdGVjdGluZyBh
Y2Nlc3NlcyB0byB0aGUgZ3B1dmEgbGlzdC4NCi0tIA0KMi4zOS41DQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
