Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE684EAD05
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 14:21:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B37B43EC10
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 12:21:20 +0000 (UTC)
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	by lists.linaro.org (Postfix) with ESMTPS id 86B993EEA1
	for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Mar 2022 16:52:41 +0000 (UTC)
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-2d6914a097cso19169757b3.10
        for <linaro-mm-sig@lists.linaro.org>; Wed, 09 Mar 2022 08:52:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:content-transfer-encoding;
        bh=iI4tUDTwn0xfO1TZ7KSGGMNGPVBXGkFL9ZZA2HGZghg=;
        b=X9nwYEkE+WqweWRkaCswHljXOOyceq5HLfdQ2h5VCa5BOpSfIMw+CfpAA66J3vFCf2
         DnzE9UQtPeSlxG8o9pCfRDINTOEaiKErWwiNx6nfsrU8fAK+ceVUAS2JHMQD+AbI1jw8
         DKHKfrO6gE3o4AH5kcy/Xl/EwVhaZ69JUDtMIle7+RpS6ZagXNItEvUcdhXBvlHBpDzH
         l3fyRMp2q68ITY/BLJ3Wo+w0+hl26SwqRm77pi7ScO/UoZYTYj89rffHavcoKPlf9R6l
         UekpqNxes8w71bhq9KSVr3VQ8aymhFsdmRvHHLK69SFOrSb8FaW4zH7Z8JHbBxJrrLrt
         fypw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:content-transfer-encoding;
        bh=iI4tUDTwn0xfO1TZ7KSGGMNGPVBXGkFL9ZZA2HGZghg=;
        b=sYpEs6xXBjlg/QueorCsw+PEVb5NVxTlbIdTwzmMA3QOdQQHvzJJg30d9SR5wQSIS+
         QAfRhtsZEeYmmWHWu5ovg8z/xGWUhjm9FzJ+s2Zdd3zm/pVR7HcbUyU61McXdd1GIIow
         T2WxNjF5FyoKwgDKJGC//LNlaYy6NtFt0bUFU7L2jm1aIe/hsAMbB1ZZaKzG8hawA/gi
         24kW+w/YjUCnV57GCBcK8OuTDXegwaSHPMOPAlqdQkVQ0/Yd2KEnKOwSsGbJ6SliPmgP
         8w+nN1kYGahTFFcgpddF8Hcug1E8//FVH40lemkniijLjYhncn0PhJrwMGOn34S0rSYd
         P5bA==
X-Gm-Message-State: AOAM532s8UjhqjZ+NxH/n6NKUTWwLdi89zx4pww0ObbGwWdIE/wsY6VG
	uWVZcZ5zriUYEiISdoImOAmZG4sAIAI5jXk=
X-Google-Smtp-Source: ABdhPJyiYlANBNw1jaz9icxi5eZzNkYkUx7cFRm94KikzOWhS/qWZXLh4JI4RlXwg336vFv+RrJsOxkplJS3X04=
X-Received: from tj2.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:187])
 (user=tjmercier job=sendgmr) by 2002:a81:397:0:b0:2db:645b:c8e5 with SMTP id
 145-20020a810397000000b002db645bc8e5mr567278ywd.421.1646844761009; Wed, 09
 Mar 2022 08:52:41 -0800 (PST)
Date: Wed,  9 Mar 2022 16:52:13 +0000
In-Reply-To: <20220309165222.2843651-1-tjmercier@google.com>
Message-Id: <20220309165222.2843651-4-tjmercier@google.com>
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
X-MailFrom: 3WdsoYgkKDco9z2u7syu7w44w1u.s421y3q74-22-8yw1y898.1y3q74.47w@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: B5NX4GFC4IDK2YLP2GXGJSZ5UYPJM65V
X-Message-ID-Hash: B5NX4GFC4IDK2YLP2GXGJSZ5UYPJM65V
X-Mailman-Approved-At: Tue, 29 Mar 2022 12:20:54 +0000
CC: kaleshsingh@google.com, Kenny.Ho@amd.com, "T.J. Mercier" <tjmercier@google.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC v3 3/8] dmabuf: Use the GPU cgroup charge/uncharge APIs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B5NX4GFC4IDK2YLP2GXGJSZ5UYPJM65V/>
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
dGptZXJjaWVyQGdvb2dsZS5jb20+DQoNCi0tLQ0KdjMgY2hhbmdlcw0KVXNlIG1vcmUgY29tbW9u
IGR1YWwgYXV0aG9yIGNvbW1pdCBtZXNzYWdlIGZvcm1hdCBwZXIgSm9obiBTdHVsdHouDQoNCnYy
IGNoYW5nZXMNCk1vdmUgZG1hLWJ1ZiBjZ3JvdXAgY2hhcmdpbmcvdW5jaGFyZ2luZyBmcm9tIGEg
ZG1hX2J1Zl9vcCBkZWZpbmVkIGJ5DQpldmVyeSBoZWFwIHRvIGEgc2luZ2xlIGRtYS1idWYgZnVu
Y3Rpb24gZm9yIGFsbCBoZWFwcyBwZXIgRGFuaWVsIFZldHRlciBhbmQNCkNocmlzdGlhbiBLw7Zu
aWcuDQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgNTIgKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrDQogaW5jbHVkZS9saW51eC9kbWEtYnVmLmggICB8IDIw
ICsrKysrKysrKysrKystLQ0KIDIgZmlsZXMgY2hhbmdlZCwgNzAgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9k
cml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQppbmRleCA2MDJiMTJkNzQ3MGQuLjgzZDBkMWI5MTU0
NyAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCisrKyBiL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtYnVmLmMNCkBAIC01Niw2ICs1Niw1MCBAQCBzdGF0aWMgY2hhciAqZG1hYnVm
ZnNfZG5hbWUoc3RydWN0IGRlbnRyeSAqZGVudHJ5LCBjaGFyICpidWZmZXIsIGludCBidWZsZW4p
DQogCQkJICAgICBkZW50cnktPmRfbmFtZS5uYW1lLCByZXQgPiAwID8gbmFtZSA6ICIiKTsNCiB9
DQogDQorI2lmZGVmIENPTkZJR19DR1JPVVBfR1BVDQorc3RhdGljIGlubGluZSBzdHJ1Y3QgZ3B1
Y2dfZGV2aWNlICoNCitleHBfaW5mb19ncHVjZ19kZXYoY29uc3Qgc3RydWN0IGRtYV9idWZfZXhw
b3J0X2luZm8gKmV4cF9pbmZvKQ0KK3sNCisJcmV0dXJuIGV4cF9pbmZvLT5ncHVjZ19kZXY7DQor
fQ0KKw0KK3N0YXRpYyBib29sIGRtYWJ1Zl90cnlfY2hhcmdlKHN0cnVjdCBkbWFfYnVmICpkbWFi
dWYsDQorCQkJICAgICAgc3RydWN0IGdwdWNnX2RldmljZSAqZ3B1Y2dfZGV2KQ0KK3sNCisJZG1h
YnVmLT5ncHVjZyA9IGdwdWNnX2dldChjdXJyZW50KTsNCisJZG1hYnVmLT5ncHVjZ19kZXYgPSBn
cHVjZ19kZXY7DQorCWlmIChncHVjZ190cnlfY2hhcmdlKGRtYWJ1Zi0+Z3B1Y2csIGRtYWJ1Zi0+
Z3B1Y2dfZGV2LCBkbWFidWYtPnNpemUpKSB7DQorCQlncHVjZ19wdXQoZG1hYnVmLT5ncHVjZyk7
DQorCQlkbWFidWYtPmdwdWNnID0gTlVMTDsNCisJCWRtYWJ1Zi0+Z3B1Y2dfZGV2ID0gTlVMTDsN
CisJCXJldHVybiBmYWxzZTsNCisJfQ0KKwlyZXR1cm4gdHJ1ZTsNCit9DQorDQorc3RhdGljIHZv
aWQgZG1hYnVmX3VuY2hhcmdlKHN0cnVjdCBkbWFfYnVmICpkbWFidWYpDQorew0KKwlpZiAoZG1h
YnVmLT5ncHVjZyAmJiBkbWFidWYtPmdwdWNnX2Rldikgew0KKwkJZ3B1Y2dfdW5jaGFyZ2UoZG1h
YnVmLT5ncHVjZywgZG1hYnVmLT5ncHVjZ19kZXYsIGRtYWJ1Zi0+c2l6ZSk7DQorCQlncHVjZ19w
dXQoZG1hYnVmLT5ncHVjZyk7DQorCX0NCit9DQorI2Vsc2UgLyogQ09ORklHX0NHUk9VUF9HUFUg
Ki8NCitzdGF0aWMgaW5saW5lIHN0cnVjdCBncHVjZ19kZXZpY2UgKmV4cF9pbmZvX2dwdWNnX2Rl
digNCitjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9leHBvcnRfaW5mbyAqZXhwX2luZm8pDQorew0KKwly
ZXR1cm4gTlVMTDsNCit9DQorDQorc3RhdGljIGlubGluZSBib29sIGRtYWJ1Zl90cnlfY2hhcmdl
KHN0cnVjdCBkbWFfYnVmICpkbWFidWYsDQorCQkJCSAgICAgc3RydWN0IGdwdWNnX2RldmljZSAq
Z3B1Y2dfZGV2KSkNCit7DQorCXJldHVybiBmYWxzZTsNCit9DQorDQorc3RhdGljIGlubGluZSB2
b2lkIGRtYWJ1Zl91bmNoYXJnZShzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmKSB7fQ0KKyNlbmRpZiAv
KiBDT05GSUdfQ0dST1VQX0dQVSAqLw0KKw0KIHN0YXRpYyB2b2lkIGRtYV9idWZfcmVsZWFzZShz
dHJ1Y3QgZGVudHJ5ICpkZW50cnkpDQogew0KIAlzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmOw0KQEAg
LTc5LDYgKzEyMyw4IEBAIHN0YXRpYyB2b2lkIGRtYV9idWZfcmVsZWFzZShzdHJ1Y3QgZGVudHJ5
ICpkZW50cnkpDQogCWlmIChkbWFidWYtPnJlc3YgPT0gKHN0cnVjdCBkbWFfcmVzdiAqKSZkbWFi
dWZbMV0pDQogCQlkbWFfcmVzdl9maW5pKGRtYWJ1Zi0+cmVzdik7DQogDQorCWRtYWJ1Zl91bmNo
YXJnZShkbWFidWYpOw0KKw0KIAlXQVJOX09OKCFsaXN0X2VtcHR5KCZkbWFidWYtPmF0dGFjaG1l
bnRzKSk7DQogCW1vZHVsZV9wdXQoZG1hYnVmLT5vd25lcik7DQogCWtmcmVlKGRtYWJ1Zi0+bmFt
ZSk7DQpAQCAtNDg0LDYgKzUzMCw3IEBAIHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmX2V4cG9ydChj
b25zdCBzdHJ1Y3QgZG1hX2J1Zl9leHBvcnRfaW5mbyAqZXhwX2luZm8pDQogew0KIAlzdHJ1Y3Qg
ZG1hX2J1ZiAqZG1hYnVmOw0KIAlzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YgPSBleHBfaW5mby0+cmVz
djsNCisJc3RydWN0IGdwdWNnX2RldmljZSAqZ3B1Y2dfZGV2ID0gZXhwX2luZm9fZ3B1Y2dfZGV2
KGV4cF9pbmZvKTsNCiAJc3RydWN0IGZpbGUgKmZpbGU7DQogCXNpemVfdCBhbGxvY19zaXplID0g
c2l6ZW9mKHN0cnVjdCBkbWFfYnVmKTsNCiAJaW50IHJldDsNCkBAIC01MzQsNiArNTgxLDkgQEAg
c3RydWN0IGRtYV9idWYgKmRtYV9idWZfZXhwb3J0KGNvbnN0IHN0cnVjdCBkbWFfYnVmX2V4cG9y
dF9pbmZvICpleHBfaW5mbykNCiAJfQ0KIAlkbWFidWYtPnJlc3YgPSByZXN2Ow0KIA0KKwlpZiAo
Z3B1Y2dfZGV2ICYmICFkbWFidWZfdHJ5X2NoYXJnZShkbWFidWYsIGdwdWNnX2RldikpDQorCQln
b3RvIGVycl9jaGFyZ2U7DQorDQogCWZpbGUgPSBkbWFfYnVmX2dldGZpbGUoZG1hYnVmLCBleHBf
aW5mby0+ZmxhZ3MpOw0KIAlpZiAoSVNfRVJSKGZpbGUpKSB7DQogCQlyZXQgPSBQVFJfRVJSKGZp
bGUpOw0KQEAgLTU2NSw2ICs2MTUsOCBAQCBzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1Zl9leHBvcnQo
Y29uc3Qgc3RydWN0IGRtYV9idWZfZXhwb3J0X2luZm8gKmV4cF9pbmZvKQ0KIAlmaWxlLT5mX3Bh
dGguZGVudHJ5LT5kX2ZzZGF0YSA9IE5VTEw7DQogCWZwdXQoZmlsZSk7DQogZXJyX2RtYWJ1ZjoN
CisJZG1hYnVmX3VuY2hhcmdlKGRtYWJ1Zik7DQorZXJyX2NoYXJnZToNCiAJa2ZyZWUoZG1hYnVm
KTsNCiBlcnJfbW9kdWxlOg0KIAltb2R1bGVfcHV0KGV4cF9pbmZvLT5vd25lcik7DQpkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0K
aW5kZXggN2FiNTAwNzZlN2E2Li43NDJmMjljM2RhYWYgMTAwNjQ0DQotLS0gYS9pbmNsdWRlL2xp
bnV4L2RtYS1idWYuaA0KKysrIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCkBAIC0xMyw2ICsx
Myw3IEBADQogI2lmbmRlZiBfX0RNQV9CVUZfSF9fDQogI2RlZmluZSBfX0RNQV9CVUZfSF9fDQog
DQorI2luY2x1ZGUgPGxpbnV4L2Nncm91cF9ncHUuaD4NCiAjaW5jbHVkZSA8bGludXgvZG1hLWJ1
Zi1tYXAuaD4NCiAjaW5jbHVkZSA8bGludXgvZmlsZS5oPg0KICNpbmNsdWRlIDxsaW51eC9lcnIu
aD4NCkBAIC0zMDMsNyArMzA0LDcgQEAgc3RydWN0IGRtYV9idWYgew0KIAkvKioNCiAJICogQHNp
emU6DQogCSAqDQotCSAqIFNpemUgb2YgdGhlIGJ1ZmZlcjsgaW52YXJpYW50IG92ZXIgdGhlIGxp
ZmV0aW1lIG9mIHRoZSBidWZmZXIuDQorCSAqIFNpemUgb2YgdGhlIGJ1ZmZlciBpbiBieXRlczsg
aW52YXJpYW50IG92ZXIgdGhlIGxpZmV0aW1lIG9mIHRoZSBidWZmZXIuDQogCSAqLw0KIAlzaXpl
X3Qgc2l6ZTsNCiANCkBAIC00NTMsNiArNDU0LDE3IEBAIHN0cnVjdCBkbWFfYnVmIHsNCiAJCXN0
cnVjdCBkbWFfYnVmICpkbWFidWY7DQogCX0gKnN5c2ZzX2VudHJ5Ow0KICNlbmRpZg0KKw0KKyNp
ZmRlZiBDT05GSUdfQ0dST1VQX0dQVQ0KKwkvKiogQGdwdWNnOiBQb2ludGVyIHRvIHRoZSBjZ3Jv
dXAgdGhpcyBidWZmZXIgY3VycmVudGx5IGJlbG9uZ3MgdG8uICovDQorCXN0cnVjdCBncHVjZyAq
Z3B1Y2c7DQorDQorCS8qKiBAZ3B1Y2dfZGV2Og0KKwkgKg0KKwkgKiBQb2ludGVyIHRvIHRoZSBj
Z3JvdXAgR1BVIGRldmljZSB3aGVuY2UgdGhpcyBidWZmZXIgb3JpZ2luYXRlcy4NCisJICovDQor
CXN0cnVjdCBncHVjZ19kZXZpY2UgKmdwdWNnX2RldjsNCisjZW5kaWYNCiB9Ow0KIA0KIC8qKg0K
QEAgLTUyOSw5ICs1NDEsMTAgQEAgc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCB7DQogICogQGV4
cF9uYW1lOgluYW1lIG9mIHRoZSBleHBvcnRlciAtIHVzZWZ1bCBmb3IgZGVidWdnaW5nLg0KICAq
IEBvd25lcjoJcG9pbnRlciB0byBleHBvcnRlciBtb2R1bGUgLSB1c2VkIGZvciByZWZjb3VudGlu
ZyBrZXJuZWwgbW9kdWxlDQogICogQG9wczoJQXR0YWNoIGFsbG9jYXRvci1kZWZpbmVkIGRtYSBi
dWYgb3BzIHRvIHRoZSBuZXcgYnVmZmVyDQotICogQHNpemU6CVNpemUgb2YgdGhlIGJ1ZmZlciAt
IGludmFyaWFudCBvdmVyIHRoZSBsaWZldGltZSBvZiB0aGUgYnVmZmVyDQorICogQHNpemU6CVNp
emUgb2YgdGhlIGJ1ZmZlciBpbiBieXRlcyAtIGludmFyaWFudCBvdmVyIHRoZSBsaWZldGltZSBv
ZiB0aGUgYnVmZmVyDQogICogQGZsYWdzOgltb2RlIGZsYWdzIGZvciB0aGUgZmlsZQ0KICAqIEBy
ZXN2OglyZXNlcnZhdGlvbi1vYmplY3QsIE5VTEwgdG8gYWxsb2NhdGUgZGVmYXVsdCBvbmUNCisg
KiBAZ3B1Y2dfZGV2Oglwb2ludGVyIHRvIHRoZSBncHUgY2dyb3VwIGRldmljZSB0aGlzIGJ1ZmZl
ciBiZWxvbmdzIHRvDQogICogQHByaXY6CUF0dGFjaCBwcml2YXRlIGRhdGEgb2YgYWxsb2NhdG9y
IHRvIHRoaXMgYnVmZmVyDQogICoNCiAgKiBUaGlzIHN0cnVjdHVyZSBob2xkcyB0aGUgaW5mb3Jt
YXRpb24gcmVxdWlyZWQgdG8gZXhwb3J0IHRoZSBidWZmZXIuIFVzZWQNCkBAIC01NDQsNiArNTU3
LDkgQEAgc3RydWN0IGRtYV9idWZfZXhwb3J0X2luZm8gew0KIAlzaXplX3Qgc2l6ZTsNCiAJaW50
IGZsYWdzOw0KIAlzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3Y7DQorI2lmZGVmIENPTkZJR19DR1JPVVBf
R1BVDQorCXN0cnVjdCBncHVjZ19kZXZpY2UgKmdwdWNnX2RldjsNCisjZW5kaWYNCiAJdm9pZCAq
cHJpdjsNCiB9Ow0KIA0KLS0gDQoyLjM1LjEuNjE2LmcwYmRjYmI0NDY0LWdvb2cNCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
