Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 971B54EC48D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 14:40:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CE7523EC52
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 12:40:38 +0000 (UTC)
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	by lists.linaro.org (Postfix) with ESMTPS id 5F3203EA27
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Mar 2022 04:00:06 +0000 (UTC)
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-2ea6741dc72so12575587b3.12
        for <linaro-mm-sig@lists.linaro.org>; Sun, 27 Mar 2022 21:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:content-transfer-encoding;
        bh=swBHLDpMJlrENAUcNI4p95XFMSTGbJ8O3Tkem0fLvJU=;
        b=oGTdKGCygtZYyY07tOAoRz5brM3z/11wHqQFfV9mV9rMC95YVrWjxdM1oH17EeKd9B
         sByNIynrE388mR0y43nywkqC34DIeOWfgKVA5O3hEzW4JmCwZnUNYDylGb1gqtbrftTF
         g8jBg5qa7X2rT2zyxTmddvwhuVxd5L9UddzZecSVdtPfdirn8wxoG6kLG3hSBeXG89m6
         Lje6g2SKeC2vE4qLXT61Xj7PEozYJG8HH0CtLDPPhsGnkLhDhbUApKRxOOplFRmrta4M
         fBt/snAG2E4gPBrqDmBpy+Cth+6pBc8VF8/wH4T0LMHtFjTaWFewprjrYCCBchUaw1xM
         v4TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:content-transfer-encoding;
        bh=swBHLDpMJlrENAUcNI4p95XFMSTGbJ8O3Tkem0fLvJU=;
        b=AD/nRWCdab0puQ2FDzbLRy2iOu4mMnvQWoxoCeqs1ip+3JaiUC+zmeJlsnvr1rfxpq
         WFINRDN+NDOi0YpqyONvBh1nYc0AsQaCRCkheJmn60r25+MHtZD9f5TusgymMwYMlz/M
         7VVj/nQzrE27hc4oNGfj+r1HU+X5t+h71/MgELbd389I/O1yJ7j7JkGQFn6t74Vh3NzQ
         dXobi9pJnQQetMjHytk6vPa8KQvadwX3d5vrphDg+eEnqELRsukYU4Hsa67sKg1Mf/us
         MPV9C9CR3cLJrqlMeabkL9kr+bJ1K6WNaJxB33RJ038fJafZB51zVEFzW8es+TA0ZHm5
         5BjQ==
X-Gm-Message-State: AOAM533K9fZua/qAldVVRTyFCYUDPCi4j2Vh50BoyKnI/65GZc4Uyed+
	NHi3ljp675xVwUFDHwaBYp3Xcg5X9BYSkkI=
X-Google-Smtp-Source: ABdhPJwnqgWOYi8gA1e2h+a9hU2mT4oa3J/inlE1/8EHv9A1hYM2B/y7BXnnZpn5v3bzYFB0oT1SjC39tw71k5Q=
X-Received: from tj2.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:187])
 (user=tjmercier job=sendgmr) by 2002:a0d:cc4f:0:b0:2e5:e8fa:6754 with SMTP id
 o76-20020a0dcc4f000000b002e5e8fa6754mr23233214ywd.295.1648440005966; Sun, 27
 Mar 2022 21:00:05 -0700 (PDT)
Date: Mon, 28 Mar 2022 03:59:42 +0000
In-Reply-To: <20220328035951.1817417-1-tjmercier@google.com>
Message-Id: <20220328035951.1817417-4-tjmercier@google.com>
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
X-MailFrom: 3xTJBYgkKDUg3two1mso1qyyqvo.mywvsxk1y-ww-2sqvs232.vsxk1y.y1q@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZVK5POMQ62PG6LNOBS6KSVWCGDPTZ3NF
X-Message-ID-Hash: ZVK5POMQ62PG6LNOBS6KSVWCGDPTZ3NF
X-Mailman-Approved-At: Wed, 30 Mar 2022 12:40:17 +0000
CC: kaleshsingh@google.com, Kenny.Ho@amd.com, mkoutny@suse.com, skhan@linuxfoundation.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC v4 3/8] dmabuf: Use the GPU cgroup charge/uncharge APIs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZVK5POMQ62PG6LNOBS6KSVWCGDPTZ3NF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBwYXRjaCB1c2VzIHRoZSBHUFUgY2dyb3VwIGNoYXJnZS91bmNoYXJnZSBBUElzIHRvIGNo
YXJnZSBidWZmZXJzDQphbGxvY2F0ZWQgYnkgYW55IERNQS1CVUYgZXhwb3J0ZXIgdGhhdCBleHBv
cnRzIGEgYnVmZmVyIHdpdGggYSBHUFUgY2dyb3VwDQpkZXZpY2UgYXNzb2NpYXRpb24uDQoNCkJ5
IGRvaW5nIHNvLCBpdCBiZWNvbWVzIHBvc3NpYmxlIHRvIHRyYWNrIHdobyBhbGxvY2F0ZWQvZXhw
b3J0ZWQgYQ0KRE1BLUJVRiBldmVuIGFmdGVyIHRoZSBhbGxvY2F0aW5nIHByb2Nlc3MgZHJvcHMg
YWxsIHJlZmVyZW5jZXMgdG8gYQ0KYnVmZmVyLg0KDQpPcmlnaW5hbGx5LWJ5OiBIcmlkeWEgVmFs
c2FyYWp1IDxocmlkeWFAZ29vZ2xlLmNvbT4NClNpZ25lZC1vZmYtYnk6IFQuSi4gTWVyY2llciA8
dGptZXJjaWVyQGdvb2dsZS5jb20+DQoNCi0tLQ0KdjQgY2hhbmdlcw0KRml4IHVuaW5pdGlhbGl6
ZWQgcmV0dXJuIGNvZGUgZXJyb3IgZm9yIGRtYWJ1Zl90cnlfY2hhcmdlIGVycm9yIGNhc2UuDQoN
CnYzIGNoYW5nZXMNClVzZSBtb3JlIGNvbW1vbiBkdWFsIGF1dGhvciBjb21taXQgbWVzc2FnZSBm
b3JtYXQgcGVyIEpvaG4gU3R1bHR6Lg0KDQp2MiBjaGFuZ2VzDQpNb3ZlIGRtYS1idWYgY2dyb3Vw
IGNoYXJnaW5nL3VuY2hhcmdpbmcgZnJvbSBhIGRtYV9idWZfb3AgZGVmaW5lZCBieQ0KZXZlcnkg
aGVhcCB0byBhIHNpbmdsZSBkbWEtYnVmIGZ1bmN0aW9uIGZvciBhbGwgaGVhcHMgcGVyIERhbmll
bCBWZXR0ZXIgYW5kDQpDaHJpc3RpYW4gS8O2bmlnLg0KLS0tDQogZHJpdmVycy9kbWEtYnVmL2Rt
YS1idWYuYyB8IDU4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KIGlu
Y2x1ZGUvbGludXgvZG1hLWJ1Zi5oICAgfCAyMCArKysrKysrKysrKystLQ0KIDIgZmlsZXMgY2hh
bmdlZCwgNzYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQppbmRl
eCA2MDJiMTJkNzQ3MGQuLjFlZTVjNjBkM2Q2ZCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtYnVmLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCkBAIC01Niw2ICs1
Niw1MyBAQCBzdGF0aWMgY2hhciAqZG1hYnVmZnNfZG5hbWUoc3RydWN0IGRlbnRyeSAqZGVudHJ5
LCBjaGFyICpidWZmZXIsIGludCBidWZsZW4pDQogCQkJICAgICBkZW50cnktPmRfbmFtZS5uYW1l
LCByZXQgPiAwID8gbmFtZSA6ICIiKTsNCiB9DQogDQorI2lmZGVmIENPTkZJR19DR1JPVVBfR1BV
DQorc3RhdGljIGlubGluZSBzdHJ1Y3QgZ3B1Y2dfZGV2aWNlICoNCitleHBfaW5mb19ncHVjZ19k
ZXYoY29uc3Qgc3RydWN0IGRtYV9idWZfZXhwb3J0X2luZm8gKmV4cF9pbmZvKQ0KK3sNCisJcmV0
dXJuIGV4cF9pbmZvLT5ncHVjZ19kZXY7DQorfQ0KKw0KK3N0YXRpYyBpbnQgZG1hYnVmX3RyeV9j
aGFyZ2Uoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwNCisJCQkgICAgIHN0cnVjdCBncHVjZ19kZXZp
Y2UgKmdwdWNnX2RldikNCit7DQorCWludCByZXQ7DQorDQorCWRtYWJ1Zi0+Z3B1Y2cgPSBncHVj
Z19nZXQoY3VycmVudCk7DQorCWRtYWJ1Zi0+Z3B1Y2dfZGV2ID0gZ3B1Y2dfZGV2Ow0KKw0KKwly
ZXQgPSBncHVjZ190cnlfY2hhcmdlKGRtYWJ1Zi0+Z3B1Y2csIGRtYWJ1Zi0+Z3B1Y2dfZGV2LCBk
bWFidWYtPnNpemUpOw0KKwlpZiAocmV0KSB7DQorCQlncHVjZ19wdXQoZG1hYnVmLT5ncHVjZyk7
DQorCQlkbWFidWYtPmdwdWNnID0gTlVMTDsNCisJCWRtYWJ1Zi0+Z3B1Y2dfZGV2ID0gTlVMTDsN
CisJfQ0KKwlyZXR1cm4gcmV0Ow0KK30NCisNCitzdGF0aWMgdm9pZCBkbWFidWZfdW5jaGFyZ2Uo
c3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCit7DQorCWlmIChkbWFidWYtPmdwdWNnICYmIGRtYWJ1
Zi0+Z3B1Y2dfZGV2KSB7DQorCQlncHVjZ191bmNoYXJnZShkbWFidWYtPmdwdWNnLCBkbWFidWYt
PmdwdWNnX2RldiwgZG1hYnVmLT5zaXplKTsNCisJCWdwdWNnX3B1dChkbWFidWYtPmdwdWNnKTsN
CisJfQ0KK30NCisjZWxzZSAvKiBDT05GSUdfQ0dST1VQX0dQVSAqLw0KK3N0YXRpYyBpbmxpbmUg
c3RydWN0IGdwdWNnX2RldmljZSAqZXhwX2luZm9fZ3B1Y2dfZGV2KA0KK2NvbnN0IHN0cnVjdCBk
bWFfYnVmX2V4cG9ydF9pbmZvICpleHBfaW5mbykNCit7DQorCXJldHVybiBOVUxMOw0KK30NCisN
CitzdGF0aWMgaW5saW5lIGludCBkbWFidWZfdHJ5X2NoYXJnZShzdHJ1Y3QgZG1hX2J1ZiAqZG1h
YnVmLA0KKwkJCQkgICAgIHN0cnVjdCBncHVjZ19kZXZpY2UgKmdwdWNnX2RldikpDQorew0KKwly
ZXR1cm4gMDsNCit9DQorDQorc3RhdGljIGlubGluZSB2b2lkIGRtYWJ1Zl91bmNoYXJnZShzdHJ1
Y3QgZG1hX2J1ZiAqZG1hYnVmKSB7fQ0KKyNlbmRpZiAvKiBDT05GSUdfQ0dST1VQX0dQVSAqLw0K
Kw0KIHN0YXRpYyB2b2lkIGRtYV9idWZfcmVsZWFzZShzdHJ1Y3QgZGVudHJ5ICpkZW50cnkpDQog
ew0KIAlzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmOw0KQEAgLTc5LDYgKzEyNiw4IEBAIHN0YXRpYyB2
b2lkIGRtYV9idWZfcmVsZWFzZShzdHJ1Y3QgZGVudHJ5ICpkZW50cnkpDQogCWlmIChkbWFidWYt
PnJlc3YgPT0gKHN0cnVjdCBkbWFfcmVzdiAqKSZkbWFidWZbMV0pDQogCQlkbWFfcmVzdl9maW5p
KGRtYWJ1Zi0+cmVzdik7DQogDQorCWRtYWJ1Zl91bmNoYXJnZShkbWFidWYpOw0KKw0KIAlXQVJO
X09OKCFsaXN0X2VtcHR5KCZkbWFidWYtPmF0dGFjaG1lbnRzKSk7DQogCW1vZHVsZV9wdXQoZG1h
YnVmLT5vd25lcik7DQogCWtmcmVlKGRtYWJ1Zi0+bmFtZSk7DQpAQCAtNDg0LDYgKzUzMyw3IEBA
IHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmX2V4cG9ydChjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9leHBv
cnRfaW5mbyAqZXhwX2luZm8pDQogew0KIAlzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmOw0KIAlzdHJ1
Y3QgZG1hX3Jlc3YgKnJlc3YgPSBleHBfaW5mby0+cmVzdjsNCisJc3RydWN0IGdwdWNnX2Rldmlj
ZSAqZ3B1Y2dfZGV2ID0gZXhwX2luZm9fZ3B1Y2dfZGV2KGV4cF9pbmZvKTsNCiAJc3RydWN0IGZp
bGUgKmZpbGU7DQogCXNpemVfdCBhbGxvY19zaXplID0gc2l6ZW9mKHN0cnVjdCBkbWFfYnVmKTsN
CiAJaW50IHJldDsNCkBAIC01MzQsNiArNTg0LDEyIEBAIHN0cnVjdCBkbWFfYnVmICpkbWFfYnVm
X2V4cG9ydChjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9leHBvcnRfaW5mbyAqZXhwX2luZm8pDQogCX0N
CiAJZG1hYnVmLT5yZXN2ID0gcmVzdjsNCiANCisJaWYgKGdwdWNnX2Rldikgew0KKwkJcmV0ID0g
ZG1hYnVmX3RyeV9jaGFyZ2UoZG1hYnVmLCBncHVjZ19kZXYpOw0KKwkJaWYgKHJldCkNCisJCQln
b3RvIGVycl9jaGFyZ2U7DQorCX0NCisNCiAJZmlsZSA9IGRtYV9idWZfZ2V0ZmlsZShkbWFidWYs
IGV4cF9pbmZvLT5mbGFncyk7DQogCWlmIChJU19FUlIoZmlsZSkpIHsNCiAJCXJldCA9IFBUUl9F
UlIoZmlsZSk7DQpAQCAtNTY1LDYgKzYyMSw4IEBAIHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmX2V4
cG9ydChjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9leHBvcnRfaW5mbyAqZXhwX2luZm8pDQogCWZpbGUt
PmZfcGF0aC5kZW50cnktPmRfZnNkYXRhID0gTlVMTDsNCiAJZnB1dChmaWxlKTsNCiBlcnJfZG1h
YnVmOg0KKwlkbWFidWZfdW5jaGFyZ2UoZG1hYnVmKTsNCitlcnJfY2hhcmdlOg0KIAlrZnJlZShk
bWFidWYpOw0KIGVycl9tb2R1bGU6DQogCW1vZHVsZV9wdXQoZXhwX2luZm8tPm93bmVyKTsNCmRp
ZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaCBiL2luY2x1ZGUvbGludXgvZG1hLWJ1
Zi5oDQppbmRleCA3YWI1MDA3NmU3YTYuLjc0MmYyOWMzZGFhZiAxMDA2NDQNCi0tLSBhL2luY2x1
ZGUvbGludXgvZG1hLWJ1Zi5oDQorKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KQEAgLTEz
LDYgKzEzLDcgQEANCiAjaWZuZGVmIF9fRE1BX0JVRl9IX18NCiAjZGVmaW5lIF9fRE1BX0JVRl9I
X18NCiANCisjaW5jbHVkZSA8bGludXgvY2dyb3VwX2dwdS5oPg0KICNpbmNsdWRlIDxsaW51eC9k
bWEtYnVmLW1hcC5oPg0KICNpbmNsdWRlIDxsaW51eC9maWxlLmg+DQogI2luY2x1ZGUgPGxpbnV4
L2Vyci5oPg0KQEAgLTMwMyw3ICszMDQsNyBAQCBzdHJ1Y3QgZG1hX2J1ZiB7DQogCS8qKg0KIAkg
KiBAc2l6ZToNCiAJICoNCi0JICogU2l6ZSBvZiB0aGUgYnVmZmVyOyBpbnZhcmlhbnQgb3ZlciB0
aGUgbGlmZXRpbWUgb2YgdGhlIGJ1ZmZlci4NCisJICogU2l6ZSBvZiB0aGUgYnVmZmVyIGluIGJ5
dGVzOyBpbnZhcmlhbnQgb3ZlciB0aGUgbGlmZXRpbWUgb2YgdGhlIGJ1ZmZlci4NCiAJICovDQog
CXNpemVfdCBzaXplOw0KIA0KQEAgLTQ1Myw2ICs0NTQsMTcgQEAgc3RydWN0IGRtYV9idWYgew0K
IAkJc3RydWN0IGRtYV9idWYgKmRtYWJ1ZjsNCiAJfSAqc3lzZnNfZW50cnk7DQogI2VuZGlmDQor
DQorI2lmZGVmIENPTkZJR19DR1JPVVBfR1BVDQorCS8qKiBAZ3B1Y2c6IFBvaW50ZXIgdG8gdGhl
IGNncm91cCB0aGlzIGJ1ZmZlciBjdXJyZW50bHkgYmVsb25ncyB0by4gKi8NCisJc3RydWN0IGdw
dWNnICpncHVjZzsNCisNCisJLyoqIEBncHVjZ19kZXY6DQorCSAqDQorCSAqIFBvaW50ZXIgdG8g
dGhlIGNncm91cCBHUFUgZGV2aWNlIHdoZW5jZSB0aGlzIGJ1ZmZlciBvcmlnaW5hdGVzLg0KKwkg
Ki8NCisJc3RydWN0IGdwdWNnX2RldmljZSAqZ3B1Y2dfZGV2Ow0KKyNlbmRpZg0KIH07DQogDQog
LyoqDQpAQCAtNTI5LDkgKzU0MSwxMCBAQCBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50IHsNCiAg
KiBAZXhwX25hbWU6CW5hbWUgb2YgdGhlIGV4cG9ydGVyIC0gdXNlZnVsIGZvciBkZWJ1Z2dpbmcu
DQogICogQG93bmVyOglwb2ludGVyIHRvIGV4cG9ydGVyIG1vZHVsZSAtIHVzZWQgZm9yIHJlZmNv
dW50aW5nIGtlcm5lbCBtb2R1bGUNCiAgKiBAb3BzOglBdHRhY2ggYWxsb2NhdG9yLWRlZmluZWQg
ZG1hIGJ1ZiBvcHMgdG8gdGhlIG5ldyBidWZmZXINCi0gKiBAc2l6ZToJU2l6ZSBvZiB0aGUgYnVm
ZmVyIC0gaW52YXJpYW50IG92ZXIgdGhlIGxpZmV0aW1lIG9mIHRoZSBidWZmZXINCisgKiBAc2l6
ZToJU2l6ZSBvZiB0aGUgYnVmZmVyIGluIGJ5dGVzIC0gaW52YXJpYW50IG92ZXIgdGhlIGxpZmV0
aW1lIG9mIHRoZSBidWZmZXINCiAgKiBAZmxhZ3M6CW1vZGUgZmxhZ3MgZm9yIHRoZSBmaWxlDQog
ICogQHJlc3Y6CXJlc2VydmF0aW9uLW9iamVjdCwgTlVMTCB0byBhbGxvY2F0ZSBkZWZhdWx0IG9u
ZQ0KKyAqIEBncHVjZ19kZXY6CXBvaW50ZXIgdG8gdGhlIGdwdSBjZ3JvdXAgZGV2aWNlIHRoaXMg
YnVmZmVyIGJlbG9uZ3MgdG8NCiAgKiBAcHJpdjoJQXR0YWNoIHByaXZhdGUgZGF0YSBvZiBhbGxv
Y2F0b3IgdG8gdGhpcyBidWZmZXINCiAgKg0KICAqIFRoaXMgc3RydWN0dXJlIGhvbGRzIHRoZSBp
bmZvcm1hdGlvbiByZXF1aXJlZCB0byBleHBvcnQgdGhlIGJ1ZmZlci4gVXNlZA0KQEAgLTU0NCw2
ICs1NTcsOSBAQCBzdHJ1Y3QgZG1hX2J1Zl9leHBvcnRfaW5mbyB7DQogCXNpemVfdCBzaXplOw0K
IAlpbnQgZmxhZ3M7DQogCXN0cnVjdCBkbWFfcmVzdiAqcmVzdjsNCisjaWZkZWYgQ09ORklHX0NH
Uk9VUF9HUFUNCisJc3RydWN0IGdwdWNnX2RldmljZSAqZ3B1Y2dfZGV2Ow0KKyNlbmRpZg0KIAl2
b2lkICpwcml2Ow0KIH07DQogDQotLSANCjIuMzUuMS4xMDIxLmczODExMDFiMDc1LWdvb2cNCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
