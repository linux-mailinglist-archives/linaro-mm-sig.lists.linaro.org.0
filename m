Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9712151748D
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 May 2022 18:38:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AEABB48055
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 May 2022 16:38:05 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id 192C848052
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 May 2022 16:37:37 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id 129so8583293wmz.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 May 2022 09:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PRrPoRHHMVUrb5lC6MPjlnCl9PCZ8HWYoNk/YFcFCiA=;
        b=OFQtewjT9fUvoHtYhMh7ANDq7xj4P0vsSbip4Q75b1Jkvyrxh/SM6AfiC/QKQHlypQ
         BX3BabqqMqdEzeYcj/nmpBY8Qxda0a9wsD8qsf2abkJ9mVB3r/rb+a7ICk3TaZcsRmnL
         dQKrmgE86iyIPqEuj8wwM0OXSjKut2YO2B5QqjhlFueiv4aJPmMENk3j6XyH7ujbFMEv
         OH81rUOKEhpDhUw+i9TE0Srq5nIIY6RYcRHGA9C9StT0gyacz6dqsNe0apbB5sffIyR1
         fT64bVj5tN0+FlGD0PPb34H5aCF853+ixTuYl2rpgHw5gNGfz3AIPbSZ57U2W5UpWxFP
         WBzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PRrPoRHHMVUrb5lC6MPjlnCl9PCZ8HWYoNk/YFcFCiA=;
        b=Ig7XSdLNrcWSRNHvtM1L5MygV/IdKDAxVff/noeBqFQYj7APD2NucgL0AFwZqQA1ro
         ouX2cu05RYAEsRXRX/otM9ABPswwa8Az9y35/vRm6Uiqzg0gRo6ZnPIuifM8hg2xCWUA
         onoDN8OnTF/K6H387yzMuFiX54B9MgkBhxbdg9Qe3wZ1obEe0Tn26RGhZVAXq7iYIXid
         VZBXr4/lpx4puLULL1xzCJyXeyVROCwtpz1NifMJv3QgqzhaiyPQIRMUheY8fQLxtToe
         O+4nImJBYwOdJrt3cATZ6WMGpq0OIxwaecEVRdXvTADbhkWB7RDa4ArIZpefa93qcD0h
         qMHg==
X-Gm-Message-State: AOAM531l4Ac8DLSL5tk+AGuoQiOcZ0gTK2uPSkzoxTvwa7g+EFzJgWhg
	0eq7hw67bdw0rPM0j53WQdE=
X-Google-Smtp-Source: ABdhPJyEr5vbAcRX0+Jtvnnc+Wf7OKzoanJfhrmTHwUjGX/+TujJY43ARrVlFK4RKL5kjt6QWDMlHQ==
X-Received: by 2002:a05:600c:4eca:b0:394:1e7d:af41 with SMTP id g10-20020a05600c4eca00b003941e7daf41mr15271560wmq.151.1651509456178;
        Mon, 02 May 2022 09:37:36 -0700 (PDT)
Received: from able.fritz.box (p57b0b9e1.dip0.t-ipconnect.de. [87.176.185.225])
        by smtp.gmail.com with ESMTPSA id p14-20020adfaa0e000000b0020c5253d8f6sm7294694wrd.66.2022.05.02.09.37.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 09:37:35 -0700 (PDT)
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
Date: Mon,  2 May 2022 18:37:13 +0200
Message-Id: <20220502163722.3957-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220502163722.3957-1-christian.koenig@amd.com>
References: <20220502163722.3957-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: 6BEMNY6CYPKR5L6RUBHNKWSN6E3N5NKX
X-Message-ID-Hash: 6BEMNY6CYPKR5L6RUBHNKWSN6E3N5NKX
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 06/15] dma-buf: add user fence support to dma_fence_merge()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6BEMNY6CYPKR5L6RUBHNKWSN6E3N5NKX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SnVzdCBtYWtlIHN1cmUgdGhhdCB3ZSBmb3J3YXJkIHRoZSB1c2VyIGZlbmNlIHN0YXR1cyB0byB0
aGUgb3V0cHV0DQp3aGVuZXZlciBhbnkgb2YgdGhlIGlucHV0cyBhcmUgYW4gdXNlciBmZW5jZS4N
Cg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQu
Y29tPg0KLS0tDQogZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS11bndyYXAuYyB8IDExICsrKysr
KysrLS0tDQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkN
Cg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMgYi9kcml2
ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXVud3JhcC5jDQppbmRleCA4N2VlMmVmY2VkMTAuLmRkM2M0
M2FiYThmMSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMN
CisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMNCkBAIC02NiwxNyArNjYs
MTkgQEAgc3RydWN0IGRtYV9mZW5jZSAqX19kbWFfZmVuY2VfbWVyZ2UodW5zaWduZWQgaW50IG51
bV9mZW5jZXMsDQogew0KIAlzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5ICpyZXN1bHQ7DQogCXN0cnVj
dCBkbWFfZmVuY2UgKnRtcCwgKiphcnJheTsNCisJYm9vbCB1c2VyX2ZlbmNlID0gZmFsc2U7DQog
CXVuc2lnbmVkIGludCBpLCBjb3VudDsNCiANCiAJY291bnQgPSAwOw0KIAlmb3IgKGkgPSAwOyBp
IDwgbnVtX2ZlbmNlczsgKytpKSB7DQorCQl1c2VyX2ZlbmNlIHw9IHRlc3RfYml0KERNQV9GRU5D
RV9GTEFHX1VTRVIsICZmZW5jZXNbaV0tPmZsYWdzKTsNCiAJCWRtYV9mZW5jZV91bndyYXBfZm9y
X2VhY2godG1wLCAmaXRlcltpXSwgZmVuY2VzW2ldKQ0KIAkJCWlmICghZG1hX2ZlbmNlX2lzX3Np
Z25hbGVkKHRtcCkpDQogCQkJCSsrY291bnQ7DQogCX0NCiANCiAJaWYgKGNvdW50ID09IDApDQot
CQlyZXR1cm4gZG1hX2ZlbmNlX2dldF9zdHViKGZhbHNlKTsNCisJCXJldHVybiBkbWFfZmVuY2Vf
Z2V0X3N0dWIodXNlcl9mZW5jZSk7DQogDQogCWlmIChjb3VudCA+IElOVF9NQVgpDQogCQlyZXR1
cm4gTlVMTDsNCkBAIC0xMjksMTEgKzEzMSwxMiBAQCBzdHJ1Y3QgZG1hX2ZlbmNlICpfX2RtYV9m
ZW5jZV9tZXJnZSh1bnNpZ25lZCBpbnQgbnVtX2ZlbmNlcywNCiAJfSB3aGlsZSAodG1wKTsNCiAN
CiAJaWYgKGNvdW50ID09IDApIHsNCi0JCXRtcCA9IGRtYV9mZW5jZV9nZXRfc3R1YihmYWxzZSk7
DQorCQl0bXAgPSBkbWFfZmVuY2VfZ2V0X3N0dWIodXNlcl9mZW5jZSk7DQogCQlnb3RvIHJldHVy
bl90bXA7DQogCX0NCiANCi0JaWYgKGNvdW50ID09IDEpIHsNCisJaWYgKGNvdW50ID09IDEgJiYN
CisJICAgIHRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1VTRVIsICZhcnJheVswXS0+ZmxhZ3MpID09
IHVzZXJfZmVuY2UpIHsNCiAJCXRtcCA9IGFycmF5WzBdOw0KIAkJZ290byByZXR1cm5fdG1wOw0K
IAl9DQpAQCAtMTQ1LDYgKzE0OCw4IEBAIHN0cnVjdCBkbWFfZmVuY2UgKl9fZG1hX2ZlbmNlX21l
cmdlKHVuc2lnbmVkIGludCBudW1fZmVuY2VzLA0KIAkJdG1wID0gTlVMTDsNCiAJCWdvdG8gcmV0
dXJuX3RtcDsNCiAJfQ0KKwlpZiAodXNlcl9mZW5jZSkNCisJCXNldF9iaXQoRE1BX0ZFTkNFX0ZM
QUdfVVNFUiwgJnJlc3VsdC0+YmFzZS5mbGFncyk7DQogCXJldHVybiAmcmVzdWx0LT5iYXNlOw0K
IA0KIHJldHVybl90bXA6DQotLSANCjIuMjUuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
