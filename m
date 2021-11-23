Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C19F45A564
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 15:22:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1181562F86
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 14:22:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0C3416216C; Tue, 23 Nov 2021 14:22:03 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2443C6216F;
	Tue, 23 Nov 2021 14:21:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 937DB62CFB
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CEB9F62C9E; Tue, 23 Nov 2021 14:21:27 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id 73E676216C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:23 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id r8so39188996wra.7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 06:21:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4CDt1ISjRTMYLH7FxvvLqp3He8TQZQtgj+2GfXtaN90=;
 b=X3YR3D7jDkth608Q2xrTyxVz7YVn86lN3yZSoQxZoFexTRrnS+6kKAZ43G2JITYJe4
 Upf0DDhuxnYXzFqL/5DOfI5UymbhoD2NU48tvC5vzrY9HrLR+SI2Zw3cTFDibnNCnoj2
 NOII2dZ4s8fV78kn8MOa2nXC+kIVWJJr/6ofnCZF/kP7/DP8n+E++Ul8DMTt7xiRi21q
 ygW5e6u35v8g/yVbPSvpjlFGh68bDqCgmk/BjgKDgqsmYQU4Kkk9g1fVPinc7SvJYpw1
 QMx2j4lrDSNddvbBoD9RytzzNM41FOcPL8mrKv/BsUvQxa8gda5YdR+2Ppr+meqYmCg7
 p1iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4CDt1ISjRTMYLH7FxvvLqp3He8TQZQtgj+2GfXtaN90=;
 b=ki6ch412E7EdbA5iwWLZs6K5/IQ/mZ9OqqKKF4Q0wvqCL0TgxJ5aDoCSwMuqsROWAp
 d3LhNfqbRzSvYLxRV8JW66OooGq9w5kxi88qplxAp9QIsa6OXGgkqBE/or9kK9lcWfua
 IAMKL+S2BsCEOcm982QeSHk5VxTIojvGndZWS/RbvSdzwL9sdgNypP0kWgfOw3Hl1epA
 vIErKQigjpGKU0SwKHx15yNciAgKWEeun6HF1bjDG8Jrdl7YEV5Y54NJoDUNP/SjQ6fQ
 j2mxR/RDppAxg8Otit4aChkXA2NK5u/1jA+UWVhHgiph5j30f3olCkyRpmP8l7SFfR4Q
 pJ1w==
X-Gm-Message-State: AOAM531lDVWE+FQJn8v6G7XPj7gxZ4zwXF4l3GfUzo1e6lWbKiiiNiTI
 dWsmDG31Iir7047s7cRUCOg=
X-Google-Smtp-Source: ABdhPJxk7UP438KpT4viIsr1qknl/aSpARQvQaanASXfRg0L+I71MFJyOabCkFsyhYeNEnBTf1q57g==
X-Received: by 2002:a5d:4cd1:: with SMTP id c17mr7755625wrt.31.1637677282511; 
 Tue, 23 Nov 2021 06:21:22 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id t8sm1645928wmq.32.2021.11.23.06.21.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Nov 2021 06:21:22 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	daniel@ffwll.ch
Date: Tue, 23 Nov 2021 15:20:49 +0100
Message-Id: <20211123142111.3885-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211123142111.3885-1-christian.koenig@amd.com>
References: <20211123142111.3885-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 04/26] drm/qxl: use iterator instead of
 dma_resv_shared_list
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
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SSdtIG5vdCBzdXJlIHdoeSBpdCBpcyB1c2VmdWwgdG8ga25vdyB0aGUgbnVtYmVyIG9mIGZlbmNl
cwppbiB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0LCBidXQgd2UgdHJ5IHRvIGF2b2lkIGV4cG9zaW5n
IHRoZQpkbWFfcmVzdl9zaGFyZWRfbGlzdCgpIGZ1bmN0aW9uLgoKU28gdXNlIHRoZSBpdGVyYXRv
ciBpbnN0ZWFkLiBJZiBtb3JlIGluZm9ybWF0aW9uIGlzIGRlc2lyZWQKd2UgY291bGQgdXNlIGRt
YV9yZXN2X2Rlc2NyaWJlKCkgYXMgd2VsbC4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7Zu
aWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vcXhsL3F4
bF9kZWJ1Z2ZzLmMgfCAxNyArKysrKysrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEwIGlu
c2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L3F4bC9xeGxfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfZGVidWdmcy5jCmlu
ZGV4IDFmOWE1OTYwMWJiMS4uNmEzNmIwZmQ4NDVjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vcXhsL3F4bF9kZWJ1Z2ZzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfZGVidWdm
cy5jCkBAIC01NywxMyArNTcsMTYgQEAgcXhsX2RlYnVnZnNfYnVmZmVyc19pbmZvKHN0cnVjdCBz
ZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkKIAlzdHJ1Y3QgcXhsX2JvICpibzsKIAogCWxpc3RfZm9y
X2VhY2hfZW50cnkoYm8sICZxZGV2LT5nZW0ub2JqZWN0cywgbGlzdCkgewotCQlzdHJ1Y3QgZG1h
X3Jlc3ZfbGlzdCAqZm9iajsKLQkJaW50IHJlbDsKLQotCQlyY3VfcmVhZF9sb2NrKCk7Ci0JCWZv
YmogPSBkbWFfcmVzdl9zaGFyZWRfbGlzdChiby0+dGJvLmJhc2UucmVzdik7Ci0JCXJlbCA9IGZv
YmogPyBmb2JqLT5zaGFyZWRfY291bnQgOiAwOwotCQlyY3VfcmVhZF91bmxvY2soKTsKKwkJc3Ry
dWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOworCQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKKwkJ
aW50IHJlbCA9IDA7CisKKwkJZG1hX3Jlc3ZfaXRlcl9iZWdpbigmY3Vyc29yLCBiby0+dGJvLmJh
c2UucmVzdiwgdHJ1ZSk7CisJCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKCZjdXJz
b3IsIGZlbmNlKSB7CisJCQlpZiAoZG1hX3Jlc3ZfaXRlcl9pc19yZXN0YXJ0ZWQoJmN1cnNvcikp
CisJCQkJcmVsID0gMDsKKwkJCSsrcmVsOworCQl9CiAKIAkJc2VxX3ByaW50ZihtLCAic2l6ZSAl
bGQsIHBjICVkLCBudW0gcmVsZWFzZXMgJWRcbiIsCiAJCQkgICAodW5zaWduZWQgbG9uZyliby0+
dGJvLmJhc2Uuc2l6ZSwKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK
