Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id ED36E1B6DE7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 08:14:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A7F366038
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 06:14:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0DBD76603A; Fri, 24 Apr 2020 06:14:22 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_PASS,SUBJ_OBFU_PUNCT_FEW autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E81166603;
	Fri, 24 Apr 2020 05:30:25 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7DCB3665F7
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Apr 2020 17:13:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 71DF466608; Thu,  9 Apr 2020 17:13:31 +0000 (UTC)
Received: from vkten.in (vkten.in [104.244.73.96])
 by lists.linaro.org (Postfix) with ESMTP id 3CA99665F7
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Apr 2020 17:13:30 +0000 (UTC)
Received: (qmail 1341 invoked from network); 9 Apr 2020 17:13:26 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.209.168.92)
 de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
 by vkten with ESMTPSA; 9 Apr 2020 17:13:26 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Thu,  9 Apr 2020 22:43:18 +0530
Message-Id: <20200409171318.1730-1-vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Fri, 24 Apr 2020 05:29:38 +0000
Cc: devel@driverdev.osuosl.org, R Veera Kumar <vkor@vkten.in>,
 Todd Kjos <tkjos@android.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Subject: [Linaro-mm-sig] [PATCH v2] staging: android: ion: use macro
	DEFINE_DEBUGFS_ATTRIBUTE to define debugfs fops
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

SXQgaXMgbW9yZSBjbGVhciB0byB1c2UgREVGSU5FX0RFQlVHRlNfQVRUUklCVVRFIHRvIGRlZmlu
ZSBkZWJ1Z2ZzIGZpbGUKb3BlcmF0aW9uIHJhdGhlciB0aGFuIERFRklORV9TSU1QTEVfQVRUUklC
VVRFLgoKRm91bmQgdXNpbmcgY29jY2luZWxsZS4KClNpZ25lZC1vZmYtYnk6IFIgVmVlcmEgS3Vt
YXIgPHZrb3JAdmt0ZW4uaW4+Ci0tLQpDaGFuZ2VzIGluIHYyOgogLSBHaXZlIGNvcnJlY3QgZXhw
bGFuYXRpb24gZm9yIHBhdGNoCiAtIEFkanVzdCBnaXQgY29tbWl0IHRhZyBhbmQgbXNnIGFjY29y
ZGluZ2x5Ci0tLQogZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5jIHwgNCArKy0tCiAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYyBiL2RyaXZlcnMvc3RhZ2luZy9h
bmRyb2lkL2lvbi9pb24uYwppbmRleCAzOGI1MWVhY2U0ZjkuLmRiZTQwMThhNmY4MyAxMDA2NDQK
LS0tIGEvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5jCisrKyBiL2RyaXZlcnMvc3Rh
Z2luZy9hbmRyb2lkL2lvbi9pb24uYwpAQCAtNTU0LDggKzU1NCw4IEBAIHN0YXRpYyBpbnQgZGVi
dWdfc2hyaW5rX2dldCh2b2lkICpkYXRhLCB1NjQgKnZhbCkKIAlyZXR1cm4gMDsKIH0KIAotREVG
SU5FX1NJTVBMRV9BVFRSSUJVVEUoZGVidWdfc2hyaW5rX2ZvcHMsIGRlYnVnX3Nocmlua19nZXQs
Ci0JCQlkZWJ1Z19zaHJpbmtfc2V0LCAiJWxsdVxuIik7CitERUZJTkVfREVCVUdGU19BVFRSSUJV
VEUoZGVidWdfc2hyaW5rX2ZvcHMsIGRlYnVnX3Nocmlua19nZXQsCisJCQkgZGVidWdfc2hyaW5r
X3NldCwgIiVsbHVcbiIpOwogCiB2b2lkIGlvbl9kZXZpY2VfYWRkX2hlYXAoc3RydWN0IGlvbl9o
ZWFwICpoZWFwKQogewotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGluYXJvLW1tLXNpZwo=
