Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF904B2666
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 13:51:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 123263EEA4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 12:51:11 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by lists.linaro.org (Postfix) with ESMTPS id 2765C3EEAF
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 12:50:16 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id fy20so22562195ejc.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 04:50:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Q7yk9iPGieyJW2jMldb0VRidwZ4CAUl2DRMH9n+c1uY=;
        b=MiIQ60cBry7DfoxslGQe7AOopiQhbOsB2Bf9OihICnauA1gh0takjU/SmIcoqdsspV
         UniRP5doSdSwQKmoOM5myJgdPdG8xtb//GFdnMDe8phtWm/Y9O/OsQ8ctv/Ccgs1NPLJ
         rYlXwO/TySPsKzBY1RHnyWXXv93NcN6f6+t+e0VedDul3Zn3pWBKtuHtBj8GdEYiw1Tt
         jNk21EY/RGsaN3lmz+tTRaC/9UOe9rC2N6/wDbERcNb0FMyqMlZ1dCXWwEAMAq01kFEk
         7Jauwwq78PYQe5pesQwjyAdU8y5aMKKTTsURicFhF2o/ybNyxlIP2BL0ePP4YNpI13+a
         joFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Q7yk9iPGieyJW2jMldb0VRidwZ4CAUl2DRMH9n+c1uY=;
        b=vLjfLTj91EUv5GVhnRBtcoQKFTfrfISikaVuzr/ObLk2bGNwRhBLEGdZvCCtZaM7mj
         SkLiA3flkjjvedX6cRyqGalCy4wNBx8V7SeW2aJ3pswT9dJK6W5eMTAX7+rEY4wwVfwW
         tFJ0ZUNEV/UP1R1mlg7mpQr3QYz1UeuvsSKO0awatg5urfGynd1hSzPA/h5ig20Vs8nk
         ZDtHoikV9fbhJmtWveAZGIHbYwe2Rsed8TUy3FRyvSHqpDxgc6L6JnbGlWQBIL6n3P5j
         G6KN4qhMw7p7z2mhiEpUAFbiNPZ/Hcv5sRyWWQLx98wCcn0eF3rCpM2ArtO34mYppZAm
         jUGQ==
X-Gm-Message-State: AOAM532VNULgJPThuA6fZPoPXFdsYEi/UybnYTqtpiCtmM5zdF9kn6Zu
	NGCKZoifxiWqDORpepXmdrE=
X-Google-Smtp-Source: ABdhPJyqNeBrZSbQYzXLmb9sFmH+NDSRDeOLRWrmaTWuBqIGQmoQdbAWV1hMSrpXe1B4PEEQqPPUjQ==
X-Received: by 2002:a17:906:5186:: with SMTP id y6mr1281644ejk.210.1644583815286;
        Fri, 11 Feb 2022 04:50:15 -0800 (PST)
Received: from able.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id w22sm7868604ejc.137.2022.02.11.04.50.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 04:50:14 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	sumit.semwal@linaro.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri, 11 Feb 2022 13:49:50 +0100
Message-Id: <20220211125003.918447-11-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220211125003.918447-1-christian.koenig@amd.com>
References: <20220211125003.918447-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: BWI65BLR3RMARWJKAT6OIGY33XZAAGFH
X-Message-ID-Hash: BWI65BLR3RMARWJKAT6OIGY33XZAAGFH
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 10/23] dma-buf: finally make dma_resv_excl_fence private v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BWI65BLR3RMARWJKAT6OIGY33XZAAGFH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RHJpdmVycyBzaG91bGQgbmV2ZXIgdG91Y2ggdGhpcyBkaXJlY3RseS4NCg0KdjI6IGZpeCByZWJh
c2UgY2xhc2gNCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPg0KLS0tDQogZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgfCAgNiArKysr
KysNCiBpbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmggICB8IDE3IC0tLS0tLS0tLS0tLS0tLS0tDQog
MiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQ0KDQpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1h
LXJlc3YuYw0KaW5kZXggMDA1ZmJlNjExMDNlLi4xNmFkOThmZDMxMzAgMTAwNjQ0DQotLS0gYS9k
cml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2
LmMNCkBAIC0xNDAsNiArMTQwLDEyIEBAIHZvaWQgZG1hX3Jlc3ZfZmluaShzdHJ1Y3QgZG1hX3Jl
c3YgKm9iaikNCiB9DQogRVhQT1JUX1NZTUJPTChkbWFfcmVzdl9maW5pKTsNCiANCitzdGF0aWMg
aW5saW5lIHN0cnVjdCBkbWFfZmVuY2UgKg0KK2RtYV9yZXN2X2V4Y2xfZmVuY2Uoc3RydWN0IGRt
YV9yZXN2ICpvYmopDQorew0KKyAgICAgICByZXR1cm4gcmN1X2RlcmVmZXJlbmNlX2NoZWNrKG9i
ai0+ZmVuY2VfZXhjbCwgZG1hX3Jlc3ZfaGVsZChvYmopKTsNCit9DQorDQogc3RhdGljIGlubGlu
ZSBzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqZG1hX3Jlc3Zfc2hhcmVkX2xpc3Qoc3RydWN0IGRtYV9y
ZXN2ICpvYmopDQogew0KIAlyZXR1cm4gcmN1X2RlcmVmZXJlbmNlX2NoZWNrKG9iai0+ZmVuY2Us
IGRtYV9yZXN2X2hlbGQob2JqKSk7DQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtcmVz
di5oIGIvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oDQppbmRleCAwODUxMmMxZTIxNWQuLjIwZTEz
ZjM2NzEwYSAxMDA2NDQNCi0tLSBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaA0KKysrIGIvaW5j
bHVkZS9saW51eC9kbWEtcmVzdi5oDQpAQCAtNDIzLDIzICs0MjMsNiBAQCBzdGF0aWMgaW5saW5l
IHZvaWQgZG1hX3Jlc3ZfdW5sb2NrKHN0cnVjdCBkbWFfcmVzdiAqb2JqKQ0KIAl3d19tdXRleF91
bmxvY2soJm9iai0+bG9jayk7DQogfQ0KIA0KLS8qKg0KLSAqIGRtYV9yZXN2X2V4Y2xfZmVuY2Ug
LSByZXR1cm4gdGhlIG9iamVjdCdzIGV4Y2x1c2l2ZSBmZW5jZQ0KLSAqIEBvYmo6IHRoZSByZXNl
cnZhdGlvbiBvYmplY3QNCi0gKg0KLSAqIFJldHVybnMgdGhlIGV4Y2x1c2l2ZSBmZW5jZSAoaWYg
YW55KS4gQ2FsbGVyIG11c3QgZWl0aGVyIGhvbGQgdGhlIG9iamVjdHMNCi0gKiB0aHJvdWdoIGRt
YV9yZXN2X2xvY2soKSBvciB0aGUgUkNVIHJlYWQgc2lkZSBsb2NrIHRocm91Z2ggcmN1X3JlYWRf
bG9jaygpLA0KLSAqIG9yIG9uZSBvZiB0aGUgdmFyaWFudHMgb2YgZWFjaA0KLSAqDQotICogUkVU
VVJOUw0KLSAqIFRoZSBleGNsdXNpdmUgZmVuY2Ugb3IgTlVMTA0KLSAqLw0KLXN0YXRpYyBpbmxp
bmUgc3RydWN0IGRtYV9mZW5jZSAqDQotZG1hX3Jlc3ZfZXhjbF9mZW5jZShzdHJ1Y3QgZG1hX3Jl
c3YgKm9iaikNCi17DQotCXJldHVybiByY3VfZGVyZWZlcmVuY2VfY2hlY2sob2JqLT5mZW5jZV9l
eGNsLCBkbWFfcmVzdl9oZWxkKG9iaikpOw0KLX0NCi0NCiB2b2lkIGRtYV9yZXN2X2luaXQoc3Ry
dWN0IGRtYV9yZXN2ICpvYmopOw0KIHZvaWQgZG1hX3Jlc3ZfZmluaShzdHJ1Y3QgZG1hX3Jlc3Yg
Km9iaik7DQogaW50IGRtYV9yZXN2X3Jlc2VydmVfc2hhcmVkKHN0cnVjdCBkbWFfcmVzdiAqb2Jq
LCB1bnNpZ25lZCBpbnQgbnVtX2ZlbmNlcyk7DQotLSANCjIuMjUuMQ0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
