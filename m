Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 41ABE1644F0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Feb 2020 14:04:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 669FA618D2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Feb 2020 13:04:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 59A22619A8; Wed, 19 Feb 2020 13:04:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,SPOOFED_FREEMAIL autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8D4D2619E7;
	Wed, 19 Feb 2020 12:59:41 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3BBA7618D2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Feb 2020 12:59:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 31774619B4; Wed, 19 Feb 2020 12:59:21 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by lists.linaro.org (Postfix) with ESMTPS id B1E92618D2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Feb 2020 12:59:17 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id z7so362819wrl.13
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Feb 2020 04:59:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8j5/kNs2THmmZJqIvqiDhfvU0TM48N+fj+MtL6vI19M=;
 b=JJtvXT6eewNSJHYPvkktlbIEV64XvZbKBI359SqQ13ftkyce0dV8/P01iWQ2zT+IGR
 UzYD0b46cGuA96E9iQg7gLSep0+H1fk/eewcRrXRpDzXzGm3de7J90VS86UBSwG6k0V2
 0K31HGtkdK2D1G0ybAXJY6/YrYQDTeUoAVcgljeOl5RJmfTI8O8NbtURNkixYVbGt6XZ
 4S9oEVVm8TpJ1SFkaCJKEr3YIAHioK3kNl9hXljcFWue/fob4xuXEfc8KzybB3ub6+O4
 y2rsGE9C+ZmZQmzwcH+2MrTm4CBVxprNFa9bhjznbIuPH3HBUM+uSzlK2S0+x1VfkFz2
 68Pw==
X-Gm-Message-State: APjAAAUTDHuvi4h4uPmOrlkMHwgD/WoW+51aVnhCF4ZOyJOVH8AU6mMD
 8iA5FQoE1ytbSSE7oH3Cn/4=
X-Google-Smtp-Source: APXvYqyccjbJFlo0ApV1/Ph6tQqkttn13pN8Qrc+oUbYn50TU/Ft80EhI7pYqS8u1nGZCY4dlwAULw==
X-Received: by 2002:a5d:4a89:: with SMTP id o9mr34478332wrq.32.1582117156928; 
 Wed, 19 Feb 2020 04:59:16 -0800 (PST)
Received: from abel.fritz.box ([2a02:908:1252:fb60:90ea:9d7:18a3:895e])
 by smtp.gmail.com with ESMTPSA id h2sm3079024wrt.45.2020.02.19.04.59.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 04:59:16 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 daniel@ffwll.ch
Date: Wed, 19 Feb 2020 13:59:10 +0100
Message-Id: <20200219125910.89147-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219125910.89147-1-christian.koenig@amd.com>
References: <20200219125910.89147-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 7/7] dma-buf: make move_notify mandatory if
	importer_ops are provided
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhpcyBtYWtlcyB0aGUgbW92ZV9ub3RpZnkgY2FsbGJhY2sgbWFuZGF0b3J5IHdoZW4gdGhlIGlt
cG9ydGVyX29wcyBhcmUKcHJvdmlkZWQuIFNpbmNlIGFtZGdwdSBpcyBub3cgbWlncmF0ZWQgaXQg
ZG9lc24ndCBtYWtlIG11Y2ggc2Vuc2UKYW55bW9yZSB0byBhbGxvdyB0aGlzLgoKU2lnbmVkLW9m
Zi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRy
aXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCAxNSArKysrKysrLS0tLS0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCA3IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKaW5kZXggNmQw
YTgyZDFiMjNkLi5mNGFjZTlhZjIxOTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwpAQCAtNjc3LDEwICs2NzcsMTIg
QEAgZG1hX2J1Zl9keW5hbWljX2F0dGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3Qg
ZGV2aWNlICpkZXYsCiAJc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoOwogCWludCBy
ZXQ7CiAKLQkvKiBUT0RPOiBtYWtlIG1vdmVfbm90aWZ5IG1hbmRhdG9yeSBpZiBpbXBvcnRlcl9v
cHMgYXJlIHByb3ZpZGVkLiAqLwogCWlmIChXQVJOX09OKCFkbWFidWYgfHwgIWRldikpCiAJCXJl
dHVybiBFUlJfUFRSKC1FSU5WQUwpOwogCisJaWYgKFdBUk5fT04oaW1wb3J0ZXJfb3BzICYmICFp
bXBvcnRlcl9vcHMtPm1vdmVfbm90aWZ5KSkKKwkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7CisK
IAlhdHRhY2ggPSBremFsbG9jKHNpemVvZigqYXR0YWNoKSwgR0ZQX0tFUk5FTCk7CiAJaWYgKCFh
dHRhY2gpCiAJCXJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwpAQCAtODc3LDggKzg3OSw3IEBAIHN0
cnVjdCBzZ190YWJsZSAqZG1hX2J1Zl9tYXBfYXR0YWNobWVudChzdHJ1Y3QgZG1hX2J1Zl9hdHRh
Y2htZW50ICphdHRhY2gsCiAKIAlpZiAoZG1hX2J1Zl9pc19keW5hbWljKGF0dGFjaC0+ZG1hYnVm
KSkgewogCQlkbWFfcmVzdl9hc3NlcnRfaGVsZChhdHRhY2gtPmRtYWJ1Zi0+cmVzdik7Ci0JCWlm
ICghYXR0YWNoLT5pbXBvcnRlcl9vcHMtPm1vdmVfbm90aWZ5IHx8Ci0JCSAgICAhSVNfRU5BQkxF
RChDT05GSUdfRE1BQlVGX01PVkVfTk9USUZZKSkgeworCQlpZiAoIUlTX0VOQUJMRUQoQ09ORklH
X0RNQUJVRl9NT1ZFX05PVElGWSkpIHsKIAkJCXIgPSBkbWFfYnVmX3BpbihhdHRhY2gpOwogCQkJ
aWYgKHIpCiAJCQkJcmV0dXJuIEVSUl9QVFIocik7CkBAIC04OTAsOCArODkxLDcgQEAgc3RydWN0
IHNnX3RhYmxlICpkbWFfYnVmX21hcF9hdHRhY2htZW50KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1l
bnQgKmF0dGFjaCwKIAkJc2dfdGFibGUgPSBFUlJfUFRSKC1FTk9NRU0pOwogCiAJaWYgKElTX0VS
UihzZ190YWJsZSkgJiYgZG1hX2J1Zl9pc19keW5hbWljKGF0dGFjaC0+ZG1hYnVmKSAmJgotCSAg
ICAoIWF0dGFjaC0+aW1wb3J0ZXJfb3BzLT5tb3ZlX25vdGlmeSB8fAotCSAgICAgIUlTX0VOQUJM
RUQoQ09ORklHX0RNQUJVRl9NT1ZFX05PVElGWSkpKQorCSAgICAgIUlTX0VOQUJMRUQoQ09ORklH
X0RNQUJVRl9NT1ZFX05PVElGWSkpCiAJCWRtYV9idWZfdW5waW4oYXR0YWNoKTsKIAogCWlmICgh
SVNfRVJSKHNnX3RhYmxlKSAmJiBhdHRhY2gtPmRtYWJ1Zi0+b3BzLT5jYWNoZV9zZ3RfbWFwcGlu
ZykgewpAQCAtOTM0LDggKzkzNCw3IEBAIHZvaWQgZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50KHN0
cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwKIAlhdHRhY2gtPmRtYWJ1Zi0+b3BzLT51
bm1hcF9kbWFfYnVmKGF0dGFjaCwgc2dfdGFibGUsIGRpcmVjdGlvbik7CiAKIAlpZiAoZG1hX2J1
Zl9pc19keW5hbWljKGF0dGFjaC0+ZG1hYnVmKSAmJgotCSAgICAoIWF0dGFjaC0+aW1wb3J0ZXJf
b3BzLT5tb3ZlX25vdGlmeSB8fAotCSAgICAgIUlTX0VOQUJMRUQoQ09ORklHX0RNQUJVRl9NT1ZF
X05PVElGWSkpKQorCSAgICAhSVNfRU5BQkxFRChDT05GSUdfRE1BQlVGX01PVkVfTk9USUZZKSkK
IAkJZG1hX2J1Zl91bnBpbihhdHRhY2gpOwogfQogRVhQT1JUX1NZTUJPTF9HUEwoZG1hX2J1Zl91
bm1hcF9hdHRhY2htZW50KTsKQEAgLTk1NSw3ICs5NTQsNyBAQCB2b2lkIGRtYV9idWZfbW92ZV9u
b3RpZnkoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikKIAlkbWFfcmVzdl9hc3NlcnRfaGVsZChkbWFi
dWYtPnJlc3YpOwogCiAJbGlzdF9mb3JfZWFjaF9lbnRyeShhdHRhY2gsICZkbWFidWYtPmF0dGFj
aG1lbnRzLCBub2RlKQotCQlpZiAoYXR0YWNoLT5pbXBvcnRlcl9vcHMgJiYgYXR0YWNoLT5pbXBv
cnRlcl9vcHMtPm1vdmVfbm90aWZ5KQorCQlpZiAoYXR0YWNoLT5pbXBvcnRlcl9vcHMpCiAJCQlh
dHRhY2gtPmltcG9ydGVyX29wcy0+bW92ZV9ub3RpZnkoYXR0YWNoKTsKIH0KIEVYUE9SVF9TWU1C
T0xfR1BMKGRtYV9idWZfbW92ZV9ub3RpZnkpOwotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3Jn
L21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
