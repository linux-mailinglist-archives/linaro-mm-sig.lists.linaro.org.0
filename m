Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3D5120EE9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Dec 2019 17:11:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8ABC160EFE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Dec 2019 16:11:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7FBA96087F; Mon, 16 Dec 2019 16:11:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AD04161655;
	Mon, 16 Dec 2019 16:11:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D6F066087F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Dec 2019 16:11:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C9FCF61655; Mon, 16 Dec 2019 16:11:13 +0000 (UTC)
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by lists.linaro.org (Postfix) with ESMTPS id C41B86087F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Dec 2019 16:11:12 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1igsxX-0003nJ-Vx; Mon, 16 Dec 2019 16:11:00 +0000
From: Colin King <colin.king@canonical.com>
To: Sumit Semwal <sumit.semwal@linaro.org>, "Andrew F . Davis" <afd@ti.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>,
 Brian Starkey <brian.starkey@arm.com>,
 John Stultz <john.stultz@linaro.org>, Sandeep Patil <sspatil@android.com>,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
Date: Mon, 16 Dec 2019 16:10:59 +0000
Message-Id: <20191216161059.269492-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH][next] dma-buf: fix resource leak on -ENOTTY
	error return path
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

RnJvbTogQ29saW4gSWFuIEtpbmcgPGNvbGluLmtpbmdAY2Fub25pY2FsLmNvbT4KClRoZSAtRU5P
VFRZIGVycm9yIHJldHVybiBwYXRoIGRvZXMgbm90IGZyZWUgdGhlIGFsbG9jYXRlZAprZGF0YSBh
cyBpdCByZXR1cm5zIGRpcmVjdGx5LiBGaXggdGhpcyBieSByZXR1cm5pbmcgdmlhIHRoZQplcnJv
ciBoYW5kbGluZyBsYWJlbCBlcnIuCgpBZGRyZXNzZXMtQ292ZXJpdHk6ICgiUmVzb3VyY2UgbGVh
ayIpCkZpeGVzOiBjMDJhODFmYmE3NGYgKCJkbWEtYnVmOiBBZGQgZG1hLWJ1ZiBoZWFwcyBmcmFt
ZXdvcmsiKQpTaWduZWQtb2ZmLWJ5OiBDb2xpbiBJYW4gS2luZyA8Y29saW4ua2luZ0BjYW5vbmlj
YWwuY29tPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jIHwgMyArKy0KIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2RtYS1idWYvZG1hLWhlYXAuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jCmluZGV4
IDRmMDRkMTA0YWU2MS4uODBmMmY1ZWFjMWU0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYv
ZG1hLWhlYXAuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYwpAQCAtMTU3LDcgKzE1
Nyw4IEBAIHN0YXRpYyBsb25nIGRtYV9oZWFwX2lvY3RsKHN0cnVjdCBmaWxlICpmaWxlLCB1bnNp
Z25lZCBpbnQgdWNtZCwKIAkJcmV0ID0gZG1hX2hlYXBfaW9jdGxfYWxsb2NhdGUoZmlsZSwga2Rh
dGEpOwogCQlicmVhazsKIAlkZWZhdWx0OgotCQlyZXR1cm4gLUVOT1RUWTsKKwkJcmV0ID0gLUVO
T1RUWTsKKwkJZ290byBlcnI7CiAJfQogCiAJaWYgKGNvcHlfdG9fdXNlcigodm9pZCBfX3VzZXIg
KilhcmcsIGtkYXRhLCBvdXRfc2l6ZSkgIT0gMCkKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
