Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A27EB9D240
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Aug 2019 17:03:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3CB160756
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Aug 2019 15:03:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A2CAE607EC; Mon, 26 Aug 2019 15:03:31 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5E1DA61861;
	Mon, 26 Aug 2019 14:58:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 485D460B64
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Aug 2019 14:58:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3AB3661861; Mon, 26 Aug 2019 14:58:45 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by lists.linaro.org (Postfix) with ESMTPS id 897B8617FC
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Aug 2019 14:57:41 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id p74so15779452wme.4
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Aug 2019 07:57:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SElhppA69wDnCPCmKnv/cac9uYMqmLDib2ZQGXrzALk=;
 b=t47Ba4UCmAziVLvcS8GfkOqD1ohXR5Od8KohJn/DPVU8Q43tL/W4GTis5AdIJG909B
 BmTwlZSc5NNybykAIlZ9yPZdQl28ltC0Y6zEub3kcAN/B/B8P7N5lK/4T9LPoAYVDBV+
 5mG4RR0Yyk3YD/BIv3r3/1kC8+f3S3yY895xV8UMifoeInjY0it7T1e2ykz1ziUjWCtN
 LLosrPX4tIezaZrnISIJDAb8DF3JHUYhc5686ZWfhxfN/LQXXvv02VYmoC9Mx49kAG3Z
 DGM9wq/2YIsy6oBWHIbCOCOubOBKeQFPZWW06IyQjOW3vCUntnUTDB6+2Xm/VumhvHOX
 A/eQ==
X-Gm-Message-State: APjAAAVqsjOLqkyvZF/R/qitrw2Dt9GgkWk4Ruj1xkIjeeNKNLCnv2IG
 hIfsyvdujc4FdwEyPDAONgI=
X-Google-Smtp-Source: APXvYqxny+I1a9v/+X4Rng8uxT4VSTINE1OPTc5thRg4Zw86p9aZ7NthUOXGVnCV3n7A2R8R8gC7AA==
X-Received: by 2002:a1c:f103:: with SMTP id p3mr21370246wmh.18.1566831460608; 
 Mon, 26 Aug 2019 07:57:40 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:b0e3:7a12:98e5:ca6])
 by smtp.gmail.com with ESMTPSA id z8sm9865624wmi.7.2019.08.26.07.57.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 07:57:40 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk,
 daniel.vetter@ffwll.ch, sumit.semwal@linaro.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Mon, 26 Aug 2019 16:57:31 +0200
Message-Id: <20190826145731.1725-10-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826145731.1725-1-christian.koenig@amd.com>
References: <20190826145731.1725-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 9/9] dma-buf/resv: drop the sequence count
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

V2UgY2FuIG5vdyBncmFiIGEgcmVmZXJlbmNlIHRvIGFsbCB0aGUgZmVuY2VzIGluIHF1ZXN0aW9u
LApubyBuZWVkIGZvciB0aGUgc2VxdWVuY2UgY291bnRlciBhbnkgbW9yZS4KClNpZ25lZC1vZmYt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2
ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyAgICAgICAgICAgICAgIHwgMjIgKystLS0tLS0tLS0tLS0t
LS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYyB8IDEzICsr
KystLS0tLS0tLS0KIGluY2x1ZGUvbGludXgvZG1hLXJlc3YuaCAgICAgICAgICAgICAgICAgfCAg
MyAtLS0KIDMgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAzMiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyBiL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtcmVzdi5jCmluZGV4IDdmYTBlODZiNGU3NS4uNTEwNjdlZGZmOTMwIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJl
c3YuYwpAQCAtNTAsMTIgKzUwLDYgQEAKIERFRklORV9XRF9DTEFTUyhyZXNlcnZhdGlvbl93d19j
bGFzcyk7CiBFWFBPUlRfU1lNQk9MKHJlc2VydmF0aW9uX3d3X2NsYXNzKTsKIAotc3RydWN0IGxv
Y2tfY2xhc3Nfa2V5IHJlc2VydmF0aW9uX3NlcWNvdW50X2NsYXNzOwotRVhQT1JUX1NZTUJPTChy
ZXNlcnZhdGlvbl9zZXFjb3VudF9jbGFzcyk7Ci0KLWNvbnN0IGNoYXIgcmVzZXJ2YXRpb25fc2Vx
Y291bnRfc3RyaW5nW10gPSAicmVzZXJ2YXRpb25fc2VxY291bnQiOwotRVhQT1JUX1NZTUJPTChy
ZXNlcnZhdGlvbl9zZXFjb3VudF9zdHJpbmcpOwotCiBzdGF0aWMgdm9pZCBkbWFfcmVzdl9mZW5j
ZXNfaW5pdChzdHJ1Y3QgZG1hX3Jlc3ZfZmVuY2VzICpmZW5jZXMpCiB7CiAJUkNVX0lOSVRfUE9J
TlRFUihmZW5jZXMtPmZlbmNlLCBOVUxMKTsKQEAgLTI0NCw4ICsyMzgsNiBAQCB2b2lkIGRtYV9y
ZXN2X2luaXQoc3RydWN0IGRtYV9yZXN2ICpvYmopCiB7CiAJd3dfbXV0ZXhfaW5pdCgmb2JqLT5s
b2NrLCAmcmVzZXJ2YXRpb25fd3dfY2xhc3MpOwogCi0JX19zZXFjb3VudF9pbml0KCZvYmotPnNl
cSwgcmVzZXJ2YXRpb25fc2VxY291bnRfc3RyaW5nLAotCQkJJnJlc2VydmF0aW9uX3NlcWNvdW50
X2NsYXNzKTsKIAlSQ1VfSU5JVF9QT0lOVEVSKG9iai0+ZmVuY2VfZXhjbCwgTlVMTCk7CiAJZG1h
X3Jlc3ZfZmVuY2VzX2luaXQoJm9iai0+c2hhcmVkKTsKIH0KQEAgLTMyMSwxMyArMzEzLDggQEAg
dm9pZCBkbWFfcmVzdl9hZGRfZXhjbF9mZW5jZShzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2UpCiAKIAlkbWFfZmVuY2VfZ2V0KGZlbmNlKTsKIAotCXByZWVtcHRf
ZGlzYWJsZSgpOwotCXdyaXRlX3NlcWNvdW50X2JlZ2luKCZvYmotPnNlcSk7Ci0JLyogd3JpdGVf
c2VxY291bnRfYmVnaW4gcHJvdmlkZXMgdGhlIG5lY2Vzc2FyeSBtZW1vcnkgYmFycmllciAqLwot
CVJDVV9JTklUX1BPSU5URVIob2JqLT5mZW5jZV9leGNsLCBmZW5jZSk7CisJcmN1X2Fzc2lnbl9w
b2ludGVyKG9iai0+ZmVuY2VfZXhjbCwgZmVuY2UpOwogCWRtYV9yZXN2X2ZlbmNlc19zZXQob2Jq
LCAmb2JqLT5zaGFyZWQsIE5VTEwpOwotCXdyaXRlX3NlcWNvdW50X2VuZCgmb2JqLT5zZXEpOwot
CXByZWVtcHRfZW5hYmxlKCk7CiAKIAlkbWFfZmVuY2VfcHV0KG9sZF9mZW5jZSk7CiB9CkBAIC0z
NzcsMTMgKzM2NCw4IEBAIGludCBkbWFfcmVzdl9jb3B5X2ZlbmNlcyhzdHJ1Y3QgZG1hX3Jlc3Yg
KmRzdCwgc3RydWN0IGRtYV9yZXN2ICpzcmMpCiAKIAlvbGQgPSBkbWFfcmVzdl9nZXRfZXhjbChk
c3QpOwogCi0JcHJlZW1wdF9kaXNhYmxlKCk7Ci0Jd3JpdGVfc2VxY291bnRfYmVnaW4oJmRzdC0+
c2VxKTsKLQkvKiB3cml0ZV9zZXFjb3VudF9iZWdpbiBwcm92aWRlcyB0aGUgbmVjZXNzYXJ5IG1l
bW9yeSBiYXJyaWVyICovCi0JUkNVX0lOSVRfUE9JTlRFUihkc3QtPmZlbmNlX2V4Y2wsIGV4Y2wp
OworCXJjdV9hc3NpZ25fcG9pbnRlcihkc3QtPmZlbmNlX2V4Y2wsIGV4Y2wpOwogCWRtYV9yZXN2
X2ZlbmNlc19zZXQoZHN0LCAmZHN0LT5zaGFyZWQsIHNoYXJlZCk7Ci0Jd3JpdGVfc2VxY291bnRf
ZW5kKCZkc3QtPnNlcSk7Ci0JcHJlZW1wdF9lbmFibGUoKTsKIAogCWRtYV9mZW5jZV9wdXQob2xk
KTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3ku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5LmMKaW5kZXggMGVmMzM4
YThjZDlmLi4zNDI1NmZmZjFmOTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9idXN5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X2J1c3kuYwpAQCAtODYsNyArODYsNiBAQCBpOTE1X2dlbV9idXN5X2lvY3RsKHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJc3RydWN0IGRtYV9mZW5jZV9hcnJheV9jdXJzb3Ig
Y3Vyc29yOwogCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCAqc2hhcmVkOwogCXN0cnVjdCBkcm1f
aTkxNV9nZW1fb2JqZWN0ICpvYmo7Ci0JdW5zaWduZWQgaW50IHNlcTsKIAlpbnQgZXJyOwogCiAJ
ZXJyID0gLUVOT0VOVDsKQEAgLTExMiwyMiArMTExLDE4IEBAIGk5MTVfZ2VtX2J1c3lfaW9jdGwo
c3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAkgKiB0byByZXBvcnQgdGhlIG92
ZXJhbGwgYnVzeW5lc3MuIFRoaXMgaXMgd2hhdCB0aGUgd2FpdC1pb2N0bCBkb2VzLgogCSAqCiAJ
ICovCi1yZXRyeToKLQlzZXEgPSByYXdfcmVhZF9zZXFjb3VudCgmb2JqLT5iYXNlLnJlc3YtPnNl
cSk7CisJc2hhcmVkID0gZG1hX3Jlc3ZfZmVuY2VzX2dldF9yY3UoJm9iai0+YmFzZS5yZXN2LT5z
aGFyZWQpOworCWZlbmNlID0gZG1hX2ZlbmNlX2dldF9yY3Vfc2FmZSgmb2JqLT5iYXNlLnJlc3Yt
PmZlbmNlX2V4Y2wpOwogCiAJLyogVHJhbnNsYXRlIHRoZSBleGNsdXNpdmUgZmVuY2UgdG8gdGhl
IFJFQUQgKmFuZCogV1JJVEUgZW5naW5lICovCi0JYXJncy0+YnVzeSA9Ci0JCWJ1c3lfY2hlY2tf
d3JpdGVyKHJjdV9kZXJlZmVyZW5jZShvYmotPmJhc2UucmVzdi0+ZmVuY2VfZXhjbCkpOworCWFy
Z3MtPmJ1c3kgPSBidXN5X2NoZWNrX3dyaXRlcihmZW5jZSk7CisJZG1hX2ZlbmNlX3B1dChmZW5j
ZSk7CiAKIAkvKiBUcmFuc2xhdGUgc2hhcmVkIGZlbmNlcyB0byBSRUFEIHNldCBvZiBlbmdpbmVz
ICovCi0Jc2hhcmVkID0gZG1hX3Jlc3ZfZmVuY2VzX2dldF9yY3UoJm9iai0+YmFzZS5yZXN2LT5z
aGFyZWQpOwogCWRtYV9mZW5jZV9hcnJheV9mb3JfZWFjaChmZW5jZSwgY3Vyc29yLCBzaGFyZWQp
CiAJCWFyZ3MtPmJ1c3kgfD0gYnVzeV9jaGVja19yZWFkZXIoZmVuY2UpOwogCWRtYV9mZW5jZV9w
dXQoc2hhcmVkKTsKIAotCWlmIChhcmdzLT5idXN5ICYmIHJlYWRfc2VxY291bnRfcmV0cnkoJm9i
ai0+YmFzZS5yZXN2LT5zZXEsIHNlcSkpCi0JCWdvdG8gcmV0cnk7Ci0KIAllcnIgPSAwOwogb3V0
OgogCXJjdV9yZWFkX3VubG9jaygpOwpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtcmVz
di5oIGIvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oCmluZGV4IDA0MGUzZjA0YThhZC4uNDRmOTc1
ZDc3MmU4IDEwMDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKKysrIGIvaW5jbHVk
ZS9saW51eC9kbWEtcmVzdi5oCkBAIC00OCw4ICs0OCw2IEBACiBzdHJ1Y3QgZG1hX3Jlc3Y7CiAK
IGV4dGVybiBzdHJ1Y3Qgd3dfY2xhc3MgcmVzZXJ2YXRpb25fd3dfY2xhc3M7Ci1leHRlcm4gc3Ry
dWN0IGxvY2tfY2xhc3Nfa2V5IHJlc2VydmF0aW9uX3NlcWNvdW50X2NsYXNzOwotZXh0ZXJuIGNv
bnN0IGNoYXIgcmVzZXJ2YXRpb25fc2VxY291bnRfc3RyaW5nW107CiAKIC8qKgogICogc3RydWN0
IGRtYV9yZXN2X2ZlbmNlcyAtIGZlbmNlcyBpbnNpZGUgYSByZXNlcnZhdGlvbiBvYmplY3QKQEAg
LTgxLDcgKzc5LDYgQEAgdm9pZCBkbWFfcmVzdl9mZW5jZXNfY29tbWl0KHN0cnVjdCBkbWFfcmVz
diAqb2JqLAogICovCiBzdHJ1Y3QgZG1hX3Jlc3YgewogCXN0cnVjdCB3d19tdXRleCBsb2NrOwot
CXNlcWNvdW50X3Qgc2VxOwogCiAJc3RydWN0IGRtYV9mZW5jZSBfX3JjdSAqZmVuY2VfZXhjbDsK
IAlzdHJ1Y3QgZG1hX3Jlc3ZfZmVuY2VzCXNoYXJlZDsKLS0gCjIuMTcuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
