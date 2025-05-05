Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C39AAA151
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 May 2025 00:46:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6C87345983
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 22:46:13 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id B2C2545935
	for <linaro-mm-sig@lists.linaro.org>; Mon,  5 May 2025 22:46:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=gSduMmtc;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E5B7E5C5970;
	Mon,  5 May 2025 22:43:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EE82C4CEEF;
	Mon,  5 May 2025 22:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746485159;
	bh=HFyMkUdmp2i1AmcNJKN5YO27sA9goBlPK62HQOiBW00=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gSduMmtcpMferoCCI3uRF++TuHEq6/GBMqYsiYopuvpCYnc8FekLsSPA4WLkduIHW
	 VDPheD1LDV57k14SZaHK8C6byHkQkmdVAbpt0nBAl+qC7O8jn3cZWtTM8y47ht6rt7
	 ESsYg560cateYOrsVS/3uBUj2IvjxzpjfTsf5ww5eIXOSV4e1hJRp2suKfK/2JduZ3
	 hU1ANlqBH3IGQYLlja6Z1utXv7IIsNEJnsjaUVgO7pT3TSI7YIiLLrH2NeFvgUBAP2
	 CSajfN0vytK5AneDgNaxXf0jBN4UGt2ipqejHBT/2xFPHmQtPRnk+AQBDZQ5lUvbBA
	 21ES6uu69H5ZQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon,  5 May 2025 18:34:28 -0400
Message-Id: <20250505223922.2682012-192-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505223922.2682012-1-sashal@kernel.org>
References: <20250505223922.2682012-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.12.26
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B2C2545935
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[suse.de,redhat.com,amd.com,kernel.org,linux.intel.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:email,patchwork.freedesktop.org:url,suse.de:email,dfw.source.kernel.org:helo,dfw.source.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: S2WXGVBGOBBYKOUZGCH7TNREE4HFJOVF
X-Message-ID-Hash: S2WXGVBGOBBYKOUZGCH7TNREE4HFJOVF
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Thomas Zimmermann <tzimmermann@suse.de>, Anusha Srivatsa <asrivats@redhat.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sasha Levin <sashal@kernel.org>, maarten.lankhorst@linux.intel.com, mripard@kernel.org, simona@ffwll.ch, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH AUTOSEL 6.12 192/486] drm/gem: Test for imported GEM buffers with helper
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S2WXGVBGOBBYKOUZGCH7TNREE4HFJOVF/>
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
L2dwdS9kcm0vZHJtX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYw0KaW5kZXggMTQ5
YjhlMjVkYTViYi4uNDI2ZDA4Njc4ODJkZiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fZ2VtLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMNCkBAIC0zMjIsNyArMzIy
LDcgQEAgaW50IGRybV9nZW1fZHVtYl9tYXBfb2Zmc2V0KHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwg
c3RydWN0IGRybV9kZXZpY2UgKmRldiwNCiAJCXJldHVybiAtRU5PRU5UOw0KIA0KIAkvKiBEb24n
dCBhbGxvdyBpbXBvcnRlZCBvYmplY3RzIHRvIGJlIG1hcHBlZCAqLw0KLQlpZiAob2JqLT5pbXBv
cnRfYXR0YWNoKSB7DQorCWlmIChkcm1fZ2VtX2lzX2ltcG9ydGVkKG9iaikpIHsNCiAJCXJldCA9
IC1FSU5WQUw7DQogCQlnb3RvIG91dDsNCiAJfQ0KQEAgLTExNTIsNyArMTE1Miw3IEBAIHZvaWQg
ZHJtX2dlbV9wcmludF9pbmZvKHN0cnVjdCBkcm1fcHJpbnRlciAqcCwgdW5zaWduZWQgaW50IGlu
ZGVudCwNCiAJCQkgIGRybV92bWFfbm9kZV9zdGFydCgmb2JqLT52bWFfbm9kZSkpOw0KIAlkcm1f
cHJpbnRmX2luZGVudChwLCBpbmRlbnQsICJzaXplPSV6dVxuIiwgb2JqLT5zaXplKTsNCiAJZHJt
X3ByaW50Zl9pbmRlbnQocCwgaW5kZW50LCAiaW1wb3J0ZWQ9JXNcbiIsDQotCQkJICBzdHJfeWVz
X25vKG9iai0+aW1wb3J0X2F0dGFjaCkpOw0KKwkJCSAgc3RyX3llc19ubyhkcm1fZ2VtX2lzX2lt
cG9ydGVkKG9iaikpKTsNCiANCiAJaWYgKG9iai0+ZnVuY3MtPnByaW50X2luZm8pDQogCQlvYmot
PmZ1bmNzLT5wcmludF9pbmZvKHAsIGluZGVudCwgb2JqKTsNCmRpZmYgLS1naXQgYS9pbmNsdWRl
L2RybS9kcm1fZ2VtLmggYi9pbmNsdWRlL2RybS9kcm1fZ2VtLmgNCmluZGV4IGQ4Yjg2ZGYyZWMw
ZGEuLjcwYzBmOGM4MzYyOWQgMTAwNjQ0DQotLS0gYS9pbmNsdWRlL2RybS9kcm1fZ2VtLmgNCisr
KyBiL2luY2x1ZGUvZHJtL2RybV9nZW0uaA0KQEAgLTM1LDYgKzM1LDcgQEANCiAgKi8NCiANCiAj
aW5jbHVkZSA8bGludXgva3JlZi5oPg0KKyNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLmg+DQogI2lu
Y2x1ZGUgPGxpbnV4L2RtYS1yZXN2Lmg+DQogI2luY2x1ZGUgPGxpbnV4L2xpc3QuaD4NCiAjaW5j
bHVkZSA8bGludXgvbXV0ZXguaD4NCkBAIC01NzAsNiArNTcxLDE5IEBAIHN0YXRpYyBpbmxpbmUg
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
