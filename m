Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CD115533D
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  7 Feb 2020 08:47:36 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6C789617EB
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  7 Feb 2020 07:47:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5BF00617F2; Fri,  7 Feb 2020 07:47:30 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E570B6179A;
	Fri,  7 Feb 2020 07:46:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C3A4360896
 for <linaro-mm-sig@lists.linaro.org>; Fri,  7 Feb 2020 07:46:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A916D6179A; Fri,  7 Feb 2020 07:46:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by lists.linaro.org (Postfix) with ESMTPS id 0B6EB60896
 for <linaro-mm-sig@lists.linaro.org>; Fri,  7 Feb 2020 07:46:50 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-113-OYW8C9-CPEWWkP9OE0-TQg-1; Fri, 07 Feb 2020 02:46:44 -0500
X-MC-Unique: OYW8C9-CPEWWkP9OE0-TQg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 47F4CDB61;
 Fri,  7 Feb 2020 07:46:42 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-112.ams2.redhat.com
 [10.36.116.112])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 69E0E1001B08;
 Fri,  7 Feb 2020 07:46:39 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id BE5C931F47; Fri,  7 Feb 2020 08:46:38 +0100 (CET)
From: Gerd Hoffmann <kraxel@redhat.com>
To: dri-devel@lists.freedesktop.org
Date: Fri,  7 Feb 2020 08:46:37 +0100
Message-Id: <20200207074638.26386-4-kraxel@redhat.com>
In-Reply-To: <20200207074638.26386-1-kraxel@redhat.com>
References: <20200207074638.26386-1-kraxel@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, open list <linux-kernel@vger.kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>, gurchetansingh@chromium.org,
 "open list:VIRTIO GPU DRIVER" <virtualization@lists.linux-foundation.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: [Linaro-mm-sig] [PATCH v2 3/4] drm/virtio: move mapping teardown to
	virtio_gpu_cleanup_object()
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

U3RvcCBzZW5kaW5nIERFVEFDSF9CQUNLSU5HIGNvbW1hbmRzLCB0aGF0IHdpbGwgaGFwcGVuaW5n
IGFueXdheSB3aGVuCnJlbGVhc2luZyByZXNvdXJjZXMgdmlhIFVOUkVGLiAgSGFuZGxlIGd1ZXN0
LXNpZGUgY2xlYW51cCBpbgp2aXJ0aW9fZ3B1X2NsZWFudXBfb2JqZWN0KCksIGNhbGxlZCB3aGVu
IHRoZSBob3N0IGZpbmlzaGVkIHByb2Nlc3NpbmcKdGhlIFVOUkVGIGNvbW1hbmQuCgpTaWduZWQt
b2ZmLWJ5OiBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vdmlydGlvL3ZpcnRncHVfZHJ2LmggICAgfCAgMiAtLQogZHJpdmVycy9ncHUvZHJtL3Zp
cnRpby92aXJ0Z3B1X29iamVjdC5jIHwgMTQgKysrKysrLS0KIGRyaXZlcnMvZ3B1L2RybS92aXJ0
aW8vdmlydGdwdV92cS5jICAgICB8IDQ2IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDMgZmls
ZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJt
L3ZpcnRpby92aXJ0Z3B1X2Rydi5oCmluZGV4IDFiYzEzZjZiMTYxYi4uZDM3ZGRkNzY0NGY2IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdmlydGlvL3ZpcnRncHVfZHJ2LmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X2Rydi5oCkBAIC0yODEsOCArMjgxLDYgQEAgdm9p
ZCB2aXJ0aW9fZ3B1X2NtZF9zZXRfc2Nhbm91dChzdHJ1Y3QgdmlydGlvX2dwdV9kZXZpY2UgKnZn
ZGV2LAogaW50IHZpcnRpb19ncHVfb2JqZWN0X2F0dGFjaChzdHJ1Y3QgdmlydGlvX2dwdV9kZXZp
Y2UgKnZnZGV2LAogCQkJICAgICBzdHJ1Y3QgdmlydGlvX2dwdV9vYmplY3QgKm9iaiwKIAkJCSAg
ICAgc3RydWN0IHZpcnRpb19ncHVfZmVuY2UgKmZlbmNlKTsKLXZvaWQgdmlydGlvX2dwdV9vYmpl
Y3RfZGV0YWNoKHN0cnVjdCB2aXJ0aW9fZ3B1X2RldmljZSAqdmdkZXYsCi0JCQkgICAgICBzdHJ1
Y3QgdmlydGlvX2dwdV9vYmplY3QgKm9iaik7CiBpbnQgdmlydGlvX2dwdV9hdHRhY2hfc3RhdHVz
X3BhZ2Uoc3RydWN0IHZpcnRpb19ncHVfZGV2aWNlICp2Z2Rldik7CiBpbnQgdmlydGlvX2dwdV9k
ZXRhY2hfc3RhdHVzX3BhZ2Uoc3RydWN0IHZpcnRpb19ncHVfZGV2aWNlICp2Z2Rldik7CiB2b2lk
IHZpcnRpb19ncHVfY3Vyc29yX3Bpbmcoc3RydWN0IHZpcnRpb19ncHVfZGV2aWNlICp2Z2RldiwK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV9vYmplY3QuYyBiL2Ry
aXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV9vYmplY3QuYwppbmRleCAyOGExNjFhZjc1MDMu
LmJjZTJiM2Q4NDNmZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1
X29iamVjdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV9vYmplY3QuYwpA
QCAtMjMsNiArMjMsNyBAQAogICogV0lUSCBUSEUgU09GVFdBUkUgT1IgVEhFIFVTRSBPUiBPVEhF
UiBERUFMSU5HUyBJTiBUSEUgU09GVFdBUkUuCiAgKi8KIAorI2luY2x1ZGUgPGxpbnV4L2RtYS1t
YXBwaW5nLmg+CiAjaW5jbHVkZSA8bGludXgvbW9kdWxlcGFyYW0uaD4KIAogI2luY2x1ZGUgInZp
cnRncHVfZHJ2LmgiCkBAIC02NSw2ICs2NiwxNyBAQCB2b2lkIHZpcnRpb19ncHVfY2xlYW51cF9v
YmplY3Qoc3RydWN0IHZpcnRpb19ncHVfb2JqZWN0ICpibykKIHsKIAlzdHJ1Y3QgdmlydGlvX2dw
dV9kZXZpY2UgKnZnZGV2ID0gYm8tPmJhc2UuYmFzZS5kZXYtPmRldl9wcml2YXRlOwogCisJaWYg
KGJvLT5wYWdlcykgeworCQlpZiAoYm8tPm1hcHBlZCkgeworCQkJZG1hX3VubWFwX3NnKHZnZGV2
LT52ZGV2LT5kZXYucGFyZW50LAorCQkJCSAgICAgYm8tPnBhZ2VzLT5zZ2wsIGJvLT5tYXBwZWQs
CisJCQkJICAgICBETUFfVE9fREVWSUNFKTsKKwkJCWJvLT5tYXBwZWQgPSAwOworCQl9CisJCXNn
X2ZyZWVfdGFibGUoYm8tPnBhZ2VzKTsKKwkJYm8tPnBhZ2VzID0gTlVMTDsKKwkJZHJtX2dlbV9z
aG1lbV91bnBpbigmYm8tPmJhc2UuYmFzZSk7CisJfQogCXZpcnRpb19ncHVfcmVzb3VyY2VfaWRf
cHV0KHZnZGV2LCBiby0+aHdfcmVzX2hhbmRsZSk7CiAJZHJtX2dlbV9zaG1lbV9mcmVlX29iamVj
dCgmYm8tPmJhc2UuYmFzZSk7CiB9CkBAIC03NCw4ICs4Niw2IEBAIHN0YXRpYyB2b2lkIHZpcnRp
b19ncHVfZnJlZV9vYmplY3Qoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopCiAJc3RydWN0IHZp
cnRpb19ncHVfb2JqZWN0ICpibyA9IGdlbV90b192aXJ0aW9fZ3B1X29iaihvYmopOwogCXN0cnVj
dCB2aXJ0aW9fZ3B1X2RldmljZSAqdmdkZXYgPSBiby0+YmFzZS5iYXNlLmRldi0+ZGV2X3ByaXZh
dGU7CiAKLQlpZiAoYm8tPnBhZ2VzKQotCQl2aXJ0aW9fZ3B1X29iamVjdF9kZXRhY2godmdkZXYs
IGJvKTsKIAlpZiAoYm8tPmNyZWF0ZWQpIHsKIAkJdmlydGlvX2dwdV9jbWRfdW5yZWZfcmVzb3Vy
Y2UodmdkZXYsIGJvKTsKIAkJLyogY29tcGxldGlvbiBoYW5kbGVyIGNhbGxzIHZpcnRpb19ncHVf
Y2xlYW51cF9vYmplY3QoKSAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92
aXJ0Z3B1X3ZxLmMgYi9kcml2ZXJzL2dwdS9kcm0vdmlydGlvL3ZpcnRncHVfdnEuYwppbmRleCA0
ZTIyYzM5MTRmOTQuLjg3YzQzOTE1NjE1MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Zp
cnRpby92aXJ0Z3B1X3ZxLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X3Zx
LmMKQEAgLTU0NSwyMiArNTQ1LDYgQEAgdm9pZCB2aXJ0aW9fZ3B1X2NtZF91bnJlZl9yZXNvdXJj
ZShzdHJ1Y3QgdmlydGlvX2dwdV9kZXZpY2UgKnZnZGV2LAogCXZpcnRpb19ncHVfcXVldWVfY3Ry
bF9idWZmZXIodmdkZXYsIHZidWYpOwogfQogCi1zdGF0aWMgdm9pZCB2aXJ0aW9fZ3B1X2NtZF9y
ZXNvdXJjZV9pbnZhbF9iYWNraW5nKHN0cnVjdCB2aXJ0aW9fZ3B1X2RldmljZSAqdmdkZXYsCi0J
CQkJCQkgIHVpbnQzMl90IHJlc291cmNlX2lkLAotCQkJCQkJICBzdHJ1Y3QgdmlydGlvX2dwdV9m
ZW5jZSAqZmVuY2UpCi17Ci0Jc3RydWN0IHZpcnRpb19ncHVfcmVzb3VyY2VfZGV0YWNoX2JhY2tp
bmcgKmNtZF9wOwotCXN0cnVjdCB2aXJ0aW9fZ3B1X3ZidWZmZXIgKnZidWY7Ci0KLQljbWRfcCA9
IHZpcnRpb19ncHVfYWxsb2NfY21kKHZnZGV2LCAmdmJ1Ziwgc2l6ZW9mKCpjbWRfcCkpOwotCW1l
bXNldChjbWRfcCwgMCwgc2l6ZW9mKCpjbWRfcCkpOwotCi0JY21kX3AtPmhkci50eXBlID0gY3B1
X3RvX2xlMzIoVklSVElPX0dQVV9DTURfUkVTT1VSQ0VfREVUQUNIX0JBQ0tJTkcpOwotCWNtZF9w
LT5yZXNvdXJjZV9pZCA9IGNwdV90b19sZTMyKHJlc291cmNlX2lkKTsKLQotCXZpcnRpb19ncHVf
cXVldWVfZmVuY2VkX2N0cmxfYnVmZmVyKHZnZGV2LCB2YnVmLCBmZW5jZSk7Ci19Ci0KIHZvaWQg
dmlydGlvX2dwdV9jbWRfc2V0X3NjYW5vdXQoc3RydWN0IHZpcnRpb19ncHVfZGV2aWNlICp2Z2Rl
diwKIAkJCQl1aW50MzJfdCBzY2Fub3V0X2lkLCB1aW50MzJfdCByZXNvdXJjZV9pZCwKIAkJCQl1
aW50MzJfdCB3aWR0aCwgdWludDMyX3QgaGVpZ2h0LApAQCAtMTE1NSwzNiArMTEzOSw2IEBAIGlu
dCB2aXJ0aW9fZ3B1X29iamVjdF9hdHRhY2goc3RydWN0IHZpcnRpb19ncHVfZGV2aWNlICp2Z2Rl
diwKIAlyZXR1cm4gMDsKIH0KIAotdm9pZCB2aXJ0aW9fZ3B1X29iamVjdF9kZXRhY2goc3RydWN0
IHZpcnRpb19ncHVfZGV2aWNlICp2Z2RldiwKLQkJCSAgICAgIHN0cnVjdCB2aXJ0aW9fZ3B1X29i
amVjdCAqb2JqKQotewotCWJvb2wgdXNlX2RtYV9hcGkgPSAhdmlydGlvX2hhc19pb21tdV9xdWly
ayh2Z2Rldi0+dmRldik7Ci0KLQlpZiAoV0FSTl9PTl9PTkNFKCFvYmotPnBhZ2VzKSkKLQkJcmV0
dXJuOwotCi0JaWYgKHVzZV9kbWFfYXBpICYmIG9iai0+bWFwcGVkKSB7Ci0JCXN0cnVjdCB2aXJ0
aW9fZ3B1X2ZlbmNlICpmZW5jZSA9IHZpcnRpb19ncHVfZmVuY2VfYWxsb2ModmdkZXYpOwotCQkv
KiBkZXRhY2ggYmFja2luZyBhbmQgd2FpdCBmb3IgdGhlIGhvc3QgcHJvY2VzcyBpdCAuLi4gKi8K
LQkJdmlydGlvX2dwdV9jbWRfcmVzb3VyY2VfaW52YWxfYmFja2luZyh2Z2Rldiwgb2JqLT5od19y
ZXNfaGFuZGxlLCBmZW5jZSk7Ci0JCWRtYV9mZW5jZV93YWl0KCZmZW5jZS0+ZiwgdHJ1ZSk7Ci0J
CWRtYV9mZW5jZV9wdXQoJmZlbmNlLT5mKTsKLQotCQkvKiAuLi4gdGhlbiB0ZWFyIGRvd24gaW9t
bXUgbWFwcGluZ3MgKi8KLQkJZG1hX3VubWFwX3NnKHZnZGV2LT52ZGV2LT5kZXYucGFyZW50LAot
CQkJICAgICBvYmotPnBhZ2VzLT5zZ2wsIG9iai0+bWFwcGVkLAotCQkJICAgICBETUFfVE9fREVW
SUNFKTsKLQkJb2JqLT5tYXBwZWQgPSAwOwotCX0gZWxzZSB7Ci0JCXZpcnRpb19ncHVfY21kX3Jl
c291cmNlX2ludmFsX2JhY2tpbmcodmdkZXYsIG9iai0+aHdfcmVzX2hhbmRsZSwgTlVMTCk7Ci0J
fQotCi0Jc2dfZnJlZV90YWJsZShvYmotPnBhZ2VzKTsKLQlvYmotPnBhZ2VzID0gTlVMTDsKLQot
CWRybV9nZW1fc2htZW1fdW5waW4oJm9iai0+YmFzZS5iYXNlKTsKLX0KLQogdm9pZCB2aXJ0aW9f
Z3B1X2N1cnNvcl9waW5nKHN0cnVjdCB2aXJ0aW9fZ3B1X2RldmljZSAqdmdkZXYsCiAJCQkgICAg
c3RydWN0IHZpcnRpb19ncHVfb3V0cHV0ICpvdXRwdXQpCiB7Ci0tIAoyLjE4LjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
