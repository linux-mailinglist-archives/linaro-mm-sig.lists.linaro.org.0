Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 249C36027FF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Oct 2022 11:10:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 072173F5F6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Oct 2022 09:10:33 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	by lists.linaro.org (Postfix) with ESMTPS id 30D723F0CD
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Oct 2022 09:10:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=chromium.org header.s=google header.b=csXExqhB;
	spf=pass (lists.linaro.org: domain of keescook@chromium.org designates 209.85.216.53 as permitted sender) smtp.mailfrom=keescook@chromium.org;
	dmarc=pass (policy=none) header.from=chromium.org
Received: by mail-pj1-f53.google.com with SMTP id o17-20020a17090aac1100b0020d98b0c0f4so15364260pjq.4
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Oct 2022 02:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ukoFf7wEa/GfUfveeUzu2PUBZk7HPVe9cL2u/UltyEU=;
        b=csXExqhBkarPFPg6wEBtNxdgATZM8UopsHo3GUeTmwW04QbJH4NX5y5046JrhCf66H
         OS0czsOqU3JxwafgRAZIi/JmUa4SB4MFcsWb6JIv40cZWC5kkr9pC+tJUljFXEwRJ0fy
         cnX/HOTJHiOBudJTp5MtFv4L99UUXYYVX7yLg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ukoFf7wEa/GfUfveeUzu2PUBZk7HPVe9cL2u/UltyEU=;
        b=HG8KG68DYHp67MyiTp7KLgwzzdTp3J8NMAg/GPQ9CSPZFus1upqhLzS2AmwiGKHDF7
         Wdg/PBcLtorjPHHjkb/rbPyia2kXtpMW2FfkIhAuH24XLJAqD/op88smgeiEm9fqW5uv
         gLbf+52l+bkFq890CVNwOaiktm+kVoLFluGcU+NQ3bKegW9K7m6z9J7z04eavAq5srIs
         MJiRO/h7HmYE71WuMAW8VYeLvLGdPQpqfP4sbNXtpl24ZEGqmoDBP5WVizdbSdJlFD6L
         1Nvg9/CoLOOPXM2CsHeRci8GXfbNJHWuMopnFtVbTSueiGaep1jcKg5v8dbfPN4tYfXP
         kc5A==
X-Gm-Message-State: ACrzQf1W7GgagvhfiFvcVSJ2OleLP9WSlDbUhz+63J9rO9PrGRRa6dob
	q+jXH3uoCiOCIVXITWb9yOnyfg==
X-Google-Smtp-Source: AMsMyM6AMqxalz2EiUvSsTLj683MBoAwpQpreDb/Xeav5jgLr57NynSC9KI51LhT7Kytdced3HqcMQ==
X-Received: by 2002:a17:90b:3588:b0:20b:590:46a2 with SMTP id mm8-20020a17090b358800b0020b059046a2mr2491865pjb.14.1666084214343;
        Tue, 18 Oct 2022 02:10:14 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h10-20020a170902680a00b0017300ec80b0sm8058997plk.308.2022.10.18.02.10.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Oct 2022 02:10:13 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue, 18 Oct 2022 02:10:11 -0700
Message-Id: <20221018090858.never.941-kees@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1673; h=from:subject:message-id; bh=8hepCmu6KkNCIQiT6ONpaMe4VoHSy9sRDnadRc3o6dY=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjTm1zq8jKCG/tc7/8bPvsM44d+bw8pliNmUV1nYs9 oZ3UNCqJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCY05tcwAKCRCJcvTf3G3AJh7AEA CTcI1pdlR5PlvYxNvP2WDxxU4tjQpCYFU8DL3QIbpSPAGCSHnu/fLH6mOTmflitrQ/DsyHD4LRh+Gc MNL44FREEbJ4PDUi+k2SbLlkCESNKduXwzMSU4AzBIbf3TD2GmvqnQc6663oVj/0gCMK1PtcnYqkkK 7dOrQHMvouIoxWrgiOoK8U8K+6pHwwJK66vChECKJN261DcRu+LrteWxTMCEuwWexFa8DVde3NAK9Z rBLz4Cq8ZdLitk/OXx0Dq5Sr+lvsTuhgodexasrD6PbK4g3XSSyHuqSiRLwSb+WgKJaOQ/FwHA/zxz N1ktC3FGVv0rs3PTxdAwcI0FNVEpUdZUkQI0UfFotI03jATt3Ar/11oa77oln6OVD4p86J25TmPSsL 5mbkclNofm6EXo/VniQoq6dc6Bt4acmroVMeYDxRuAwfwxW0tBusHyGG0uUaczhMLcI+8aB7B9Ww5w Z1tpDuQLaTSmDAfOskStapWlFTBdZczM8RsO88iM5k/TH/00g53wBnDEHyYBXaMZWIc+rSuGFChZzf H0+guk6+nfMF3k18/pY3Ysj5RPQE3FF4i1DOJ1aqc9zQLB9+BV8bbsTxy/GCHGenjhYmFipzHZeJat dOlM+mCyFQ3zOAYDS2ZW+1sW0Gfg5Xqh5qC7jyxMfqfwVjvzt1oaXABQEm0g==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ---------
X-Rspamd-Queue-Id: 30D723F0CD
X-Spamd-Result: default: False [-9.10 / 15.00];
	DWL_DNSWL_HI(-3.50)[chromium.org:dkim];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	RCVD_IN_DNSWL_HI(-0.50)[198.145.64.163:received];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.53:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.980];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.216.53:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: YGT5LDXGIORKDQ7LKLQFOK56X32XG5WB
X-Message-ID-Hash: YGT5LDXGIORKDQ7LKLQFOK56X32XG5WB
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Kees Cook <keescook@chromium.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3] dma-buf: Proactively round up to kmalloc bucket size
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YGT5LDXGIORKDQ7LKLQFOK56X32XG5WB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SW5zdGVhZCBvZiBkaXNjb3ZlcmluZyB0aGUga21hbGxvYyBidWNrZXQgc2l6ZSBfYWZ0ZXJfIGFs
bG9jYXRpb24sIHJvdW5kDQp1cCBwcm9hY3RpdmVseSBzbyB0aGUgYWxsb2NhdGlvbiBpcyBleHBs
aWNpdGx5IG1hZGUgZm9yIHRoZSBmdWxsIHNpemUsDQphbGxvd2luZyB0aGUgY29tcGlsZXIgdG8g
Y29ycmVjdGx5IHJlYXNvbiBhYm91dCB0aGUgcmVzdWx0aW5nIHNpemUgb2YNCnRoZSBidWZmZXIg
dGhyb3VnaCB0aGUgZXhpc3RpbmcgX19hbGxvY19zaXplKCkgaGludC4NCg0KQ2M6IFN1bWl0IFNl
bXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+DQpDYzogbGludXgtbWVkaWFAdmdlci5rZXJu
ZWwub3JnDQpDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KQ2M6IGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZw0KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNo
cmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NClNpZ25lZC1vZmYtYnk6IEtlZXMgQ29vayA8a2Vlc2Nv
b2tAY2hyb21pdW0ub3JnPg0KLS0tDQp2MzogYWRkZWQgcmV2aWV3ZWQtYnksIHJlYmFzZSB0byB2
Ni4xLXJjMQ0KdjI6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyMjA5MjMyMDI4MjIu
MjY2NzU4MS05LWtlZXNjb29rQGNocm9taXVtLm9yZy8NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9k
bWEtcmVzdi5jIHwgOSArKysrKysrLS0NCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2
LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYw0KaW5kZXggZTM4ODVjOTBhM2FjLi4xYzc2
YWVkOGUyNjIgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYw0KKysrIGIv
ZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMNCkBAIC05OCwxMiArOTgsMTcgQEAgc3RhdGljIHZv
aWQgZG1hX3Jlc3ZfbGlzdF9zZXQoc3RydWN0IGRtYV9yZXN2X2xpc3QgKmxpc3QsDQogc3RhdGlj
IHN0cnVjdCBkbWFfcmVzdl9saXN0ICpkbWFfcmVzdl9saXN0X2FsbG9jKHVuc2lnbmVkIGludCBt
YXhfZmVuY2VzKQ0KIHsNCiAJc3RydWN0IGRtYV9yZXN2X2xpc3QgKmxpc3Q7DQorCXNpemVfdCBz
aXplOw0KIA0KLQlsaXN0ID0ga21hbGxvYyhzdHJ1Y3Rfc2l6ZShsaXN0LCB0YWJsZSwgbWF4X2Zl
bmNlcyksIEdGUF9LRVJORUwpOw0KKwkvKiBSb3VuZCB1cCB0byB0aGUgbmV4dCBrbWFsbG9jIGJ1
Y2tldCBzaXplLiAqLw0KKwlzaXplID0ga21hbGxvY19zaXplX3JvdW5kdXAoc3RydWN0X3NpemUo
bGlzdCwgdGFibGUsIG1heF9mZW5jZXMpKTsNCisNCisJbGlzdCA9IGttYWxsb2Moc2l6ZSwgR0ZQ
X0tFUk5FTCk7DQogCWlmICghbGlzdCkNCiAJCXJldHVybiBOVUxMOw0KIA0KLQlsaXN0LT5tYXhf
ZmVuY2VzID0gKGtzaXplKGxpc3QpIC0gb2Zmc2V0b2YodHlwZW9mKCpsaXN0KSwgdGFibGUpKSAv
DQorCS8qIEdpdmVuIHRoZSByZXN1bHRpbmcgYnVja2V0IHNpemUsIHJlY2FsY3VsYXRlZCBtYXhf
ZmVuY2VzLiAqLw0KKwlsaXN0LT5tYXhfZmVuY2VzID0gKHNpemUgLSBvZmZzZXRvZih0eXBlb2Yo
Kmxpc3QpLCB0YWJsZSkpIC8NCiAJCXNpemVvZigqbGlzdC0+dGFibGUpOw0KIA0KIAlyZXR1cm4g
bGlzdDsNCi0tIA0KMi4zNC4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
