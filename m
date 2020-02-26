Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 102CB170318
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Feb 2020 16:49:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 261E36087C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Feb 2020 15:49:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 18DCD615AD; Wed, 26 Feb 2020 15:49:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CF01F619A9;
	Wed, 26 Feb 2020 15:48:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2B1616087C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Feb 2020 15:48:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1E43B615AD; Wed, 26 Feb 2020 15:48:04 +0000 (UTC)
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by lists.linaro.org (Postfix) with ESMTPS id 996D36087C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Feb 2020 15:48:02 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-97-rh6OGUiZNnOQQHFS6N27sw-1; Wed, 26 Feb 2020 10:48:00 -0500
X-MC-Unique: rh6OGUiZNnOQQHFS6N27sw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DD6CB801A01;
 Wed, 26 Feb 2020 15:47:57 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-150.ams2.redhat.com
 [10.36.116.150])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1ED435C54A;
 Wed, 26 Feb 2020 15:47:54 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 47DA61FCEF; Wed, 26 Feb 2020 16:47:53 +0100 (CET)
From: Gerd Hoffmann <kraxel@redhat.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 26 Feb 2020 16:47:52 +0100
Message-Id: <20200226154752.24328-4-kraxel@redhat.com>
In-Reply-To: <20200226154752.24328-1-kraxel@redhat.com>
References: <20200226154752.24328-1-kraxel@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Vetter <daniel@ffwll.ch>, Guillaume.Gardet@arm.com,
 David Airlie <airlied@linux.ie>, open list <linux-kernel@vger.kernel.org>,
 gurchetansingh@chromium.org,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Gerd Hoffmann <kraxel@redhat.com>, tzimmermann@suse.de,
 Dave Airlie <airlied@redhat.com>, Sean Paul <sean@poorly.run>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: [Linaro-mm-sig] [PATCH v5 3/3] drm/udl: simplify gem object mapping.
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

V2l0aCBzaG1lbSBoZWxwZXJzIGFsbG93aW5nIHRvIHVwZGF0ZSBwZ3Byb3QgY2FjaGluZyBmbGFn
cyB2aWEKZHJtX2dlbV9zaG1lbV9vYmplY3QubWFwX2NhY2hlZCB3ZSBjYW4ganVzdCB1c2UgdGhh
dCBhbmQgZGl0Y2gKb3VyIG93biBpbXBsZW1lbnRhdGlvbnMgb2YgbW1hcCgpIGFuZCB2bWFwKCku
CgpXZSBhbHNvIGRvbid0IG5lZWQgYSBzcGVjaWFsIGNhc2UgZm9yIGltcG9ydGVkIG9iamVjdHMs
IGFueSBtYXAKcmVxdWVzdHMgYXJlIGhhbmRsZWQgYnkgdGhlIGV4cG9ydGVyIG5vdCB1ZGwuCgpT
aWduZWQtb2ZmLWJ5OiBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vdWRsL3VkbF9nZW0uYyB8IDYyICsrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA1OSBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdWRsL3VkbF9nZW0uYyBiL2RyaXZlcnMv
Z3B1L2RybS91ZGwvdWRsX2dlbS5jCmluZGV4IGI2ZTI2Zjk4YWEwYS4uN2UzYTg4YjI1YjZiIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdWRsL3VkbF9nZW0uYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vdWRsL3VkbF9nZW0uYwpAQCAtMTcsNzIgKzE3LDE1IEBACiAgKiBHRU0gb2JqZWN0IGZ1
bmNzCiAgKi8KIAotc3RhdGljIGludCB1ZGxfZ2VtX29iamVjdF9tbWFwKHN0cnVjdCBkcm1fZ2Vt
X29iamVjdCAqb2JqLAotCQkJICAgICAgIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKQotewot
CWludCByZXQ7Ci0KLQlyZXQgPSBkcm1fZ2VtX3NobWVtX21tYXAob2JqLCB2bWEpOwotCWlmIChy
ZXQpCi0JCXJldHVybiByZXQ7Ci0KLQl2bWEtPnZtX3BhZ2VfcHJvdCA9IHZtX2dldF9wYWdlX3By
b3Qodm1hLT52bV9mbGFncyk7Ci0JaWYgKG9iai0+aW1wb3J0X2F0dGFjaCkKLQkJdm1hLT52bV9w
YWdlX3Byb3QgPSBwZ3Byb3Rfd3JpdGVjb21iaW5lKHZtYS0+dm1fcGFnZV9wcm90KTsKLQl2bWEt
PnZtX3BhZ2VfcHJvdCA9IHBncHJvdF9kZWNyeXB0ZWQodm1hLT52bV9wYWdlX3Byb3QpOwotCi0J
cmV0dXJuIDA7Ci19Ci0KLXN0YXRpYyB2b2lkICp1ZGxfZ2VtX29iamVjdF92bWFwKHN0cnVjdCBk
cm1fZ2VtX29iamVjdCAqb2JqKQotewotCXN0cnVjdCBkcm1fZ2VtX3NobWVtX29iamVjdCAqc2ht
ZW0gPSB0b19kcm1fZ2VtX3NobWVtX29iaihvYmopOwotCWludCByZXQ7Ci0KLQlyZXQgPSBtdXRl
eF9sb2NrX2ludGVycnVwdGlibGUoJnNobWVtLT52bWFwX2xvY2spOwotCWlmIChyZXQpCi0JCXJl
dHVybiBFUlJfUFRSKHJldCk7Ci0KLQlpZiAoc2htZW0tPnZtYXBfdXNlX2NvdW50KysgPiAwKQot
CQlnb3RvIG91dDsKLQotCXJldCA9IGRybV9nZW1fc2htZW1fZ2V0X3BhZ2VzKHNobWVtKTsKLQlp
ZiAocmV0KQotCQlnb3RvIGVycl96ZXJvX3VzZTsKLQotCWlmIChvYmotPmltcG9ydF9hdHRhY2gp
Ci0JCXNobWVtLT52YWRkciA9IGRtYV9idWZfdm1hcChvYmotPmltcG9ydF9hdHRhY2gtPmRtYWJ1
Zik7Ci0JZWxzZQotCQlzaG1lbS0+dmFkZHIgPSB2bWFwKHNobWVtLT5wYWdlcywgb2JqLT5zaXpl
ID4+IFBBR0VfU0hJRlQsCi0JCQkJICAgIFZNX01BUCwgUEFHRV9LRVJORUwpOwotCi0JaWYgKCFz
aG1lbS0+dmFkZHIpIHsKLQkJRFJNX0RFQlVHX0tNUygiRmFpbGVkIHRvIHZtYXAgcGFnZXNcbiIp
OwotCQlyZXQgPSAtRU5PTUVNOwotCQlnb3RvIGVycl9wdXRfcGFnZXM7Ci0JfQotCi1vdXQ6Ci0J
bXV0ZXhfdW5sb2NrKCZzaG1lbS0+dm1hcF9sb2NrKTsKLQlyZXR1cm4gc2htZW0tPnZhZGRyOwot
Ci1lcnJfcHV0X3BhZ2VzOgotCWRybV9nZW1fc2htZW1fcHV0X3BhZ2VzKHNobWVtKTsKLWVycl96
ZXJvX3VzZToKLQlzaG1lbS0+dm1hcF91c2VfY291bnQgPSAwOwotCW11dGV4X3VubG9jaygmc2ht
ZW0tPnZtYXBfbG9jayk7Ci0JcmV0dXJuIEVSUl9QVFIocmV0KTsKLX0KLQogc3RhdGljIGNvbnN0
IHN0cnVjdCBkcm1fZ2VtX29iamVjdF9mdW5jcyB1ZGxfZ2VtX29iamVjdF9mdW5jcyA9IHsKIAku
ZnJlZSA9IGRybV9nZW1fc2htZW1fZnJlZV9vYmplY3QsCiAJLnByaW50X2luZm8gPSBkcm1fZ2Vt
X3NobWVtX3ByaW50X2luZm8sCiAJLnBpbiA9IGRybV9nZW1fc2htZW1fcGluLAogCS51bnBpbiA9
IGRybV9nZW1fc2htZW1fdW5waW4sCiAJLmdldF9zZ190YWJsZSA9IGRybV9nZW1fc2htZW1fZ2V0
X3NnX3RhYmxlLAotCS52bWFwID0gdWRsX2dlbV9vYmplY3Rfdm1hcCwKKwkudm1hcCA9IGRybV9n
ZW1fc2htZW1fdm1hcCwKIAkudnVubWFwID0gZHJtX2dlbV9zaG1lbV92dW5tYXAsCi0JLm1tYXAg
PSB1ZGxfZ2VtX29iamVjdF9tbWFwLAorCS5tbWFwID0gZHJtX2dlbV9zaG1lbV9tbWFwLAogfTsK
IAogLyoKQEAgLTEwMSw2ICs0NCw3IEBAIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqdWRsX2RyaXZl
cl9nZW1fY3JlYXRlX29iamVjdChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCiAJb2JqID0gJnNo
bWVtLT5iYXNlOwogCW9iai0+ZnVuY3MgPSAmdWRsX2dlbV9vYmplY3RfZnVuY3M7CisJc2htZW0t
Pm1hcF9jYWNoZWQgPSB0cnVlOwogCiAJcmV0dXJuIG9iajsKIH0KLS0gCjIuMTguMgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
