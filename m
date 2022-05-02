Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8400251749B
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 May 2022 18:38:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 94DDA4804C
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 May 2022 16:38:31 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by lists.linaro.org (Postfix) with ESMTPS id 4639D4804B
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 May 2022 16:37:44 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id e2so20240650wrh.7
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 May 2022 09:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KjkQ0JRQZyD+wsFR0t4oPn4rUlqhN8HCr5sJCzpjRmE=;
        b=XRFyPBX826gX+6Sf6EdgjzVcDAEC57cWAnpTUJSiNbTAuYlcDJqotYTXcL4OCIZhKK
         rGrruKwqySetpI5UYY3c8MrVsrYSkCQLOpxEzdboo9Q3r0Nlqe0Xu6KecryhvSGhaa53
         /ALxzRnKwxCTsSUwi/t+VQAtFWy5YxseyD5HM/82srioDn+fYu6wEihksTJo4ja5Ahyt
         5aTJtt+xiPZ1jQwB/Z137YFORgQkslcu+pdrKfbC5AEvSmvA5ShFJfsbwdOD6aix9GVg
         9jwEfBxqiry31YlDKCDDNUjfPrZyXALr1nE9yv5ntYzzHvYbRz3QDLkMwnTv7gCUSx6V
         q1+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KjkQ0JRQZyD+wsFR0t4oPn4rUlqhN8HCr5sJCzpjRmE=;
        b=KfDK/4+c4wHQpZ4OzTqOfE8z/9ouoiqt2vAv9SeQlkeBv2CFYCmbvUhMaAj4iLLzPj
         DzqCq0J9yRhwWA9VKymQYxmP9BWywFd3FbItN7g0RPGEbfurJ/a/MV0q9IK9p5UfMFhX
         9APKRON7+9kxNHMEW8J2T/HkwU/ghnLy3jwUOW4pqJ/dmJjlesbOavaciaEqDIkYLeDp
         vYLj0sf3IvzddX/RCgy2Cxz18D8TIDGQhdmjmnCoCKCx9O5SX9GbIMRosSgPDu6y8ZY1
         RMgHlHW3zggYTuv225mXiNBkaxLT94N84T9d2lelpUV9taYA/HB5uNVJcA/QFcYktxDm
         H59g==
X-Gm-Message-State: AOAM532oVKUUGv4s79iQoZNWEkfWum6TQKK7aPexwRgmRhcyFyWziUTF
	MTSlulrz7LSmf8065fFQpew=
X-Google-Smtp-Source: ABdhPJwIO4JMf3a/FHinF4NCDxZum5bVjIfSGJInrAQPVDJEyndnzfd420zGEtBXfAqSUovvsyyOEg==
X-Received: by 2002:a05:6000:2c9:b0:20c:64c9:4b7a with SMTP id o9-20020a05600002c900b0020c64c94b7amr3727596wry.325.1651509463426;
        Mon, 02 May 2022 09:37:43 -0700 (PDT)
Received: from able.fritz.box (p57b0b9e1.dip0.t-ipconnect.de. [87.176.185.225])
        by smtp.gmail.com with ESMTPSA id p14-20020adfaa0e000000b0020c5253d8f6sm7294694wrd.66.2022.05.02.09.37.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 09:37:42 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	jason@jlekstrand.net,
	daniels@collabora.com,
	skhawaja@google.com,
	maad.aldabagh@amd.com,
	sergemetral@google.com,
	sumit.semwal@linaro.org,
	gustavo@padovan.org,
	Felix.Kuehling@amd.com,
	alexander.deucher@amd.com,
	tzimmermann@suse.de,
	tvrtko.ursulin@linux.intel.com,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Mon,  2 May 2022 18:37:18 +0200
Message-Id: <20220502163722.3957-12-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220502163722.3957-1-christian.koenig@amd.com>
References: <20220502163722.3957-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: TSFLNF7CGZ6FVFIKVRJQ3WOUFHD33G6E
X-Message-ID-Hash: TSFLNF7CGZ6FVFIKVRJQ3WOUFHD33G6E
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 11/15] drm: add user fence support for atomic in fences
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TSFLNF7CGZ6FVFIKVRJQ3WOUFHD33G6E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hlbiB0aGUgRFJJVkVSX1VTRVJfRkVOQ0UgZmxhZyBpcyBzZXQgd2UgZ3JhYiB0aGUgdXNlciBm
ZW5jZSBmcm9tIHRoZQ0Kc3luYyBmaWxlIGluc3RlYWQgb2YgdGhlIG5vcm1hbCBvbmUuDQoNClNp
Z25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4N
Ci0tLQ0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGkuYyB8IDUgKysrKy0NCiAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQoNCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY191YXBpLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJt
X2F0b21pY191YXBpLmMNCmluZGV4IGUyMTEyYzEwNTY5Yi4uZDFiMTM2NTdlMmFlIDEwMDY0NA0K
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNfdWFwaS5jDQorKysgYi9kcml2ZXJzL2dw
dS9kcm0vZHJtX2F0b21pY191YXBpLmMNCkBAIC01MTcsNyArNTE3LDEwIEBAIHN0YXRpYyBpbnQg
ZHJtX2F0b21pY19wbGFuZV9zZXRfcHJvcGVydHkoc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsDQog
CQlpZiAoVTY0Mkk2NCh2YWwpID09IC0xKQ0KIAkJCXJldHVybiAwOw0KIA0KLQkJc3RhdGUtPmZl
bmNlID0gc3luY19maWxlX2dldF9mZW5jZSh2YWwpOw0KKwkJaWYgKGRybV9jb3JlX2NoZWNrX2Zl
YXR1cmUoZGV2LCBEUklWRVJfVVNFUl9GRU5DRSkpDQorCQkJc3RhdGUtPmZlbmNlID0gc3luY19m
aWxlX2dldF91c2VyX2ZlbmNlKHZhbCk7DQorCQllbHNlDQorCQkJc3RhdGUtPmZlbmNlID0gc3lu
Y19maWxlX2dldF9mZW5jZSh2YWwpOw0KIAkJaWYgKCFzdGF0ZS0+ZmVuY2UpDQogCQkJcmV0dXJu
IC1FSU5WQUw7DQogDQotLSANCjIuMjUuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
