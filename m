Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6AA4F7ABC
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Apr 2022 11:00:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8C04A3EA54
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Apr 2022 09:00:32 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by lists.linaro.org (Postfix) with ESMTPS id 9023A402D5
	for <linaro-mm-sig@lists.linaro.org>; Thu,  7 Apr 2022 08:59:56 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id ot30so9342895ejb.12
        for <linaro-mm-sig@lists.linaro.org>; Thu, 07 Apr 2022 01:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oXj3Kbe7xDHiyyOo1B4OYi1sImslS+0K/zY6uVLIi6w=;
        b=YbmXAOFs+gy5D015qYxvG2OieoMf/vdwD/ijlCdS+KTOgB+FyIOdBGxI0D9+AcoxAZ
         isJBepkWkxA29ApS2kbZ8HRDiEWC7TbAOQzWqAjH2B0ODJxOBxBUgZ/nz9+PAN1DyRA5
         aTTYgeZvDUB0bqCdohjupaIHeLIL5viYu1FZmssQG0WpIHSwufaYPJAswLtKfm1tcJ98
         s2U5q/OWTnGDL/2KSyUsvHzqwyRvhqL+RmGZCZ68VuzS3thVWTNv3uC49pPAtjIU+1W7
         ozpA6iCVtF/NRZOm2W8OJjSVhMi5tXXNrXIKcl2l70mQBO/5vnlaH62o8Lcd24LMBbd7
         qT0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oXj3Kbe7xDHiyyOo1B4OYi1sImslS+0K/zY6uVLIi6w=;
        b=N+r633Q/KGzu13adAxsrSoNzUNTkUxZAo+JE12nV+/NrnRYeFeNWA1NFkttmn2I/Kp
         tcMzGA0goeTRXmscui6N35OGHkYR9J4E0+QgTK3HnGlo+IM+DFwfTClSc6Qaxy5T24XR
         fq43mLStLFqioeLK3QMIjvEpTtJWcEDOYxzDuUnNUBR6Uh29wD494sLPQCfnrZ0osJFL
         gUaYBl0SpbUFa47GNL9FPWM949lKYBbyCDaMgDROVaiFbk61cnwgkxbtnQuSLRBmgeBj
         cPmYM+4K//w4ujgeFB9TAUyuYIRTZpc+YcXwcfVVHsMVQeWUc9ADYM5rKb5ffnjI2jN7
         qKeg==
X-Gm-Message-State: AOAM530uGg4O6tjqBE7nfScEan1usBpRZmWmbEqyh4vGkgwyxVvOhfoQ
	Tj+qqWibLMwnBQZj5vRYI2E=
X-Google-Smtp-Source: ABdhPJyvjeR9CZoQ4PIU/jrK26usfsiKkXh6Wyjwbj4nnnWpODNbwTBex5/ZVXURFPN9veF3SERFhw==
X-Received: by 2002:a17:906:2991:b0:6cd:ac19:ce34 with SMTP id x17-20020a170906299100b006cdac19ce34mr12376953eje.746.1649321995641;
        Thu, 07 Apr 2022 01:59:55 -0700 (PDT)
Received: from able.fritz.box (p57b0b9e1.dip0.t-ipconnect.de. [87.176.185.225])
        by smtp.gmail.com with ESMTPSA id h26-20020a170906111a00b006e778bd4fc8sm5186563eja.38.2022.04.07.01.59.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 01:59:55 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel.vetter@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org,
	intel-gfx@lists.freedesktop.org
Date: Thu,  7 Apr 2022 10:59:36 +0200
Message-Id: <20220407085946.744568-6-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220407085946.744568-1-christian.koenig@amd.com>
References: <20220407085946.744568-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: CZUZXDYGUDAZUXRE6ZILGXUS4KAJXGI6
X-Message-ID-Hash: CZUZXDYGUDAZUXRE6ZILGXUS4KAJXGI6
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 05/15] drm/amdgpu: use DMA_RESV_USAGE_KERNEL
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CZUZXDYGUDAZUXRE6ZILGXUS4KAJXGI6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2FpdCBvbmx5IGZvciBrZXJuZWwgZmVuY2VzIGJlZm9yZSBrbWFwIG9yIFVWRCBkaXJlY3Qgc3Vi
bWlzc2lvbi4NCg0KVGhpcyBhbHNvIG1ha2VzIHN1cmUgdGhhdCB3ZSBhbHdheXMgd2FpdCBpbiBh
bWRncHVfYm9fa21hcCgpIGV2ZW4gd2hlbg0KcmV0dXJuaW5nIGEgY2FjaGVkIHBvaW50ZXIuDQoN
ClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNv
bT4NCkFja2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPg0KLS0t
DQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jIHwgMTAgKysrKyst
LS0tLQ0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV91dmQuYyAgICB8ICAyICst
DQogMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQoNCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0LmMgYi9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0LmMNCmluZGV4IGEzY2RmOGEy
NDM3Ny4uNTgzMmMwNWFiMTBkIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X29iamVjdC5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfb2JqZWN0LmMNCkBAIC03NjEsNiArNzYxLDExIEBAIGludCBhbWRncHVfYm9fa21hcChzdHJ1
Y3QgYW1kZ3B1X2JvICpibywgdm9pZCAqKnB0cikNCiAJaWYgKGJvLT5mbGFncyAmIEFNREdQVV9H
RU1fQ1JFQVRFX05PX0NQVV9BQ0NFU1MpDQogCQlyZXR1cm4gLUVQRVJNOw0KIA0KKwlyID0gZG1h
X3Jlc3Zfd2FpdF90aW1lb3V0KGJvLT50Ym8uYmFzZS5yZXN2LCBETUFfUkVTVl9VU0FHRV9LRVJO
RUwsDQorCQkJCSAgZmFsc2UsIE1BWF9TQ0hFRFVMRV9USU1FT1VUKTsNCisJaWYgKHIgPCAwKQ0K
KwkJcmV0dXJuIHI7DQorDQogCWtwdHIgPSBhbWRncHVfYm9fa3B0cihibyk7DQogCWlmIChrcHRy
KSB7DQogCQlpZiAocHRyKQ0KQEAgLTc2OCwxMSArNzczLDYgQEAgaW50IGFtZGdwdV9ib19rbWFw
KHN0cnVjdCBhbWRncHVfYm8gKmJvLCB2b2lkICoqcHRyKQ0KIAkJcmV0dXJuIDA7DQogCX0NCiAN
Ci0JciA9IGRtYV9yZXN2X3dhaXRfdGltZW91dChiby0+dGJvLmJhc2UucmVzdiwgRE1BX1JFU1Zf
VVNBR0VfV1JJVEUsDQotCQkJCSAgZmFsc2UsIE1BWF9TQ0hFRFVMRV9USU1FT1VUKTsNCi0JaWYg
KHIgPCAwKQ0KLQkJcmV0dXJuIHI7DQotDQogCXIgPSB0dG1fYm9fa21hcCgmYm8tPnRibywgMCwg
Ym8tPnRiby5yZXNvdXJjZS0+bnVtX3BhZ2VzLCAmYm8tPmttYXApOw0KIAlpZiAocikNCiAJCXJl
dHVybiByOw0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV91
dmQuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV91dmQuYw0KaW5kZXggMzY1
NDMyNjIxOWUwLi42ZWFjNjQ5NDk5ZDMgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfdXZkLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV91dmQuYw0KQEAgLTExNjQsNyArMTE2NCw3IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X3V2ZF9z
ZW5kX21zZyhzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcsIHN0cnVjdCBhbWRncHVfYm8gKmJvLA0K
IA0KIAlpZiAoZGlyZWN0KSB7DQogCQlyID0gZG1hX3Jlc3Zfd2FpdF90aW1lb3V0KGJvLT50Ym8u
YmFzZS5yZXN2LA0KLQkJCQkJICBETUFfUkVTVl9VU0FHRV9XUklURSwgZmFsc2UsDQorCQkJCQkg
IERNQV9SRVNWX1VTQUdFX0tFUk5FTCwgZmFsc2UsDQogCQkJCQkgIG1zZWNzX3RvX2ppZmZpZXMo
MTApKTsNCiAJCWlmIChyID09IDApDQogCQkJciA9IC1FVElNRURPVVQ7DQotLSANCjIuMjUuMQ0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
