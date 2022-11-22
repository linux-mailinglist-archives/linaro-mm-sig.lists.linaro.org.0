Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CC3634232
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Nov 2022 18:08:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1FC3F3EDA2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Nov 2022 17:08:15 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by lists.linaro.org (Postfix) with ESMTPS id 3DA473E9D6
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Nov 2022 17:08:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=UTgjIRpL;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.221.46) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-wr1-f46.google.com with SMTP id bs21so25718303wrb.4
        for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Nov 2022 09:08:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ve9qToTAjko4Xn5/rlkROCfUSo37Rgk78oiOnmwUwAU=;
        b=UTgjIRpLOL/7otFlPM7wX91GWVEbyelUoIOfxeC6ZhL8WuxwL4Nb7rXb4HD1EytWRF
         fM6S4/NXWz/8WrAreoT9cPW/bjXslVl/BKUmEg5pyx6M4Uaclx3FjX7vn4vXq8ig0wzL
         rCBB7/W7XRNLC+tcLw3TAl4no/GdXkQLmuKTA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ve9qToTAjko4Xn5/rlkROCfUSo37Rgk78oiOnmwUwAU=;
        b=QattJgO4pbmQ8UVns6EqC3yt7DP+55nQnOJ9LaDTSH/zS+g1SuZ2jKu76+H2xvqXLj
         /Egf51VKtEB1uPonSqFxxWf3fyHOGq5Fnj+v/ia2p42BGlpEmiK9BusJtRBF5drBvE8I
         ZvnaKCLMUd2IkDxixTcNqQS18b/Gm9uwr9cPIMRkogs3gFhS27CbAc/6rHC7qC1BBtaF
         v0BRt+5BUq2CaFlr+NCZYTh+ToDZ3mbds05WcdZiNbo5AC9ecbvyTDK+kBuvzdYr1+OF
         ikQdum0lIAHJpMTG8OKngAlPUzVGcdb0oQgva3VCN77djmRKol7ujv5yiF/Ram/C1cQe
         iqDw==
X-Gm-Message-State: ANoB5pnbzxuXj8pty7aCLYWG6sA2b4d7Bq2GnxoFdCj1tYlexOwiSd4V
	fY1BI31geENZn9bersZhWP8Odw==
X-Google-Smtp-Source: AA0mqf74IZLJygrpyRzf5qHhhvP3A1tbMBtTE6ln+kXNQdMnkp0LHZho99MMNt+23oEZ2UGDXNYLyA==
X-Received: by 2002:a5d:6547:0:b0:241:e4cc:f044 with SMTP id z7-20020a5d6547000000b00241e4ccf044mr2164424wrv.457.1669136884287;
        Tue, 22 Nov 2022 09:08:04 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net. [212.51.149.33])
        by smtp.gmail.com with ESMTPSA id m42-20020a05600c3b2a00b003cf47556f21sm24861760wms.2.2022.11.22.09.08.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 09:08:03 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 22 Nov 2022 18:08:00 +0100
Message-Id: <20221122170801.842766-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Rspamd-Queue-Id: 3DA473E9D6
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[212.51.149.33:received];
	DMARC_NA(0.00)[ffwll.ch];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.46:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: HB5Q3YCF6KX6YM4C3IFQ7PRFX5T6VI5P
X-Message-ID-Hash: HB5Q3YCF6KX6YM4C3IFQ7PRFX5T6VI5P
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Intel Graphics Development <intel-gfx@lists.freedesktop.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>, Jason Gunthorpe <jgg@ziepe.ca>, Suren Baghdasaryan <surenb@google.com>, Matthew Wilcox <willy@infradead.org>, John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel.vetter@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: Require VM_PFNMAP vma for mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HB5Q3YCF6KX6YM4C3IFQ7PRFX5T6VI5P/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

dGxkcjsgRE1BIGJ1ZmZlcnMgYXJlbid0IG5vcm1hbCBtZW1vcnksIGV4cGVjdGluZyB0aGF0IHlv
dSBjYW4gdXNlDQp0aGVtIGxpa2UgdGhhdCAobGlrZSBjYWxsaW5nIGdldF91c2VyX3BhZ2VzIHdv
cmtzLCBvciB0aGF0IHRoZXkncmUNCmFjY291bnRpbmcgbGlrZSBhbnkgb3RoZXIgbm9ybWFsIG1l
bW9yeSkgY2Fubm90IGJlIGd1YXJhbnRlZWQuDQoNClNpbmNlIHNvbWUgdXNlcnNwYWNlIG9ubHkg
cnVucyBvbiBpbnRlZ3JhdGVkIGRldmljZXMsIHdoZXJlIGFsbA0KYnVmZmVycyBhcmUgYWN0dWFs
bHkgYWxsIHJlc2lkZW50IHN5c3RlbSBtZW1vcnksIHRoZXJlJ3MgYSBodWdlDQp0ZW1wdGF0aW9u
IHRvIGFzc3VtZSB0aGF0IGEgc3RydWN0IHBhZ2UgaXMgYWx3YXlzIHByZXNlbnQgYW5kIHVzZWFi
bGUNCmxpa2UgZm9yIGFueSBtb3JlIHBhZ2VjYWNoZSBiYWNrZWQgbW1hcC4gVGhpcyBoYXMgdGhl
IHBvdGVudGlhbCB0bw0KcmVzdWx0IGluIGEgdWFwaSBuaWdodG1hcmUuDQoNClRvIHN0b3AgdGhp
cyBnYXAgcmVxdWlyZSB0aGF0IERNQSBidWZmZXIgbW1hcHMgYXJlIFZNX1BGTk1BUCwgd2hpY2gN
CmJsb2NrcyBnZXRfdXNlcl9wYWdlcyBhbmQgYWxsIHRoZSBvdGhlciBzdHJ1Y3QgcGFnZSBiYXNl
ZA0KaW5mcmFzdHJ1Y3R1cmUgZm9yIGV2ZXJ5b25lLiBJbiBzcGlyaXQgdGhpcyBpcyB0aGUgdWFw
aSBjb3VudGVycGFydCB0bw0KdGhlIGtlcm5lbC1pbnRlcm5hbCBDT05GSUdfRE1BQlVGX0RFQlVH
Lg0KDQpNb3RpdmF0ZWQgYnkgYSByZWNlbnQgcGF0Y2ggd2hpY2ggd2FudGVkIHRvIHN3aWNoIHRo
ZSBzeXN0ZW0gZG1hLWJ1Zg0KaGVhcCB0byB2bV9pbnNlcnRfcGFnZSBpbnN0ZWFkIG9mIHZtX2lu
c2VydF9wZm4uDQoNCnYyOg0KDQpKYXNvbiBicm91Z2h0IHVwIHRoYXQgd2UgYWxzbyB3YW50IHRv
IGd1YXJhbnRlZSB0aGF0IGFsbCBwdGVzIGhhdmUgdGhlDQpwdGVfc3BlY2lhbCBmbGFnIHNldCwg
dG8gY2F0Y2ggZmFzdCBnZXRfdXNlcl9wYWdlcyAob24gYXJjaGl0ZWN0dXJlcw0KdGhhdCBzdXBw
b3J0IHRoaXMpLiBBbGxvd2luZyBWTV9NSVhFRE1BUCAobGlrZSBWTV9TUEVDSUFMIGRvZXMpIHdv
dWxkDQpzdGlsbCBhbGxvdyB2bV9pbnNlcnRfcGFnZSwgYnV0IGxpbWl0aW5nIHRvIFZNX1BGTk1B
UCB3aWxsIGNhdGNoIHRoYXQuDQoNCj5Gcm9tIGF1ZGl0aW5nIHRoZSB2YXJpb3VzIGZ1bmN0aW9u
cyB0byBpbnNlcnQgcGZuIHB0ZSBlbnRpcmVzDQoodm1faW5zZXJ0X3Bmbl9wcm90LCByZW1hcF9w
Zm5fcmFuZ2UgYW5kIGFsbCBpdCdzIGNhbGxlcnMgbGlrZQ0KZG1hX21tYXBfd2MpIGl0IGxvb2tz
IGxpa2UgVk1fUEZOTUFQIGlzIGFscmVhZHkgcmVxdWlyZWQgYW55d2F5LCBzbw0KdGhpcyBzaG91
bGQgYmUgdGhlIGNvcnJlY3QgZmxhZyB0byBjaGVjayBmb3IuDQoNCnYzOiBDaGFuZ2UgdG8gV0FS
Tl9PTl9PTkNFIChUaG9tYXMgWmltbWVybWFubikNCg0KUmVmZXJlbmNlczogaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvbGttbC9DQUtNSzd1SGkrbUcwejBIVW1OdDEzUUNDdnV0dVJWanBjUjBOalJM
MTJrLVdiV3prUmdAbWFpbC5nbWFpbC5jb20vDQpBY2tlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KQWNrZWQtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0
emltbWVybWFubkBzdXNlLmRlPg0KQ2M6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBz
dXNlLmRlPg0KQ2M6IEphc29uIEd1bnRob3JwZSA8amdnQHppZXBlLmNhPg0KQ2M6IFN1cmVuIEJh
Z2hkYXNhcnlhbiA8c3VyZW5iQGdvb2dsZS5jb20+DQpDYzogTWF0dGhldyBXaWxjb3ggPHdpbGx5
QGluZnJhZGVhZC5vcmc+DQpDYzogSm9obiBTdHVsdHogPGpvaG4uc3R1bHR6QGxpbmFyby5vcmc+
DQpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4N
CkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KQ2M6ICJDaHJpc3Rp
YW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KQ2M6IGxpbnV4LW1lZGlhQHZn
ZXIua2VybmVsLm9yZw0KQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KLS0NCk9r
IEkgZW50aXJlbHkgZm9yZ290IGFib3V0IHRoaXMgcGF0Y2ggYnV0IHN0dW1ibGVkIG92ZXIgaXQg
YW5kIGNoZWNrZWQNCndoYXQncyB1cCB3aXRoIGl0IG5vLiBJIHRoaW5rIGl0J3MgcmVhZHkgbm93
IGZvciBtZXJnaW5nOg0KLSBzaG1lbSBoZWxwZXIgcGF0Y2hlcyB0byBmaXggdXAgdmdlbSBsYW5k
ZWQNCi0gdHRtIGhhcyBiZWVuIGZpeGVkIHNpbmNlIGEgd2hpbGUNCi0gSSBkb24ndCB0aGluayB3
ZSd2ZSBoYWQgYW55IG90aGVyIG9wZW4gaXNzdWVzDQoNClRpbWUgdG8gbG9jayBkb3duIHRoaXMg
dWFwaSBjb250cmFjdCBmb3IgcmVhbD8NCi1EYW5pZWwNCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMgfCA0ICsrKysNCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspDQoNCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2Rt
YS1idWYuYw0KaW5kZXggYjZjMzY5MTRlN2M2Li44ODcxODY2NWMzYzMgMTAwNjQ0DQotLS0gYS9k
cml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5j
DQpAQCAtMTUwLDYgKzE1MCw4IEBAIHN0YXRpYyBpbnQgZG1hX2J1Zl9tbWFwX2ludGVybmFsKHN0
cnVjdCBmaWxlICpmaWxlLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkNCiAJcmV0ID0gZG1h
YnVmLT5vcHMtPm1tYXAoZG1hYnVmLCB2bWEpOw0KIAlkbWFfcmVzdl91bmxvY2soZG1hYnVmLT5y
ZXN2KTsNCiANCisJV0FSTl9PTl9PTkNFKCEodm1hLT52bV9mbGFncyAmIFZNX1BGTk1BUCkpOw0K
Kw0KIAlyZXR1cm4gcmV0Ow0KIH0NCiANCkBAIC0xNDk1LDYgKzE0OTcsOCBAQCBpbnQgZG1hX2J1
Zl9tbWFwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1h
LA0KIAlyZXQgPSBkbWFidWYtPm9wcy0+bW1hcChkbWFidWYsIHZtYSk7DQogCWRtYV9yZXN2X3Vu
bG9jayhkbWFidWYtPnJlc3YpOw0KIA0KKwlXQVJOX09OX09OQ0UoISh2bWEtPnZtX2ZsYWdzICYg
Vk1fUEZOTUFQKSk7DQorDQogCXJldHVybiByZXQ7DQogfQ0KIEVYUE9SVF9TWU1CT0xfTlNfR1BM
KGRtYV9idWZfbW1hcCwgRE1BX0JVRik7DQotLSANCjIuMzcuMg0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
