Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E088498F7C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Aug 2019 11:37:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0AE5561810
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Aug 2019 09:37:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F0BA861885; Thu, 22 Aug 2019 09:37:25 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0CC1A61868;
	Thu, 22 Aug 2019 09:37:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 28CE061810
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Aug 2019 09:36:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1AE926186A; Thu, 22 Aug 2019 09:36:59 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by lists.linaro.org (Postfix) with ESMTPS id 19C0B61810
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Aug 2019 09:36:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7069F10C6967;
 Thu, 22 Aug 2019 09:36:57 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-60.ams2.redhat.com
 [10.36.116.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0329060126;
 Thu, 22 Aug 2019 09:36:55 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 524599AF5; Thu, 22 Aug 2019 11:36:54 +0200 (CEST)
From: Gerd Hoffmann <kraxel@redhat.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 22 Aug 2019 11:36:53 +0200
Message-Id: <20190822093654.23752-3-kraxel@redhat.com>
In-Reply-To: <20190822093654.23752-1-kraxel@redhat.com>
References: <20190822093654.23752-1-kraxel@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.65]); Thu, 22 Aug 2019 09:36:57 +0000 (UTC)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Gerd Hoffmann <kraxel@redhat.com>, open list <linux-kernel@vger.kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, laurent.pinchart@ideasonboard.com,
 daniel@ffwll.ch,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: [Linaro-mm-sig] [PATCH 2/3] udmabuf: check that __pad is zero
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

UmVwb3J0ZWQtYnk6IFlhbm4gRHJvbmVhdWQgPHlkcm9uZWF1ZEBvcHRleWEuY29tPgpTaWduZWQt
b2ZmLWJ5OiBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNvbT4KLS0tCiBkcml2ZXJzL2Rt
YS1idWYvdWRtYWJ1Zi5jIHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYv
dWRtYWJ1Zi5jCmluZGV4IDk2MzU4OTc0NThhMC4uNmMzZWM4ZmNlZjAxIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMK
QEAgLTEzNyw2ICsxMzcsOCBAQCBzdGF0aWMgbG9uZyB1ZG1hYnVmX2NyZWF0ZShjb25zdCBzdHJ1
Y3QgdWRtYWJ1Zl9jcmVhdGVfbGlzdCAqaGVhZCwKIAogCXBnbGltaXQgPSAoc2l6ZV9saW1pdF9t
YiAqIDEwMjQgKiAxMDI0KSA+PiBQQUdFX1NISUZUOwogCWZvciAoaSA9IDA7IGkgPCBoZWFkLT5j
b3VudDsgaSsrKSB7CisJCWlmIChsaXN0W2ldLl9fcGFkKQorCQkJZ290byBlcnI7CiAJCWlmICgh
SVNfQUxJR05FRChsaXN0W2ldLm9mZnNldCwgUEFHRV9TSVpFKSkKIAkJCWdvdG8gZXJyOwogCQlp
ZiAoIUlTX0FMSUdORUQobGlzdFtpXS5zaXplLCBQQUdFX1NJWkUpKQotLSAKMi4xOC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0
cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
