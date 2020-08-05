Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E4C23CA3F
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Aug 2020 13:27:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8152066027
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Aug 2020 11:27:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 748196604B; Wed,  5 Aug 2020 11:27:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9FB0C6601C;
	Wed,  5 Aug 2020 11:27:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 11CB360D73
 for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Aug 2020 11:27:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EDEE76601C; Wed,  5 Aug 2020 11:27:02 +0000 (UTC)
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by lists.linaro.org (Postfix) with ESMTPS id 0038760D73
 for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Aug 2020 11:27:01 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1k3HZQ-0008I0-5Z; Wed, 05 Aug 2020 11:26:56 +0000
From: Colin King <colin.king@canonical.com>
To: Laura Abbott <labbott@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>,
 Hridya Valsaraju <hridya@google.com>,
 Suren Baghdasaryan <surenb@google.com>, devel@driverdev.osuosl.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org
Date: Wed,  5 Aug 2020 12:26:55 +0100
Message-Id: <20200805112655.17696-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH] staging: ion: fix spelling mistake in
	function name "detatch" -> "detach"
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

RnJvbTogQ29saW4gSWFuIEtpbmcgPGNvbGluLmtpbmdAY2Fub25pY2FsLmNvbT4KClRoZXJlIGlz
IGEgc3BlbGxpbmcgbWlzdGFrZSBpbiB0aGUgZnVuY3Rpb24gbmFtZSBpb25fZG1hX2J1Zl9kZXRh
dGNoLgpGaXggaXQgYnkgcmVtb3ZpbmcgdGhlIGV4dHJhbmVvdXMgdC4KClNpZ25lZC1vZmYtYnk6
IENvbGluIElhbiBLaW5nIDxjb2xpbi5raW5nQGNhbm9uaWNhbC5jb20+Ci0tLQogZHJpdmVycy9z
dGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5jIHwgNiArKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5n
L2FuZHJvaWQvaW9uL2lvbi5jIGIvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5jCmlu
ZGV4IDNjOWYwOTUwNmZmYS4uZTFmZTAzY2ViN2YxIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdp
bmcvYW5kcm9pZC9pb24vaW9uLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lv
bi5jCkBAIC0yMDUsOCArMjA1LDggQEAgc3RhdGljIGludCBpb25fZG1hX2J1Zl9hdHRhY2goc3Ry
dWN0IGRtYV9idWYgKmRtYWJ1ZiwKIAlyZXR1cm4gMDsKIH0KIAotc3RhdGljIHZvaWQgaW9uX2Rt
YV9idWZfZGV0YXRjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLAotCQkJCXN0cnVjdCBkbWFfYnVm
X2F0dGFjaG1lbnQgKmF0dGFjaG1lbnQpCitzdGF0aWMgdm9pZCBpb25fZG1hX2J1Zl9kZXRhY2go
c3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwKKwkJCSAgICAgICBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2ht
ZW50ICphdHRhY2htZW50KQogewogCXN0cnVjdCBpb25fZG1hX2J1Zl9hdHRhY2htZW50ICphID0g
YXR0YWNobWVudC0+cHJpdjsKIAlzdHJ1Y3QgaW9uX2J1ZmZlciAqYnVmZmVyID0gZG1hYnVmLT5w
cml2OwpAQCAtMzMxLDcgKzMzMSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9vcHMg
ZG1hX2J1Zl9vcHMgPSB7CiAJLm1tYXAgPSBpb25fbW1hcCwKIAkucmVsZWFzZSA9IGlvbl9kbWFf
YnVmX3JlbGVhc2UsCiAJLmF0dGFjaCA9IGlvbl9kbWFfYnVmX2F0dGFjaCwKLQkuZGV0YWNoID0g
aW9uX2RtYV9idWZfZGV0YXRjaCwKKwkuZGV0YWNoID0gaW9uX2RtYV9idWZfZGV0YWNoLAogCS5i
ZWdpbl9jcHVfYWNjZXNzID0gaW9uX2RtYV9idWZfYmVnaW5fY3B1X2FjY2VzcywKIAkuZW5kX2Nw
dV9hY2Nlc3MgPSBpb25fZG1hX2J1Zl9lbmRfY3B1X2FjY2VzcywKIH07Ci0tIAoyLjI3LjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xp
c3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
