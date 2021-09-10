Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D0440687B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Sep 2021 10:28:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8179163261
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Sep 2021 08:28:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4A9B262630; Fri, 10 Sep 2021 08:28:00 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 44DC963425;
	Fri, 10 Sep 2021 08:27:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EE8C86362E
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 08:27:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D9A5C69CD4; Fri, 10 Sep 2021 08:27:15 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 by lists.linaro.org (Postfix) with ESMTPS id 4A01563631
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 08:27:10 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id
 c8-20020a7bc008000000b002e6e462e95fso832926wmb.2
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 01:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aaz1/XKVq6nri9Uw2UQQseQfjyJkmrID5vYRDnEleeE=;
 b=a5N8gtB7x7wOQgsGTg5fo6+i3lIEKECnuhibaXMwLjgukcuTNZnoX/3B4gLOY6qTQW
 i3liQ75PyfcOy0oqfGQACaIn4EGODYUmw+q+IsAAy61R1AV4yWfcHCC4TbwvMFNrxPl1
 MnDak6yqI7rxnrWXq/TFK35N/EcQ5xqfgaiI8JpZJErEWXa3MFX/T5fIHNviAH77Rmnq
 Bt7P6vIRsHeHvDy/+Q0tlyKZh/0bRqahIBIgUgVi1b//SkXKgLFzjdMFp9eYNpQnGa3U
 sPWtLqZSUSWtqyuJ2iUhXZok33rbWfgQ3+08gdlVjLKdw65v59E+akJuUgTUPRM46EtZ
 i85g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aaz1/XKVq6nri9Uw2UQQseQfjyJkmrID5vYRDnEleeE=;
 b=7/+3QISVaDcSHlfPe8VBqrR0bRpT2E8HgGRsV6bTRW+mfdEZMwelrcpYII1WT7KcxQ
 ysSt+K/iPx+VlmRfMw6sJlax7xO6n/hDOrOjHkwQIXtrs5nllTZhOqdQjVLlaucTYzk0
 03BmybieLfiVqzmNalbzNgp/Vn/QYJcX482uCazsZHCZd9KTaiV3TKmA28FY7NRd5gVA
 V9bxeVzvVoTgBbVD0C+hA0vFRrKyrCbWjhEkeoJYLBKTMq2msKhyvXBXftmlPdUHrzFG
 9ePq1bWWn4DmApnqptl4fy6zMlAiMDhqC9udIhNKN44wQVrD2ruMz07ByN4djVUd3poQ
 6Djw==
X-Gm-Message-State: AOAM5304i1xqTUSLsyB3pWcRZ0nSJq5RwT4835Bwg/lnsQjlbJj4m7TQ
 n4VrMOo0gp2ZnCNck9FnT2AN/MPhnGJiHHk5
X-Google-Smtp-Source: ABdhPJwNg4sxGjY/to3Qc4OVsIG5ULofcu9pKXMqJiXuSTeSZcYd/FZeSHgrkCBst++XlHhVhSWXsg==
X-Received: by 2002:a1c:238a:: with SMTP id j132mr7157728wmj.185.1631262429324; 
 Fri, 10 Sep 2021 01:27:09 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l10sm4429756wrg.50.2021.09.10.01.27.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Sep 2021 01:27:08 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Fri, 10 Sep 2021 10:26:54 +0200
Message-Id: <20210910082655.82168-13-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210910082655.82168-1-christian.koenig@amd.com>
References: <20210910082655.82168-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 13/14] drm/nouveau: use the new iterator in
 nouveau_fence_sync
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL25vdXZl
YXUvbm91dmVhdV9mZW5jZS5jIHwgNDggKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDM2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYwppbmRleCAwNWQwYjNlYjM2OTAuLmRjOGQ3Y2ExZTIz
OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9mZW5jZS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYwpAQCAtMzM5LDE0ICsz
MzksMTUgQEAgbm91dmVhdV9mZW5jZV93YWl0KHN0cnVjdCBub3V2ZWF1X2ZlbmNlICpmZW5jZSwg
Ym9vbCBsYXp5LCBib29sIGludHIpCiB9CiAKIGludAotbm91dmVhdV9mZW5jZV9zeW5jKHN0cnVj
dCBub3V2ZWF1X2JvICpudmJvLCBzdHJ1Y3Qgbm91dmVhdV9jaGFubmVsICpjaGFuLCBib29sIGV4
Y2x1c2l2ZSwgYm9vbCBpbnRyKQorbm91dmVhdV9mZW5jZV9zeW5jKHN0cnVjdCBub3V2ZWF1X2Jv
ICpudmJvLCBzdHJ1Y3Qgbm91dmVhdV9jaGFubmVsICpjaGFuLAorCQkgICBib29sIGV4Y2x1c2l2
ZSwgYm9vbCBpbnRyKQogewogCXN0cnVjdCBub3V2ZWF1X2ZlbmNlX2NoYW4gKmZjdHggPSBjaGFu
LT5mZW5jZTsKLQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKIAlzdHJ1Y3QgZG1hX3Jlc3YgKnJl
c3YgPSBudmJvLT5iby5iYXNlLnJlc3Y7Ci0Jc3RydWN0IGRtYV9yZXN2X2xpc3QgKmZvYmo7CisJ
c3RydWN0IGRtYV9yZXN2X2N1cnNvciBjdXJzb3I7CisJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7
CiAJc3RydWN0IG5vdXZlYXVfZmVuY2UgKmY7Ci0JaW50IHJldCA9IDAsIGk7CisJaW50IHJldDsK
IAogCWlmICghZXhjbHVzaXZlKSB7CiAJCXJldCA9IGRtYV9yZXN2X3Jlc2VydmVfc2hhcmVkKHJl
c3YsIDEpOwpAQCAtMzU1LDEwICszNTYsNyBAQCBub3V2ZWF1X2ZlbmNlX3N5bmMoc3RydWN0IG5v
dXZlYXVfYm8gKm52Ym8sIHN0cnVjdCBub3V2ZWF1X2NoYW5uZWwgKmNoYW4sIGJvb2wgZQogCQkJ
cmV0dXJuIHJldDsKIAl9CiAKLQlmb2JqID0gZG1hX3Jlc3Zfc2hhcmVkX2xpc3QocmVzdik7Ci0J
ZmVuY2UgPSBkbWFfcmVzdl9leGNsX2ZlbmNlKHJlc3YpOwotCi0JaWYgKGZlbmNlKSB7CisJZG1h
X3Jlc3ZfZm9yX2VhY2hfZmVuY2UocmVzdiwgJmN1cnNvciwgZXhjbHVzaXZlLCBmZW5jZSkgewog
CQlzdHJ1Y3Qgbm91dmVhdV9jaGFubmVsICpwcmV2ID0gTlVMTDsKIAkJYm9vbCBtdXN0X3dhaXQg
PSB0cnVlOwogCkBAIC0zNjYsNDEgKzM2NCwxOSBAQCBub3V2ZWF1X2ZlbmNlX3N5bmMoc3RydWN0
IG5vdXZlYXVfYm8gKm52Ym8sIHN0cnVjdCBub3V2ZWF1X2NoYW5uZWwgKmNoYW4sIGJvb2wgZQog
CQlpZiAoZikgewogCQkJcmN1X3JlYWRfbG9jaygpOwogCQkJcHJldiA9IHJjdV9kZXJlZmVyZW5j
ZShmLT5jaGFubmVsKTsKLQkJCWlmIChwcmV2ICYmIChwcmV2ID09IGNoYW4gfHwgZmN0eC0+c3lu
YyhmLCBwcmV2LCBjaGFuKSA9PSAwKSkKKwkJCWlmIChwcmV2ICYmIChwcmV2ID09IGNoYW4gfHwK
KwkJCQkgICAgIGZjdHgtPnN5bmMoZiwgcHJldiwgY2hhbikgPT0gMCkpCiAJCQkJbXVzdF93YWl0
ID0gZmFsc2U7CiAJCQlyY3VfcmVhZF91bmxvY2soKTsKIAkJfQogCi0JCWlmIChtdXN0X3dhaXQp
CisJCWlmIChtdXN0X3dhaXQpIHsKIAkJCXJldCA9IGRtYV9mZW5jZV93YWl0KGZlbmNlLCBpbnRy
KTsKLQotCQlyZXR1cm4gcmV0OwotCX0KLQotCWlmICghZXhjbHVzaXZlIHx8ICFmb2JqKQotCQly
ZXR1cm4gcmV0OwotCi0JZm9yIChpID0gMDsgaSA8IGZvYmotPnNoYXJlZF9jb3VudCAmJiAhcmV0
OyArK2kpIHsKLQkJc3RydWN0IG5vdXZlYXVfY2hhbm5lbCAqcHJldiA9IE5VTEw7Ci0JCWJvb2wg
bXVzdF93YWl0ID0gdHJ1ZTsKLQotCQlmZW5jZSA9IHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQo
Zm9iai0+c2hhcmVkW2ldLAotCQkJCQkJZG1hX3Jlc3ZfaGVsZChyZXN2KSk7Ci0KLQkJZiA9IG5v
dXZlYXVfbG9jYWxfZmVuY2UoZmVuY2UsIGNoYW4tPmRybSk7Ci0JCWlmIChmKSB7Ci0JCQlyY3Vf
cmVhZF9sb2NrKCk7Ci0JCQlwcmV2ID0gcmN1X2RlcmVmZXJlbmNlKGYtPmNoYW5uZWwpOwotCQkJ
aWYgKHByZXYgJiYgKHByZXYgPT0gY2hhbiB8fCBmY3R4LT5zeW5jKGYsIHByZXYsIGNoYW4pID09
IDApKQotCQkJCW11c3Rfd2FpdCA9IGZhbHNlOwotCQkJcmN1X3JlYWRfdW5sb2NrKCk7CisJCQlp
ZiAocmV0KQorCQkJCXJldHVybiByZXQ7CiAJCX0KLQotCQlpZiAobXVzdF93YWl0KQotCQkJcmV0
ID0gZG1hX2ZlbmNlX3dhaXQoZmVuY2UsIGludHIpOwogCX0KLQotCXJldHVybiByZXQ7CisJcmV0
dXJuIDA7CiB9CiAKIHZvaWQKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbmFyby1tbS1zaWcK
