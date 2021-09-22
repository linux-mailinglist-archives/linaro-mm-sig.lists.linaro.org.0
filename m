Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C6A4144E2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 11:12:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B1CF0619CF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 09:12:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0790B619C2; Wed, 22 Sep 2021 09:12:21 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 677C367E2E;
	Wed, 22 Sep 2021 09:12:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A4E1961805
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:11:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D201761A48; Wed, 22 Sep 2021 09:11:11 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id 2F1D461ECD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:11:08 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id w29so4624894wra.8
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 02:11:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=embkrJo3e9xiJFTU9PfC3+rsuixYC3ybu+PUBE5n6do=;
 b=F49lYkFnegWrd3qlgnPML+3pWBFlCxQi8hPaL3IkY/T2Pu5Uk48yZxjGan3ZATjgup
 C5QHTbAIRs6YBAYc5r+6aCxI6MlQd7EoU6PCUc1gWbKrwZGdNgIXh0k3NQY/6eRyP/L9
 p+P5/V8ruIZgg+g3JbYRDaqsT5mnV+cO72Y9jRWnJQErZFwER5hxnwlSdyEcO5pNXPAo
 NzrWk8jy4KYGg42GWQb4iEMnMcxFUzTTs+QaE7e1czoM2oziMOMAzK2q9Y0rHgKcjncy
 54enIupRT4JkkAKl5i9mWHFyExSYKKv6xTS244XoWaAzZbtHlupuZGVtqQ31O+ai1Gh9
 e+Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=embkrJo3e9xiJFTU9PfC3+rsuixYC3ybu+PUBE5n6do=;
 b=pPXYiqQRKqgGJ/4ExkoInIxN8QfD2KuA09liN4Yth/uyopDq/TzanTRUI5I6UkVd65
 2QGn1Fwy9BTfF1fFhAQCIX5Yjf3LYnsN7tfqpgFHoEfoOc1hdpJCAT0MrkfQRkhLcd+U
 cwg6xwZeXyAOoKoTRFx0ptUNB0APRuZ57z2O+SmE2PRdkv54Ra7/GC2Cbeh4mkH1qGIy
 J2BSEewJ1/utlFtOLFOD6ovStz5WuIINIM7vaYDvUChGo/VYjY5qSAFTuGsp/1oo0p94
 0p62OY5y5ctu3DWBXd8khlC02gXjHnMAHYEP/ov19JK1Abyuml5VwTB4ItKk1uLpydxr
 echg==
X-Gm-Message-State: AOAM530PL8bbHcOZuTJObXenrfLsjrvWOhuknaiLac47EI0WhqvrdkZg
 IHm+lbcjlM4UYskMXHyc/gIHdYfKWkM=
X-Google-Smtp-Source: ABdhPJxij0X4NLln6Bo5kmljRQhXFJ9MHnIUuxMtJ74eTJreF8hiz8KXvjUOfJEZ57PoSPjj7S6XKg==
X-Received: by 2002:adf:dc43:: with SMTP id m3mr22345425wrj.66.1632301867335; 
 Wed, 22 Sep 2021 02:11:07 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 r25sm1535515wra.76.2021.09.22.02.11.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 02:11:06 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 11:10:39 +0200
Message-Id: <20210922091044.2612-22-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210922091044.2612-1-christian.koenig@amd.com>
References: <20210922091044.2612-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 21/26] drm: use new iterator in
 drm_gem_plane_helper_prepare_fb
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

TWFrZXMgdGhlIGhhbmRsaW5nIGEgYml0IG1vcmUgY29tcGxleCwgYnV0IGF2b2lkcyB0aGUgdXNl
IG9mCmRtYV9yZXN2X2dldF9leGNsX3VubG9ja2VkKCkuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2RybV9nZW1fYXRvbWljX2hlbHBlci5jIHwgMTMgKysrKysrKysrKystLQogMSBmaWxlIGNoYW5n
ZWQsIDExIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2RybV9nZW1fYXRvbWljX2hlbHBlci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9n
ZW1fYXRvbWljX2hlbHBlci5jCmluZGV4IGU1NzAzOThhYmQ3OC4uMjFlZDkzMDA0MmI4IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9hdG9taWNfaGVscGVyLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2RybV9nZW1fYXRvbWljX2hlbHBlci5jCkBAIC0xNDMsNiArMTQzLDcgQEAK
ICAqLwogaW50IGRybV9nZW1fcGxhbmVfaGVscGVyX3ByZXBhcmVfZmIoc3RydWN0IGRybV9wbGFu
ZSAqcGxhbmUsIHN0cnVjdCBkcm1fcGxhbmVfc3RhdGUgKnN0YXRlKQogeworCXN0cnVjdCBkbWFf
cmVzdl9pdGVyIGN1cnNvcjsKIAlzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iajsKIAlzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZTsKIApAQCAtMTUwLDkgKzE1MSwxNyBAQCBpbnQgZHJtX2dlbV9wbGFu
ZV9oZWxwZXJfcHJlcGFyZV9mYihzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwgc3RydWN0IGRybV9w
bGFuZV9zdAogCQlyZXR1cm4gMDsKIAogCW9iaiA9IGRybV9nZW1fZmJfZ2V0X29iaihzdGF0ZS0+
ZmIsIDApOwotCWZlbmNlID0gZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQob2JqLT5yZXN2KTsK
LQlkcm1fYXRvbWljX3NldF9mZW5jZV9mb3JfcGxhbmUoc3RhdGUsIGZlbmNlKTsKKwlkbWFfcmVz
dl9pdGVyX2JlZ2luKCZjdXJzb3IsIG9iai0+cmVzdiwgZmFsc2UpOworCWRtYV9yZXN2X2Zvcl9l
YWNoX2ZlbmNlX3VubG9ja2VkKCZjdXJzb3IsIGZlbmNlKSB7CisJCWRtYV9mZW5jZV9nZXQoZmVu
Y2UpOworCQlkbWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsKKwkJLyogVE9ETzogV2Ugb25seSB1
c2UgdGhlIGZpcnN0IHdyaXRlIGZlbmNlIGhlcmUgKi8KKwkJZHJtX2F0b21pY19zZXRfZmVuY2Vf
Zm9yX3BsYW5lKHN0YXRlLCBmZW5jZSk7CisJCXJldHVybiAwOworCX0KKwlkbWFfcmVzdl9pdGVy
X2VuZCgmY3Vyc29yKTsKIAorCWRybV9hdG9taWNfc2V0X2ZlbmNlX2Zvcl9wbGFuZShzdGF0ZSwg
TlVMTCk7CiAJcmV0dXJuIDA7CiB9CiBFWFBPUlRfU1lNQk9MX0dQTChkcm1fZ2VtX3BsYW5lX2hl
bHBlcl9wcmVwYXJlX2ZiKTsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbmFyby1tbS1zaWcK
