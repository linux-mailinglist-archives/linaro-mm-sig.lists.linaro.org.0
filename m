Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B8EF940D8A3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 13:31:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0103B6314A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 11:31:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 90F2666BC1; Thu, 16 Sep 2021 11:31:09 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C2D6B69CDE;
	Thu, 16 Sep 2021 11:31:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B9F6C62630
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:30:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B474062DEF; Thu, 16 Sep 2021 11:30:51 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by lists.linaro.org (Postfix) with ESMTPS id 8A17262630
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:30:49 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id t8so8945402wrq.4
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 04:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=y25SoRt71DSrY9l8OA7FG8UFi1OexT8w3ra7nEQ11Rk=;
 b=LtjaSpHLRrgL4YyOepQfsvAlki7JLb/UranEKRBD1+4VhcwdIGLWhNQ6STQfY+yZOO
 Gt0H+eCfjzEnIfJJwyCax1e1i2GtosTo5xfp69ztT9R2Gm5YAwSwfaDvTVJNPSaxE2ga
 99BrFqsFORPiVZ/QjsXjUSGK7j3+5x3LLD5iBKmTZzVnxSc+BpxdM3fIjqPpKK0XgmRH
 srjic9TTuBdxj0svLPzE7uyJwCkV5NUmnSeSrq8nwQ5rrO9QHaG89de3oskEgOR62yXY
 NDgpxzgus+Tj+4FtVTpIpwWEHog8SiQIumaLlpKLtnvDjdT0GXvAnxdBNaAIAN57W7tG
 Us2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y25SoRt71DSrY9l8OA7FG8UFi1OexT8w3ra7nEQ11Rk=;
 b=PcQUC4kDrAW7cTrktclVbmFlBiw0lWMKeopbivm5Lhx+EwTsw+NVp2WjRlAu0dwcMU
 tOPe/pidraLa6o9fdu6uPjgnIuhCLp18umN0fitg9XmhRq8V8XqhdtAV6PvYieVBz82o
 olvLW5gEoEpaO/msV6ZwYoJiYDQJ190aeC685YSmpc6mwrbXlXO9VsVv+S5htEIXRCCM
 w20BboRWAu3B5S5SASYh/PqzNcfuLllW867PmAUSdhIGYcJwktD+/G4cGW6i4rjbgKtP
 /Lp4cDamY8sRJbdeSOLzJtHAfzUswLkvLHobGdRyBu0dcOwTDt4GsLgRNgv6vyuYXTY7
 577w==
X-Gm-Message-State: AOAM533pPlrV/6cH19DnDXYJn9tfywhrho18Bk+v9plYaKY5lE9NUM9x
 7H5etUTLTJ5g+IYw64aQbwxr7tWdvMgObL4A
X-Google-Smtp-Source: ABdhPJwDyKTk3A7U5to4K+gKuCqH+kI3OVDkyX2dJen/HEpJxjzz5VmO3zU7pvsWfcWHGqEhWJHuZA==
X-Received: by 2002:adf:eb83:: with SMTP id t3mr5303613wrn.365.1631791848677; 
 Thu, 16 Sep 2021 04:30:48 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c17sm3803674wrn.54.2021.09.16.04.30.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 04:30:48 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 13:30:19 +0200
Message-Id: <20210916113042.3631-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916113042.3631-1-christian.koenig@amd.com>
References: <20210916113042.3631-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 03/26] dma-buf: use new iterator in
 dma_resv_copy_fences
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

VGhpcyBtYWtlcyB0aGUgZnVuY3Rpb24gbXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4CnJl
dHJ5IGxvZ2ljIGlzIG5vdyBoYW5kbGVkIGVsc2Ugd2hlcmUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJp
c3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9kbWEt
YnVmL2RtYS1yZXN2LmMgfCA4MSArKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDMyIGluc2VydGlvbnMoKyksIDQ5IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2Rt
YS1yZXN2LmMKaW5kZXggYmJmMzZhMDhjZWQwLi45MWMwNDBjYjdkNjMgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5j
CkBAIC00MzEsNzQgKzQzMSw1NyBAQCBFWFBPUlRfU1lNQk9MX0dQTChkbWFfcmVzdl93YWxrX3Vu
bG9ja2VkKTsKICAqLwogaW50IGRtYV9yZXN2X2NvcHlfZmVuY2VzKHN0cnVjdCBkbWFfcmVzdiAq
ZHN0LCBzdHJ1Y3QgZG1hX3Jlc3YgKnNyYykKIHsKLQlzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqc3Jj
X2xpc3QsICpkc3RfbGlzdDsKLQlzdHJ1Y3QgZG1hX2ZlbmNlICpvbGQsICpuZXc7Ci0JdW5zaWdu
ZWQgaW50IGk7CisJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOworCXN0cnVjdCBkbWFfcmVz
dl9saXN0ICpsaXN0OworCXN0cnVjdCBkbWFfZmVuY2UgKmYsICpleGNsOwogCiAJZG1hX3Jlc3Zf
YXNzZXJ0X2hlbGQoZHN0KTsKIAotCXJjdV9yZWFkX2xvY2soKTsKLQlzcmNfbGlzdCA9IGRtYV9y
ZXN2X3NoYXJlZF9saXN0KHNyYyk7CisJbGlzdCA9IE5VTEw7CisJZXhjbCA9IE5VTEw7CiAKLXJl
dHJ5OgotCWlmIChzcmNfbGlzdCkgewotCQl1bnNpZ25lZCBpbnQgc2hhcmVkX2NvdW50ID0gc3Jj
X2xpc3QtPnNoYXJlZF9jb3VudDsKKwlyY3VfcmVhZF9sb2NrKCk7CisJZG1hX3Jlc3ZfZm9yX2Vh
Y2hfZmVuY2VfdW5sb2NrZWQoZHN0LCAmY3Vyc29yLCB0cnVlLCBmKSB7CiAKLQkJcmN1X3JlYWRf
dW5sb2NrKCk7CisJCWlmIChjdXJzb3IuaXNfZmlyc3QpIHsKKwkJCWRtYV9yZXN2X2xpc3RfZnJl
ZShsaXN0KTsKKwkJCWRtYV9mZW5jZV9wdXQoZXhjbCk7CiAKLQkJZHN0X2xpc3QgPSBkbWFfcmVz
dl9saXN0X2FsbG9jKHNoYXJlZF9jb3VudCk7Ci0JCWlmICghZHN0X2xpc3QpCi0JCQlyZXR1cm4g
LUVOT01FTTsKKwkJCWlmIChjdXJzb3IuZmVuY2VzKSB7CisJCQkJdW5zaWduZWQgaW50IGNudCA9
IGN1cnNvci5mZW5jZXMtPnNoYXJlZF9jb3VudDsKIAotCQlyY3VfcmVhZF9sb2NrKCk7Ci0JCXNy
Y19saXN0ID0gZG1hX3Jlc3Zfc2hhcmVkX2xpc3Qoc3JjKTsKLQkJaWYgKCFzcmNfbGlzdCB8fCBz
cmNfbGlzdC0+c2hhcmVkX2NvdW50ID4gc2hhcmVkX2NvdW50KSB7Ci0JCQlrZnJlZShkc3RfbGlz
dCk7Ci0JCQlnb3RvIHJldHJ5OwotCQl9CisJCQkJcmN1X3JlYWRfdW5sb2NrKCk7CisJCQkJbGlz
dCA9IGRtYV9yZXN2X2xpc3RfYWxsb2MoY250KTsKKwkJCQlpZiAoIWxpc3QpCisJCQkJCXJldHVy
biAtRU5PTUVNOwogCi0JCWRzdF9saXN0LT5zaGFyZWRfY291bnQgPSAwOwotCQlmb3IgKGkgPSAw
OyBpIDwgc3JjX2xpc3QtPnNoYXJlZF9jb3VudDsgKytpKSB7Ci0JCQlzdHJ1Y3QgZG1hX2ZlbmNl
IF9fcmN1ICoqZHN0OwotCQkJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7CisJCQkJbGlzdC0+c2hh
cmVkX2NvdW50ID0gMDsKKwkJCQlyY3VfcmVhZF9sb2NrKCk7CiAKLQkJCWZlbmNlID0gcmN1X2Rl
cmVmZXJlbmNlKHNyY19saXN0LT5zaGFyZWRbaV0pOwotCQkJaWYgKHRlc3RfYml0KERNQV9GRU5D
RV9GTEFHX1NJR05BTEVEX0JJVCwKLQkJCQkgICAgICZmZW5jZS0+ZmxhZ3MpKQotCQkJCWNvbnRp
bnVlOwotCi0JCQlpZiAoIWRtYV9mZW5jZV9nZXRfcmN1KGZlbmNlKSkgewotCQkJCWRtYV9yZXN2
X2xpc3RfZnJlZShkc3RfbGlzdCk7Ci0JCQkJc3JjX2xpc3QgPSBkbWFfcmVzdl9zaGFyZWRfbGlz
dChzcmMpOwotCQkJCWdvdG8gcmV0cnk7CisJCQl9IGVsc2UgeworCQkJCWxpc3QgPSBOVUxMOwog
CQkJfQorCQkJZXhjbCA9IE5VTEw7CisJCX0KIAotCQkJaWYgKGRtYV9mZW5jZV9pc19zaWduYWxl
ZChmZW5jZSkpIHsKLQkJCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKLQkJCQljb250aW51ZTsKLQkJ
CX0KKwkJaWYgKGRtYV9yZXN2X2l0ZXJfaXNfZXhjbHVzaXZlKCZjdXJzb3IpKQorCQkJZXhjbCA9
IGY7CisJCWVsc2UKKwkJCVJDVV9JTklUX1BPSU5URVIobGlzdC0+c2hhcmVkW2xpc3QtPnNoYXJl
ZF9jb3VudCsrXSwgZik7CiAKLQkJCWRzdCA9ICZkc3RfbGlzdC0+c2hhcmVkW2RzdF9saXN0LT5z
aGFyZWRfY291bnQrK107Ci0JCQlyY3VfYXNzaWduX3BvaW50ZXIoKmRzdCwgZmVuY2UpOwotCQl9
Ci0JfSBlbHNlIHsKLQkJZHN0X2xpc3QgPSBOVUxMOworCQkvKiBEb24ndCBkcm9wIHRoZSByZWZl
cmVuY2UgKi8KKwkJZiA9IE5VTEw7CiAJfQogCi0JbmV3ID0gZG1hX2ZlbmNlX2dldF9yY3Vfc2Fm
ZSgmc3JjLT5mZW5jZV9leGNsKTsKIAlyY3VfcmVhZF91bmxvY2soKTsKIAotCXNyY19saXN0ID0g
ZG1hX3Jlc3Zfc2hhcmVkX2xpc3QoZHN0KTsKLQlvbGQgPSBkbWFfcmVzdl9leGNsX2ZlbmNlKGRz
dCk7Ci0KIAl3cml0ZV9zZXFjb3VudF9iZWdpbigmZHN0LT5zZXEpOwotCS8qIHdyaXRlX3NlcWNv
dW50X2JlZ2luIHByb3ZpZGVzIHRoZSBuZWNlc3NhcnkgbWVtb3J5IGJhcnJpZXIgKi8KLQlSQ1Vf
SU5JVF9QT0lOVEVSKGRzdC0+ZmVuY2VfZXhjbCwgbmV3KTsKLQlSQ1VfSU5JVF9QT0lOVEVSKGRz
dC0+ZmVuY2UsIGRzdF9saXN0KTsKKwlleGNsID0gcmN1X3JlcGxhY2VfcG9pbnRlcihkc3QtPmZl
bmNlX2V4Y2wsIGV4Y2wsIGRtYV9yZXN2X2hlbGQoZHN0KSk7CisJbGlzdCA9IHJjdV9yZXBsYWNl
X3BvaW50ZXIoZHN0LT5mZW5jZSwgbGlzdCwgZG1hX3Jlc3ZfaGVsZChkc3QpKTsKIAl3cml0ZV9z
ZXFjb3VudF9lbmQoJmRzdC0+c2VxKTsKIAotCWRtYV9yZXN2X2xpc3RfZnJlZShzcmNfbGlzdCk7
Ci0JZG1hX2ZlbmNlX3B1dChvbGQpOworCWRtYV9yZXN2X2xpc3RfZnJlZShsaXN0KTsKKwlkbWFf
ZmVuY2VfcHV0KGV4Y2wpOwogCiAJcmV0dXJuIDA7CiB9Ci0tIAoyLjI1LjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFy
by5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
