Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DDBAF9D229
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Aug 2019 16:58:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 06FB660B64
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Aug 2019 14:58:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EE55C61861; Mon, 26 Aug 2019 14:58:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D6FBB6186A;
	Mon, 26 Aug 2019 14:57:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7ECE2617FC
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Aug 2019 14:57:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6F80961810; Mon, 26 Aug 2019 14:57:36 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by lists.linaro.org (Postfix) with ESMTPS id 2725F617FC
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Aug 2019 14:57:35 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id o4so15787296wmh.2
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Aug 2019 07:57:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QMED2fB1j8XW403akPNL5uWUyUywT4Cr7sKX6D8d33c=;
 b=ageldCWvPH0ugTVo2uIIAVC0wY9BS75TI3yALqJMbaeJEzxt9oppDwxvFjDOqwwykD
 CCh6cjaaJXpGgrJa2hcGR3gAQPWo813xf6KwH7MJ1Gow4PHkez+MM6LY3tVkDwzV9feB
 YsIdgChBbNub3c5ut3lRVxRdfPnJ6XLcPfQG4YaaVYTdYHn5RdPuqJQ21cStYtf9/8pj
 xE0Y572d+I/8zpbnp2ZZNYHwK07Ir6Arp0VFDfszTRvct1/IR76Hx6ME7x5g5rh9YeJ3
 xAUHCa5GuWxkwcrVhNIPeg7+HGrTiSpNN6BDbAI1K/VYT1O1nSbN3IYhr21++K/HRHqw
 xwXw==
X-Gm-Message-State: APjAAAUMKXxLGSl/DHF/M3hcUP7DEi+l/5+8ooEMOG++rfsJtHHajw6N
 NJ52ZQEp/SMxBZlDqBp3vt4=
X-Google-Smtp-Source: APXvYqxWrDCpwp2XKLAqn17OsS4W4bwVW/axSxwYhqkhNORm2BfihpaM3ixcXbRJ4TtMdoZcfN+eGQ==
X-Received: by 2002:a05:600c:da:: with SMTP id
 u26mr15028676wmm.70.1566831454269; 
 Mon, 26 Aug 2019 07:57:34 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:b0e3:7a12:98e5:ca6])
 by smtp.gmail.com with ESMTPSA id z8sm9865624wmi.7.2019.08.26.07.57.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 07:57:33 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk,
 daniel.vetter@ffwll.ch, sumit.semwal@linaro.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Mon, 26 Aug 2019 16:57:23 +0200
Message-Id: <20190826145731.1725-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826145731.1725-1-christian.koenig@amd.com>
References: <20190826145731.1725-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 1/9] dma-buf: fix dma_fence_array_signaled
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

VGhlIGZ1bmN0aW9uIGlzIHN1cHBvc2VkIHRvIGdpdmUgYSBoaW50IGV2ZW4gaWYgc2lnbmFsaW5n
IGlzIG5vdCBlbmFibGVkLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXku
YyB8IDEyICsrKysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5
LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMKaW5kZXggZDNmYmQ5NTBiZTk0
Li41MjA2OGVlNWViMzUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJy
YXkuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMKQEAgLTEwMyw4ICsx
MDMsMTggQEAgc3RhdGljIGJvb2wgZG1hX2ZlbmNlX2FycmF5X2VuYWJsZV9zaWduYWxpbmcoc3Ry
dWN0IGRtYV9mZW5jZSAqZmVuY2UpCiBzdGF0aWMgYm9vbCBkbWFfZmVuY2VfYXJyYXlfc2lnbmFs
ZWQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpCiB7CiAJc3RydWN0IGRtYV9mZW5jZV9hcnJheSAq
YXJyYXkgPSB0b19kbWFfZmVuY2VfYXJyYXkoZmVuY2UpOworCWludCBpLCBudW1fcGVuZGluZzsK
IAotCXJldHVybiBhdG9taWNfcmVhZCgmYXJyYXktPm51bV9wZW5kaW5nKSA8PSAwOworCW51bV9w
ZW5kaW5nID0gYXRvbWljX3JlYWQoJmFycmF5LT5udW1fcGVuZGluZyk7CisJaWYgKHRlc3RfYml0
KERNQV9GRU5DRV9GTEFHX0VOQUJMRV9TSUdOQUxfQklULCAmZmVuY2UtPmZsYWdzKSkKKwkJcmV0
dXJuIG51bV9wZW5kaW5nIDw9IDA7CisKKwlmb3IgKGkgPSAwOyBpIDwgYXJyYXktPm51bV9mZW5j
ZXM7ICsraSkKKwkJaWYgKGRtYV9mZW5jZV9pc19zaWduYWxlZChhcnJheS0+ZmVuY2VzW2ldKSAm
JgorCQkgICAgLS1udW1fcGVuZGluZyA9PSAwKQorCQkJcmV0dXJuIHRydWU7CisKKwlyZXR1cm4g
ZmFsc2U7CiB9CiAKIHN0YXRpYyB2b2lkIGRtYV9mZW5jZV9hcnJheV9yZWxlYXNlKHN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlKQotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlz
dGluZm8vbGluYXJvLW1tLXNpZwo=
