Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA041EDFB8
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2020 10:24:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1891360E25
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2020 08:24:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0B7AB615ED; Thu,  4 Jun 2020 08:24:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2E44F65F7F;
	Thu,  4 Jun 2020 08:14:41 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 063F860E25
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2020 08:14:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EACB860BF7; Thu,  4 Jun 2020 08:14:29 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id 3D39B60BF7
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2020 08:12:52 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id c3so5009570wru.12
 for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Jun 2020 01:12:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mPAnyNEtS0uY+bUuM8GxOFOVsLMIhBxwz7ItIj7lR3A=;
 b=j2eh0PKeoQQ2mjHfitAjbmc306+VP6aTceuvOTbJR231IQ2rUmkAUtVGnNeHN+M1nE
 igSO+qsOSLUjVNufmQ2/IbIJ/97UXOvHHsC1gNMToyqAX1LyAsT91Ses8RzxBK82QHgZ
 g947byenbNz5cD6g7teRXS149s/IUGtvIYTwoo3E7eAOB+LmizUyFWvQh3hwSlLcFEYH
 b1Dl36QIj4zi/mz9eMsJXHDGAoA6x6q2baljR/2o5LcTdyIh28KQeSajtGmatTLX29f+
 B9smuA10ZYSuklCSJTFxhwVA3babxsXeRtJDKFyZwhl5chfQqC2yg1erv852xKXfOkMt
 lGzg==
X-Gm-Message-State: AOAM532XxUxbM+6xRKG1EmqZXA54OAjOBXnjpx4oqMdA9a3gfRYslfHC
 cEGzYIlvDKwZ8KnxXd6nyAcrCw==
X-Google-Smtp-Source: ABdhPJzqUtEw7Ja3sjtBGx+terae6/AGLT+5Iphc3r7rUYdY/P0UYh8UASXP+HWl66kBwvknWv+Dcg==
X-Received: by 2002:a5d:6391:: with SMTP id p17mr3458296wru.118.1591258371351; 
 Thu, 04 Jun 2020 01:12:51 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f11sm6873305wrj.2.2020.06.04.01.12.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 01:12:50 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  4 Jun 2020 10:12:21 +0200
Message-Id: <20200604081224.863494-16-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 15/18] drm/amdgpu: use dma-fence annotations
	for gpu reset code
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

VG8gaW1wcm92ZSBjb3ZlcmFnZSBhbHNvIGFubm90YXRlIHRoZSBncHUgcmVzZXQgY29kZSBpdHNl
bGYsIHNpbmNlCnRoYXQncyBjYWxsZWQgZnJvbSBvdGhlciBwbGFjZXMgdGhhbiBkcm0vc2NoZWR1
bGVyICh3aGljaCBpcyBhbHJlYWR5CmFubm90YXRlZCkuIEFubm90YXRpb25zIG5lc3RzLCBzbyB0
aGlzIGRvZXNuJ3QgYnJlYWsgYW55dGhpbmcsIGFuZAphbGxvd3MgZWFzaWVyIHRlc3RpbmcuCgpD
YzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKQ2M6IGxpbnV4LXJkbWFAdmdlci5rZXJuZWwub3JnCkNjOiBhbWQtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNYWFydGVuIExhbmto
b3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0
dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9kZXZpY2UuYyB8IDEwICsrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA5IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfZGV2aWNlLmMKaW5kZXggYTAyN2E4ZjdiMjgxLi5hYzAyODZhNWYyZmMgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmMKQEAgLTQyMTUsNiArNDIxNSw5
IEBAIGludCBhbWRncHVfZGV2aWNlX2dwdV9yZWNvdmVyKHN0cnVjdCBhbWRncHVfZGV2aWNlICph
ZGV2LAogCQkoYW1kZ3B1X2FzaWNfcmVzZXRfbWV0aG9kKGFkZXYpID09IEFNRF9SRVNFVF9NRVRI
T0RfQkFDTykgPwogCQl0cnVlIDogZmFsc2U7CiAJYm9vbCBhdWRpb19zdXNwZW5kZWQgPSBmYWxz
ZTsKKwlib29sIGZlbmNlX2Nvb2tpZTsKKworCWZlbmNlX2Nvb2tpZSA9IGRtYV9mZW5jZV9iZWdp
bl9zaWduYWxsaW5nKCk7CiAKIAkvKgogCSAqIEZsdXNoIFJBTSB0byBkaXNrIHNvIHRoYXQgYWZ0
ZXIgcmVib290CkBAIC00MjQzLDYgKzQyNDYsNyBAQCBpbnQgYW1kZ3B1X2RldmljZV9ncHVfcmVj
b3ZlcihzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwKIAkJRFJNX0lORk8oIkJhaWxpbmcgb24g
VERSIGZvciBzX2pvYjolbGx4LCBoaXZlOiAlbGx4IGFzIGFub3RoZXIgYWxyZWFkeSBpbiBwcm9n
cmVzcyIsCiAJCQkgIGpvYiA/IGpvYi0+YmFzZS5pZCA6IC0xLCBoaXZlLT5oaXZlX2lkKTsKIAkJ
bXV0ZXhfdW5sb2NrKCZoaXZlLT5oaXZlX2xvY2spOworCQlkbWFfZmVuY2VfZW5kX3NpZ25hbGxp
bmcoZmVuY2VfY29va2llKTsKIAkJcmV0dXJuIDA7CiAJfQogCkBAIC00MjUzLDggKzQyNTcsMTAg
QEAgaW50IGFtZGdwdV9kZXZpY2VfZ3B1X3JlY292ZXIoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFk
ZXYsCiAJICovCiAJSU5JVF9MSVNUX0hFQUQoJmRldmljZV9saXN0KTsKIAlpZiAoYWRldi0+Z21j
LnhnbWkubnVtX3BoeXNpY2FsX25vZGVzID4gMSkgewotCQlpZiAoIWhpdmUpCisJCWlmICghaGl2
ZSkgeworCQkJZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKGZlbmNlX2Nvb2tpZSk7CiAJCQlyZXR1
cm4gLUVOT0RFVjsKKwkJfQogCQlpZiAoIWxpc3RfaXNfZmlyc3QoJmFkZXYtPmdtYy54Z21pLmhl
YWQsICZoaXZlLT5kZXZpY2VfbGlzdCkpCiAJCQlsaXN0X3JvdGF0ZV90b19mcm9udCgmYWRldi0+
Z21jLnhnbWkuaGVhZCwgJmhpdmUtPmRldmljZV9saXN0KTsKIAkJZGV2aWNlX2xpc3RfaGFuZGxl
ID0gJmhpdmUtPmRldmljZV9saXN0OwpAQCAtNDI2OSw2ICs0Mjc1LDcgQEAgaW50IGFtZGdwdV9k
ZXZpY2VfZ3B1X3JlY292ZXIoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsCiAJCQlEUk1fSU5G
TygiQmFpbGluZyBvbiBURFIgZm9yIHNfam9iOiVsbHgsIGFzIGFub3RoZXIgYWxyZWFkeSBpbiBw
cm9ncmVzcyIsCiAJCQkJICBqb2IgPyBqb2ItPmJhc2UuaWQgOiAtMSk7CiAJCQltdXRleF91bmxv
Y2soJmhpdmUtPmhpdmVfbG9jayk7CisJCQlkbWFfZmVuY2VfZW5kX3NpZ25hbGxpbmcoZmVuY2Vf
Y29va2llKTsKIAkJCXJldHVybiAwOwogCQl9CiAKQEAgLTQ0MDksNiArNDQxNiw3IEBAIGludCBh
bWRncHVfZGV2aWNlX2dwdV9yZWNvdmVyKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LAogCiAJ
aWYgKHIpCiAJCWRldl9pbmZvKGFkZXYtPmRldiwgIkdQVSByZXNldCBlbmQgd2l0aCByZXQgPSAl
ZFxuIiwgcik7CisJZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKGZlbmNlX2Nvb2tpZSk7CiAJcmV0
dXJuIHI7CiB9CiAKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbmFyby1tbS1zaWcK
