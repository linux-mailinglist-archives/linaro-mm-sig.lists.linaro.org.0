Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1072A52B911
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 May 2022 13:52:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E48E40169
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 May 2022 11:52:39 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 56EB04801E
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 May 2022 17:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1651684737;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=3t8epFEjcxVGinupv1KfUngZ1NH7mCjOSa22VqDXFR0=;
	b=X1+4HlfZBhTqWCgP1r5i8asWa5k/8KZqFkILiwIgoa/ebK0fILBDn1kv2Q+C+UexoTywc6
	FBnzZpoeCmKvxJAGs3b46jz3mnI4xhrpKPeTL61tszjksPi2yodu0urO3g+YI27F+F/3Sa
	AyKObawJMjlCsttouj9uXen+WzX3vDo=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-634-6nU-Y5LmPMqopHt5RDIB3Q-1; Wed, 04 May 2022 13:18:56 -0400
X-MC-Unique: 6nU-Y5LmPMqopHt5RDIB3Q-1
Received: by mail-ej1-f72.google.com with SMTP id ga27-20020a1709070c1b00b006f43c161da4so1222526ejc.7
        for <linaro-mm-sig@lists.linaro.org>; Wed, 04 May 2022 10:18:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3t8epFEjcxVGinupv1KfUngZ1NH7mCjOSa22VqDXFR0=;
        b=rZJ1jgglEcPDFDMEx1NgnKJl3I23bleMpPyM8T29jkt1J3yylJRqdEvLGbNFKncynF
         drAIF5nzANJQSQOxc33NKf7QT5PBQf7rpCbym2+lTf0/WJBJHj9M+Q/o1tleu/QS2Ujh
         zDwTyVZGCw1HRF8hE58bq9VwkkgbfSbO5tOVGldAfP+25BjMWjaOYxaqBtHIb64tE3Fq
         qZtcbqZzYPfZVbjfm4ILseytYg3YTwxTCaTyG1OWPnKkmtXfZKxHa/lTyQ9DZD0FL29h
         DEVEVyrdNIkDH8jT6XkeXxYmYUKUwcuZY3XD6+LdQt6WRrmmIS9BgNhb5b3q9eklgx62
         XpKA==
X-Gm-Message-State: AOAM531WQW1Blxn9HYZL7D0nsBDA35O0FRHfcptuDzKmkBmIXbGDi9oW
	H6jf47MDq5uXsurUMceCsQY+bUOGscec5VpVi0cuq1EXTaVxTeEQBZ0uD7tugmwuTAlD6ejz60D
	64hYN28IVnpO8zqJG07L2Z8XCXto=
X-Received: by 2002:a17:907:a407:b0:6f4:3f14:7707 with SMTP id sg7-20020a170907a40700b006f43f147707mr16222517ejc.351.1651684734978;
        Wed, 04 May 2022 10:18:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxeNLSEO6aMZEJmeSDZvOrdtsRQbX4QDRaEAbooQf77kraL3riqlGTEh69XjibmoSyspABsDQ==
X-Received: by 2002:a17:907:a407:b0:6f4:3f14:7707 with SMTP id sg7-20020a170907a40700b006f43f147707mr16222496ejc.351.1651684734772;
        Wed, 04 May 2022 10:18:54 -0700 (PDT)
Received: from fedora.nat2.vcit.vutbr.net (nat2.vcit.vutbr.net. [185.62.108.68])
        by smtp.gmail.com with ESMTPSA id bf16-20020a0564021a5000b0042617ba63aesm9492598edb.56.2022.05.04.10.18.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 10:18:54 -0700 (PDT)
From: Mark Menzynski <mmenzyns@redhat.com>
To: linux-kernel@vger.kernel.org
Date: Wed,  4 May 2022 19:18:51 +0200
Message-Id: <20220504171851.17188-1-mmenzyns@redhat.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mmenzyns@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-MailFrom: mmenzyns@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LIKOPI7AHGFKV77PLNH5QVOVGUZMEQQW
X-Message-ID-Hash: LIKOPI7AHGFKV77PLNH5QVOVGUZMEQQW
X-Mailman-Approved-At: Wed, 18 May 2022 11:52:34 +0000
CC: Mark Menzynski <mmenzyns@redhat.com>, Ben Skeggs <bskeggs@redhat.com>, Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, nouveau@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/nouveau: reorder nouveau_drm_device_fini
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LIKOPI7AHGFKV77PLNH5QVOVGUZMEQQW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UmVzb3VyY2VzIG5lZWRlZCBmb3Igb3V0cHV0IHBvbGwgd29ya2VycyBhcmUgZGVzdHJveWVkIGlu
DQpub3V2ZWF1X2ZiY29uX2ZpbmkoKSBiZWZvcmUgb3V0cHV0IHBvbGwgd29ya2VycyBhcmUgY2xl
YXJlZCBpbg0Kbm91dmVhdV9kaXNwbGF5X2ZpbmkoKS4gVGhpcyBtZWFucyB0aGVyZSBpcyBhIHRp
bWUgYmV0d2VlbiBmYmNvbl9maW5pDQphbmQgZGlzcGxheV9maW5pLCB3aGVyZSBpZiBvdXRwdXQg
cG9sbCBoYXBwZW5zLCBpdCBjcmFzaGVzLg0KDQpCVUc6IEtBU0FOOiB1c2UtYWZ0ZXItZnJlZSBp
bg0KX19kcm1fZmJfaGVscGVyX2luaXRpYWxfY29uZmlnX2FuZF91bmxvY2suY29sZCsweDFmMy8w
eDI5MQ0KW2RybV9rbXNfaGVscGVyXQ0KDQpDYzogQmVuIFNrZWdncyA8YnNrZWdnc0ByZWRoYXQu
Y29tPg0KQ2M6IEthcm9sIEhlcmJzdCA8a2hlcmJzdEByZWRoYXQuY29tPg0KQ2M6IEx5dWRlIFBh
dWwgPGx5dWRlQHJlZGhhdC5jb20+DQpDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4Lmll
Pg0KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4NCkNjOiBTdW1pdCBTZW13YWwg
PHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPg0KQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
CkNjOiBub3V2ZWF1QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KQ2M6IGxpbnV4LWtlcm5lbEB2Z2Vy
Lmtlcm5lbC5vcmcNCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCkNjOiBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNClNpZ25lZC1vZmYtYnk6IE1hcmsgTWVuenluc2tpIDxt
bWVuenluc0ByZWRoYXQuY29tPg0KLS0tDQogZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVh
dV9kcm0uYyB8IDE3ICsrKysrKysrLS0tLS0tLS0tDQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0
aW9ucygrKSwgOSBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9u
b3V2ZWF1L25vdXZlYXVfZHJtLmMgYi9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2Ry
bS5jDQppbmRleCA1NjEzMDlkNDQ3ZTAuLjc3M2VmZGQyMGQyZiAxMDA2NDQNCi0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZHJtLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9u
b3V2ZWF1L25vdXZlYXVfZHJtLmMNCkBAIC01ODgsMTIgKzU4OCw2IEBAIG5vdXZlYXVfZHJtX2Rl
dmljZV9pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpDQogCWlmIChyZXQpDQogCQlnb3RvIGZh
aWxfZGlzcGN0b3I7DQogDQotCWlmIChkZXYtPm1vZGVfY29uZmlnLm51bV9jcnRjKSB7DQotCQly
ZXQgPSBub3V2ZWF1X2Rpc3BsYXlfaW5pdChkZXYsIGZhbHNlLCBmYWxzZSk7DQotCQlpZiAocmV0
KQ0KLQkJCWdvdG8gZmFpbF9kaXNwaW5pdDsNCi0JfQ0KLQ0KIAlub3V2ZWF1X2RlYnVnZnNfaW5p
dChkcm0pOw0KIAlub3V2ZWF1X2h3bW9uX2luaXQoZGV2KTsNCiAJbm91dmVhdV9zdm1faW5pdChk
cm0pOw0KQEAgLTYwMSw2ICs1OTUsMTIgQEAgbm91dmVhdV9kcm1fZGV2aWNlX2luaXQoc3RydWN0
IGRybV9kZXZpY2UgKmRldikNCiAJbm91dmVhdV9mYmNvbl9pbml0KGRldik7DQogCW5vdXZlYXVf
bGVkX2luaXQoZGV2KTsNCiANCisJaWYgKGRldi0+bW9kZV9jb25maWcubnVtX2NydGMpIHsNCisJ
CXJldCA9IG5vdXZlYXVfZGlzcGxheV9pbml0KGRldiwgZmFsc2UsIGZhbHNlKTsNCisJCWlmIChy
ZXQpDQorCQkJZ290byBmYWlsX2Rpc3Bpbml0Ow0KKwl9DQorDQogCWlmIChub3V2ZWF1X3Btb3Bz
X3J1bnRpbWUoKSkgew0KIAkJcG1fcnVudGltZV91c2VfYXV0b3N1c3BlbmQoZGV2LT5kZXYpOw0K
IAkJcG1fcnVudGltZV9zZXRfYXV0b3N1c3BlbmRfZGVsYXkoZGV2LT5kZXYsIDUwMDApOw0KQEAg
LTY0MSwxNSArNjQxLDE0IEBAIG5vdXZlYXVfZHJtX2RldmljZV9maW5pKHN0cnVjdCBkcm1fZGV2
aWNlICpkZXYpDQogCQlwbV9ydW50aW1lX2ZvcmJpZChkZXYtPmRldik7DQogCX0NCiANCisJaWYg
KGRldi0+bW9kZV9jb25maWcubnVtX2NydGMpDQorCQlub3V2ZWF1X2Rpc3BsYXlfZmluaShkZXYs
IGZhbHNlLCBmYWxzZSk7DQogCW5vdXZlYXVfbGVkX2ZpbmkoZGV2KTsNCiAJbm91dmVhdV9mYmNv
bl9maW5pKGRldik7DQogCW5vdXZlYXVfZG1lbV9maW5pKGRybSk7DQogCW5vdXZlYXVfc3ZtX2Zp
bmkoZHJtKTsNCiAJbm91dmVhdV9od21vbl9maW5pKGRldik7DQogCW5vdXZlYXVfZGVidWdmc19m
aW5pKGRybSk7DQotDQotCWlmIChkZXYtPm1vZGVfY29uZmlnLm51bV9jcnRjKQ0KLQkJbm91dmVh
dV9kaXNwbGF5X2ZpbmkoZGV2LCBmYWxzZSwgZmFsc2UpOw0KIAlub3V2ZWF1X2Rpc3BsYXlfZGVz
dHJveShkZXYpOw0KIA0KIAlub3V2ZWF1X2FjY2VsX2ZpbmkoZHJtKTsNCi0tIA0KMi4zMi4wDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
