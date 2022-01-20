Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 05120494F02
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jan 2022 14:29:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 31E2E3EE9C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jan 2022 13:29:03 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by lists.linaro.org (Postfix) with ESMTPS id 8A4183EE9D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jan 2022 13:27:53 +0000 (UTC)
Received: by mail-wm1-f54.google.com with SMTP id o1-20020a1c4d01000000b0034d95625e1fso7413413wmh.4
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jan 2022 05:27:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=NMvNPKP34hAKYGcpxJqq3LnQ/oLcKhJxLzf1TGkhp7o=;
        b=LNchh6gl8Sin17f9Wh5+/HOL+rNQVvxSyd0bp6mFiYCrspxHZQU9U+hvKXcKIpg1U1
         UazaERxWOtIx6YUDh9JMiIzosFBPSpxII4osAS4ZUNCFXbDeO8QEu0i9X2CEj/YFdjI5
         bWwlNi/o+C2bmSXH49DQMovVVvKxYEGQYS9wwdrkesT33RNCvgjvPkDDfs3m68DjiiIb
         xVbzbCSzQC4DKcKcF+1eHAsLQa1/U82DW2+HY2CYHgguNQTHpS5bGW0N5QhulqLeyOnQ
         znAkuM03oahCp8aQq+CoPnR5LwzSSz82InPNk213n8MVV18WP/Wl6NtNA1tkEcOg92Mr
         NZZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NMvNPKP34hAKYGcpxJqq3LnQ/oLcKhJxLzf1TGkhp7o=;
        b=ahMNFXs/54uiWjLJZnV+ZkQIS8bJ0JHnYmZ52ON2IBAoUa81ir0s/U9ZKsGUT1szqV
         5wAPQpZEAcPmqoeMWSnsOcHpiJzOKC2G+YsrMjYnlO3NMHDnh8BxxykrBWR0JyJ11HrR
         Ll132gxCgdtgHSPAG394/u5eSfmUACgO24dRm64NuIHcmED34rK5ZtmJN8g5qHVPCTRs
         Uf+IT6DsUyJ9KBQp/ND5cZ3DMMaRGZ2sYXByi7sTr46bvIid+cuzsr0s31V+IxCOC55V
         m95tKZ54dJ3GFfxxSnPgZAzqewZlZ4m5s6K1+o3lUPcV+RM+AQtPvJytv6LNDFgwrVHu
         kg2A==
X-Gm-Message-State: AOAM5314R+T42dLLdcaY2lybhM1MtnAm9v1iWTAF/Q+nKQBzPFarA+AE
	GKILde2B7ZBBx6PsyrWaOJs=
X-Google-Smtp-Source: ABdhPJwzwzhmn3CcMtiwnM1MVezq2gDxAcy2+ILKUo9enxe96/BtMCoq9XKzEf6HEkqNAqFTxFg6YQ==
X-Received: by 2002:a05:600c:5125:: with SMTP id o37mr9069286wms.161.1642685272749;
        Thu, 20 Jan 2022 05:27:52 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id a9sm2658454wmm.32.2022.01.20.05.27.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jan 2022 05:27:52 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	gustavo@padovan.org,
	daniel.vetter@ffwll.ch,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Thu, 20 Jan 2022 14:27:42 +0100
Message-Id: <20220120132747.2348-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220120132747.2348-1-christian.koenig@amd.com>
References: <20220120132747.2348-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: BZP3TFROOQKZFHUYGB67R5GP55DQMTGJ
X-Message-ID-Hash: BZP3TFROOQKZFHUYGB67R5GP55DQMTGJ
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 4/9] dma-buf: warn about containers in dma_resv object
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BZP3TFROOQKZFHUYGB67R5GP55DQMTGJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RHJpdmVycyBzaG91bGQgbm90IGFkZCBjb250YWluZXJzIGFzIHNoYXJlZCBmZW5jZXMgdG8gdGhl
IGRtYV9yZXN2DQpvYmplY3QsIGluc3RlYWQgZWFjaCBmZW5jZSBzaG91bGQgYmUgYWRkZWQgaW5k
aXZpZHVhbGx5Lg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4u
a29lbmlnQGFtZC5jb20+DQpSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRl
ckBmZndsbC5jaD4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIHwgNSArKysrKw0K
IDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMNCmluZGV4IDZk
ZDlhNDBiNTVkNC4uZThhMGMxZDUxZGEyIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2Rt
YS1yZXN2LmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQpAQCAtMjU2LDYgKzI1
NiwxMSBAQCB2b2lkIGRtYV9yZXN2X2FkZF9zaGFyZWRfZmVuY2Uoc3RydWN0IGRtYV9yZXN2ICpv
YmosIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KIA0KIAlkbWFfcmVzdl9hc3NlcnRfaGVsZChv
YmopOw0KIA0KKwkvKiBEcml2ZXJzIHNob3VsZCBub3QgYWRkIGNvbnRhaW5lcnMgaGVyZSwgaW5z
dGVhZCBhZGQgZWFjaCBmZW5jZQ0KKwkgKiBpbmRpdmlkdWFsbHkuDQorCSAqLw0KKwlXQVJOX09O
KGRtYV9mZW5jZV9pc19jb250YWluZXIoZmVuY2UpKTsNCisNCiAJZm9iaiA9IGRtYV9yZXN2X3No
YXJlZF9saXN0KG9iaik7DQogCWNvdW50ID0gZm9iai0+c2hhcmVkX2NvdW50Ow0KIA0KLS0gDQoy
LjI1LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBs
aXN0cy5saW5hcm8ub3JnCg==
