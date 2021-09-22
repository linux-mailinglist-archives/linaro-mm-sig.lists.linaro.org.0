Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8843F4144E7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 11:13:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 292DF618D1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 09:13:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D711E6242B; Wed, 22 Sep 2021 09:12:51 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C08936A913;
	Wed, 22 Sep 2021 09:12:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3D00362EA6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:11:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0B73361945; Wed, 22 Sep 2021 09:11:13 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by lists.linaro.org (Postfix) with ESMTPS id B37D461A3C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:11:09 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id u18so4700109wrg.5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 02:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/+r4v7UIazK0HaIgNf9t5Xden24q10DFKnoad4rknzc=;
 b=XXTYMe8Yf1fc6+w7lqxeBIym2/Lq6Xlixvs8VCFNg8hKzTH7822O+C1RgUvv0LplEa
 i+Hgoe6MOAPLXyMYl6V5V/xvHHM4etOQX6pk68u9JcfIskmhJDYrZD4VqWKbD6heyVW3
 Yoo6iEUY0O4PGMx3hPv/xKEjb/uc1UuHfgAtyAYa2HHSoBckr5udQnH7xPifI8yIhcMy
 nucLdwvhHxDhvJOojD6cYIEcfdUjaCEY1dWSLRUVB7cmM5uXSzHjAtins9yB2c2imefU
 5iqMsA+/eY3zICkgK9lV8E6gjgE1GAWXNFO/LrEtWln2zL2K/dupewIPBVc9+3oBCjkZ
 SyzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/+r4v7UIazK0HaIgNf9t5Xden24q10DFKnoad4rknzc=;
 b=AcatcA8BLKPAWA0IWlontrUnOjz26KhSjwwUoV+bjsri8CfEX8eOZYHH8ZZDrjL1zn
 iLO9nWrkOabwHKTss2OMQjfSeX3GAkPHe+IA/2K7zoBmQ4P6Gl+zEtAmOdBcQn0OGKj0
 rdEy21cc9J8g+n+W9TxzYKKK5YXgrNOxJsXvfWgZjyhUMmWLS944//QuHa/dH6++VGUn
 CkXbrsA6KNKuYkJL3TI3UXdcga9GtmuXOCpDaf3jlNeiy8Br1PqfLnJm80yR/m9oE+Sw
 g3BhSq+YGB2s8oSWUNeZxwKpyNFQZJsyFOvervhbQ0Rnshna8du0WFttW9HDF1kgir14
 w2hA==
X-Gm-Message-State: AOAM53190J4OqEV39EweJo6bPNdxfdQdmNILWIcxwsAWDp5W/oI+cXr8
 j2AwRQZukUTE17YdUNrSUkMfLq5NFJI=
X-Google-Smtp-Source: ABdhPJz+nSEeYNVms0eEw+48izA8EU3O1zM3dfvs2KXB47EqWlG/JKxLY1vp/3LoitR1u50wO51ekw==
X-Received: by 2002:a7b:cf21:: with SMTP id m1mr9470538wmg.95.1632301868285;
 Wed, 22 Sep 2021 02:11:08 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 r25sm1535515wra.76.2021.09.22.02.11.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 02:11:07 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 11:10:40 +0200
Message-Id: <20210922091044.2612-23-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210922091044.2612-1-christian.koenig@amd.com>
References: <20210922091044.2612-1-christian.koenig@amd.com>
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
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
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
bS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYwppbmRleCAwNWQwYjNlYjM2OTAuLjI2ZjkyOTlkZjg4
MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9mZW5jZS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYwpAQCAtMzM5LDE0ICsz
MzksMTUgQEAgbm91dmVhdV9mZW5jZV93YWl0KHN0cnVjdCBub3V2ZWF1X2ZlbmNlICpmZW5jZSwg
Ym9vbCBsYXp5LCBib29sIGludHIpCiB9CiAKIGludAotbm91dmVhdV9mZW5jZV9zeW5jKHN0cnVj
dCBub3V2ZWF1X2JvICpudmJvLCBzdHJ1Y3Qgbm91dmVhdV9jaGFubmVsICpjaGFuLCBib29sIGV4
Y2x1c2l2ZSwgYm9vbCBpbnRyKQorbm91dmVhdV9mZW5jZV9zeW5jKHN0cnVjdCBub3V2ZWF1X2Jv
ICpudmJvLCBzdHJ1Y3Qgbm91dmVhdV9jaGFubmVsICpjaGFuLAorCQkgICBib29sIGV4Y2x1c2l2
ZSwgYm9vbCBpbnRyKQogewogCXN0cnVjdCBub3V2ZWF1X2ZlbmNlX2NoYW4gKmZjdHggPSBjaGFu
LT5mZW5jZTsKLQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKIAlzdHJ1Y3QgZG1hX3Jlc3YgKnJl
c3YgPSBudmJvLT5iby5iYXNlLnJlc3Y7Ci0Jc3RydWN0IGRtYV9yZXN2X2xpc3QgKmZvYmo7CisJ
c3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOworCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwog
CXN0cnVjdCBub3V2ZWF1X2ZlbmNlICpmOwotCWludCByZXQgPSAwLCBpOworCWludCByZXQ7CiAK
IAlpZiAoIWV4Y2x1c2l2ZSkgewogCQlyZXQgPSBkbWFfcmVzdl9yZXNlcnZlX3NoYXJlZChyZXN2
LCAxKTsKQEAgLTM1NSwxMCArMzU2LDcgQEAgbm91dmVhdV9mZW5jZV9zeW5jKHN0cnVjdCBub3V2
ZWF1X2JvICpudmJvLCBzdHJ1Y3Qgbm91dmVhdV9jaGFubmVsICpjaGFuLCBib29sIGUKIAkJCXJl
dHVybiByZXQ7CiAJfQogCi0JZm9iaiA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KHJlc3YpOwotCWZl
bmNlID0gZG1hX3Jlc3ZfZXhjbF9mZW5jZShyZXN2KTsKLQotCWlmIChmZW5jZSkgeworCWRtYV9y
ZXN2X2Zvcl9lYWNoX2ZlbmNlKCZjdXJzb3IsIHJlc3YsIGV4Y2x1c2l2ZSwgZmVuY2UpIHsKIAkJ
c3RydWN0IG5vdXZlYXVfY2hhbm5lbCAqcHJldiA9IE5VTEw7CiAJCWJvb2wgbXVzdF93YWl0ID0g
dHJ1ZTsKIApAQCAtMzY2LDQxICszNjQsMTkgQEAgbm91dmVhdV9mZW5jZV9zeW5jKHN0cnVjdCBu
b3V2ZWF1X2JvICpudmJvLCBzdHJ1Y3Qgbm91dmVhdV9jaGFubmVsICpjaGFuLCBib29sIGUKIAkJ
aWYgKGYpIHsKIAkJCXJjdV9yZWFkX2xvY2soKTsKIAkJCXByZXYgPSByY3VfZGVyZWZlcmVuY2Uo
Zi0+Y2hhbm5lbCk7Ci0JCQlpZiAocHJldiAmJiAocHJldiA9PSBjaGFuIHx8IGZjdHgtPnN5bmMo
ZiwgcHJldiwgY2hhbikgPT0gMCkpCisJCQlpZiAocHJldiAmJiAocHJldiA9PSBjaGFuIHx8CisJ
CQkJICAgICBmY3R4LT5zeW5jKGYsIHByZXYsIGNoYW4pID09IDApKQogCQkJCW11c3Rfd2FpdCA9
IGZhbHNlOwogCQkJcmN1X3JlYWRfdW5sb2NrKCk7CiAJCX0KIAotCQlpZiAobXVzdF93YWl0KQor
CQlpZiAobXVzdF93YWl0KSB7CiAJCQlyZXQgPSBkbWFfZmVuY2Vfd2FpdChmZW5jZSwgaW50cik7
Ci0KLQkJcmV0dXJuIHJldDsKLQl9Ci0KLQlpZiAoIWV4Y2x1c2l2ZSB8fCAhZm9iaikKLQkJcmV0
dXJuIHJldDsKLQotCWZvciAoaSA9IDA7IGkgPCBmb2JqLT5zaGFyZWRfY291bnQgJiYgIXJldDsg
KytpKSB7Ci0JCXN0cnVjdCBub3V2ZWF1X2NoYW5uZWwgKnByZXYgPSBOVUxMOwotCQlib29sIG11
c3Rfd2FpdCA9IHRydWU7Ci0KLQkJZmVuY2UgPSByY3VfZGVyZWZlcmVuY2VfcHJvdGVjdGVkKGZv
YmotPnNoYXJlZFtpXSwKLQkJCQkJCWRtYV9yZXN2X2hlbGQocmVzdikpOwotCi0JCWYgPSBub3V2
ZWF1X2xvY2FsX2ZlbmNlKGZlbmNlLCBjaGFuLT5kcm0pOwotCQlpZiAoZikgewotCQkJcmN1X3Jl
YWRfbG9jaygpOwotCQkJcHJldiA9IHJjdV9kZXJlZmVyZW5jZShmLT5jaGFubmVsKTsKLQkJCWlm
IChwcmV2ICYmIChwcmV2ID09IGNoYW4gfHwgZmN0eC0+c3luYyhmLCBwcmV2LCBjaGFuKSA9PSAw
KSkKLQkJCQltdXN0X3dhaXQgPSBmYWxzZTsKLQkJCXJjdV9yZWFkX3VubG9jaygpOworCQkJaWYg
KHJldCkKKwkJCQlyZXR1cm4gcmV0OwogCQl9Ci0KLQkJaWYgKG11c3Rfd2FpdCkKLQkJCXJldCA9
IGRtYV9mZW5jZV93YWl0KGZlbmNlLCBpbnRyKTsKIAl9Ci0KLQlyZXR1cm4gcmV0OworCXJldHVy
biAwOwogfQogCiB2b2lkCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
