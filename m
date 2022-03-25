Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 400BA4E782C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Mar 2022 16:43:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 630E83F06D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Mar 2022 15:43:31 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by lists.linaro.org (Postfix) with ESMTPS id 550CB3ECE5
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Mar 2022 15:43:27 +0000 (UTC)
Received: by mail-ed1-f44.google.com with SMTP id x34so9698522ede.8
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Mar 2022 08:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UP4oquXI/E3mtdW950mzpwsU3zSTx1OYvcht8inS1yQ=;
        b=lZZDUTz79zDw3QYJiXP15xKVaJZLoUdcKasNVnNzVkhiYpSRANlH6yrHPIk0D0fF57
         6armA0Dn1otC3IA3Jz1L8T9mXPwoBI+A5NwUfGvg6CNe/+y51it2bxHbUpYoYrgnpbbA
         4p/JAfYBRo8+eq+wefQa7M1wgoPp1OepEj4RcxuoIwFBtVFYDUk0oH/dEpmTdq+MBDYV
         2z305zdugDZFq+8FnIZ0HlAB7etMX72TvJVFj1NQ78r+xuG54pLlSJccxtQ37ykX8isY
         S53fl9wIBozfXdx13wJqUfjl8Xt3FIbDgpe7D1YPvf5KiiuXdawN0kpQ37xLn+BooCk3
         HhiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UP4oquXI/E3mtdW950mzpwsU3zSTx1OYvcht8inS1yQ=;
        b=AOfcW5YifWCDITdbPPSdCO0sXd/Wk1XQ0iEZM5/3MAtu0S1pB9ZZzhrXJe7E98dGaM
         fGuhBAzv27J6SmJx34mfSzv0frRKcM/SUU4NT9JMECm6qYJ3UYmsReJPeapJVEGRBP2R
         a5zJeyVoB+3cO3VUYffvsODvDbB+9iMPOYHZCp/fijWQszxEOckhCRiScu9XgjxompCE
         GQb/JEwZWiSEbXBqqmcRzSH83TBatQR4SZ/kkfXAVtH3il65KOl2JD1fzEo35M8NGiPY
         oo14TiuH9KWDRl/6pFW76E2h2f8E8YcMs2qVw+VMiuxOj4be+D6oq+vqOaq1JoYeG8JQ
         IHbA==
X-Gm-Message-State: AOAM532zGO/jlQqHMtFYzOpj1xSa5renOJzWyPSZo/VeUEGUigcJYjk7
	pnkpXtQmdQHRJyEdOJd69IE=
X-Google-Smtp-Source: ABdhPJzycRLB4TnsWMwakRM/fgWS7O99ZGSgmT5FuDWQeIKDN8+qshW2+aLHqHXTeUlq69ucfM4bjA==
X-Received: by 2002:a05:6402:4247:b0:419:3c6e:b0bf with SMTP id g7-20020a056402424700b004193c6eb0bfmr13539604edb.374.1648223006327;
        Fri, 25 Mar 2022 08:43:26 -0700 (PDT)
Received: from EliteBook.fritz.box ([2a02:908:1252:fb60:17b5:736b:9621:3369])
        by smtp.gmail.com with ESMTPSA id hs12-20020a1709073e8c00b006dfd8074d27sm2439558ejc.79.2022.03.25.08.43.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Mar 2022 08:43:25 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri, 25 Mar 2022 16:43:23 +0100
Message-Id: <20220325154323.221765-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Message-ID-Hash: BPMAEWDW2ZSJDNGBUSJGYYA4ZW25LCEF
X-Message-ID-Hash: BPMAEWDW2ZSJDNGBUSJGYYA4ZW25LCEF
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: ville.syrjala@linux.intel.com, daniel@ffwll.ch, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: WIP dma_fence_array_first fix
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BPMAEWDW2ZSJDNGBUSJGYYA4ZW25LCEF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TG9va3MgbGlrZSBzb21lYm9keSBpcyBjcmVhdGluZyBhbiBlbXB0eSBkbWFfZmVuY2VfYXJyYXku
DQoNClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYyB8IDUgKysrKysN
CiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFy
cmF5LmMNCmluZGV4IDUyYjg1ZDI5MjM4My4uNWM4YTcwODQ1NzdiIDEwMDY0NA0KLS0tIGEvZHJp
dmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLWFycmF5LmMNCkBAIC0xNTksNiArMTU5LDggQEAgc3RydWN0IGRtYV9mZW5jZV9hcnJh
eSAqZG1hX2ZlbmNlX2FycmF5X2NyZWF0ZShpbnQgbnVtX2ZlbmNlcywNCiAJc3RydWN0IGRtYV9m
ZW5jZV9hcnJheSAqYXJyYXk7DQogCXNpemVfdCBzaXplID0gc2l6ZW9mKCphcnJheSk7DQogDQor
CVdBUk5fT04oIW51bV9mZW5jZXMgfHwgIWZlbmNlcyk7DQorDQogCS8qIEFsbG9jYXRlIHRoZSBj
YWxsYmFjayBzdHJ1Y3R1cmVzIGJlaGluZCB0aGUgYXJyYXkuICovDQogCXNpemUgKz0gbnVtX2Zl
bmNlcyAqIHNpemVvZihzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5X2NiKTsNCiAJYXJyYXkgPSBremFs
bG9jKHNpemUsIEdGUF9LRVJORUwpOw0KQEAgLTIzMSw2ICsyMzMsOSBAQCBzdHJ1Y3QgZG1hX2Zl
bmNlICpkbWFfZmVuY2VfYXJyYXlfZmlyc3Qoc3RydWN0IGRtYV9mZW5jZSAqaGVhZCkNCiAJaWYg
KCFhcnJheSkNCiAJCXJldHVybiBoZWFkOw0KIA0KKwlpZiAoIWFycmF5LT5udW1fZmVuY2VzKQ0K
KwkJcmV0dXJuIE5VTEw7DQorDQogCXJldHVybiBhcnJheS0+ZmVuY2VzWzBdOw0KIH0NCiBFWFBP
UlRfU1lNQk9MKGRtYV9mZW5jZV9hcnJheV9maXJzdCk7DQotLSANCjIuMjUuMQ0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
