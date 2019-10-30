Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F93EA1CC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Oct 2019 17:31:23 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2BFC861967
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Oct 2019 16:31:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1E9806196B; Wed, 30 Oct 2019 16:31:23 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
	SUBJ_OBFU_PUNCT_FEW autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C8BF3608D5;
	Wed, 30 Oct 2019 16:30:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A80F9608D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Oct 2019 16:30:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9AF436196B; Wed, 30 Oct 2019 16:30:47 +0000 (UTC)
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by lists.linaro.org (Postfix) with ESMTPS id 260D1608D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Oct 2019 16:30:46 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id r1so1795224pgj.12
 for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Oct 2019 09:30:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=frY6rw5HiV1E5VHgu13X5DYK6Y+AvDh4NtUT+hC+PqI=;
 b=GioArRUTbLVDnsKiQhvm0WaTc90o1wM6fFdChmQZcXQz79655WAMY1ZjkIWuWv0E8i
 8PsTGk2AAXeT8DpSGskoMgUgBPTgGOjvKixLg+DxVbFGizR6/85GaCCooDeCaU7TUSKD
 mnMRdZTSaA0y2L78UB+zmf8um+x4fBe3mnADEYJpUkUatVO0K3Pe+sdHVm0owqWz+tGZ
 0syhuHwC/3FsBTwEeukyCbHYReZB+M70y9B5GNFnZKvUtTwczzsgipvqlcnXkGuCF/iV
 cRC+gD3ge56o1plwt7oMm43u+JSw6c+PL50rT8H5kWdahWBu4h/LeAzX5PwTqUjoGIQZ
 FKjw==
X-Gm-Message-State: APjAAAWiQqnqWa3H4OQQo1Qrh+Ame7kPaun2enqnDVG9kxokxZkXWdBQ
 UwTxeZfkp1hAhIGWg8SaYtNHs7G1
X-Google-Smtp-Source: APXvYqxGP0mpS9c5+JBz15CTK6yxsgrFNZFBJzidVG93iroVyV1o1u9ByvmoY2tHDbIZRN1EQwda6Q==
X-Received: by 2002:a62:5442:: with SMTP id i63mr151097pfb.220.1572453045057; 
 Wed, 30 Oct 2019 09:30:45 -0700 (PDT)
Received: from localhost.localdomain (c-67-170-172-113.hsd1.or.comcast.net.
 [67.170.172.113])
 by smtp.gmail.com with ESMTPSA id o1sm388483pgm.1.2019.10.30.09.30.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 09:30:44 -0700 (PDT)
From: John Stultz <john.stultz@linaro.org>
To: lkml <linux-kernel@vger.kernel.org>
Date: Wed, 30 Oct 2019 16:30:40 +0000
Message-Id: <20191030163040.70055-1-john.stultz@linaro.org>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kernel-janitors@vger.kernel.org, Liam Mark <lmark@codeaurora.org>,
 Brian Starkey <brian.starkey@arm.com>, linaro-mm-sig@lists.linaro.org,
 John Stultz <john.stultz@linaro.org>, dri-devel@lists.freedesktop.org,
 Colin King <colin.king@canonical.com>
Subject: [Linaro-mm-sig] [PATCH] dma-buf: heaps: Fix redundant assignment to
	variable ret in system_heap.c
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

Q29saW4gS2luZyByZXBvcnRlZCBhIGNvdmVyaXR5IGVycm9yOgogVGhlIHZhcmlhYmxlIHJldCBp
cyBiZWluZyBhc3NpZ25lZCB3aXRoIGEgdmFsdWUgdGhhdCBpcyBuZXZlcgogcmVhZCwgaXQgaXMg
YmVpbmcgcmUtYXNzaWduZWQgdGhlIHNhbWUgdmFsdWUgb24gdGhlIGVycjAgZXhpdAogcGF0aC4g
VGhlIGFzc2lnbm1lbnQgaXMgcmVkdW5kYW50IGFuZCBoZW5jZSBjYW4gYmUgcmVtb3ZlZC4KCkhl
IGhhZCBhIGZpeCwgYnV0IEFuZHJldyBEYXZpcyBzdWdnZXN0ZWQgYSBiZXR0ZXIgc29sdXRpb24K
KGFjdHVhbGx5IHJldHVybmluZyByZXQpLCBzbyB0aGlzIHBhdGNoIGltcGxlbWVudHMgdGhhdCBm
aXguCgpDYzogQ29saW4gS2luZyA8Y29saW4ua2luZ0BjYW5vbmljYWwuY29tPgpDYzogU3VtaXQg
U2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KQ2M6IEJlbmphbWluIEdhaWduYXJkIDxi
ZW5qYW1pbi5nYWlnbmFyZEBsaW5hcm8ub3JnPgpDYzogTGlhbSBNYXJrIDxsbWFya0Bjb2RlYXVy
b3JhLm9yZz4KQ2M6IExhdXJhIEFiYm90dCA8bGFiYm90dEByZWRoYXQuY29tPgpDYzogQnJpYW4g
U3RhcmtleSA8YnJpYW4uc3RhcmtleUBhcm0uY29tPgpDYzogQW5kcmV3IEYuIERhdmlzIDxhZmRA
dGkuY29tPgpDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnCkNjOiBrZXJuZWwtamFuaXRvcnNAdmdlci5rZXJuZWwub3Jn
CkFkZHJlc3Nlcy1Db3Zlcml0eTogKCJVbnVzZWQgdmFsdWUiKQpGaXhlczogNDdhMzJmOWMxMjI2
ICgiZG1hLWJ1ZjogaGVhcHM6IEFkZCBzeXN0ZW0gaGVhcCB0byBkbWFidWYgaGVhcHMiKQpSZXBv
cnRlZC1ieTogQ29saW4gSWFuIEtpbmcgPGNvbGluLmtpbmdAY2Fub25pY2FsLmNvbT4KU3VnZ2Vz
dGVkLWJ5OiBBbmRyZXcgRi4gRGF2aXMgPGFmZEB0aS5jb20+ClNpZ25lZC1vZmYtYnk6IEpvaG4g
U3R1bHR6IDxqb2huLnN0dWx0ekBsaW5hcm8ub3JnPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9oZWFw
cy9zeXN0ZW1faGVhcC5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9o
ZWFwLmMgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYwppbmRleCA0NTU3ODJl
ZmJiMzIuLjlhNTYzOTNlNDBiNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5
c3RlbV9oZWFwLmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMKQEAg
LTk4LDcgKzk4LDcgQEAgc3RhdGljIGludCBzeXN0ZW1faGVhcF9hbGxvY2F0ZShzdHJ1Y3QgZG1h
X2hlYXAgKmhlYXAsCiBlcnIwOgogCWtmcmVlKGhlbHBlcl9idWZmZXIpOwogCi0JcmV0dXJuIC1F
Tk9NRU07CisJcmV0dXJuIHJldDsKIH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfaGVhcF9v
cHMgc3lzdGVtX2hlYXBfb3BzID0gewotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
