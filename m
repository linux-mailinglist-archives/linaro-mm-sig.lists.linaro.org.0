Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D3F4B806B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 07:16:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 560503ED6F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 06:16:03 +0000 (UTC)
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	by lists.linaro.org (Postfix) with ESMTPS id D791D3EDFB
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 16:18:58 +0000 (UTC)
Received: by mail-yb1-f202.google.com with SMTP id h6-20020a253a06000000b0061de83305f2so19668636yba.19
        for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 08:18:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:content-transfer-encoding;
        bh=sjycs3J1raw78h/CcVrcAvxXNJMm38YGwWJkg+hcSJk=;
        b=HCicQU9wOvrep9Zko1Sp6f1kcNJH7vA3zXU3TjVhgtj7ecoJwQbiD5zNwlfXKnd3Uk
         fKTPKQahF2g4Y6Yl7OC7kdWe7Xj8Eip01fQ6bgZwKtUVfM3OdrQeD+P6IfjP4J6lHMxA
         3Wd8KCv9vSHVzLrGft5zgckgtzVcnmXlHGqDJHcNNED707tgW9lJ0MnWqLKY0kp2dvQ/
         UUurtSGmuV/6T387NDPTkYw+EQTiIjeuuZAohK9DBXj7o64/5JeY3gPt76JuMQ8y3+Fu
         NHs0H9pPGSnyHfRViau6furuWINKT4TIcOBlhZR4UuboJcrJaNNaihVZN+Vu6nhzK9qs
         mgTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:content-transfer-encoding;
        bh=sjycs3J1raw78h/CcVrcAvxXNJMm38YGwWJkg+hcSJk=;
        b=dOHEXiMozX3D0C6DUnpAMnxkYlKop558RIVQfjqZ+n+AHt0fwvD5dI2A/+3V73FaT2
         IRIIRZ0sAMMH/iyMpiIX4MfLlgaAWgo/u9fQkHSqiGuTOTLwKYMHTNSN/u1ot9EcRPNU
         E3xE8crkKIV7Z+oIlKX8ItSzfNqhDTs65SAn2D/6xVmoa/bu700X+ncCQPKuFP0prwL0
         yhHBxJcoDYW3TAqhiOBzgH5863F3v2dOYxcW8vHKSql7xEl+anbmswVGn22KYDc9WN2l
         aJmaQsqiclNI9QvmtP0s9NP9xRmAZqiE9GHH83O8RW1QvKEdI5zoXfyKXfGRxO9eDnvC
         oZiQ==
X-Gm-Message-State: AOAM533rK1UuYi17PcZzC3P3edEXrXCqIxrgntmrYw9dI3TpnSmmsaF/
	etGKoBv6lmsSouywin6vm66yjaU8j8aUEWM=
X-Google-Smtp-Source: ABdhPJyO8mB9+1hjpEI4c2iys3oGoAzHpKFN+ZZyeFAfnRemdzA9D7jOCwPVue2W9QmLyraSfSF4AB2bqc0vndI=
X-Received: from tj2.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:187])
 (user=tjmercier job=sendgmr) by 2002:a81:ae0c:: with SMTP id
 m12mr2454548ywh.19.1644596338464; Fri, 11 Feb 2022 08:18:58 -0800 (PST)
Date: Fri, 11 Feb 2022 16:18:26 +0000
In-Reply-To: <20220211161831.3493782-1-tjmercier@google.com>
Message-Id: <20220211161831.3493782-4-tjmercier@google.com>
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
X-MailFrom: 3cowGYgkKDbsuknfsdjfshpphmf.dpnmjobsp-nn-tjhmjtut.mjobsp.psh@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WPHID6N3Q45DJOZ4DPBK3F3CTEZN7U25
X-Message-ID-Hash: WPHID6N3Q45DJOZ4DPBK3F3CTEZN7U25
X-Mailman-Approved-At: Wed, 16 Feb 2022 06:15:38 +0000
CC: kaleshsingh@google.com, Kenny.Ho@amd.com, "T.J. Mercier" <tjmercier@google.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC v2 3/6] dmabuf: Use the GPU cgroup charge/uncharge APIs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WPHID6N3Q45DJOZ4DPBK3F3CTEZN7U25/>
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
YWxsIHJlZmVyZW5jZXMgdG8gYQ0KYnVmZmVyLg0KDQpGcm9tOiBIcmlkeWEgVmFsc2FyYWp1IDxo
cmlkeWFAZ29vZ2xlLmNvbT4NClNpZ25lZC1vZmYtYnk6IEhyaWR5YSBWYWxzYXJhanUgPGhyaWR5
YUBnb29nbGUuY29tPg0KQ28tZGV2ZWxvcGVkLWJ5OiBULkouIE1lcmNpZXIgPHRqbWVyY2llckBn
b29nbGUuY29tPg0KU2lnbmVkLW9mZi1ieTogVC5KLiBNZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xl
LmNvbT4NCi0tLQ0KY2hhbmdlcyBpbiB2Mg0KLSBNb3ZlIGRtYS1idWYgY2dyb3VwIGNoYXJnaW5n
L3VuY2hhcmdpbmcgZnJvbSBhIGRtYV9idWZfb3AgZGVmaW5lZCBieSBldmVyeQ0KaGVhcCB0byBh
IHNpbmdsZSBkbWEtYnVmIGZ1bmN0aW9uIGZvciBhbGwgaGVhcHMgcGVyIERhbmllbCBWZXR0ZXIg
YW5kDQpDaHJpc3RpYW4gS8O2bmlnLg0KDQogZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDUy
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KIGluY2x1ZGUvbGludXgv
ZG1hLWJ1Zi5oICAgfCAyMCArKysrKysrKysrKysrLS0NCiAyIGZpbGVzIGNoYW5nZWQsIDcwIGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1i
dWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KaW5kZXggNjAyYjEyZDc0
NzBkLi44M2QwZDFiOTE1NDcgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5j
DQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQpAQCAtNTYsNiArNTYsNTAgQEAgc3Rh
dGljIGNoYXIgKmRtYWJ1ZmZzX2RuYW1lKHN0cnVjdCBkZW50cnkgKmRlbnRyeSwgY2hhciAqYnVm
ZmVyLCBpbnQgYnVmbGVuKQ0KIAkJCSAgICAgZGVudHJ5LT5kX25hbWUubmFtZSwgcmV0ID4gMCA/
IG5hbWUgOiAiIik7DQogfQ0KIA0KKyNpZmRlZiBDT05GSUdfQ0dST1VQX0dQVQ0KK3N0YXRpYyBp
bmxpbmUgc3RydWN0IGdwdWNnX2RldmljZSAqDQorZXhwX2luZm9fZ3B1Y2dfZGV2KGNvbnN0IHN0
cnVjdCBkbWFfYnVmX2V4cG9ydF9pbmZvICpleHBfaW5mbykNCit7DQorCXJldHVybiBleHBfaW5m
by0+Z3B1Y2dfZGV2Ow0KK30NCisNCitzdGF0aWMgYm9vbCBkbWFidWZfdHJ5X2NoYXJnZShzdHJ1
Y3QgZG1hX2J1ZiAqZG1hYnVmLA0KKwkJCSAgICAgIHN0cnVjdCBncHVjZ19kZXZpY2UgKmdwdWNn
X2RldikNCit7DQorCWRtYWJ1Zi0+Z3B1Y2cgPSBncHVjZ19nZXQoY3VycmVudCk7DQorCWRtYWJ1
Zi0+Z3B1Y2dfZGV2ID0gZ3B1Y2dfZGV2Ow0KKwlpZiAoZ3B1Y2dfdHJ5X2NoYXJnZShkbWFidWYt
PmdwdWNnLCBkbWFidWYtPmdwdWNnX2RldiwgZG1hYnVmLT5zaXplKSkgew0KKwkJZ3B1Y2dfcHV0
KGRtYWJ1Zi0+Z3B1Y2cpOw0KKwkJZG1hYnVmLT5ncHVjZyA9IE5VTEw7DQorCQlkbWFidWYtPmdw
dWNnX2RldiA9IE5VTEw7DQorCQlyZXR1cm4gZmFsc2U7DQorCX0NCisJcmV0dXJuIHRydWU7DQor
fQ0KKw0KK3N0YXRpYyB2b2lkIGRtYWJ1Zl91bmNoYXJnZShzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVm
KQ0KK3sNCisJaWYgKGRtYWJ1Zi0+Z3B1Y2cgJiYgZG1hYnVmLT5ncHVjZ19kZXYpIHsNCisJCWdw
dWNnX3VuY2hhcmdlKGRtYWJ1Zi0+Z3B1Y2csIGRtYWJ1Zi0+Z3B1Y2dfZGV2LCBkbWFidWYtPnNp
emUpOw0KKwkJZ3B1Y2dfcHV0KGRtYWJ1Zi0+Z3B1Y2cpOw0KKwl9DQorfQ0KKyNlbHNlIC8qIENP
TkZJR19DR1JPVVBfR1BVICovDQorc3RhdGljIGlubGluZSBzdHJ1Y3QgZ3B1Y2dfZGV2aWNlICpl
eHBfaW5mb19ncHVjZ19kZXYoDQorY29uc3Qgc3RydWN0IGRtYV9idWZfZXhwb3J0X2luZm8gKmV4
cF9pbmZvKQ0KK3sNCisJcmV0dXJuIE5VTEw7DQorfQ0KKw0KK3N0YXRpYyBpbmxpbmUgYm9vbCBk
bWFidWZfdHJ5X2NoYXJnZShzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLA0KKwkJCQkgICAgIHN0cnVj
dCBncHVjZ19kZXZpY2UgKmdwdWNnX2RldikpDQorew0KKwlyZXR1cm4gZmFsc2U7DQorfQ0KKw0K
K3N0YXRpYyBpbmxpbmUgdm9pZCBkbWFidWZfdW5jaGFyZ2Uoc3RydWN0IGRtYV9idWYgKmRtYWJ1
Zikge30NCisjZW5kaWYgLyogQ09ORklHX0NHUk9VUF9HUFUgKi8NCisNCiBzdGF0aWMgdm9pZCBk
bWFfYnVmX3JlbGVhc2Uoc3RydWN0IGRlbnRyeSAqZGVudHJ5KQ0KIHsNCiAJc3RydWN0IGRtYV9i
dWYgKmRtYWJ1ZjsNCkBAIC03OSw2ICsxMjMsOCBAQCBzdGF0aWMgdm9pZCBkbWFfYnVmX3JlbGVh
c2Uoc3RydWN0IGRlbnRyeSAqZGVudHJ5KQ0KIAlpZiAoZG1hYnVmLT5yZXN2ID09IChzdHJ1Y3Qg
ZG1hX3Jlc3YgKikmZG1hYnVmWzFdKQ0KIAkJZG1hX3Jlc3ZfZmluaShkbWFidWYtPnJlc3YpOw0K
IA0KKwlkbWFidWZfdW5jaGFyZ2UoZG1hYnVmKTsNCisNCiAJV0FSTl9PTighbGlzdF9lbXB0eSgm
ZG1hYnVmLT5hdHRhY2htZW50cykpOw0KIAltb2R1bGVfcHV0KGRtYWJ1Zi0+b3duZXIpOw0KIAlr
ZnJlZShkbWFidWYtPm5hbWUpOw0KQEAgLTQ4NCw2ICs1MzAsNyBAQCBzdHJ1Y3QgZG1hX2J1ZiAq
ZG1hX2J1Zl9leHBvcnQoY29uc3Qgc3RydWN0IGRtYV9idWZfZXhwb3J0X2luZm8gKmV4cF9pbmZv
KQ0KIHsNCiAJc3RydWN0IGRtYV9idWYgKmRtYWJ1ZjsNCiAJc3RydWN0IGRtYV9yZXN2ICpyZXN2
ID0gZXhwX2luZm8tPnJlc3Y7DQorCXN0cnVjdCBncHVjZ19kZXZpY2UgKmdwdWNnX2RldiA9IGV4
cF9pbmZvX2dwdWNnX2RldihleHBfaW5mbyk7DQogCXN0cnVjdCBmaWxlICpmaWxlOw0KIAlzaXpl
X3QgYWxsb2Nfc2l6ZSA9IHNpemVvZihzdHJ1Y3QgZG1hX2J1Zik7DQogCWludCByZXQ7DQpAQCAt
NTM0LDYgKzU4MSw5IEBAIHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmX2V4cG9ydChjb25zdCBzdHJ1
Y3QgZG1hX2J1Zl9leHBvcnRfaW5mbyAqZXhwX2luZm8pDQogCX0NCiAJZG1hYnVmLT5yZXN2ID0g
cmVzdjsNCiANCisJaWYgKGdwdWNnX2RldiAmJiAhZG1hYnVmX3RyeV9jaGFyZ2UoZG1hYnVmLCBn
cHVjZ19kZXYpKQ0KKwkJZ290byBlcnJfY2hhcmdlOw0KKw0KIAlmaWxlID0gZG1hX2J1Zl9nZXRm
aWxlKGRtYWJ1ZiwgZXhwX2luZm8tPmZsYWdzKTsNCiAJaWYgKElTX0VSUihmaWxlKSkgew0KIAkJ
cmV0ID0gUFRSX0VSUihmaWxlKTsNCkBAIC01NjUsNiArNjE1LDggQEAgc3RydWN0IGRtYV9idWYg
KmRtYV9idWZfZXhwb3J0KGNvbnN0IHN0cnVjdCBkbWFfYnVmX2V4cG9ydF9pbmZvICpleHBfaW5m
bykNCiAJZmlsZS0+Zl9wYXRoLmRlbnRyeS0+ZF9mc2RhdGEgPSBOVUxMOw0KIAlmcHV0KGZpbGUp
Ow0KIGVycl9kbWFidWY6DQorCWRtYWJ1Zl91bmNoYXJnZShkbWFidWYpOw0KK2Vycl9jaGFyZ2U6
DQogCWtmcmVlKGRtYWJ1Zik7DQogZXJyX21vZHVsZToNCiAJbW9kdWxlX3B1dChleHBfaW5mby0+
b3duZXIpOw0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS9s
aW51eC9kbWEtYnVmLmgNCmluZGV4IDdhYjUwMDc2ZTdhNi4uNzQyZjI5YzNkYWFmIDEwMDY0NA0K
LS0tIGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLWJ1
Zi5oDQpAQCAtMTMsNiArMTMsNyBAQA0KICNpZm5kZWYgX19ETUFfQlVGX0hfXw0KICNkZWZpbmUg
X19ETUFfQlVGX0hfXw0KIA0KKyNpbmNsdWRlIDxsaW51eC9jZ3JvdXBfZ3B1Lmg+DQogI2luY2x1
ZGUgPGxpbnV4L2RtYS1idWYtbWFwLmg+DQogI2luY2x1ZGUgPGxpbnV4L2ZpbGUuaD4NCiAjaW5j
bHVkZSA8bGludXgvZXJyLmg+DQpAQCAtMzAzLDcgKzMwNCw3IEBAIHN0cnVjdCBkbWFfYnVmIHsN
CiAJLyoqDQogCSAqIEBzaXplOg0KIAkgKg0KLQkgKiBTaXplIG9mIHRoZSBidWZmZXI7IGludmFy
aWFudCBvdmVyIHRoZSBsaWZldGltZSBvZiB0aGUgYnVmZmVyLg0KKwkgKiBTaXplIG9mIHRoZSBi
dWZmZXIgaW4gYnl0ZXM7IGludmFyaWFudCBvdmVyIHRoZSBsaWZldGltZSBvZiB0aGUgYnVmZmVy
Lg0KIAkgKi8NCiAJc2l6ZV90IHNpemU7DQogDQpAQCAtNDUzLDYgKzQ1NCwxNyBAQCBzdHJ1Y3Qg
ZG1hX2J1ZiB7DQogCQlzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmOw0KIAl9ICpzeXNmc19lbnRyeTsN
CiAjZW5kaWYNCisNCisjaWZkZWYgQ09ORklHX0NHUk9VUF9HUFUNCisJLyoqIEBncHVjZzogUG9p
bnRlciB0byB0aGUgY2dyb3VwIHRoaXMgYnVmZmVyIGN1cnJlbnRseSBiZWxvbmdzIHRvLiAqLw0K
KwlzdHJ1Y3QgZ3B1Y2cgKmdwdWNnOw0KKw0KKwkvKiogQGdwdWNnX2RldjoNCisJICoNCisJICog
UG9pbnRlciB0byB0aGUgY2dyb3VwIEdQVSBkZXZpY2Ugd2hlbmNlIHRoaXMgYnVmZmVyIG9yaWdp
bmF0ZXMuDQorCSAqLw0KKwlzdHJ1Y3QgZ3B1Y2dfZGV2aWNlICpncHVjZ19kZXY7DQorI2VuZGlm
DQogfTsNCiANCiAvKioNCkBAIC01MjksOSArNTQxLDEwIEBAIHN0cnVjdCBkbWFfYnVmX2F0dGFj
aG1lbnQgew0KICAqIEBleHBfbmFtZToJbmFtZSBvZiB0aGUgZXhwb3J0ZXIgLSB1c2VmdWwgZm9y
IGRlYnVnZ2luZy4NCiAgKiBAb3duZXI6CXBvaW50ZXIgdG8gZXhwb3J0ZXIgbW9kdWxlIC0gdXNl
ZCBmb3IgcmVmY291bnRpbmcga2VybmVsIG1vZHVsZQ0KICAqIEBvcHM6CUF0dGFjaCBhbGxvY2F0
b3ItZGVmaW5lZCBkbWEgYnVmIG9wcyB0byB0aGUgbmV3IGJ1ZmZlcg0KLSAqIEBzaXplOglTaXpl
IG9mIHRoZSBidWZmZXIgLSBpbnZhcmlhbnQgb3ZlciB0aGUgbGlmZXRpbWUgb2YgdGhlIGJ1ZmZl
cg0KKyAqIEBzaXplOglTaXplIG9mIHRoZSBidWZmZXIgaW4gYnl0ZXMgLSBpbnZhcmlhbnQgb3Zl
ciB0aGUgbGlmZXRpbWUgb2YgdGhlIGJ1ZmZlcg0KICAqIEBmbGFnczoJbW9kZSBmbGFncyBmb3Ig
dGhlIGZpbGUNCiAgKiBAcmVzdjoJcmVzZXJ2YXRpb24tb2JqZWN0LCBOVUxMIHRvIGFsbG9jYXRl
IGRlZmF1bHQgb25lDQorICogQGdwdWNnX2RldjoJcG9pbnRlciB0byB0aGUgZ3B1IGNncm91cCBk
ZXZpY2UgdGhpcyBidWZmZXIgYmVsb25ncyB0bw0KICAqIEBwcml2OglBdHRhY2ggcHJpdmF0ZSBk
YXRhIG9mIGFsbG9jYXRvciB0byB0aGlzIGJ1ZmZlcg0KICAqDQogICogVGhpcyBzdHJ1Y3R1cmUg
aG9sZHMgdGhlIGluZm9ybWF0aW9uIHJlcXVpcmVkIHRvIGV4cG9ydCB0aGUgYnVmZmVyLiBVc2Vk
DQpAQCAtNTQ0LDYgKzU1Nyw5IEBAIHN0cnVjdCBkbWFfYnVmX2V4cG9ydF9pbmZvIHsNCiAJc2l6
ZV90IHNpemU7DQogCWludCBmbGFnczsNCiAJc3RydWN0IGRtYV9yZXN2ICpyZXN2Ow0KKyNpZmRl
ZiBDT05GSUdfQ0dST1VQX0dQVQ0KKwlzdHJ1Y3QgZ3B1Y2dfZGV2aWNlICpncHVjZ19kZXY7DQor
I2VuZGlmDQogCXZvaWQgKnByaXY7DQogfTsNCiANCi0tIA0KMi4zNS4xLjI2NS5nNjljOGQ3MTQy
Zi1nb29nDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
