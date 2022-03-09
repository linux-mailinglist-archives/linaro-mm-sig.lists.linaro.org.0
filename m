Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 705E14EAD06
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 14:21:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A78833EC1F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 12:21:25 +0000 (UTC)
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	by lists.linaro.org (Postfix) with ESMTPS id 82C123EEA1
	for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Mar 2022 16:52:45 +0000 (UTC)
Received: by mail-yb1-f201.google.com with SMTP id g2-20020a5b0242000000b0062892750241so2091816ybp.23
        for <linaro-mm-sig@lists.linaro.org>; Wed, 09 Mar 2022 08:52:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:content-transfer-encoding;
        bh=lhHGzZoREQNnf55wN1HaeVUD3hjLL00JJ5cetBP+eaQ=;
        b=gKIbC0k/5p+fyNlConlMN+xPe/ebk8ebvd/uWg6T6vooL8MMIfva9qwy7Lpdbivqq7
         oJoIgx2KDTrB7PC2LXU6JYkOQgHlH1J78wsI/1CybgkEOgCETFPbvTPvvBZjF3KtEYrW
         804ENocSNg1iNY0zuUQhjo4BolEmxZkdv9JShsHPaP3w6yigklJE9Q9l+xaJDLCwR09A
         4DGED7VchRj5zoSQ42M5Way/Ra/0h5dn8HeEz5ZQ9KAEmdn2oNLN4RDfrLj7Imh7317M
         J7FgGxhT0IWthtTIVaNXYJbTS5HECV7f+G560rkLLiA/e5xw92yjAG61zMDzxkzWjfrM
         JpaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:content-transfer-encoding;
        bh=lhHGzZoREQNnf55wN1HaeVUD3hjLL00JJ5cetBP+eaQ=;
        b=RaMi8jBzbwp4QlSYI7qO8kCD9MRK5V+piM38NNMFr2EQnY6Cd5PyKpeRdVjtS6uF2L
         gJ2We1fiiKC+ubltSjOSgDGn+yOabFbBOMlV3Yf5gL7eQH7v+0A+pX3owraYU6nWAmLJ
         UvF0PFMTlg2j0UbHnz+lEQVNQ4ZC/M7cWw3SJqzRkD2C9zhnty4A7PeKVsyccQH8vLjK
         3VIFMOLkiXR1wEpjU+fdLzv+fK+rYJcpxNrYyot4Uno0duAbszEGO8GinFIqOklnMKu4
         0Djl+bVHA/62mjRF19+pNrJfS+G0313lXiDthQEo228byzctH2s70IupB39PGRUjV1vv
         qRNg==
X-Gm-Message-State: AOAM531pQSz5Zz8PsDNmQuF87+eL/bd8iLfE4GrRgve93FHiJjrYh2y9
	T+3TRaLaO5T1srTTXtwypi2vI49/jKyZ4/0=
X-Google-Smtp-Source: ABdhPJwK4yKwsDlaoEUAS3Vm5fm7rENo1CQsEFqudzHVLPT45CzkuU3D+7W8hxwy+2V9Wem//6DQfWjRXmIBTMk=
X-Received: from tj2.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:187])
 (user=tjmercier job=sendgmr) by 2002:a05:6902:1541:b0:628:a0ed:ad49 with SMTP
 id r1-20020a056902154100b00628a0edad49mr513167ybu.419.1646844765074; Wed, 09
 Mar 2022 08:52:45 -0800 (PST)
Date: Wed,  9 Mar 2022 16:52:14 +0000
In-Reply-To: <20220309165222.2843651-1-tjmercier@google.com>
Message-Id: <20220309165222.2843651-5-tjmercier@google.com>
Mime-Version: 1.0
References: <20220309165222.2843651-1-tjmercier@google.com>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
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
	Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>
X-MailFrom: 3XdsoYgkKDc4D36yBw2yB08805y.w86527uB8-66-C2052CDC.527uB8.8B0@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WCH5VEQOW3CFC5DHF5WDZCRLVJFLOIBT
X-Message-ID-Hash: WCH5VEQOW3CFC5DHF5WDZCRLVJFLOIBT
X-Mailman-Approved-At: Tue, 29 Mar 2022 12:20:56 +0000
CC: kaleshsingh@google.com, Kenny.Ho@amd.com, "T.J. Mercier" <tjmercier@google.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC v3 4/8] dmabuf: heaps: export system_heap buffers with GPU cgroup charging
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WCH5VEQOW3CFC5DHF5WDZCRLVJFLOIBT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogSHJpZHlhIFZhbHNhcmFqdSA8aHJpZHlhQGdvb2dsZS5jb20+DQoNCkFsbCBETUEgaGVh
cHMgbm93IHJlZ2lzdGVyIGEgbmV3IEdQVSBjZ3JvdXAgZGV2aWNlIHVwb24gY3JlYXRpb24sIGFu
ZCB0aGUNCnN5c3RlbV9oZWFwIG5vdyBleHBvcnRzIGJ1ZmZlcnMgYXNzb2NpYXRlZCB3aXRoIGl0
cyBHUFUgY2dyb3VwIGRldmljZSBmb3INCnRyYWNraW5nIHB1cnBvc2VzLg0KDQpTaWduZWQtb2Zm
LWJ5OiBIcmlkeWEgVmFsc2FyYWp1IDxocmlkeWFAZ29vZ2xlLmNvbT4NClNpZ25lZC1vZmYtYnk6
IFQuSi4gTWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+DQoNCi0tLQ0KdjMgY2hhbmdlcw0K
VXNlIG1vcmUgY29tbW9uIGR1YWwgYXV0aG9yIGNvbW1pdCBtZXNzYWdlIGZvcm1hdCBwZXIgSm9o
biBTdHVsdHouDQoNCnYyIGNoYW5nZXMNCk1vdmUgZG1hLWJ1ZiBjZ3JvdXAgY2hhcmdlIHRyYW5z
ZmVyIGZyb20gYSBkbWFfYnVmX29wIGRlZmluZWQgYnkgZXZlcnkNCmhlYXAgdG8gYSBzaW5nbGUg
ZG1hLWJ1ZiBmdW5jdGlvbiBmb3IgYWxsIGhlYXBzIHBlciBEYW5pZWwgVmV0dGVyIGFuZA0KQ2hy
aXN0aWFuIEvDtm5pZy4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jICAgICAgICAg
IHwgMjcgKysrKysrKysrKysrKysrKysrKysrKysrKysrDQogZHJpdmVycy9kbWEtYnVmL2hlYXBz
L3N5c3RlbV9oZWFwLmMgfCAgMyArKysNCiBpbmNsdWRlL2xpbnV4L2RtYS1oZWFwLmggICAgICAg
ICAgICB8IDExICsrKysrKysrKysrDQogMyBmaWxlcyBjaGFuZ2VkLCA0MSBpbnNlcnRpb25zKCsp
DQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtaGVhcC5jDQppbmRleCA4ZjU4NDhhYTE0NGYuLjg4NTA3MjQyNzc3NSAxMDA2NDQN
Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYv
ZG1hLWhlYXAuYw0KQEAgLTcsNiArNyw3IEBADQogICovDQogDQogI2luY2x1ZGUgPGxpbnV4L2Nk
ZXYuaD4NCisjaW5jbHVkZSA8bGludXgvY2dyb3VwX2dwdS5oPg0KICNpbmNsdWRlIDxsaW51eC9k
ZWJ1Z2ZzLmg+DQogI2luY2x1ZGUgPGxpbnV4L2RldmljZS5oPg0KICNpbmNsdWRlIDxsaW51eC9k
bWEtYnVmLmg+DQpAQCAtMzEsNiArMzIsNyBAQA0KICAqIEBoZWFwX2RldnQJCWhlYXAgZGV2aWNl
IG5vZGUNCiAgKiBAbGlzdAkJbGlzdCBoZWFkIGNvbm5lY3RpbmcgdG8gbGlzdCBvZiBoZWFwcw0K
ICAqIEBoZWFwX2NkZXYJCWhlYXAgY2hhciBkZXZpY2UNCisgKiBAZ3B1Y2dfZGV2CQlncHUgY2dy
b3VwIGRldmljZSBmb3IgbWVtb3J5IGFjY291bnRpbmcNCiAgKg0KICAqIFJlcHJlc2VudHMgYSBo
ZWFwIG9mIG1lbW9yeSBmcm9tIHdoaWNoIGJ1ZmZlcnMgY2FuIGJlIG1hZGUuDQogICovDQpAQCAt
NDEsNiArNDMsOSBAQCBzdHJ1Y3QgZG1hX2hlYXAgew0KIAlkZXZfdCBoZWFwX2RldnQ7DQogCXN0
cnVjdCBsaXN0X2hlYWQgbGlzdDsNCiAJc3RydWN0IGNkZXYgaGVhcF9jZGV2Ow0KKyNpZmRlZiBD
T05GSUdfQ0dST1VQX0dQVQ0KKwlzdHJ1Y3QgZ3B1Y2dfZGV2aWNlIGdwdWNnX2RldjsNCisjZW5k
aWYNCiB9Ow0KIA0KIHN0YXRpYyBMSVNUX0hFQUQoaGVhcF9saXN0KTsNCkBAIC0yMTYsNiArMjIx
LDI2IEBAIGNvbnN0IGNoYXIgKmRtYV9oZWFwX2dldF9uYW1lKHN0cnVjdCBkbWFfaGVhcCAqaGVh
cCkNCiAJcmV0dXJuIGhlYXAtPm5hbWU7DQogfQ0KIA0KKyNpZmRlZiBDT05GSUdfQ0dST1VQX0dQ
VQ0KKy8qKg0KKyAqIGRtYV9oZWFwX2dldF9ncHVjZ19kZXYoKSAtIGdldCBzdHJ1Y3QgZ3B1Y2df
ZGV2aWNlIGZvciB0aGUgaGVhcC4NCisgKiBAaGVhcDogRE1BLUhlYXAgdG8gZ2V0IHRoZSBncHVj
Z19kZXZpY2Ugc3RydWN0IGZvci4NCisgKg0KKyAqIFJldHVybnM6DQorICogVGhlIGdwdWNnX2Rl
dmljZSBzdHJ1Y3QgZm9yIHRoZSBoZWFwLiBOVUxMIGlmIHRoZSBHUFUgY2dyb3VwIGNvbnRyb2xs
ZXIgaXMNCisgKiBub3QgZW5hYmxlZC4NCisgKi8NCitzdHJ1Y3QgZ3B1Y2dfZGV2aWNlICpkbWFf
aGVhcF9nZXRfZ3B1Y2dfZGV2KHN0cnVjdCBkbWFfaGVhcCAqaGVhcCkNCit7DQorCXJldHVybiAm
aGVhcC0+Z3B1Y2dfZGV2Ow0KK30NCisjZWxzZSAvKiBDT05GSUdfQ0dST1VQX0dQVSAqLw0KK3N0
cnVjdCBncHVjZ19kZXZpY2UgKmRtYV9oZWFwX2dldF9ncHVjZ19kZXYoc3RydWN0IGRtYV9oZWFw
ICpoZWFwKQ0KK3sNCisJcmV0dXJuIE5VTEw7DQorfQ0KKyNlbmRpZiAvKiBDT05GSUdfQ0dST1VQ
X0dQVSAqLw0KKw0KIHN0cnVjdCBkbWFfaGVhcCAqZG1hX2hlYXBfYWRkKGNvbnN0IHN0cnVjdCBk
bWFfaGVhcF9leHBvcnRfaW5mbyAqZXhwX2luZm8pDQogew0KIAlzdHJ1Y3QgZG1hX2hlYXAgKmhl
YXAsICpoLCAqZXJyX3JldDsNCkBAIC0yODgsNiArMzEzLDggQEAgc3RydWN0IGRtYV9oZWFwICpk
bWFfaGVhcF9hZGQoY29uc3Qgc3RydWN0IGRtYV9oZWFwX2V4cG9ydF9pbmZvICpleHBfaW5mbykN
CiAJbGlzdF9hZGQoJmhlYXAtPmxpc3QsICZoZWFwX2xpc3QpOw0KIAltdXRleF91bmxvY2soJmhl
YXBfbGlzdF9sb2NrKTsNCiANCisJZ3B1Y2dfcmVnaXN0ZXJfZGV2aWNlKGRtYV9oZWFwX2dldF9n
cHVjZ19kZXYoaGVhcCksIGV4cF9pbmZvLT5uYW1lKTsNCisNCiAJcmV0dXJuIGhlYXA7DQogDQog
ZXJyMjoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYyBi
L2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1faGVhcC5jDQppbmRleCBhYjdmZDg5NmQyYzQu
Ljc1MmEwNWMzY2ZlMiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1f
aGVhcC5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYw0KQEAgLTM5
NSw2ICszOTUsOSBAQCBzdGF0aWMgc3RydWN0IGRtYV9idWYgKnN5c3RlbV9oZWFwX2FsbG9jYXRl
KHN0cnVjdCBkbWFfaGVhcCAqaGVhcCwNCiAJZXhwX2luZm8ub3BzID0gJnN5c3RlbV9oZWFwX2J1
Zl9vcHM7DQogCWV4cF9pbmZvLnNpemUgPSBidWZmZXItPmxlbjsNCiAJZXhwX2luZm8uZmxhZ3Mg
PSBmZF9mbGFnczsNCisjaWZkZWYgQ09ORklHX0NHUk9VUF9HUFUNCisJZXhwX2luZm8uZ3B1Y2df
ZGV2ID0gZG1hX2hlYXBfZ2V0X2dwdWNnX2RldihoZWFwKTsNCisjZW5kaWYNCiAJZXhwX2luZm8u
cHJpdiA9IGJ1ZmZlcjsNCiAJZG1hYnVmID0gZG1hX2J1Zl9leHBvcnQoJmV4cF9pbmZvKTsNCiAJ
aWYgKElTX0VSUihkbWFidWYpKSB7DQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtaGVh
cC5oIGIvaW5jbHVkZS9saW51eC9kbWEtaGVhcC5oDQppbmRleCAwYzA1NTYxY2FkNmUuLmU0NDdh
NjFkMDU0ZSAxMDA2NDQNCi0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWhlYXAuaA0KKysrIGIvaW5j
bHVkZS9saW51eC9kbWEtaGVhcC5oDQpAQCAtMTAsNiArMTAsNyBAQA0KICNkZWZpbmUgX0RNQV9I
RUFQU19IDQogDQogI2luY2x1ZGUgPGxpbnV4L2NkZXYuaD4NCisjaW5jbHVkZSA8bGludXgvY2dy
b3VwX2dwdS5oPg0KICNpbmNsdWRlIDxsaW51eC90eXBlcy5oPg0KIA0KIHN0cnVjdCBkbWFfaGVh
cDsNCkBAIC01OSw2ICs2MCwxNiBAQCB2b2lkICpkbWFfaGVhcF9nZXRfZHJ2ZGF0YShzdHJ1Y3Qg
ZG1hX2hlYXAgKmhlYXApOw0KICAqLw0KIGNvbnN0IGNoYXIgKmRtYV9oZWFwX2dldF9uYW1lKHN0
cnVjdCBkbWFfaGVhcCAqaGVhcCk7DQogDQorLyoqDQorICogZG1hX2hlYXBfZ2V0X2dwdWNnX2Rl
digpIC0gZ2V0IGEgcG9pbnRlciB0byB0aGUgc3RydWN0IGdwdWNnX2RldmljZSBmb3IgdGhlDQor
ICogaGVhcC4NCisgKiBAaGVhcDogRE1BLUhlYXAgdG8gcmV0cmlldmUgZ3B1Y2dfZGV2aWNlIGZv
ci4NCisgKg0KKyAqIFJldHVybnM6DQorICogVGhlIGdwdWNnX2RldmljZSBzdHJ1Y3QgZm9yIHRo
ZSBoZWFwLg0KKyAqLw0KK3N0cnVjdCBncHVjZ19kZXZpY2UgKmRtYV9oZWFwX2dldF9ncHVjZ19k
ZXYoc3RydWN0IGRtYV9oZWFwICpoZWFwKTsNCisNCiAvKioNCiAgKiBkbWFfaGVhcF9hZGQgLSBh
ZGRzIGEgaGVhcCB0byBkbWFidWYgaGVhcHMNCiAgKiBAZXhwX2luZm86CQlpbmZvcm1hdGlvbiBu
ZWVkZWQgdG8gcmVnaXN0ZXIgdGhpcyBoZWFwDQotLSANCjIuMzUuMS42MTYuZzBiZGNiYjQ0NjQt
Z29vZw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
