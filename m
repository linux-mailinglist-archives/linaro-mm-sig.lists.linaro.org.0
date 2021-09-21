Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE3C4138BD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 19:38:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6F7496197A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 17:38:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 13C9D61976; Tue, 21 Sep 2021 17:38:51 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 506DA62EA0;
	Tue, 21 Sep 2021 17:38:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E989F612A6
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0AF2361523; Tue, 21 Sep 2021 17:37:29 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id A7A6E631B3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:24 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id w29so41598979wra.8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 10:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=embkrJo3e9xiJFTU9PfC3+rsuixYC3ybu+PUBE5n6do=;
 b=Fky4pf4ngQguMJBw1bj6vYQCTyG249/SrogqIKPRbmf5GRnkG5Fd8rGoJAbHx4UJva
 GlDBpCf21MvVefbquWTEGm1LEqqPX4SOD3D+WPpJPtd1DoDACKV6/VHDn8WeAXDhspia
 9RApRTJljhGb7ldXlRsVnNiXe7hxzc0SdNkpdNSAhUkE1XAbPf8Ft680BZH3UNcfRr0/
 MMIks68SCcCU5hpihva7eobNBM+NunbzBK8500je4cbZbxaNJ+xT91XOpqJXReXLqTqF
 EmBr8gzM9mMuIlHfQnavQSqhQMwCdt8zLpwSSa2gg92VdGVMpZiQDdWhzVP1/SFmicQt
 kxHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=embkrJo3e9xiJFTU9PfC3+rsuixYC3ybu+PUBE5n6do=;
 b=tx7ic0+ZWolHMYuF70PbkZNmXZgSk277fxusUSJs2mrtoRphnFjtTrqrl1OWVhFOqE
 iE35qUPn2aPltmYLW8foo0K4zj7f1lZWDwT2FtRKle5CH12ZnDF1VwqbyBLTeZJrfrCn
 QXT05CzuSUuIebyUZrRH/rKsLcmhiJMRw4cuXCRX440aM6LzeOyPhhNl58rQrQ/PKz1g
 q3PH0el9EilYlz1tcckeZrBHINDt5ndia+JJwVgT/r5QhIfyRbUOCG48jFu40djkFZem
 y9cChLVUHbnjdEzvVhNeGwESHQnA60NeR/NXZ6Bh+fgbltu7AS/4ItxbslkmUv6cWDPw
 XokQ==
X-Gm-Message-State: AOAM531uuPM1ds3dLk9Z/S4l6TNwQI85JQloiH5fOGpa86gWm4Wf6trB
 GZ8YhQpXYnz0FaXUEw48t8M=
X-Google-Smtp-Source: ABdhPJzJ0hUrY2I6QXHaNYOd04kPKO6ECbWkuoehbNz9R6rGxkvX88xzbhI9KtrqoxK9t7M2cxSz5g==
X-Received: by 2002:a5d:64a3:: with SMTP id m3mr24548370wrp.157.1632245842138; 
 Tue, 21 Sep 2021 10:37:22 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 z13sm23310477wrs.90.2021.09.21.10.37.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 10:37:21 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: ckoenig.leichtzumerken@gmail.com, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 19:36:54 +0200
Message-Id: <20210921173659.246165-21-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210921173659.246165-1-christian.koenig@amd.com>
References: <20210921173659.246165-1-christian.koenig@amd.com>
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
