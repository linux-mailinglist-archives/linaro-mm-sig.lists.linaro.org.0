Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E823F979AD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Aug 2019 14:41:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 15A2761831
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Aug 2019 12:41:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0A8316183E; Wed, 21 Aug 2019 12:41:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8C9FF6184D;
	Wed, 21 Aug 2019 12:36:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7E0F361828
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 12:35:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 66A206182D; Wed, 21 Aug 2019 12:35:44 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id 6CD3D61831
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 12:31:55 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id t16so1866982wra.6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 05:31:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=byMlpBQbF3xVofh0lp2jF4TITt+perQZbz2APhqasSc=;
 b=O7V3MbFh54uhkg0rMJjOIqsnRZ/8AXVYIitavuhZ5GjUeFgI+VVcbRqa132ga93UIt
 3IneY+oyUsZmqUgGgPFW/kvWheS+q35A9bLPzu4T0MQtfmwR28AJDX2o8x6s0Nw82IHl
 aPQsz43aqb5pwPUqNBxnYxm94ipWSZQRrf+HYMLmW+U8v30FbTqSPhs7DyKXASo3XwiA
 AxnWX6i9qAwW9duAVRi4Xo6VBlmDTO7OTCZ+uTGljSRdavWltYxcDGOrizLs1N8jkb3d
 YX1Q8GbkLj+XXSpttOS0RDEqhiKCDBXax0pr35uUArgR9ifmGArKn9D2iIEiWWP4Xj9L
 pexA==
X-Gm-Message-State: APjAAAUTIzmbSxgErA24agRPc/7efPsbNlVRPQRcI0AotdS/1WRZFpcL
 +A18fJKIcXcn3Hl3BTuAuOI=
X-Google-Smtp-Source: APXvYqwNErrT3VpJ56IEwwDi6ZOxVcfM0i0WoOtcvyeOpdiiTb+T1UcsF4wj8z/pUdF2Mx6eA42Eog==
X-Received: by 2002:a5d:4448:: with SMTP id x8mr993728wrr.119.1566390714544;
 Wed, 21 Aug 2019 05:31:54 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8189:dd33:a934:c4fa])
 by smtp.gmail.com with ESMTPSA id v3sm23084571wrq.34.2019.08.21.05.31.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 05:31:54 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk,
 daniel.vetter@ffwll.ch, sumit.semwal@linaro.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Wed, 21 Aug 2019 14:31:43 +0200
Message-Id: <20190821123147.110736-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190821123147.110736-1-christian.koenig@amd.com>
References: <20190821123147.110736-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 06/10] dma-buf/resv: stop pruning shared
	fences when exclusive is added
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

Rmlyc3Qgc3RlcCB0b3dhcmRzIG5ldyBzaGFyZWQgZmVuY2UgY29udGFpbmVyIGltcGxlbWVudGF0
aW9uLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jICAgICAgICAgICAgICB8IDE2
ICstLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbS5jICAgICAgICAg
ICB8IDE0ICsrKysrKy0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2Zl
bmNlLmMgfCAgMiArLQogMyBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDI0IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1yZXN2LmMKaW5kZXggMjRhZGMzMmQzNmQ0Li5kM2E5YTNiYjE1ZjAgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtcmVzdi5jCkBAIC0yNzEsMzIgKzI3MSwxOCBAQCBFWFBPUlRfU1lNQk9MKGRtYV9yZXN2
X2FkZF9zaGFyZWRfZmVuY2UpOwogdm9pZCBkbWFfcmVzdl9hZGRfZXhjbF9mZW5jZShzdHJ1Y3Qg
ZG1hX3Jlc3YgKm9iaiwgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpCiB7CiAJc3RydWN0IGRtYV9m
ZW5jZSAqb2xkX2ZlbmNlID0gZG1hX3Jlc3ZfZ2V0X2V4Y2wob2JqKTsKLQlzdHJ1Y3QgZG1hX3Jl
c3ZfbGlzdCAqb2xkOwotCXUzMiBpID0gMDsKIAogCWRtYV9yZXN2X2Fzc2VydF9oZWxkKG9iaik7
CiAKLQlvbGQgPSBkbWFfcmVzdl9nZXRfbGlzdChvYmopOwotCWlmIChvbGQpCi0JCWkgPSBvbGQt
PnNoYXJlZF9jb3VudDsKLQotCWlmIChmZW5jZSkKLQkJZG1hX2ZlbmNlX2dldChmZW5jZSk7CisJ
ZG1hX2ZlbmNlX2dldChmZW5jZSk7CiAKIAlwcmVlbXB0X2Rpc2FibGUoKTsKIAl3cml0ZV9zZXFj
b3VudF9iZWdpbigmb2JqLT5zZXEpOwogCS8qIHdyaXRlX3NlcWNvdW50X2JlZ2luIHByb3ZpZGVz
IHRoZSBuZWNlc3NhcnkgbWVtb3J5IGJhcnJpZXIgKi8KIAlSQ1VfSU5JVF9QT0lOVEVSKG9iai0+
ZmVuY2VfZXhjbCwgZmVuY2UpOwotCWlmIChvbGQpCi0JCW9sZC0+c2hhcmVkX2NvdW50ID0gMDsK
IAl3cml0ZV9zZXFjb3VudF9lbmQoJm9iai0+c2VxKTsKIAlwcmVlbXB0X2VuYWJsZSgpOwogCi0J
LyogaW5wbGFjZSB1cGRhdGUsIG5vIHNoYXJlZCBmZW5jZXMgKi8KLQl3aGlsZSAoaS0tKQotCQlk
bWFfZmVuY2VfcHV0KHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQob2xkLT5zaGFyZWRbaV0sCi0J
CQkJCQlkbWFfcmVzdl9oZWxkKG9iaikpKTsKLQogCWRtYV9mZW5jZV9wdXQob2xkX2ZlbmNlKTsK
IH0KIEVYUE9SVF9TWU1CT0woZG1hX3Jlc3ZfYWRkX2V4Y2xfZmVuY2UpOwpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9n
ZW0uYwppbmRleCAzNDhhN2FkMmMwNDQuLjkwZTNkYzNiOTI3YSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL21zbS9tc21fZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2Vt
LmMKQEAgLTY2OCwxNCArNjY4LDEyIEBAIGludCBtc21fZ2VtX3N5bmNfb2JqZWN0KHN0cnVjdCBk
cm1fZ2VtX29iamVjdCAqb2JqLAogCWludCBpLCByZXQ7CiAKIAlmb2JqID0gZG1hX3Jlc3ZfZ2V0
X2xpc3Qob2JqLT5yZXN2KTsKLQlpZiAoIWZvYmogfHwgKGZvYmotPnNoYXJlZF9jb3VudCA9PSAw
KSkgewotCQlmZW5jZSA9IGRtYV9yZXN2X2dldF9leGNsKG9iai0+cmVzdik7Ci0JCS8qIGRvbid0
IG5lZWQgdG8gd2FpdCBvbiBvdXIgb3duIGZlbmNlcywgc2luY2UgcmluZyBpcyBmaWZvICovCi0J
CWlmIChmZW5jZSAmJiAoZmVuY2UtPmNvbnRleHQgIT0gZmN0eC0+Y29udGV4dCkpIHsKLQkJCXJl
dCA9IGRtYV9mZW5jZV93YWl0KGZlbmNlLCB0cnVlKTsKLQkJCWlmIChyZXQpCi0JCQkJcmV0dXJu
IHJldDsKLQkJfQorCWZlbmNlID0gZG1hX3Jlc3ZfZ2V0X2V4Y2wob2JqLT5yZXN2KTsKKwkvKiBk
b24ndCBuZWVkIHRvIHdhaXQgb24gb3VyIG93biBmZW5jZXMsIHNpbmNlIHJpbmcgaXMgZmlmbyAq
LworCWlmIChmZW5jZSAmJiAoZmVuY2UtPmNvbnRleHQgIT0gZmN0eC0+Y29udGV4dCkpIHsKKwkJ
cmV0ID0gZG1hX2ZlbmNlX3dhaXQoZmVuY2UsIHRydWUpOworCQlpZiAocmV0KQorCQkJcmV0dXJu
IHJldDsKIAl9CiAKIAlpZiAoIWV4Y2x1c2l2ZSB8fCAhZm9iaikKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2
ZWF1L25vdXZlYXVfZmVuY2UuYwppbmRleCA4ZGYzOTAwNzhjODUuLjQyZGRkZGJiNDllNCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9mZW5jZS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYwpAQCAtMzUwLDcgKzM1MCw3IEBA
IG5vdXZlYXVfZmVuY2Vfc3luYyhzdHJ1Y3Qgbm91dmVhdV9ibyAqbnZibywgc3RydWN0IG5vdXZl
YXVfY2hhbm5lbCAqY2hhbiwgYm9vbCBlCiAJZm9iaiA9IGRtYV9yZXN2X2dldF9saXN0KHJlc3Yp
OwogCWZlbmNlID0gZG1hX3Jlc3ZfZ2V0X2V4Y2wocmVzdik7CiAKLQlpZiAoZmVuY2UgJiYgKCFl
eGNsdXNpdmUgfHwgIWZvYmogfHwgIWZvYmotPnNoYXJlZF9jb3VudCkpIHsKKwlpZiAoZmVuY2Up
IHsKIAkJc3RydWN0IG5vdXZlYXVfY2hhbm5lbCAqcHJldiA9IE5VTEw7CiAJCWJvb2wgbXVzdF93
YWl0ID0gdHJ1ZTsKIAotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGluYXJvLW1tLXNpZwo=
