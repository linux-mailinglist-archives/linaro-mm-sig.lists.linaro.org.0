Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8AF50A662
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Apr 2022 18:58:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AF40F47FC0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Apr 2022 16:58:50 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 03A753E9E4
	for <linaro-mm-sig@lists.linaro.org>; Thu,  7 Apr 2022 13:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649337609;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=qwnyzBHU2ps0lg/u42dFlsQayDte7IETW+1w7Wx0wc0=;
	b=KsOOY+K/baSDoK+6VR0kRV0p6fKuao79hVOxSHbTwOmKMHdHi6Q0LIKhbtnGwMGal9Ler4
	3c0NmiGNOxYTg2YRfBycQFZCHvmQoTe8qD4+lgJo6eM+dil0IHFzBuazUwDyfnn2mNjZPs
	ySCpz7faefVhd4f0n0Xua11Dzc1lJAE=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-624-SV0dAxoYN6Wr9CikfXdtSA-1; Thu, 07 Apr 2022 09:20:06 -0400
X-MC-Unique: SV0dAxoYN6Wr9CikfXdtSA-1
Received: by mail-wm1-f69.google.com with SMTP id n19-20020a05600c305300b0038e72cfc391so2955125wmh.9
        for <linaro-mm-sig@lists.linaro.org>; Thu, 07 Apr 2022 06:20:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qwnyzBHU2ps0lg/u42dFlsQayDte7IETW+1w7Wx0wc0=;
        b=hfomQoMTE4wkqPevhv4iJV43/kzIjOsJvkLkNN0aKMtpNVeqR/Exz1rVdDG8ez4vSz
         68xXy2X4ElXyhibiz/MG+yeFf00w7R4776/jIuq7H4OHblsmhLolTmMuKYS9orLK9Wn+
         IL4Ey9LztqaZ1+As+6vhOCYT2WHsk4r6U2qzlNeo2eM0bFpwTVWSPK3X9DT2wCob77Cl
         ei9R/cQXoFtv3XkDqWpTgMhGKtOvXFXeFqFhf18BF5RVgjRsxWh9piNfY5g59u3cuqcx
         H96zhyjMvW+xHjBoBA1f4L7qfLO99qV6Lb2a/t/XVupOvohD50fC1wMEbOk+j8ZaPlaE
         GaRw==
X-Gm-Message-State: AOAM532yXBgqUhf+shKozXMGGcGvhuHe/s+xxsekSjKBPCW7B0eupUP1
	KgxED2AmSLzj2HPn1eITQ11dP52O2kNUxQ12pcKrlwBf6z4xfjbTgRExssiJVnZNOtxCc+qhlJE
	ACr4J8EOK+WnzJhiQ55uTmq3QmjI=
X-Received: by 2002:a05:600c:3c9b:b0:38e:4c59:68b9 with SMTP id bg27-20020a05600c3c9b00b0038e4c5968b9mr12255512wmb.105.1649337605347;
        Thu, 07 Apr 2022 06:20:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyQBSQ6JsGQGmUQrZuo6fJZqwQPCpOMvTNMJmEk0YVL6Z/cfLYxjjpt866oxCfauhP9AWslsA==
X-Received: by 2002:a05:600c:3c9b:b0:38e:4c59:68b9 with SMTP id bg27-20020a05600c3c9b00b0038e4c5968b9mr12255486wmb.105.1649337605105;
        Thu, 07 Apr 2022 06:20:05 -0700 (PDT)
Received: from minerva.home ([92.176.231.205])
        by smtp.gmail.com with ESMTPSA id f184-20020a1c38c1000000b0038e7d6825f4sm7678670wma.43.2022.04.07.06.20.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 06:20:04 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Date: Thu,  7 Apr 2022 15:19:50 +0200
Message-Id: <20220407131950.915091-1-javierm@redhat.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SB5NMLDGCM2C4GJ7CY3VPRTJAJAXZZDE
X-Message-ID-Hash: SB5NMLDGCM2C4GJ7CY3VPRTJAJAXZZDE
X-Mailman-Approved-At: Thu, 21 Apr 2022 16:58:39 +0000
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Javier Martinez Canillas <javierm@redhat.com>, Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, Emma Anholt <emma@anholt.net>, Maxime Ripard <mripard@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/vc4: Use newer fence API properly to fix build errors
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SB5NMLDGCM2C4GJ7CY3VPRTJAJAXZZDE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIGNvbW1pdCA3MzUxMWVkZjhiMTkgKCJkbWEtYnVmOiBzcGVjaWZ5IHVzYWdlIHdoaWxlIGFk
ZGluZyBmZW5jZXMgdG8NCmRtYV9yZXN2IG9iaiB2NyIpIHBvcnRlZCBhbGwgdGhlIERSTSBkcml2
ZXJzIHRvIHVzZSB0aGUgbmV3ZXIgZmVuY2UgQVBJDQp0aGF0IHNwZWNpZmllcyB0aGUgdXNhZ2Ug
d2l0aCB0aGUgZW51bSBkbWFfcmVzdl91c2FnZSByYXRoZXIgdGhhbiBkb2luZw0KYW4gZXhwbGlj
aXQgc2hhcmVkIC8gZXhjbHVzaXZlIGRpc3RpbmN0aW9uLg0KDQpCdXQgdGhlIGNvbW1pdCBkaWRu
J3QgZG8gaXQgcHJvcGVybHkgaW4gdHdvIGNhbGxlcnMgb2YgdGhlIHZjNCBkcml2ZXIsDQpsZWFk
aW5nIHRvIGJ1aWxkIGVycm9ycy4NCg0KRml4ZXM6IDczNTExZWRmOGIxOSAoImRtYS1idWY6IHNw
ZWNpZnkgdXNhZ2Ugd2hpbGUgYWRkaW5nIGZlbmNlcyB0byBkbWFfcmVzdiBvYmogdjciKQ0KU2ln
bmVkLW9mZi1ieTogSmF2aWVyIE1hcnRpbmV6IENhbmlsbGFzIDxqYXZpZXJtQHJlZGhhdC5jb20+
DQpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pg0KLS0tDQoNCiBkcml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9nZW0uYyB8IDYgKysrKy0tDQogMSBm
aWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL3ZjNC92
YzRfZ2VtLmMNCmluZGV4IDM4NTUwMzE3ZTAyNS4uOWVhZjMwNGZjMjBkIDEwMDY0NA0KLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfZ2VtLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS92YzQv
dmM0X2dlbS5jDQpAQCAtNTQ2LDcgKzU0Niw4IEBAIHZjNF91cGRhdGVfYm9fc2Vxbm9zKHN0cnVj
dCB2YzRfZXhlY19pbmZvICpleGVjLCB1aW50NjRfdCBzZXFubykNCiAJCWJvID0gdG9fdmM0X2Jv
KCZleGVjLT5ib1tpXS0+YmFzZSk7DQogCQliby0+c2Vxbm8gPSBzZXFubzsNCiANCi0JCWRtYV9y
ZXN2X2FkZF9mZW5jZShiby0+YmFzZS5iYXNlLnJlc3YsIGV4ZWMtPmZlbmNlKTsNCisJCWRtYV9y
ZXN2X2FkZF9mZW5jZShiby0+YmFzZS5iYXNlLnJlc3YsIGV4ZWMtPmZlbmNlLA0KKwkJCQkgICBE
TUFfUkVTVl9VU0FHRV9SRUFEKTsNCiAJfQ0KIA0KIAlsaXN0X2Zvcl9lYWNoX2VudHJ5KGJvLCAm
ZXhlYy0+dW5yZWZfbGlzdCwgdW5yZWZfaGVhZCkgew0KQEAgLTU1Nyw3ICs1NTgsOCBAQCB2YzRf
dXBkYXRlX2JvX3NlcW5vcyhzdHJ1Y3QgdmM0X2V4ZWNfaW5mbyAqZXhlYywgdWludDY0X3Qgc2Vx
bm8pDQogCQlibyA9IHRvX3ZjNF9ibygmZXhlYy0+cmNsX3dyaXRlX2JvW2ldLT5iYXNlKTsNCiAJ
CWJvLT53cml0ZV9zZXFubyA9IHNlcW5vOw0KIA0KLQkJZG1hX3Jlc3ZfYWRkX2V4Y2xfZmVuY2Uo
Ym8tPmJhc2UuYmFzZS5yZXN2LCBleGVjLT5mZW5jZSk7DQorCQlkbWFfcmVzdl9hZGRfZmVuY2Uo
Ym8tPmJhc2UuYmFzZS5yZXN2LCBleGVjLT5mZW5jZSwNCisJCQkJICAgRE1BX1JFU1ZfVVNBR0Vf
V1JJVEUpOw0KIAl9DQogfQ0KIA0KLS0gDQoyLjM1LjENCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
