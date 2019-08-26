Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 511CE9D23B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Aug 2019 17:02:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7D2A6607EC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Aug 2019 15:02:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 708F161810; Mon, 26 Aug 2019 15:02:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 075496185A;
	Mon, 26 Aug 2019 14:58:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CA9D760B64
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Aug 2019 14:58:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BCEAB618C7; Mon, 26 Aug 2019 14:58:14 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by lists.linaro.org (Postfix) with ESMTPS id 0DF4A60B64
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Aug 2019 14:57:39 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id y8so15614597wrn.10
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Aug 2019 07:57:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VzBUiE/ogZAhjp90jROPDu+UjK33amdq7v+oc4hP904=;
 b=j9FOq2czJyyrx19CSZh2714vokU/fqKDDhPiB+5KCLQ97U2ZH7rxeg/5ZEMO4hfIzv
 +v8EOa6v/YkbxBI/Ed8lK7pkQwnGVMvVY1OE94IKkEYdqDOFe3p4e+EMhMCXXKhKxG34
 87ZYezMHQ9RGeEoZ1iyApTC8uWTJe2o8z33iRpd3fONVm9rjByQpELVak722ZArEID4h
 rWDExaEGM/bEKhlpqNx4Hgbu4Xr+IaJ9wDZBkj7mjXZKr8dcSwb3UNhoWe/N1yG+nB2b
 71Ri/rYTOtOWoyZJczKDJE7l0Fk5zir3mxKjbAJXaPNx4ueRcTkIbTQSBdnQxA0bbwmv
 LUSg==
X-Gm-Message-State: APjAAAXDmbLXX5NKSN6ROuUjfXHCgkZGByQrjAePoVjmqYAQvAuURLZ8
 WNad+fOm48n9xD9WLhnUDc8=
X-Google-Smtp-Source: APXvYqyDCnDu+DTvJ4zIxiOZfaHRxIyY/FgrC0DgTVEanLx5lWdq1VRdvxmoVc0VfGQPnxzyHi3PUw==
X-Received: by 2002:a5d:66d0:: with SMTP id k16mr22615213wrw.333.1566831458158; 
 Mon, 26 Aug 2019 07:57:38 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:b0e3:7a12:98e5:ca6])
 by smtp.gmail.com with ESMTPSA id z8sm9865624wmi.7.2019.08.26.07.57.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 07:57:37 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk,
 daniel.vetter@ffwll.ch, sumit.semwal@linaro.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Mon, 26 Aug 2019 16:57:28 +0200
Message-Id: <20190826145731.1725-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826145731.1725-1-christian.koenig@amd.com>
References: <20190826145731.1725-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 6/9] dma-buf/resv: add dma_resv_prune_fences
	v2
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

QWRkIGEgbmV3IGRtYV9yZXN2X3BydW5lX2ZlbmNlcygpIGZ1bmN0aW9uIHRvIGltcHJvdmUgbWVt
b3J5IG1hbmFnZW1lbnQuCgp2MjogZml4IHBvdGVudGlhbCBOVUxMIGRlcmVmCgpTaWduZWQtb2Zm
LWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJp
dmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgICAgICAgICAgICAgICAgIHwgMzcgKysrKysrKysrKysr
KysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYyAgIHwg
IDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2JhdGNoX3Bvb2wuYyB8ICAyICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jICAgICAgICAgICAgfCAgMyArLQogZHJp
dmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYyAgICAgICAgICAgICAgIHwgIDIgKy0KIGluY2x1ZGUv
bGludXgvZG1hLXJlc3YuaCAgICAgICAgICAgICAgICAgICB8ICAxICsKIDYgZmlsZXMgY2hhbmdl
ZCwgNDIgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2RtYS1idWYvZG1hLXJlc3YuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCmluZGV4IDQy
YThmM2YxMTY4MS4uNTlmYmNkOWY0YjAxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1h
LXJlc3YuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwpAQCAtMzAxLDYgKzMwMSw0
MyBAQCB2b2lkIGRtYV9yZXN2X2FkZF9leGNsX2ZlbmNlKHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBz
dHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkKIH0KIEVYUE9SVF9TWU1CT0woZG1hX3Jlc3ZfYWRkX2V4
Y2xfZmVuY2UpOwogCisvKioKKyAqIGRtYV9yZXN2X3BydW5lX2ZlbmNlcyAtIHBydW5lIHNpZ25h
bGVkIGZlbmNlcyBmcm9tIHRoZSByZXN2IG9iamVjdAorICogQG9iajogdGhlIHJlc2VydmF0aW9u
IG9iamVjdCB0byBwcnVuZQorICoKKyAqIFBydW5lIGFsbCBzaWduYWxlZCBmZW5jZXMgZnJvbSB0
aGUgcmVzZXJ2YXRpb24gb2JqZWN0LgorICovCit2b2lkIGRtYV9yZXN2X3BydW5lX2ZlbmNlcyhz
dHJ1Y3QgZG1hX3Jlc3YgKm9iaikKK3sKKwlzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqbGlzdDsKKwlz
dHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKKwl1bnNpZ25lZCBpbnQgaTsKKworCWRtYV9yZXN2X2Fz
c2VydF9oZWxkKG9iaik7CisKKwlmZW5jZSA9IGRtYV9yZXN2X2dldF9leGNsKG9iaik7CisJaWYg
KGZlbmNlICYmIGRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkpIHsKKwkJUkNVX0lOSVRfUE9J
TlRFUihvYmotPmZlbmNlX2V4Y2wsIE5VTEwpOworCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKKwl9
CisKKwlsaXN0ID0gZG1hX3Jlc3ZfZ2V0X2xpc3Qob2JqKTsKKwlpZiAoIWxpc3QpCisJCXJldHVy
bjsKKworCWZvciAoaSA9IDA7IGkgPCBsaXN0LT5zaGFyZWRfY291bnQ7ICsraSkgeworCQlmZW5j
ZSA9IHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQobGlzdC0+c2hhcmVkW2ldLAorCQkJCQkJICBk
bWFfcmVzdl9oZWxkKG9iaikpOworCisJCWlmICghZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNl
KSkKKwkJCWNvbnRpbnVlOworCisJCVJDVV9JTklUX1BPSU5URVIobGlzdC0+c2hhcmVkW2ldLCBk
bWFfZmVuY2VfZ2V0X3N0dWIoKSk7CisJCWRtYV9mZW5jZV9wdXQoZmVuY2UpOworCX0KK30KK0VY
UE9SVF9TWU1CT0woZG1hX3Jlc3ZfcHJ1bmVfZmVuY2VzKTsKKwogLyoqCiAqIGRtYV9yZXN2X2Nv
cHlfZmVuY2VzIC0gQ29weSBhbGwgZmVuY2VzIGZyb20gc3JjIHRvIGRzdC4KICogQGRzdDogdGhl
IGRlc3RpbmF0aW9uIHJlc2VydmF0aW9uIG9iamVjdApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV93YWl0LmMKaW5kZXggOGFmNTVjZDNlNjkwLi5hNzZkMzZmOGZiNzcgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYwpAQCAtODUsOCArODUsNyBAQCBpOTE1
X2dlbV9vYmplY3Rfd2FpdF9yZXNlcnZhdGlvbihzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YsCiAJICog
c2lnbmFsZWQuCiAJICovCiAJaWYgKHBydW5lX2ZlbmNlcyAmJiBkbWFfcmVzdl90cnlsb2NrKHJl
c3YpKSB7Ci0JCWlmIChkbWFfcmVzdl90ZXN0X3NpZ25hbGVkX3JjdShyZXN2LCB0cnVlKSkKLQkJ
CWRtYV9yZXN2X2FkZF9leGNsX2ZlbmNlKHJlc3YsIE5VTEwpOworCQlkbWFfcmVzdl9wcnVuZV9m
ZW5jZXMocmVzdik7CiAJCWRtYV9yZXN2X3VubG9jayhyZXN2KTsKIAl9CiAKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2JhdGNoX3Bvb2wuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2JhdGNoX3Bvb2wuYwppbmRleCA1ZjgyYTc2M2U2NGMuLjI3NGNm
NWIxOWZjOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fYmF0Y2hf
cG9vbC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2JhdGNoX3Bvb2wuYwpA
QCAtMTE0LDcgKzExNCw3IEBAIGk5MTVfZ2VtX2JhdGNoX3Bvb2xfZ2V0KHN0cnVjdCBpOTE1X2dl
bV9iYXRjaF9wb29sICpwb29sLAogCQkJICovCiAJCQlpZiAocmN1X2FjY2Vzc19wb2ludGVyKHJl
c3YtPmZlbmNlKSkgewogCQkJCWRtYV9yZXN2X2xvY2socmVzdiwgTlVMTCk7Ci0JCQkJZG1hX3Jl
c3ZfYWRkX2V4Y2xfZmVuY2UocmVzdiwgTlVMTCk7CisJCQkJZG1hX3Jlc3ZfcHJ1bmVfZmVuY2Vz
KHJlc3YpOwogCQkJCWRtYV9yZXN2X3VubG9jayhyZXN2KTsKIAkJCX0KIAkJfQpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfdm1hLmMKaW5kZXggZWJmZDAzZDExN2NkLi5mY2JlNDMzYTk2OGMgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV92bWEuYwpAQCAtMTAwLDggKzEwMCw3IEBAIHN0YXRpYyB2b2lkIF9faTkxNV92bWFf
cmV0aXJlKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQogCiAJLyogUHJ1bmUgdGhlIHNoYXJlZCBm
ZW5jZSBhcnJheXMgaWZmIGNvbXBsZXRlbHkgaWRsZSAoaW5jLiBleHRlcm5hbCkgKi8KIAlpZiAo
ZG1hX3Jlc3ZfdHJ5bG9jayhvYmotPmJhc2UucmVzdikpIHsKLQkJaWYgKGRtYV9yZXN2X3Rlc3Rf
c2lnbmFsZWRfcmN1KG9iai0+YmFzZS5yZXN2LCB0cnVlKSkKLQkJCWRtYV9yZXN2X2FkZF9leGNs
X2ZlbmNlKG9iai0+YmFzZS5yZXN2LCBOVUxMKTsKKwkJZG1hX3Jlc3ZfcHJ1bmVfZmVuY2VzKG9i
ai0+YmFzZS5yZXN2KTsKIAkJZG1hX3Jlc3ZfdW5sb2NrKG9iai0+YmFzZS5yZXN2KTsKIAl9CiAK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMgYi9kcml2ZXJzL2dwdS9k
cm0vdHRtL3R0bV9iby5jCmluZGV4IDU4ZDFmMmIyODEzMi4uZjc4ZjUyY2MyZTZkIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS90
dG0vdHRtX2JvLmMKQEAgLTE4MTgsNyArMTgxOCw3IEBAIGludCB0dG1fYm9fd2FpdChzdHJ1Y3Qg
dHRtX2J1ZmZlcl9vYmplY3QgKmJvLAogCWlmICh0aW1lb3V0ID09IDApCiAJCXJldHVybiAtRUJV
U1k7CiAKLQlkbWFfcmVzdl9hZGRfZXhjbF9mZW5jZShiby0+YmFzZS5yZXN2LCBOVUxMKTsKKwlk
bWFfcmVzdl9wcnVuZV9mZW5jZXMoYm8tPmJhc2UucmVzdik7CiAJcmV0dXJuIDA7CiB9CiBFWFBP
UlRfU1lNQk9MKHR0bV9ib193YWl0KTsKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLXJl
c3YuaCBiL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaAppbmRleCBlZTUwZDEwZjA1MmIuLjAzYjBm
OTU2ODJiMCAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oCisrKyBiL2luY2x1
ZGUvbGludXgvZG1hLXJlc3YuaApAQCAtMjc5LDYgKzI3OSw3IEBAIGludCBkbWFfcmVzdl9yZXNl
cnZlX3NoYXJlZChzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgdW5zaWduZWQgaW50IG51bV9mZW5jZXMp
Owogdm9pZCBkbWFfcmVzdl9hZGRfc2hhcmVkX2ZlbmNlKHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBz
dHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSk7CiAKIHZvaWQgZG1hX3Jlc3ZfYWRkX2V4Y2xfZmVuY2Uo
c3RydWN0IGRtYV9yZXN2ICpvYmosIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKTsKK3ZvaWQgZG1h
X3Jlc3ZfcHJ1bmVfZmVuY2VzKHN0cnVjdCBkbWFfcmVzdiAqb2JqKTsKIAogaW50IGRtYV9yZXN2
X2dldF9mZW5jZXNfcmN1KHN0cnVjdCBkbWFfcmVzdiAqb2JqLAogCQkJICAgIHN0cnVjdCBkbWFf
ZmVuY2UgKipwZmVuY2VfZXhjbCwKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
