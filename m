Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD1C41EAA7
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 12:08:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B4586A97D
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 10:08:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 526F36A947; Fri,  1 Oct 2021 10:08:34 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6DE516328C;
	Fri,  1 Oct 2021 10:08:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D08FE63392
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 20493631AA; Fri,  1 Oct 2021 10:06:44 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by lists.linaro.org (Postfix) with ESMTPS id 483AD62434
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:35 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id v17so14582058wrv.9
 for <linaro-mm-sig@lists.linaro.org>; Fri, 01 Oct 2021 03:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=embkrJo3e9xiJFTU9PfC3+rsuixYC3ybu+PUBE5n6do=;
 b=Q5fsXjqZacYAaNCcYSLJtyR71stnzbiX9gtPzj7ceKIeRysoqMaOtUNllAvvgd2ZoQ
 Sc5D057EX2p+NDRuTem2faYmnkbO43kWuIuS+RbsMlLREQ+P22kmAFgGUaFzNec5ugqD
 OLcj30xorhSLnNJLon3PdbY0boGcwnhVrvYCH2+GauY5bybmqLL9cylzhgca4EhRe7hh
 f+Ko3Dix7MvOGdih49HSBRBf8jlQIzNadjJ63NOeUnw/DcptLjx6EvXSlvHWyyGq4jac
 ze1k0PdHgLhw1ssuJI6N5O89xBmMlrlY1L4Tcr8UXVl2/OLehgJE25IVdX+WbI9UVv2A
 pOZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=embkrJo3e9xiJFTU9PfC3+rsuixYC3ybu+PUBE5n6do=;
 b=Gy3cdRwP7IaLM0XnrRsR3X0sTi0FRtZkL6UNwe554L+p5Q0+leNCt+jm14e3jtXS60
 zZB2+u+fM7Ct44GlGS1Wzhj5/pIoBk+zPS8dapO8AfHWaAAIbzsCGROav0HU8Uc2iZle
 uZD6SqxpE8OEfhkIz81h4dgtAU/hiwyFOdVd2hMBhYAMk5G9Yjkw3KuzWpjqLmEiUth3
 O/1hZWZU8Ge/9wUHAXco15Xo3TkrwatYBHc9jrTp5LozBqUFo/hZd0LTT/QuxQNPlK+w
 4Y1OdNxpUgObtHxlklNW+ZQ5wDr8oIFWYAKWcXPfE59Z8mHpTtGOS3Y3WLjx3wKiEEVh
 LJGw==
X-Gm-Message-State: AOAM531Ed8bs3gEq7NUYGRMjVbIn1IX5DF2lRcHWrVv1XgCiyrRLvb5x
 G9SJEXUm6skLOVv+vY5beTR2w1dnpzY=
X-Google-Smtp-Source: ABdhPJyyVqiekh0Qo/9t/1Ebo4yekIFwSNoQ4xwKqMx7ARLoWIBrbcftHj6Gp3duatEx2cQ8mnEMNQ==
X-Received: by 2002:a05:6000:2cd:: with SMTP id
 o13mr11033052wry.193.1633082794324; 
 Fri, 01 Oct 2021 03:06:34 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 v17sm5746069wro.34.2021.10.01.03.06.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Oct 2021 03:06:34 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri,  1 Oct 2021 12:06:06 +0200
Message-Id: <20211001100610.2899-25-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211001100610.2899-1-christian.koenig@amd.com>
References: <20211001100610.2899-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 24/28] drm: use new iterator in
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
