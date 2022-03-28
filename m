Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 143424EC48E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 14:40:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4300E3EC38
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 12:40:45 +0000 (UTC)
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	by lists.linaro.org (Postfix) with ESMTPS id 468F73EA54
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Mar 2022 04:00:09 +0000 (UTC)
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-2e9ae7bd8deso58641627b3.9
        for <linaro-mm-sig@lists.linaro.org>; Sun, 27 Mar 2022 21:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:content-transfer-encoding;
        bh=5yVgehYPp/D4TvQwla1lP4QXTd3no9VslKN9O7AQtMc=;
        b=PhhJHuDY8p3QcagPQvPZS3gUNE+WTXGwsjHGcy5vYWAnTDsBi689RrlHpX0zFrkeeB
         cgq7zsJvQ4TmXMK1FTpCqUW7u3lra5MV6nGauGeFVJDPCVrWmnkHjOmwhDdU+M7H3MZe
         9q35JQxGebLqH5/ONPtCo4HXNZx4OcvVXTYpNkTBV6/yAbNgaRVy5ssOv6jFVcFkP4kh
         c6sqXcTOyO3FaJ9kpa11O5JJElojJYBxTFCpnde1aJSzeINLr01Z2GHiUlyp+D3vIicZ
         9yFl6rYahM5JoO00jsPYyoSQwu+mCGj11q2ksSeUHehSTH8F0UI4LYMgOKHBkHzbM5kw
         cvlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:content-transfer-encoding;
        bh=5yVgehYPp/D4TvQwla1lP4QXTd3no9VslKN9O7AQtMc=;
        b=o8a1JuNeUblIS/uIvwwkmzy18a+9wBqYid4wBHB0oilFht7MNqJBqk5BswUybXm9Vd
         7dQW6CfXMLBuuZia1rmdKW4V5WcLIm8NCUUCao6b8VqVpMHinqNmPPxg2ZuYkm8UTLyf
         2pLVTHs4mbky2auqnQl1UTvPUyTTdsy3GCWWtAfQsU76M5AESW802GNaJ628DOBbImyo
         xkjKbOKgCfecwdJm4MY3FnXNOIgTcL3qGeV1U5E1rjoMreOaChtSB0NHt2KClE27N28w
         g8gR8aHIneEDC1Kv7egOFKxvrPnxx1a8l3I19TKaqV451LzSvFmyLVlsQDrtefNYbPoD
         Wc2w==
X-Gm-Message-State: AOAM5326OrcHg2Kiabljjk2knWW5Y5+uXwcpcsM9FP2cnUdSdwRwPPjo
	YKXoJs0mtSXKbXwRU3QPrmT6MUXBma76FIc=
X-Google-Smtp-Source: ABdhPJys0sTPrji6EjHujuYz082iO9ggsvoNSm4OdxVncyEN7gJkiqTrwHhvJvo9vVVIk7aJX3q2Povqc86sLs4=
X-Received: from tj2.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:187])
 (user=tjmercier job=sendgmr) by 2002:a25:bdd3:0:b0:635:eaaf:53 with SMTP id
 g19-20020a25bdd3000000b00635eaaf0053mr20426308ybk.74.1648440008833; Sun, 27
 Mar 2022 21:00:08 -0700 (PDT)
Date: Mon, 28 Mar 2022 03:59:43 +0000
In-Reply-To: <20220328035951.1817417-1-tjmercier@google.com>
Message-Id: <20220328035951.1817417-5-tjmercier@google.com>
Mime-Version: 1.0
References: <20220328035951.1817417-1-tjmercier@google.com>
X-Mailer: git-send-email 2.35.1.1021.g381101b075-goog
From: "T.J. Mercier" <tjmercier@google.com>
To: tjmercier@google.com, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
	Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>,
	Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>,
	Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>,
	Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>,
	Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>
X-MailFrom: 3yDJBYgkKDUs6wzr4pvr4t11tyr.p1zyv0n41-zz-5vtyv565.yv0n41.14t@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6KQBYDCVE3DU7OQIZAIJFBUOWXC2MTGP
X-Message-ID-Hash: 6KQBYDCVE3DU7OQIZAIJFBUOWXC2MTGP
X-Mailman-Approved-At: Wed, 30 Mar 2022 12:40:19 +0000
CC: kaleshsingh@google.com, Kenny.Ho@amd.com, mkoutny@suse.com, skhan@linuxfoundation.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC v4 4/8] dmabuf: heaps: export system_heap buffers with GPU cgroup charging
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6KQBYDCVE3DU7OQIZAIJFBUOWXC2MTGP/>
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
ZWVkZWQgdG8gcmVnaXN0ZXIgdGhpcyBoZWFwDQotLSANCjIuMzUuMS4xMDIxLmczODExMDFiMDc1
LWdvb2cNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBs
aXN0cy5saW5hcm8ub3JnCg==
