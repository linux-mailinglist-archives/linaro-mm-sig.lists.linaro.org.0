Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 857C7494F00
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jan 2022 14:28:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B4DD43EE9A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jan 2022 13:28:33 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by lists.linaro.org (Postfix) with ESMTPS id 013DC3ED26
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jan 2022 13:27:52 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id w26so12204372wmi.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jan 2022 05:27:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=h31cjV/G3NiOKdHvCZshrAV0bv4jMAoTVAYHVRjcuKk=;
        b=WnbqVfwzb4DPoRFDhQ9/ICG9WTPbw7OBhn0HLKpmPR/WnX6hjSExc4wBC5WXWZZEQG
         eP22+9nEUkH63Iyqek68ocIhQ6pCcP0cZZJbPFhXmdWCx4Vc0XCDRBY2k0/5NAyMIzKf
         4QXgu+BPUO2UC6rDU6cXiibusrHEXg7zaYc1VpX0RJs0IdUYyTrsrFc5WZMPh/jzh3/n
         05IFWTH4hffpALS/ZvFxVF+OCJyTev8sjceYDW6eAA2wYtVd5AksMlL+LVTzJiMuNsZt
         vEFpGgkpokQBL4JxQNOvky0c+m+QZgFy6bwB8e7RUDeUfH4YlE1Td7PcSf3FD29Bs2kr
         WEIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=h31cjV/G3NiOKdHvCZshrAV0bv4jMAoTVAYHVRjcuKk=;
        b=WH4mpgWrCB1dj0cm10Pp7NJocXo/fRri+p97JrQm7A72JgQRrsEPTfrvzFX0LHu9ps
         IqiGLck8Do+D5RdWoM299ik5sxM1mFaoPCki5IMJNcePTKLlYwPjIBAseAiaUR0BR2ih
         lHBAu0IoJE6rQL1vOUaKX+3i8gBmeeltSfKn5ClTO6xtj8QLvd8x4mynzo+y+xmpXWP+
         xPZC9rH+p5lONKMzWjd73qYWPFuLDGj5rLn8dHSGJBOCpEmd0W3xftFCXCX5wYwQ42n7
         tCpx0+pjpEiXKd7zwjTnEUeNDd5zHzBSNS6tqvGKUYN/UI3Fjhs0DDcOnVmQ5Pjahb1D
         QcJA==
X-Gm-Message-State: AOAM530qF/aIvP84sxpRQ/22xHX6LwqQT+VXSlMUZsAhyvjYlAbxArfe
	j3T3xdFgg5+zTQ3ntOk/xsM=
X-Google-Smtp-Source: ABdhPJy5EXLfElgIsYt5n+gjzWUyHJ0xgsDXAnXo7PfLLlJTqgMkEsQTYg+RB0XoOGHW5TGs5+SiwQ==
X-Received: by 2002:adf:fb4f:: with SMTP id c15mr32600110wrs.509.1642685271160;
        Thu, 20 Jan 2022 05:27:51 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id a9sm2658454wmm.32.2022.01.20.05.27.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jan 2022 05:27:50 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	gustavo@padovan.org,
	daniel.vetter@ffwll.ch,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Thu, 20 Jan 2022 14:27:40 +0100
Message-Id: <20220120132747.2348-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220120132747.2348-1-christian.koenig@amd.com>
References: <20220120132747.2348-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: 3XPHAB3QNKMX2O5JLTORPPS7UL74SVXI
X-Message-ID-Hash: 3XPHAB3QNKMX2O5JLTORPPS7UL74SVXI
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/9] dma-buf: warn about dma_fence_array container rules
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3XPHAB3QNKMX2O5JLTORPPS7UL74SVXI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SXQncyBub3QgYWxsb3dlZCB0byBuZXN0IGFub3RoZXIgZG1hX2ZlbmNlIGNvbnRhaW5lciBpbnRv
IGEgZG1hX2ZlbmNlX2FycmF5DQpvciBvdGhlcndpc2Ugd2UgY2FuIHJ1biBpbnRvIHJlY3Vyc2lv
bi4NCg0KV2FybiBhYm91dCB0aGF0IHdoZW4gd2UgY3JlYXRlIGEgZG1hX2ZlbmNlX2FycmF5Lg0K
DQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+DQpSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4N
Ci0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYyB8IDEzICsrKysrKysrKysr
KysNCiAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5j
ZS1hcnJheS5jDQppbmRleCAzZTA3Zjk2MWUyZjMuLjRiZmJjYjg4NWJiYyAxMDA2NDQNCi0tLSBh
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVm
L2RtYS1mZW5jZS1hcnJheS5jDQpAQCAtMTc2LDYgKzE3NiwxOSBAQCBzdHJ1Y3QgZG1hX2ZlbmNl
X2FycmF5ICpkbWFfZmVuY2VfYXJyYXlfY3JlYXRlKGludCBudW1fZmVuY2VzLA0KIA0KIAlhcnJh
eS0+YmFzZS5lcnJvciA9IFBFTkRJTkdfRVJST1I7DQogDQorCS8qIGRtYV9mZW5jZV9hcnJheSBv
YmplY3RzIHNob3VsZCBuZXZlciBjb250YWluIGFueSBvdGhlciBmZW5jZQ0KKwkgKiBjb250YWlu
ZXJzIG9yIG90aGVyd2lzZSB3ZSBydW4gaW50byByZWN1cnNpb24gYW5kIHBvdGVudGlhbCBrZXJu
ZWwNCisJICogc3RhY2sgb3ZlcmZsb3cgb24gb3BlcmF0aW9ucyBvbiB0aGUgZG1hX2ZlbmNlX2Fy
cmF5Lg0KKwkgKg0KKwkgKiBUaGUgY29ycmVjdCB3YXkgb2YgaGFuZGxpbmcgdGhpcyBpcyB0byBm
bGF0dGVuIG91dCB0aGUgYXJyYXkgYnkgdGhlDQorCSAqIGNhbGxlciBpbnN0ZWFkLg0KKwkgKg0K
KwkgKiBFbmZvcmNlIHRoaXMgaGVyZSBieSBjaGVja2luZyB0aGF0IHdlIGRvbid0IGNyZWF0ZSBh
IGRtYV9mZW5jZV9hcnJheQ0KKwkgKiB3aXRoIGFueSBjb250YWluZXIgaW5zaWRlLg0KKwkgKi8N
CisJd2hpbGUgKHNlcW5vLS0pDQorCQlXQVJOX09OKGRtYV9mZW5jZV9pc19jb250YWluZXIoZmVu
Y2VzW3NlcW5vXSkpOw0KKw0KIAlyZXR1cm4gYXJyYXk7DQogfQ0KIEVYUE9SVF9TWU1CT0woZG1h
X2ZlbmNlX2FycmF5X2NyZWF0ZSk7DQotLSANCjIuMjUuMQ0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
