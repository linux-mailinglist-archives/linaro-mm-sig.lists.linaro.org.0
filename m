Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A641645A586
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 15:23:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5657B62F84
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 14:23:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 515F362D1F; Tue, 23 Nov 2021 14:22:44 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BC2E763176;
	Tue, 23 Nov 2021 14:22:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BD8BD6216B
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9204762C93; Tue, 23 Nov 2021 14:21:48 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id 431EF62072
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:45 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id c4so39218934wrd.9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 06:21:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0m5E3AR75LeGECS5IYeG+cVquPxCmS2lBy6eXY5PgkM=;
 b=HUA7qtJj+ZTsIM+Q0l+p/sj0hiFdpqRUzm96MTGPVdFim7sLKlNlrGNBX7+z2Si3w8
 W8HIBSxSgd4tjVbWP+oOjAi9pXrMfh66OkJAy8gyOFI8kMGazPUGLV89Rgdh33xY3EMK
 0lORdbgAbIb+zb/sll7Ty1fjKmOLZvfN5Zu5fBWx3BpMHMnOTomfr7t7Ehd2d4dRz0Kl
 V0VlNeCL6t5/BKnycoi21iMekOGg8o4l9Pk42FJ+qPN1xZPXKTF6ZN08vB6h9KrW0csK
 UwZsdvjweAH3FvzHTNQHRPHnJjlqdVAmefSLKt/6JROAMV+npNkSFNc4Nqoh+106MCvl
 dioA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0m5E3AR75LeGECS5IYeG+cVquPxCmS2lBy6eXY5PgkM=;
 b=jdwd0+PpIrAG6MimTKeQucY+tw7zm26IANjVTGj+4uNc79t3ZRL6wlStXqxWVuiVGe
 Gzanf9Tvg+pUY7A+Uzic2128FgAD8qcHeS3UA/59GD8oqy9h2sc5ciNEn0xMfx9BpaXk
 4yGyafCQywH+5CKcYgF1ySQprEZb25UWtiPYXUZTzMbFSTW1nLEuUgOcroym8sKIPjDd
 2g3RHTLeHJndjssikrngUqbuRAvebe/f7vaezyocvgzW9t9l4tqTdcMqOTc41ZCsMCxQ
 2jZxt9lWKB/vD84zWDxnIFwBji3i2HD+MgPZ8Tyx3IQ0zaERol+VXAgRX0e3jEjfmRz/
 V1Rw==
X-Gm-Message-State: AOAM533ADUXnpZq5y4xhuc7w5GxQcBKbNuAqxy1QJbBImUxA6x9j+xGB
 Z0GRjyrRIXYD6e8XCXUO6R7CLZrRmDM=
X-Google-Smtp-Source: ABdhPJxFodcSQdq8IIGizebR8zbNcFO3Pr22YZuFiZsgi8Yi6eRNaaAPNxYIGsFqGL0V/ZOQmIRetg==
X-Received: by 2002:adf:f98c:: with SMTP id f12mr7662667wrr.184.1637677304304; 
 Tue, 23 Nov 2021 06:21:44 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id t8sm1645928wmq.32.2021.11.23.06.21.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Nov 2021 06:21:44 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	daniel@ffwll.ch
Date: Tue, 23 Nov 2021 15:21:02 +0100
Message-Id: <20211123142111.3885-18-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211123142111.3885-1-christian.koenig@amd.com>
References: <20211123142111.3885-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 17/26] dma-buf: drop the DAG approach for
 the dma_resv object
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

U28gZmFyIHdlIGhhZCB0aGUgYXBwcm9hY2ggb2YgdXNpbmcgYSBkaXJlY3RlZCBhY3ljbGljCmdy
YXBoIHdpdGggdGhlIGRtYV9yZXN2IG9iai4KClRoaXMgdHVybmVkIG91dCB0byBoYXZlIG1hbnkg
ZG93bnNpZGVzLCBlc3BlY2lhbGx5IGl0IG1lYW5zCnRoYXQgZXZlcnkgc2luZ2xlIGRyaXZlciBh
bmQgdXNlciBvZiB0aGlzIGludGVyZmFjZSBuZWVkcwp0byBiZSBhd2FyZSBvZiB0aGlzIHJlc3Ry
aWN0aW9uIHdoZW4gYWRkaW5nIGZlbmNlcy4gSWYgdGhlCnJ1bGVzIGZvciB0aGUgREFHIGFyZSBu
b3QgZm9sbG93ZWQgdGhlbiB3ZSBlbmQgdXAgd2l0aApwb3RlbnRpYWwgaGFyZCB0byBkZWJ1ZyBt
ZW1vcnkgY29ycnVwdGlvbiwgaW5mb3JtYXRpb24KbGVha3Mgb3IgZXZlbiBlbGVwaGFudCBiaWcg
c2VjdXJpdHkgaG9sZXMgYmVjYXVzZSB3ZSBhbGxvdwp1c2Vyc3BhY2UgdG8gYWNjZXNzIGZyZWVk
IHVwIG1lbW9yeS4KClNpbmNlIHdlIGFscmVhZHkgdG9vayBhIHN0ZXAgYmFjayBmcm9tIHRoYXQg
YnkgYWx3YXlzCmxvb2tpbmcgYXQgYWxsIGZlbmNlcyB3ZSBub3cgZ28gYSBzdGVwIGZ1cnRoZXIg
YW5kIHN0b3AKZHJvcHBpbmcgdGhlIHNoYXJlZCBmZW5jZXMgd2hlbiBhIG5ldyBleGNsdXNpdmUg
b25lIGlzCmFkZGVkLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIHwgMTQgKy0t
LS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMTMgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgYi9kcml2ZXJzL2Rt
YS1idWYvZG1hLXJlc3YuYwppbmRleCA1MzliOWIxZGY2NDAuLjNiMDAwMWM1ZmYzYSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2Rt
YS1yZXN2LmMKQEAgLTQxMSwyOSArNDExLDE3IEBAIEVYUE9SVF9TWU1CT0woZG1hX3Jlc3ZfcmVw
bGFjZV9mZW5jZXMpOwogdm9pZCBkbWFfcmVzdl9hZGRfZXhjbF9mZW5jZShzdHJ1Y3QgZG1hX3Jl
c3YgKm9iaiwgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpCiB7CiAJc3RydWN0IGRtYV9mZW5jZSAq
b2xkX2ZlbmNlID0gZG1hX3Jlc3ZfZXhjbF9mZW5jZShvYmopOwotCXN0cnVjdCBkbWFfcmVzdl9s
aXN0ICpvbGQ7Ci0JdTMyIGkgPSAwOwogCiAJZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQob2JqKTsKIAot
CW9sZCA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KG9iaik7Ci0JaWYgKG9sZCkKLQkJaSA9IG9sZC0+
c2hhcmVkX2NvdW50OwotCiAJZG1hX2ZlbmNlX2dldChmZW5jZSk7CiAKIAl3cml0ZV9zZXFjb3Vu
dF9iZWdpbigmb2JqLT5zZXEpOwogCS8qIHdyaXRlX3NlcWNvdW50X2JlZ2luIHByb3ZpZGVzIHRo
ZSBuZWNlc3NhcnkgbWVtb3J5IGJhcnJpZXIgKi8KIAlSQ1VfSU5JVF9QT0lOVEVSKG9iai0+ZmVu
Y2VfZXhjbCwgZmVuY2UpOwotCWlmIChvbGQpCi0JCW9sZC0+c2hhcmVkX2NvdW50ID0gMDsKKwlk
bWFfcmVzdl9saXN0X3BydW5lKGRtYV9yZXN2X3NoYXJlZF9saXN0KG9iaiksIG9iaik7CiAJd3Jp
dGVfc2VxY291bnRfZW5kKCZvYmotPnNlcSk7CiAKLQkvKiBpbnBsYWNlIHVwZGF0ZSwgbm8gc2hh
cmVkIGZlbmNlcyAqLwotCXdoaWxlIChpLS0pCi0JCWRtYV9mZW5jZV9wdXQocmN1X2RlcmVmZXJl
bmNlX3Byb3RlY3RlZChvbGQtPnNoYXJlZFtpXSwKLQkJCQkJCWRtYV9yZXN2X2hlbGQob2JqKSkp
OwotCiAJZG1hX2ZlbmNlX3B1dChvbGRfZmVuY2UpOwogfQogRVhQT1JUX1NZTUJPTChkbWFfcmVz
dl9hZGRfZXhjbF9mZW5jZSk7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==
