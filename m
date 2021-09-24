Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A91B24177E3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 17:34:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6D0B56263B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 15:34:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F11AC6242A; Fri, 24 Sep 2021 15:34:19 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9029761ECD;
	Fri, 24 Sep 2021 15:34:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C78B762CF8
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8107C6242C; Fri, 24 Sep 2021 15:31:48 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by lists.linaro.org (Postfix) with ESMTPS id 2950D6206D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:41 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id t8so28823121wri.1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 08:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=embkrJo3e9xiJFTU9PfC3+rsuixYC3ybu+PUBE5n6do=;
 b=gbdY/KA3GiigP6gfzDXQt0kMvxgGUf2PrYOU3yOPF9Kh8nJa9t1fKH9GDL9tktcv7i
 gKBby0cEHW216F0Q3ocIcvrj5fJPs1++oQEOdfDdKv4Bvlt+6tHlqahiQYtyXHBs82iu
 QA6YBMC60kODJvJLwsB2c+cOGwoEtRWfDkUHL0ZExuHvZ0YNmUEksOwXHtJqwFacYSNa
 zvL+YtxiqCgZRCNxqIC87FKyfkvmI+vCAoz5xsV445eo1QUFL0LypbJLbGIhUX/7u82Y
 QEeT+8HjaoFMoWgPJb3TA/UaTMp4SHLyCr43SnnnjC35G6QXBOV5dzhtpel9nPd36qCw
 R4qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=embkrJo3e9xiJFTU9PfC3+rsuixYC3ybu+PUBE5n6do=;
 b=oIv6CC8bSfYZVApeVqM6iB5PyEd2FOsgzCjrN4J2xiX6a4NTqERLbPXkoy0n1pYCgb
 MAjQ9NqVxHNFPV2urX2gWjviKhZgjlJtQt06ongw1/HRLy5U3VltmuBxFXXh8B6oFZxd
 DSTP7oo/mTDQ6aXmwNcpnnfnjlQEViSj9zal9gW1APvBj2qZmySTUhrasnUvLWMQtsNw
 9qAZ17DANoZuC5WOTvCzNOO3GMM5tGec5VSK55OV4/x3PUzoL1KFFAm9Wu9PdxA7dUb7
 bkZdrt4wUQCbhv2FrcqyUUQSdG/PyQVYE2zIY1hKyzxVoKo+ppzR/CiTKygXKbq4lxc/
 gAjw==
X-Gm-Message-State: AOAM533lpygA1C7ykgPHB5DzVa1n82gYvVrXysPssBWMazgm2UEEGO+S
 mbmFaFOAXNRKdUqAr0YYBzYqrndmGe4=
X-Google-Smtp-Source: ABdhPJythMo56KnpHAm9/NvsZq86P+VwYHnzlv11F1l50InYobwErKrgQWC9UACBlTFYmZT6gOlsYQ==
X-Received: by 2002:a5d:67cc:: with SMTP id n12mr12094112wrw.381.1632497499953; 
 Fri, 24 Sep 2021 08:31:39 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 u25sm9902248wmm.5.2021.09.24.08.31.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Sep 2021 08:31:39 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 24 Sep 2021 17:31:09 +0200
Message-Id: <20210924153113.2159-23-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210924153113.2159-1-christian.koenig@amd.com>
References: <20210924153113.2159-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 23/27] drm: use new iterator in
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
