Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7917B4B806C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 07:16:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A8E593ED74
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 06:16:08 +0000 (UTC)
Received: from mail-pj1-f73.google.com (mail-pj1-f73.google.com [209.85.216.73])
	by lists.linaro.org (Postfix) with ESMTPS id A10173EDFB
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 16:19:03 +0000 (UTC)
Received: by mail-pj1-f73.google.com with SMTP id iy10-20020a17090b16ca00b001b8a7ed5b2cso8535640pjb.7
        for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 08:19:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:content-transfer-encoding;
        bh=H9ElGyQs3gn6zkZHkaswT2uUcjDtIMKU0yBKyPd+zRw=;
        b=pqlxHsof189xym//3NOb/X4sUEqabODThOYWzG6aE6YJ7NVdPjULt2IJ1cr9fGd286
         TqN8Vwy43pbjAeV0VM9D9lBgLG4vSp0hd5VeYAKLDd4c+fBW8AVWzET7AUF9gs3d9DnW
         gj6vH7NfEcDQIT5DTgijFUOnIfHCxeO7XgA/CHN9DVWmhsFC84dmykrVDNiTyVAb0Uga
         lAiN/rH84g/hNRQgrPyaLunHyngW5zJcDyWr3zfhJNVeBxDY4SR5wMNbeFGNJd7Ub9kP
         G4ZlAh2HeMqycTHUESlobX2v63RZoLJURMn7i3CeIYfJRL5Jz9s0DxOG0Oh6xijpBQgi
         i4IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:content-transfer-encoding;
        bh=H9ElGyQs3gn6zkZHkaswT2uUcjDtIMKU0yBKyPd+zRw=;
        b=QLrjTyxaGybNko3oiqeQ9x/bS0ZlZjll0deE2xoxl9Uc1HlMGIn8VUpqLygBheoT13
         mS0hLvW7j6GalwN3rgTLOtomtxrienoIRIUa4IGKK87G3/mn3o8l8Hem4Jz/fPXVqUxl
         gNYcOkR//fncGQH0DDxRRGsQLVurc8osDlk19iG7tROVJDUiT/y2WqXnlQgkKWw6nIWM
         8adUh9pyvor2hbj9VLS8RKOeaKH3WYsKkED3hhOYyhVZie6eMML7vszlpfapwj/oJyh/
         1ub2c9jaPF2lsshvDAaCDCBrfGu4o3BQno+Az9s5cMShWe0g7TF4U/clIcrdGI/aaG1X
         VLIA==
X-Gm-Message-State: AOAM530zlIdTLOi5I5BLZAYCOisNfpYi+WXxkHuX/KvQufFfmGwHmSfn
	UNt4scsMWcn8xD1/Ey9PjCIxOzuk7ZHWIhU=
X-Google-Smtp-Source: ABdhPJw+X052tlo7rO4R6ZJggau2VhHkvqL4TWCXAHP2/z0pcE7Hcx1yJPi6R86BW0yLQibs4VQNry7tP5PL4gI=
X-Received: from tj2.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:187])
 (user=tjmercier job=sendgmr) by 2002:aa7:8883:: with SMTP id
 z3mr2365344pfe.65.1644596342665; Fri, 11 Feb 2022 08:19:02 -0800 (PST)
Date: Fri, 11 Feb 2022 16:18:27 +0000
In-Reply-To: <20220211161831.3493782-1-tjmercier@google.com>
Message-Id: <20220211161831.3493782-5-tjmercier@google.com>
Mime-Version: 1.0
References: <20220211161831.3493782-1-tjmercier@google.com>
X-Mailer: git-send-email 2.35.1.265.g69c8d7142f-goog
From: "T.J. Mercier" <tjmercier@google.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
	Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>,
	Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>,
	Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>,
	Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>,
	Johannes Weiner <hannes@cmpxchg.org>
X-MailFrom: 3dowGYgkKDb8yorjwhnjwlttlqj.htrqnsfwt-rr-xnlqnxyx.qnsfwt.twl@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GBDXYIR5D2CGMXANIPBMCFJLCCKOVCHB
X-Message-ID-Hash: GBDXYIR5D2CGMXANIPBMCFJLCCKOVCHB
X-Mailman-Approved-At: Wed, 16 Feb 2022 06:15:40 +0000
CC: kaleshsingh@google.com, Kenny.Ho@amd.com, "T.J. Mercier" <tjmercier@google.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC v2 4/6] dmabuf: heaps: export system_heap buffers with GPU cgroup charging
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GBDXYIR5D2CGMXANIPBMCFJLCCKOVCHB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWxsIERNQSBoZWFwcyBub3cgcmVnaXN0ZXIgYSBuZXcgR1BVIGNncm91cCBkZXZpY2UgdXBvbiBj
cmVhdGlvbiwgYW5kIHRoZQ0Kc3lzdGVtX2hlYXAgbm93IGV4cG9ydHMgYnVmZmVycyBhc3NvY2lh
dGVkIHdpdGggaXRzIEdQVSBjZ3JvdXAgZGV2aWNlIGZvcg0KdHJhY2tpbmcgcHVycG9zZXMuDQoN
CkZyb206IEhyaWR5YSBWYWxzYXJhanUgPGhyaWR5YUBnb29nbGUuY29tPg0KU2lnbmVkLW9mZi1i
eTogSHJpZHlhIFZhbHNhcmFqdSA8aHJpZHlhQGdvb2dsZS5jb20+DQpDby1kZXZlbG9wZWQtYnk6
IFQuSi4gTWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+DQpTaWduZWQtb2ZmLWJ5OiBULkou
IE1lcmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPg0KLS0tDQpjaGFuZ2VzIGluIHYyDQotIE1v
dmUgZG1hLWJ1ZiBjZ3JvdXAgY2hhcmdlIHRyYW5zZmVyIGZyb20gYSBkbWFfYnVmX29wIGRlZmlu
ZWQgYnkgZXZlcnkNCmhlYXAgdG8gYSBzaW5nbGUgZG1hLWJ1ZiBmdW5jdGlvbiBmb3IgYWxsIGhl
YXBzIHBlciBEYW5pZWwgVmV0dGVyIGFuZA0KQ2hyaXN0aWFuIEvDtm5pZy4NCg0KIGRyaXZlcnMv
ZG1hLWJ1Zi9kbWEtaGVhcC5jICAgICAgICAgIHwgMjcgKysrKysrKysrKysrKysrKysrKysrKysr
KysrDQogZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMgfCAgMyArKysNCiBpbmNs
dWRlL2xpbnV4L2RtYS1oZWFwLmggICAgICAgICAgICB8IDExICsrKysrKysrKysrDQogMyBmaWxl
cyBjaGFuZ2VkLCA0MSBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1i
dWYvZG1hLWhlYXAuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jDQppbmRleCA4ZjU4NDhh
YTE0NGYuLjg4NTA3MjQyNzc3NSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVh
cC5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYw0KQEAgLTcsNiArNyw3IEBADQog
ICovDQogDQogI2luY2x1ZGUgPGxpbnV4L2NkZXYuaD4NCisjaW5jbHVkZSA8bGludXgvY2dyb3Vw
X2dwdS5oPg0KICNpbmNsdWRlIDxsaW51eC9kZWJ1Z2ZzLmg+DQogI2luY2x1ZGUgPGxpbnV4L2Rl
dmljZS5oPg0KICNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLmg+DQpAQCAtMzEsNiArMzIsNyBAQA0K
ICAqIEBoZWFwX2RldnQJCWhlYXAgZGV2aWNlIG5vZGUNCiAgKiBAbGlzdAkJbGlzdCBoZWFkIGNv
bm5lY3RpbmcgdG8gbGlzdCBvZiBoZWFwcw0KICAqIEBoZWFwX2NkZXYJCWhlYXAgY2hhciBkZXZp
Y2UNCisgKiBAZ3B1Y2dfZGV2CQlncHUgY2dyb3VwIGRldmljZSBmb3IgbWVtb3J5IGFjY291bnRp
bmcNCiAgKg0KICAqIFJlcHJlc2VudHMgYSBoZWFwIG9mIG1lbW9yeSBmcm9tIHdoaWNoIGJ1ZmZl
cnMgY2FuIGJlIG1hZGUuDQogICovDQpAQCAtNDEsNiArNDMsOSBAQCBzdHJ1Y3QgZG1hX2hlYXAg
ew0KIAlkZXZfdCBoZWFwX2RldnQ7DQogCXN0cnVjdCBsaXN0X2hlYWQgbGlzdDsNCiAJc3RydWN0
IGNkZXYgaGVhcF9jZGV2Ow0KKyNpZmRlZiBDT05GSUdfQ0dST1VQX0dQVQ0KKwlzdHJ1Y3QgZ3B1
Y2dfZGV2aWNlIGdwdWNnX2RldjsNCisjZW5kaWYNCiB9Ow0KIA0KIHN0YXRpYyBMSVNUX0hFQUQo
aGVhcF9saXN0KTsNCkBAIC0yMTYsNiArMjIxLDI2IEBAIGNvbnN0IGNoYXIgKmRtYV9oZWFwX2dl
dF9uYW1lKHN0cnVjdCBkbWFfaGVhcCAqaGVhcCkNCiAJcmV0dXJuIGhlYXAtPm5hbWU7DQogfQ0K
IA0KKyNpZmRlZiBDT05GSUdfQ0dST1VQX0dQVQ0KKy8qKg0KKyAqIGRtYV9oZWFwX2dldF9ncHVj
Z19kZXYoKSAtIGdldCBzdHJ1Y3QgZ3B1Y2dfZGV2aWNlIGZvciB0aGUgaGVhcC4NCisgKiBAaGVh
cDogRE1BLUhlYXAgdG8gZ2V0IHRoZSBncHVjZ19kZXZpY2Ugc3RydWN0IGZvci4NCisgKg0KKyAq
IFJldHVybnM6DQorICogVGhlIGdwdWNnX2RldmljZSBzdHJ1Y3QgZm9yIHRoZSBoZWFwLiBOVUxM
IGlmIHRoZSBHUFUgY2dyb3VwIGNvbnRyb2xsZXIgaXMNCisgKiBub3QgZW5hYmxlZC4NCisgKi8N
CitzdHJ1Y3QgZ3B1Y2dfZGV2aWNlICpkbWFfaGVhcF9nZXRfZ3B1Y2dfZGV2KHN0cnVjdCBkbWFf
aGVhcCAqaGVhcCkNCit7DQorCXJldHVybiAmaGVhcC0+Z3B1Y2dfZGV2Ow0KK30NCisjZWxzZSAv
KiBDT05GSUdfQ0dST1VQX0dQVSAqLw0KK3N0cnVjdCBncHVjZ19kZXZpY2UgKmRtYV9oZWFwX2dl
dF9ncHVjZ19kZXYoc3RydWN0IGRtYV9oZWFwICpoZWFwKQ0KK3sNCisJcmV0dXJuIE5VTEw7DQor
fQ0KKyNlbmRpZiAvKiBDT05GSUdfQ0dST1VQX0dQVSAqLw0KKw0KIHN0cnVjdCBkbWFfaGVhcCAq
ZG1hX2hlYXBfYWRkKGNvbnN0IHN0cnVjdCBkbWFfaGVhcF9leHBvcnRfaW5mbyAqZXhwX2luZm8p
DQogew0KIAlzdHJ1Y3QgZG1hX2hlYXAgKmhlYXAsICpoLCAqZXJyX3JldDsNCkBAIC0yODgsNiAr
MzEzLDggQEAgc3RydWN0IGRtYV9oZWFwICpkbWFfaGVhcF9hZGQoY29uc3Qgc3RydWN0IGRtYV9o
ZWFwX2V4cG9ydF9pbmZvICpleHBfaW5mbykNCiAJbGlzdF9hZGQoJmhlYXAtPmxpc3QsICZoZWFw
X2xpc3QpOw0KIAltdXRleF91bmxvY2soJmhlYXBfbGlzdF9sb2NrKTsNCiANCisJZ3B1Y2dfcmVn
aXN0ZXJfZGV2aWNlKGRtYV9oZWFwX2dldF9ncHVjZ19kZXYoaGVhcCksIGV4cF9pbmZvLT5uYW1l
KTsNCisNCiAJcmV0dXJuIGhlYXA7DQogDQogZXJyMjoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2Rt
YS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1f
aGVhcC5jDQppbmRleCBhYjdmZDg5NmQyYzQuLjc1MmEwNWMzY2ZlMiAxMDA2NDQNCi0tLSBhL2Ry
aXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1faGVhcC5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYv
aGVhcHMvc3lzdGVtX2hlYXAuYw0KQEAgLTM5NSw2ICszOTUsOSBAQCBzdGF0aWMgc3RydWN0IGRt
YV9idWYgKnN5c3RlbV9oZWFwX2FsbG9jYXRlKHN0cnVjdCBkbWFfaGVhcCAqaGVhcCwNCiAJZXhw
X2luZm8ub3BzID0gJnN5c3RlbV9oZWFwX2J1Zl9vcHM7DQogCWV4cF9pbmZvLnNpemUgPSBidWZm
ZXItPmxlbjsNCiAJZXhwX2luZm8uZmxhZ3MgPSBmZF9mbGFnczsNCisjaWZkZWYgQ09ORklHX0NH
Uk9VUF9HUFUNCisJZXhwX2luZm8uZ3B1Y2dfZGV2ID0gZG1hX2hlYXBfZ2V0X2dwdWNnX2Rldiho
ZWFwKTsNCisjZW5kaWYNCiAJZXhwX2luZm8ucHJpdiA9IGJ1ZmZlcjsNCiAJZG1hYnVmID0gZG1h
X2J1Zl9leHBvcnQoJmV4cF9pbmZvKTsNCiAJaWYgKElTX0VSUihkbWFidWYpKSB7DQpkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9saW51eC9kbWEtaGVhcC5oIGIvaW5jbHVkZS9saW51eC9kbWEtaGVhcC5o
DQppbmRleCAwYzA1NTYxY2FkNmUuLmU0NDdhNjFkMDU0ZSAxMDA2NDQNCi0tLSBhL2luY2x1ZGUv
bGludXgvZG1hLWhlYXAuaA0KKysrIGIvaW5jbHVkZS9saW51eC9kbWEtaGVhcC5oDQpAQCAtMTAs
NiArMTAsNyBAQA0KICNkZWZpbmUgX0RNQV9IRUFQU19IDQogDQogI2luY2x1ZGUgPGxpbnV4L2Nk
ZXYuaD4NCisjaW5jbHVkZSA8bGludXgvY2dyb3VwX2dwdS5oPg0KICNpbmNsdWRlIDxsaW51eC90
eXBlcy5oPg0KIA0KIHN0cnVjdCBkbWFfaGVhcDsNCkBAIC01OSw2ICs2MCwxNiBAQCB2b2lkICpk
bWFfaGVhcF9nZXRfZHJ2ZGF0YShzdHJ1Y3QgZG1hX2hlYXAgKmhlYXApOw0KICAqLw0KIGNvbnN0
IGNoYXIgKmRtYV9oZWFwX2dldF9uYW1lKHN0cnVjdCBkbWFfaGVhcCAqaGVhcCk7DQogDQorLyoq
DQorICogZG1hX2hlYXBfZ2V0X2dwdWNnX2RldigpIC0gZ2V0IGEgcG9pbnRlciB0byB0aGUgc3Ry
dWN0IGdwdWNnX2RldmljZSBmb3IgdGhlDQorICogaGVhcC4NCisgKiBAaGVhcDogRE1BLUhlYXAg
dG8gcmV0cmlldmUgZ3B1Y2dfZGV2aWNlIGZvci4NCisgKg0KKyAqIFJldHVybnM6DQorICogVGhl
IGdwdWNnX2RldmljZSBzdHJ1Y3QgZm9yIHRoZSBoZWFwLg0KKyAqLw0KK3N0cnVjdCBncHVjZ19k
ZXZpY2UgKmRtYV9oZWFwX2dldF9ncHVjZ19kZXYoc3RydWN0IGRtYV9oZWFwICpoZWFwKTsNCisN
CiAvKioNCiAgKiBkbWFfaGVhcF9hZGQgLSBhZGRzIGEgaGVhcCB0byBkbWFidWYgaGVhcHMNCiAg
KiBAZXhwX2luZm86CQlpbmZvcm1hdGlvbiBuZWVkZWQgdG8gcmVnaXN0ZXIgdGhpcyBoZWFwDQot
LSANCjIuMzUuMS4yNjUuZzY5YzhkNzE0MmYtZ29vZw0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
