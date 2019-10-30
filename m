Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0359FE9E44
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Oct 2019 16:03:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BC923618C2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Oct 2019 15:03:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B06DF6196E; Wed, 30 Oct 2019 15:03:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C2CA9618EE;
	Wed, 30 Oct 2019 15:03:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4EAE860BEA
 for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Oct 2019 15:03:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 38104618EE; Wed, 30 Oct 2019 15:03:02 +0000 (UTC)
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by lists.linaro.org (Postfix) with ESMTPS id 44DD160BEA
 for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Oct 2019 15:03:01 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1iPpUs-0001GN-AJ; Wed, 30 Oct 2019 15:02:54 +0000
From: Colin King <colin.king@canonical.com>
To: Sumit Semwal <sumit.semwal@linaro.org>, "Andrew F . Davis" <afd@ti.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>,
 Brian Starkey <brian.starkey@arm.com>,
 John Stultz <john.stultz@linaro.org>, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
Date: Wed, 30 Oct 2019 15:02:53 +0000
Message-Id: <20191030150253.10596-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH][next] dma-buf: heaps: remove redundant
	assignment to variable ret
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

RnJvbTogQ29saW4gSWFuIEtpbmcgPGNvbGluLmtpbmdAY2Fub25pY2FsLmNvbT4KClRoZSB2YXJp
YWJsZSByZXQgaXMgYmVpbmcgYXNzaWduZWQgd2l0aCBhIHZhbHVlIHRoYXQgaXMgbmV2ZXIKcmVh
ZCwgaXQgaXMgYmVpbmcgcmUtYXNzaWduZWQgdGhlIHNhbWUgdmFsdWUgb24gdGhlIGVycjAgZXhp
dApwYXRoLiBUaGUgYXNzaWdubWVudCBpcyByZWR1bmRhbnQgYW5kIGhlbmNlIGNhbiBiZSByZW1v
dmVkLgoKQWRkcmVzc2VzLUNvdmVyaXR5OiAoIlVudXNlZCB2YWx1ZSIpCkZpeGVzOiA0N2EzMmY5
YzEyMjYgKCJkbWEtYnVmOiBoZWFwczogQWRkIHN5c3RlbSBoZWFwIHRvIGRtYWJ1ZiBoZWFwcyIp
ClNpZ25lZC1vZmYtYnk6IENvbGluIElhbiBLaW5nIDxjb2xpbi5raW5nQGNhbm9uaWNhbC5jb20+
Ci0tLQogZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMgfCA0ICstLS0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFw
cy9zeXN0ZW1faGVhcC5jCmluZGV4IDQ1NTc4MmVmYmIzMi4uODE3YTE2NjdiZDU3IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYworKysgYi9kcml2ZXJzL2Rt
YS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYwpAQCAtNTUsMTAgKzU1LDggQEAgc3RhdGljIGludCBz
eXN0ZW1faGVhcF9hbGxvY2F0ZShzdHJ1Y3QgZG1hX2hlYXAgKmhlYXAsCiAJaGVscGVyX2J1ZmZl
ci0+cGFnZXMgPSBrbWFsbG9jX2FycmF5KGhlbHBlcl9idWZmZXItPnBhZ2Vjb3VudCwKIAkJCQkJ
ICAgICBzaXplb2YoKmhlbHBlcl9idWZmZXItPnBhZ2VzKSwKIAkJCQkJICAgICBHRlBfS0VSTkVM
KTsKLQlpZiAoIWhlbHBlcl9idWZmZXItPnBhZ2VzKSB7Ci0JCXJldCA9IC1FTk9NRU07CisJaWYg
KCFoZWxwZXJfYnVmZmVyLT5wYWdlcykKIAkJZ290byBlcnIwOwotCX0KIAogCWZvciAocGcgPSAw
OyBwZyA8IGhlbHBlcl9idWZmZXItPnBhZ2Vjb3VudDsgcGcrKykgewogCQkvKgotLSAKMi4yMC4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
