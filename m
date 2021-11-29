Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F4D46148C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 13:07:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9ECB462CA6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 12:07:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B7FDD61A48; Mon, 29 Nov 2021 12:07:25 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 62EA66207C;
	Mon, 29 Nov 2021 12:07:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A286E60557
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A065160BC6; Mon, 29 Nov 2021 12:07:08 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id 8D12460557
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:06 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id i5so36282365wrb.2
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 04:07:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Qk7PwcqKvFwxCK8c/zm5biTBtYcJsU3HDhj1Rke+mig=;
 b=FUno/CVbKE7JV8YJFa0o4CtrijMPMX87xBQhWP+1YXYchLcq5zbHntBZNNdZBl+s8R
 vshKLxgazIvSz+SvzJMinSgOY+QHMkbgIdd93TsKzKJ1bbxUcNxCQC3Kl5m6InYvdE5f
 wtAY9LDNSYcGcOy8X8BkiAZe0AwNL7nhCdd2qfhkIOA18p96RFkoa3EcVdVOSO06ITtl
 OC5ny0EPuOUuEJNxh1bI3MPs9vmhw62O2uWfJzwZbZn+Gmp2BbHucnTnzYQ8v/cGzViN
 iiKMZWe+OCx6yrdvKI4Jf21Qd1XvjG6MMdAAonYkrjDrZTab+kup5OirXnL9as8fbKPf
 q7UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qk7PwcqKvFwxCK8c/zm5biTBtYcJsU3HDhj1Rke+mig=;
 b=rA9yQU6QwceeBwIoYQqU9EtsqDECvLV8v7FVB1523DQr653ogb2zozFYDQfrjLMOlq
 snBUlnZG7h1mJUyH2cj8H76Av5fqmjSqAQg1+4FmbYrB5uotoc1UPFUQUo6GXw2wtJOE
 cuhOmBV7QIJXXZkvc+M/fsatfZriWmytjBoxhDWQOhO+UTALYITdDnfktZHr69SCSodN
 rgvR32DUYpyh9NMSv3hb/X7D7KEmRCIQ1g0S6rt8JvX2Lp69lElurv6ptTLpp/6ojUcr
 yPrwuHKUwmaIs6/BrzJ2HNUdBFgqfntZco7nuGmRXDCbAVnGvUs0acw16CmOIDJ8w58N
 KCcQ==
X-Gm-Message-State: AOAM530ePVgXTNJZYq/nzLPoMJxkPhq1a+j3vCsrHWreY5K89+Et532K
 GUwziBTuuMyOfKVfuA62CGI=
X-Google-Smtp-Source: ABdhPJzutv9dYwYC0rKE63+JgPY234G43ihXLtPrH/m+jsweVYi2o2XtcslEUwhpoQYexjXov2BVhg==
X-Received: by 2002:a5d:6b09:: with SMTP id v9mr32860041wrw.591.1638187625591; 
 Mon, 29 Nov 2021 04:07:05 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id b6sm20415234wmq.45.2021.11.29.04.07.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Nov 2021 04:07:05 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch
Date: Mon, 29 Nov 2021 13:06:34 +0100
Message-Id: <20211129120659.1815-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211129120659.1815-1-christian.koenig@amd.com>
References: <20211129120659.1815-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 03/28] dma-buf: make fence mandatory for
 dma_resv_add_excl_fence v2
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

Q2FsbGluZyBkbWFfcmVzdl9hZGRfZXhjbF9mZW5jZSgpIHdpdGggdGhlIGZlbmNlIGFzIE5VTEwg
YW5kIGV4cGVjdGluZwp0aGF0IHRoYXQgdGhpcyBmcmVlcyB1cCB0aGUgZmVuY2VzIGlzIHNpbXBs
eSBhYnVzZSBvZiB0aGUgaW50ZXJuYWxzIG9mCnRoZSBkbWFfcmVzdiBvYmplY3QuCgp2MjogZHJv
cCB0aGUgZmVuY2UgcHJ1bmluZyBjb21wbGV0ZWx5LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9k
bWEtcmVzdi5jIHwgMyArLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyBiL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCmluZGV4IGZmM2MwNTU4YjNiOC4uNGRlZWE3NWMwYjljIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYworKysgYi9kcml2ZXJzL2RtYS1i
dWYvZG1hLXJlc3YuYwpAQCAtMzA1LDggKzMwNSw3IEBAIHZvaWQgZG1hX3Jlc3ZfYWRkX2V4Y2xf
ZmVuY2Uoc3RydWN0IGRtYV9yZXN2ICpvYmosIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQogCWlm
IChvbGQpCiAJCWkgPSBvbGQtPnNoYXJlZF9jb3VudDsKIAotCWlmIChmZW5jZSkKLQkJZG1hX2Zl
bmNlX2dldChmZW5jZSk7CisJZG1hX2ZlbmNlX2dldChmZW5jZSk7CiAKIAl3cml0ZV9zZXFjb3Vu
dF9iZWdpbigmb2JqLT5zZXEpOwogCS8qIHdyaXRlX3NlcWNvdW50X2JlZ2luIHByb3ZpZGVzIHRo
ZSBuZWNlc3NhcnkgbWVtb3J5IGJhcnJpZXIgKi8KLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
