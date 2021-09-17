Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 28AE540F7F2
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:37:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0A9C369D28
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 12:37:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 89C8D69D51; Fri, 17 Sep 2021 12:36:46 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 88C96667EF;
	Fri, 17 Sep 2021 12:36:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 20BFC666F6
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5A58869CE5; Fri, 17 Sep 2021 12:35:38 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48])
 by lists.linaro.org (Postfix) with ESMTPS id E99BE69CE9
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:34 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id y132so7223899wmc.1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 05:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ibIrVYeDdndjRxY0zDZkaJhUSUXFhvWWL8GzRn7VBN0=;
 b=nTpCSrxBWqRflD7TltRYtMBxjZX8oKi2IfhO13ZCBM2qt4GQXfVswJjDOlUmCP/mgA
 plaBw1Bdhb01gWkBwiCI/ZkLJmNMg0cOADZis0pl3cKZ89M+LDa5Wgsq74d5U5lLTes4
 R7N4C+UMo88xEXk5VplBMOtug+/L6kvPIjDa7PPLfETO0K7xaKVSeQB9MfqZtQd+kpfd
 Wv0YzDPkI5pIkjFriR66hqR8W5uJ3w2GB+I011kxPnT5/59ek4+gHHpGx7MDpA7yrbFI
 BAzZ533uV6YXtkP+88k6UJ6g6iBn8SXC5Hnus14t+2M+1QoKlqhIFYLxQXJXruX2vaCd
 WF1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ibIrVYeDdndjRxY0zDZkaJhUSUXFhvWWL8GzRn7VBN0=;
 b=R6OVHSRmn4Xf+rrvMMgPXDE6ozsYUDnZuIKDdv58IpdGSHpRucTWWV2iKLW/ieUaPg
 VfH2niFxQRvrZfLHxyPqhGNWe8L8adM1zhTUqV6DfxZ7qPbMkdWXPRXq/3GAJg7jDOeu
 wsRF6ixwmECSE7GEjbQ9YgWKRrviJopRVLLDmU2ytb/u/BAwT3vc81DQCCtQ9p200Ywu
 jlOT4NuNv7xRvXDMJbqvZIceJsTY/fLYRdQKOWqf5DNhWweSDptur2uVPZHULhwuNVDX
 EN1Zip6bPITuMFIHppoA+yZw7iFxGWFHcpAWRPiVxZk0imGhjPpLgBWJAD4BVofjeu8U
 5Q/Q==
X-Gm-Message-State: AOAM533KDEoIyw+K4g11blu2M0DF0NmNUAase96Qz6pCh4paaenjsbr3
 /53Xc0+5MJ6nU5pMthYFeIGmFBmbl54=
X-Google-Smtp-Source: ABdhPJxaaMctBBBSc/yluqiL4tEsEQ0z0EM7vwHWdMAeiTkXSi1P8pCp+SZzIrt68qrV1FTEXvFuPg==
X-Received: by 2002:a05:600c:414d:: with SMTP id
 h13mr14900043wmm.121.1631882133974; 
 Fri, 17 Sep 2021 05:35:33 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l21sm6122049wmh.31.2021.09.17.05.35.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:35:33 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 17 Sep 2021 14:35:08 +0200
Message-Id: <20210917123513.1106-22-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210917123513.1106-1-christian.koenig@amd.com>
References: <20210917123513.1106-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 21/26] drm: use new iterator in
 drm_gem_plane_helper_prepare_fb v2
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
Cc: daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

TWFrZXMgdGhlIGhhbmRsaW5nIGEgYml0IG1vcmUgY29tcGxleCwgYnV0IGF2b2lkcyB0aGUgdXNl
IG9mCmRtYV9yZXN2X2dldF9leGNsX3VubG9ja2VkKCkuCgp2MjogYWRkIG1pc3NpbmcgcmN1X3Jl
YWRfbG9jaygpL3VubG9jaygpCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fYXRvbWlj
X2hlbHBlci5jIHwgMTQgKysrKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1f
Z2VtX2F0b21pY19oZWxwZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2F0b21pY19oZWxw
ZXIuYwppbmRleCBlNTcwMzk4YWJkNzguLmQ4ZjljNjQzMjU0NCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2RybV9nZW1fYXRvbWljX2hlbHBlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9k
cm1fZ2VtX2F0b21pY19oZWxwZXIuYwpAQCAtMTQzLDYgKzE0Myw3IEBACiAgKi8KIGludCBkcm1f
Z2VtX3BsYW5lX2hlbHBlcl9wcmVwYXJlX2ZiKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLCBzdHJ1
Y3QgZHJtX3BsYW5lX3N0YXRlICpzdGF0ZSkKIHsKKwlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJz
b3I7CiAJc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmo7CiAJc3RydWN0IGRtYV9mZW5jZSAqZmVu
Y2U7CiAKQEAgLTE1MCw5ICsxNTEsMTggQEAgaW50IGRybV9nZW1fcGxhbmVfaGVscGVyX3ByZXBh
cmVfZmIoc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsIHN0cnVjdCBkcm1fcGxhbmVfc3QKIAkJcmV0
dXJuIDA7CiAKIAlvYmogPSBkcm1fZ2VtX2ZiX2dldF9vYmooc3RhdGUtPmZiLCAwKTsKLQlmZW5j
ZSA9IGRtYV9yZXN2X2dldF9leGNsX3VubG9ja2VkKG9iai0+cmVzdik7Ci0JZHJtX2F0b21pY19z
ZXRfZmVuY2VfZm9yX3BsYW5lKHN0YXRlLCBmZW5jZSk7CisJcmN1X3JlYWRfbG9jaygpOworCWRt
YV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgb2JqLT5yZXN2LCBmYWxzZSk7CisJZG1hX3Jlc3Zf
Zm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwgZmVuY2UpIHsKKwkJcmN1X3JlYWRfdW5s
b2NrKCk7CisJCS8qIFRPRE86IFdlIG9ubHkgdXNlIHRoZSBmaXJzdCB3cml0ZSBmZW5jZSBoZXJl
ICovCisJCWRybV9hdG9taWNfc2V0X2ZlbmNlX2Zvcl9wbGFuZShzdGF0ZSwgZmVuY2UpOworCQly
ZXR1cm4gMDsKKwl9CisJZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7CisJcmN1X3JlYWRfdW5s
b2NrKCk7CiAKKwlkcm1fYXRvbWljX3NldF9mZW5jZV9mb3JfcGxhbmUoc3RhdGUsIE5VTEwpOwog
CXJldHVybiAwOwogfQogRVhQT1JUX1NZTUJPTF9HUEwoZHJtX2dlbV9wbGFuZV9oZWxwZXJfcHJl
cGFyZV9mYik7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==
