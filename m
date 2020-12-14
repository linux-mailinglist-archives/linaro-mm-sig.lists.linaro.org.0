Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8ED2D9D69
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Dec 2020 18:17:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B6C40665F2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Dec 2020 17:17:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A882F66706; Mon, 14 Dec 2020 17:17:05 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B322F6604C;
	Mon, 14 Dec 2020 17:16:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D0E0B60999
 for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Dec 2020 17:16:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B72E76604C; Mon, 14 Dec 2020 17:16:30 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by lists.linaro.org (Postfix) with ESMTPS id 852A560999
 for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Dec 2020 17:16:29 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id q75so15971134wme.2
 for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Dec 2020 09:16:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CRN0z60un1ifSPLbySVjb7+rlXQHLXQ5MW3xHVZvsMM=;
 b=KM0WgY50B7ocWkBKOcfWv4tt5mkqqMMd9+AFdM5/pMS52eCC5K/hi3q5EC7YkkSxJk
 1L7uEJ9wNT94XbHSZB2io42IsNQdl0kr0qSrP1Z8fy2045Zef1F+cCc2wmkN/9entdRQ
 X5dPAc10/RUMtBf+k8qTTYKimPcTkILqTRhsy7twaZz2ldYhBHq3d6Wc1iiqerPDFWMR
 2UdpL1qc/FEwkjmU1iE+9ZRryf+Jh+iMBPymR94OJ6gyPqjNmZ13jmw9uhsx+xS1Wr4F
 fIgKmmNLHGjnC7hxQ5ES/CUxUPmOT71HOD7otMvcjH5X/C/3UpbKNLay/2Qn1yFJJZUF
 wY8A==
X-Gm-Message-State: AOAM533x24bIY17FQI7AV8oL8RiD8WYMIGCJWJoM211kUfyRdDFZCaC+
 r6gl6DvqfB/QcXgOaYRo5aGMsQ==
X-Google-Smtp-Source: ABdhPJyGfZtDmUmapTM+sOrlmOBNqPBbHYPIUUmXhWR281DX6bsCafZ7lmMKmmEBZoTwqyWsC5MzCg==
X-Received: by 2002:a1c:e445:: with SMTP id b66mr29461172wmh.187.1607966188676; 
 Mon, 14 Dec 2020 09:16:28 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q1sm31197005wrj.8.2020.12.14.09.16.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Dec 2020 09:16:27 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 14 Dec 2020 18:16:22 +0100
Message-Id: <20201214171622.3868883-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201211155843.3348718-3-daniel.vetter@ffwll.ch>
References: <20201211155843.3348718-3-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH] dma-buf: begin/end_cpu might lock the
	dma_resv lock
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

QXQgbGVhc3QgYW1kZ3B1IGFuZCBpOTE1IGRvLCBzbyBsZXRzIGp1c3QgZG9jdW1lbnQgdGhpcyBh
cyB0aGUgcnVsZS4KCnYyOiBXb3JrcyBiZXR0ZXIgd2l0aCBsZXNzIHR5cG9zIChpbnRlbC1nZngt
Y2kpCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNv
bT4KQ2M6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgpDYzogU3VtaXQg
U2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3Jn
CkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKLS0tCiBkcml2ZXJzL2RtYS1idWYv
ZG1hLWJ1Zi5jIHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMKaW5kZXggZTFmYTZjNmYwMmM0Li5hMGEwMmVmODg4ZGEgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtYnVmLmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwpAQCAt
MTExOCw2ICsxMTE4LDggQEAgaW50IGRtYV9idWZfYmVnaW5fY3B1X2FjY2VzcyhzdHJ1Y3QgZG1h
X2J1ZiAqZG1hYnVmLAogCWlmIChXQVJOX09OKCFkbWFidWYpKQogCQlyZXR1cm4gLUVJTlZBTDsK
IAorCW1pZ2h0X2xvY2soJmRtYWJ1Zi0+cmVzdi0+bG9jay5iYXNlKTsKKwogCWlmIChkbWFidWYt
Pm9wcy0+YmVnaW5fY3B1X2FjY2VzcykKIAkJcmV0ID0gZG1hYnVmLT5vcHMtPmJlZ2luX2NwdV9h
Y2Nlc3MoZG1hYnVmLCBkaXJlY3Rpb24pOwogCkBAIC0xMTUxLDYgKzExNTMsOCBAQCBpbnQgZG1h
X2J1Zl9lbmRfY3B1X2FjY2VzcyhzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLAogCiAJV0FSTl9PTigh
ZG1hYnVmKTsKIAorCW1pZ2h0X2xvY2soJmRtYWJ1Zi0+cmVzdi0+bG9jay5iYXNlKTsKKwogCWlm
IChkbWFidWYtPm9wcy0+ZW5kX2NwdV9hY2Nlc3MpCiAJCXJldCA9IGRtYWJ1Zi0+b3BzLT5lbmRf
Y3B1X2FjY2VzcyhkbWFidWYsIGRpcmVjdGlvbik7CiAKLS0gCjIuMjkuMgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
