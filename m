Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F834B648C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:40:17 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 882A53ED16
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:40:16 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by lists.linaro.org (Postfix) with ESMTPS id 82F06401D6
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Jan 2022 20:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1643229408; x=1674765408;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=SxwOX/KvCGehbJ+xk/iHXJSG5hnovWhcQo3g+1qN37Y=;
  b=EoKlXfqDZksjHF5gGf7UgEaZH0L+sMfi7Wai5HeYSivg352Su4oB1pdj
   I7RG0pjPNYASBmk1DDb8n/BvU+ilUYMJDypNE8zBaUblW0eqbbUAHqX6C
   xw58dfENoy84WiUxRZFB4V6W14M3bZDV76Sbns44ozwW2xpSzTRGSfjjc
   Lqf+mrxPEVhivUVlrVvlj240XbQIspYUz+KVZRF/ZHrEnvT5J5fsn8FX/
   F2uIRhXptIYVNQBgRAJKrdRWQkLP73T+p+LKs4WVtNVH9XZ1JhCheqBB8
   AG76cDu8FODe9exa30ZmfCkJ+00mFH3IPA8RncBzyuc5OBQYoEtAVSqNS
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="245480771"
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600";
   d="scan'208";a="245480771"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jan 2022 12:36:23 -0800
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600";
   d="scan'208";a="581221493"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jan 2022 12:36:22 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jan 2022 12:36:45 -0800
Message-Id: <20220126203702.1784589-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.35.0
In-Reply-To: <20220126203702.1784589-1-lucas.demarchi@intel.com>
References: <20220126203702.1784589-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
X-MailFrom: lucas.demarchi@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RYOVMPDJZX6FNYO4QFYG7UGT25IDYS25
X-Message-ID-Hash: RYOVMPDJZX6FNYO4QFYG7UGT25IDYS25
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:39:05 +0000
CC: dri-devel@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 02/19] dma-buf-map: Add helper to initialize second map
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RYOVMPDJZX6FNYO4QFYG7UGT25IDYS25/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hlbiBkbWFfYnVmX21hcCBzdHJ1Y3QgaXMgcGFzc2VkIGFyb3VuZCwgaXQncyB1c2VmdWwgdG8g
YmUgYWJsZSB0bw0KaW5pdGlhbGl6ZSBhIHNlY29uZCBtYXAgdGhhdCB0YWtlcyBjYXJlIG9mIHJl
YWRpbmcvd3JpdGluZyB0byBhbiBvZmZzZXQNCm9mIHRoZSBvcmlnaW5hbCBtYXAuDQoNCkFkZCBh
IGhlbHBlciB0aGF0IGNvcGllcyB0aGUgc3RydWN0IGFuZCBhZGQgdGhlIG9mZnNldCB0byB0aGUg
cHJvcGVyDQphZGRyZXNzLg0KDQpDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJv
Lm9yZz4NCkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpD
YzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQpDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KQ2M6IGxpbnV4
LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcNClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8
bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KLS0tDQogaW5jbHVkZS9saW51eC9kbWEtYnVmLW1h
cC5oIHwgMjkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCiAxIGZpbGUgY2hhbmdlZCwg
MjkgaW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLW1h
cC5oIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLW1hcC5oDQppbmRleCA2NWU5MjdkOWNlMzMuLjM1
MTRhODU5ZjYyOCAxMDA2NDQNCi0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi1tYXAuaA0KKysr
IGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLW1hcC5oDQpAQCAtMTMxLDYgKzEzMSwzNSBAQCBzdHJ1
Y3QgZG1hX2J1Zl9tYXAgew0KIAkJLmlzX2lvbWVtID0gZmFsc2UsIFwNCiAJfQ0KIA0KKy8qKg0K
KyAqIERNQV9CVUZfTUFQX0lOSVRfT0ZGU0VUIC0gSW5pdGlhbGl6ZXMgc3RydWN0IGRtYV9idWZf
bWFwIGZyb20gYW5vdGhlciBkbWFfYnVmX21hcA0KKyAqIEBtYXBfOglUaGUgZG1hLWJ1ZiBtYXBw
aW5nIHN0cnVjdHVyZSB0byBjb3B5IGZyb20NCisgKiBAb2Zmc2V0OglPZmZzZXQgdG8gYWRkIHRv
IHRoZSBvdGhlciBtYXBwaW5nDQorICoNCisgKiBJbml0aWFsaXplcyBhIG5ldyBkbWFfYnVmX3N0
cnVjdCBiYXNlZCBvbiBhbm90aGVyLiBUaGlzIGlzIHRoZSBlcXVpdmFsZW50IG9mIGRvaW5nOg0K
KyAqDQorICogLi4gY29kZS1ibG9jazogYw0KKyAqDQorICoJZG1hX2J1Zl9tYXAgbWFwID0gb3Ro
ZXJfbWFwOw0KKyAqCWRtYV9idWZfbWFwX2luY3IoJm1hcCwgJm9mZnNldCk7DQorICoNCisgKiBF
eGFtcGxlIHVzYWdlOg0KKyAqDQorICogLi4gY29kZS1ibG9jazogYw0KKyAqDQorICoJdm9pZCBm
b28oc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZG1hX2J1Zl9tYXAgKmJhc2VfbWFwKQ0KKyAq
CXsNCisgKgkJLi4uDQorICoJCXN0cnVjdCBkbWFfYnVmX21hcCA9IERNQV9CVUZfTUFQX0lOSVRf
T0ZGU0VUKGJhc2VfbWFwLCBGSUVMRF9PRkZTRVQpOw0KKyAqCQkuLi4NCisgKgl9DQorICovDQor
I2RlZmluZSBETUFfQlVGX01BUF9JTklUX09GRlNFVChtYXBfLCBvZmZzZXRfKQkoc3RydWN0IGRt
YV9idWZfbWFwKQlcDQorCXsJCQkJCQkJCVwNCisJCS52YWRkciA9IChtYXBfKS0+dmFkZHIgKyAo
b2Zmc2V0XyksCQkJXA0KKwkJLmlzX2lvbWVtID0gKG1hcF8pLT5pc19pb21lbSwJCQkJXA0KKwl9
DQorDQogLyoqDQogICogZG1hX2J1Zl9tYXBfc2V0X3ZhZGRyIC0gU2V0cyBhIGRtYS1idWYgbWFw
cGluZyBzdHJ1Y3R1cmUgdG8gYW4gYWRkcmVzcyBpbiBzeXN0ZW0gbWVtb3J5DQogICogQG1hcDoJ
VGhlIGRtYS1idWYgbWFwcGluZyBzdHJ1Y3R1cmUNCi0tIA0KMi4zNS4wDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
