Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4AD408C80
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 15:19:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6EA9661C55
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 13:19:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5969469D16; Mon, 13 Sep 2021 13:18:52 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1903468641;
	Mon, 13 Sep 2021 13:18:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 118F06341F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0F14960591; Mon, 13 Sep 2021 13:17:44 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by lists.linaro.org (Postfix) with ESMTPS id 8DEC6623DC
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:41 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id q26so14650530wrc.7
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 06:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aaz1/XKVq6nri9Uw2UQQseQfjyJkmrID5vYRDnEleeE=;
 b=j5ApZPjuGQSysR3D2rbwxwT0NziPLN8aIS6xGHDYJfIEG6npP+fSZzcA8ChWpt/NSn
 pyu7jaEzbr61aIbCz5NzAjJb5bxa93okLzdjBXmjA+0jfBhVGDNeWorL+VF8iAbr0x9d
 j1HkejHfFZBHRhqNBbAn7/VPD2OOS5BFGEEoYzqaKL39WDWiQj7FmDhVvnYITRWVR8OZ
 tO1e/mQPZgSSIICro0jrgr/Axg1xFFZ9OKPqro0uSM9R4dyCWbfV9UY3jjkr066gZCce
 tiQV3Lt415N8gpXIpqW4Ru0VYj/IpX/YjXX5KQrVUhUtzMsY1CoiaTCNVOruh+NDrs1l
 qZiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aaz1/XKVq6nri9Uw2UQQseQfjyJkmrID5vYRDnEleeE=;
 b=vtQQztShuWgmlHsnOIvMfT1CDmnS9gEEEfkzd+Q1O6sPn2SVDpneH2ddvkx3Fy4eqb
 vrIjhe+vyfhcfYy2qpByRcYONb+dvTjbnIhQOOx7Po6bTF5JOM7HEutAbILnpCgPplEg
 kBfIBkPMCnoPZGaU3s9ZTnSDOnltDvfJayQn6+TsA6TVPAfSKM9QAmhPMbaOFon6iKGw
 bKP2HKB1wCwsSkZDVLMWyU+wjA8AsaQ4TW6URiCQsnhK9HPoRkl5ne6/2ZSfERvPrv8l
 zXRdUGDHlq1zgY8J6oIcsgwE5lrkehScEH5heZQ0XJ/yfMlYIyDtbJ0v5mEJUQpeVw5K
 XG9g==
X-Gm-Message-State: AOAM5302ituKsx7z+RsfeY3FeQht7JTika0rcMS9Iv7xNUROiHxObqnA
 SojhNMw7vDSoE4V3xZ5wFj0QKeZa7iodSWoP
X-Google-Smtp-Source: ABdhPJxX0s81w0+HJgCXtbBFD53hSzsmklMXxNzsAXztcryHleJTU3rmTPSVM5YgEFZEVyP0HdEfLQ==
X-Received: by 2002:adf:ce89:: with SMTP id r9mr9243123wrn.238.1631539060549; 
 Mon, 13 Sep 2021 06:17:40 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 h18sm7602834wrb.33.2021.09.13.06.17.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 06:17:40 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Mon, 13 Sep 2021 15:17:03 +0200
Message-Id: <20210913131707.45639-23-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210913131707.45639-1-christian.koenig@amd.com>
References: <20210913131707.45639-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 22/26] drm/nouveau: use the new iterator in
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
Cc: intel-gfx@lists.freedesktop.org, daniel@ffwll.ch
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
