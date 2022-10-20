Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD0D605FE1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Oct 2022 14:14:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 287033F4D7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Oct 2022 12:14:40 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by lists.linaro.org (Postfix) with ESMTPS id 3DBE43F595
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Oct 2022 12:13:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=jIYrU7+t;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.41 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f41.google.com with SMTP id s30so29609964eds.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Oct 2022 05:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KzSxYsG4b4l+I9q2QIs0U4YnHUtpdMnLVfBoeSrQrAc=;
        b=jIYrU7+t6O0+MOllWK+5mFCQMiOi/kRWuMhz3cY4alWWXmJLWcFMrHIqgYpApPm7rV
         w5gnQSyraFv6vlSxkrFxE/z6BH2AriwBL0nqbkLvB92duSwkVfBWFH6JxUAu1g5ugSV4
         SEkz6WhzGTTTKG82PHYo5d64WY6PyQU9xaUdmVqi45fnr5pqXYxvQN/m5uzUoTh8gQHB
         4e16i8/MIxm5Mcq/qeSjTxc2dXHtuDaB/PNaL7GYEQOBJp0E9Vb2xrpra+tWs5fqWogd
         yWC+B8e+1kIQYwycccp+zWvZRXO14+Gjwej51Ggu5qqmALXlRZZuU5D2zETpzsOR1R5S
         IS2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KzSxYsG4b4l+I9q2QIs0U4YnHUtpdMnLVfBoeSrQrAc=;
        b=BNQGddUxo7CX85ruY4CncYqZ3LKMf3yZWdjD0mJc5mQxJC55s1olDPWtjpGExetfta
         k/d2vfNXhqct7KF38UfQeZsr4ka9uXJAUVEKmvN4aAKbBsSoBIpbNEDy/9/5QaIY5aVu
         S2eA4ZOKBf9sQLe/rnxgPW5dL/nyuCqUW/9F8UxLjfjVnn0SaUgoeu0EvBACUmPmhZYh
         RfAIaviRbtv56np33c51KjNmM55fCr8CX6qPbqUO8BTGoMGQmG4iRRUxQr0YZqqYtrGb
         ifyzzuCyjIkUjYdGkWSvenwA3+CRg4ULRvi7OEL2deHfv7ZeKAmv80hghXN5kYp6bHFZ
         qRmQ==
X-Gm-Message-State: ACrzQf1d6/4zPczuzssqKg10zA6GhwG/iyi4X2WCc7uCl0rxuJe7bzxN
	cXqoJHgOLyis7dvrpLtohHo=
X-Google-Smtp-Source: AMsMyM7Tr0exJWZIHe2hajABmGUD0VYCZ5U27TZBF0a1r7poeOtlWKVajuBZT4re8KtHczrCmIgQ8Q==
X-Received: by 2002:aa7:de9a:0:b0:44d:8191:44c5 with SMTP id j26-20020aa7de9a000000b0044d819144c5mr11711686edv.232.1666268007265;
        Thu, 20 Oct 2022 05:13:27 -0700 (PDT)
Received: from able.fritz.box (p5b0eacfe.dip0.t-ipconnect.de. [91.14.172.254])
        by smtp.gmail.com with ESMTPSA id s15-20020a05640217cf00b0045467008dd0sm12091979edy.35.2022.10.20.05.13.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Oct 2022 05:13:26 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: l.stach@pengutronix.de,
	nicolas@ndufresne.ca,
	ppaalanen@gmail.com,
	sumit.semwal@linaro.org,
	daniel@ffwll.ch,
	robdclark@gmail.com,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	linux-media@vger.kernel.org
Date: Thu, 20 Oct 2022 14:13:16 +0200
Message-Id: <20221020121316.3946-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221020121316.3946-1-christian.koenig@amd.com>
References: <20221020121316.3946-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -----
X-Rspamd-Queue-Id: 3DBE43F595
X-Spamd-Result: default: False [-5.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.208.41:from];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.928];
	FROM_HAS_DN(0.00)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.41:from];
	RCPT_COUNT_SEVEN(0.00)[10];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[pengutronix.de,ndufresne.ca,gmail.com,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: PVXLTCLK7QCNBDFXPBR3M65NFUHPLTLC
X-Message-ID-Hash: PVXLTCLK7QCNBDFXPBR3M65NFUHPLTLC
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 3/3] media: videobuf2: set dma_coherent flag for DMA-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PVXLTCLK7QCNBDFXPBR3M65NFUHPLTLC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hlbiBhIGRldmljZSBpcyBzbm9vcGluZyB0aGUgQ1BVIGNhY2hlIHdlIGFzc3VtZSB0aGF0IGFs
bCBpbXBvcnRlcnMNCm11c3Qgc25vb3AgdGhlIENQVSBjYWNoZSBhcyB3ZWxsLg0KDQpFeGVjcHQg
Zm9yIHZtYWxsb2MgYWxsb2NhdGlvbnMgc2luY2UgdGhvc2UgaW1wbGVtZW50IG1tYXAoKSBpbXBv
cnRzIG11c3QNCmFsd2F5cyBzbm9vcCB0aGUgY2FjaGUgb3Igd2Ugd2lsbCBydW4gaW50byBjb2hl
cmVuY3kgcHJvYmxlbXMuDQoNClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlz
dGlhbi5rb2VuaWdAYW1kLmNvbT4NCi0tLQ0KIGRyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVm
Mi92aWRlb2J1ZjItZG1hLWNvbnRpZy5jIHwgMiArKw0KIGRyaXZlcnMvbWVkaWEvY29tbW9uL3Zp
ZGVvYnVmMi92aWRlb2J1ZjItZG1hLXNnLmMgICAgIHwgMiArKw0KIGRyaXZlcnMvbWVkaWEvY29t
bW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItdm1hbGxvYy5jICAgIHwgMSArDQogMyBmaWxlcyBjaGFu
Z2VkLCA1IGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvY29tbW9u
L3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLWNvbnRpZy5jIGIvZHJpdmVycy9tZWRpYS9jb21tb24v
dmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29udGlnLmMNCmluZGV4IDU1NWJkNDBmYTQ3Mi4uNTc0
MzMzMTBjNTVjIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3Zp
ZGVvYnVmMi1kbWEtY29udGlnLmMNCisrKyBiL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVm
Mi92aWRlb2J1ZjItZG1hLWNvbnRpZy5jDQpAQCAtMTEsNiArMTEsNyBAQA0KICAqLw0KIA0KICNp
bmNsdWRlIDxsaW51eC9kbWEtYnVmLmg+DQorI2luY2x1ZGUgPGxpbnV4L2RtYS1tYXAtb3BzLmg+
DQogI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPg0KICNpbmNsdWRlIDxsaW51eC9yZWZjb3VudC5o
Pg0KICNpbmNsdWRlIDxsaW51eC9zY2F0dGVybGlzdC5oPg0KQEAgLTUwNyw2ICs1MDgsNyBAQCBz
dGF0aWMgc3RydWN0IGRtYV9idWYgKnZiMl9kY19nZXRfZG1hYnVmKHN0cnVjdCB2YjJfYnVmZmVy
ICp2YiwNCiAJZXhwX2luZm8uc2l6ZSA9IGJ1Zi0+c2l6ZTsNCiAJZXhwX2luZm8uZmxhZ3MgPSBm
bGFnczsNCiAJZXhwX2luZm8ucHJpdiA9IGJ1ZjsNCisJZXhwX2luZm8uY29oZXJlbnQgPSBkZXZf
aXNfZG1hX2NvaGVyZW50KHZiLT52YjJfcXVldWUtPmRldik7DQogDQogCWlmICghYnVmLT5zZ3Rf
YmFzZSkNCiAJCWJ1Zi0+c2d0X2Jhc2UgPSB2YjJfZGNfZ2V0X2Jhc2Vfc2d0KGJ1Zik7DQpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtc2cu
YyBiL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLXNnLmMNCmlu
ZGV4IDM2OTgxYTViNWM1My4uZGJkZDc1M2U0YTM5IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9tZWRp
YS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtc2cuYw0KKysrIGIvZHJpdmVycy9tZWRp
YS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtc2cuYw0KQEAgLTEwLDYgKzEwLDcgQEAN
CiAgKiB0aGUgRnJlZSBTb2Z0d2FyZSBGb3VuZGF0aW9uLg0KICAqLw0KIA0KKyNpbmNsdWRlIDxs
aW51eC9kbWEtbWFwLW9wcy5oPg0KICNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4NCiAjaW5jbHVk
ZSA8bGludXgvbW0uaD4NCiAjaW5jbHVkZSA8bGludXgvcmVmY291bnQuaD4NCkBAIC01MjIsNiAr
NTIzLDcgQEAgc3RhdGljIHN0cnVjdCBkbWFfYnVmICp2YjJfZG1hX3NnX2dldF9kbWFidWYoc3Ry
dWN0IHZiMl9idWZmZXIgKnZiLA0KIAlleHBfaW5mby5zaXplID0gYnVmLT5zaXplOw0KIAlleHBf
aW5mby5mbGFncyA9IGZsYWdzOw0KIAlleHBfaW5mby5wcml2ID0gYnVmOw0KKwlleHBfaW5mby5j
b2hlcmVudCA9IGRldl9pc19kbWFfY29oZXJlbnQodmItPnZiMl9xdWV1ZS0+ZGV2KTsNCiANCiAJ
aWYgKFdBUk5fT04oIWJ1Zi0+ZG1hX3NndCkpDQogCQlyZXR1cm4gTlVMTDsNCmRpZmYgLS1naXQg
YS9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLXZtYWxsb2MuYyBiL2Ry
aXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItdm1hbGxvYy5jDQppbmRleCA0
MWRiNzA3ZTQzYTQuLjBiNjg3NDczM2U4NiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvbWVkaWEvY29t
bW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItdm1hbGxvYy5jDQorKysgYi9kcml2ZXJzL21lZGlhL2Nv
bW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLXZtYWxsb2MuYw0KQEAgLTM0MSw2ICszNDEsNyBAQCBz
dGF0aWMgc3RydWN0IGRtYV9idWYgKnZiMl92bWFsbG9jX2dldF9kbWFidWYoc3RydWN0IHZiMl9i
dWZmZXIgKnZiLA0KIAlleHBfaW5mby5zaXplID0gYnVmLT5zaXplOw0KIAlleHBfaW5mby5mbGFn
cyA9IGZsYWdzOw0KIAlleHBfaW5mby5wcml2ID0gYnVmOw0KKwlleHBfaW5mby5jb2hlcmVudCA9
IHRydWU7DQogDQogCWlmIChXQVJOX09OKCFidWYtPnZhZGRyKSkNCiAJCXJldHVybiBOVUxMOw0K
LS0gDQoyLjI1LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
