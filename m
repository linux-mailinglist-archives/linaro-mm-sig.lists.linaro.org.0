Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E52B3230BF2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Jul 2020 16:00:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0B8EC60F0D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Jul 2020 14:00:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E6394617ED; Tue, 28 Jul 2020 13:59:59 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SUBJ_OBFU_PUNCT_FEW,SUBJ_OBFU_PUNCT_MANY
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 31DE260F21;
	Tue, 28 Jul 2020 13:58:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9597C60F0D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Jul 2020 13:58:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 820F1607FB; Tue, 28 Jul 2020 13:58:51 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by lists.linaro.org (Postfix) with ESMTPS id 97025607FB
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Jul 2020 13:58:46 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id c80so17406748wme.0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Jul 2020 06:58:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LTjUuKu28q4AP2apkOdAzx1cK7jJDnTHDeP/9uZly44=;
 b=lOv3aQ9+2aWWrRXDL4fVvfyQpEnvlYK1aWYoPA3JpIhXUNeA9txvEVjadRADYsZVaN
 APB8SNCD1cNCJCn5PAVbZf3L7OgFVwpFwVHbbJgHNeeE2doXQJdGdZ1vcwJ9VU02YrAh
 SuJcPI/q1HADfEMBgyQiSWrj+sEonJVNekbrKWTJDa85JfNFgZa6WHdNLPxCV4PWjM2v
 4oE5ID4a/m8xAgcD++bWJMnlI9d1ANHADurFZ95WD1Pl+kUIcLnok5xbqI7ejAE6HHTp
 OUe1Y0J/HcyolTxn3MHq8Cvah95gmjg/TY6gSLRMKiLw3FbpQbjYbn12Gxq/oyQvpaJx
 oBJw==
X-Gm-Message-State: AOAM531CIBCCzratBiYO0AjGgASPQuUFDBizBgY6gn78GCST+zqx1JWi
 JjyfneAB2e8rMcMNk6JV+Ir2ug==
X-Google-Smtp-Source: ABdhPJzN7u/m6RCqY38cX52hSfOrqIs4C8PfjuXHcoP5UoM1XsD3zH2RZL3E9SBC/M2256p1vsiwQw==
X-Received: by 2002:a7b:c403:: with SMTP id k3mr4097843wmi.35.1595944725621;
 Tue, 28 Jul 2020 06:58:45 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q6sm4505414wma.22.2020.07.28.06.58.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jul 2020 06:58:44 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 28 Jul 2020 15:58:39 +0200
Message-Id: <20200728135839.1035515-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-xfs@vger.kernel.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Dave Chinner <david@fromorbit.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 Jason Gunthorpe <jgg@mellanox.com>, Qian Cai <cai@lca.pw>,
 linux-fsdevel@vger.kernel.org, Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH] dma-resv: lockdep-prime
	address_space->i_mmap_rwsem for dma-resv
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

R1BVIGRyaXZlcnMgbmVlZCB0aGlzIGluIHRoZWlyIHNocmlua2VycywgdG8gYmUgYWJsZSB0byB0
aHJvdyBvdXQKbW1hcCdlZCBidWZmZXJzLiBOb3RlIHRoYXQgd2UgYWxzbyBuZWVkIGRtYV9yZXN2
X2xvY2sgaW4gc2hyaW5rZXJzLApidXQgdGhhdCBsb29wIGlzIHJlc29sdmVkIGJ5IHRyeWxvY2tp
bmcgaW4gc2hyaW5rZXJzLgoKU28gZnVsbCBoaWVyYXJjaHkgaXMgbm93IChpZ25vcmUgc29tZSBv
ZiB0aGUgb3RoZXIgYnJhbmNoZXMgd2UgYWxyZWFkeQpoYXZlIHByaW1lZCk6CgptbWFwX3JlYWRf
bG9jayAtPiBkbWFfcmVzdiAtPiBzaHJpbmtlcnMgLT4gaV9tbWFwX2xvY2tfd3JpdGUKCkkgaG9w
ZSB0aGF0J3Mgbm90IGluY29uc2lzdGVudCB3aXRoIGFueXRoaW5nIG1tIG9yIGZzIGRvZXMsIGFk
ZGluZwpyZWxldmFudCBwZW9wbGUuCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5p
ZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFy
by5vcmc+CkNjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4K
Q2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCkNjOiBEYXZlIENoaW5uZXIgPGRhdmlkQGZyb21vcmJpdC5jb20+CkNjOiBRaWFu
IENhaSA8Y2FpQGxjYS5wdz4KQ2M6IGxpbnV4LXhmc0B2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4
LWZzZGV2ZWxAdmdlci5rZXJuZWwub3JnCkNjOiBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpIDx0
aG9tYXNfb3NAc2hpcG1haWwub3JnPgpDYzogQW5kcmV3IE1vcnRvbiA8YWtwbUBsaW51eC1mb3Vu
ZGF0aW9uLm9yZz4KQ2M6IEphc29uIEd1bnRob3JwZSA8amdnQG1lbGxhbm94LmNvbT4KQ2M6IGxp
bnV4LW1tQGt2YWNrLm9yZwpDYzogbGludXgtcmRtYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IE1hYXJ0
ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgfCA1ICsrKysrCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgYi9kcml2
ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwppbmRleCAwZTY2NzVlYzFkMTEuLjk2NzgxNjJhNGFjNSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKKysrIGIvZHJpdmVycy9kbWEt
YnVmL2RtYS1yZXN2LmMKQEAgLTEwNCwxMiArMTA0LDE0IEBAIHN0YXRpYyBpbnQgX19pbml0IGRt
YV9yZXN2X2xvY2tkZXAodm9pZCkKIAlzdHJ1Y3QgbW1fc3RydWN0ICptbSA9IG1tX2FsbG9jKCk7
CiAJc3RydWN0IHd3X2FjcXVpcmVfY3R4IGN0eDsKIAlzdHJ1Y3QgZG1hX3Jlc3Ygb2JqOworCXN0
cnVjdCBhZGRyZXNzX3NwYWNlIG1hcHBpbmc7CiAJaW50IHJldDsKIAogCWlmICghbW0pCiAJCXJl
dHVybiAtRU5PTUVNOwogCiAJZG1hX3Jlc3ZfaW5pdCgmb2JqKTsKKwlhZGRyZXNzX3NwYWNlX2lu
aXRfb25jZSgmbWFwcGluZyk7CiAKIAltbWFwX3JlYWRfbG9jayhtbSk7CiAJd3dfYWNxdWlyZV9p
bml0KCZjdHgsICZyZXNlcnZhdGlvbl93d19jbGFzcyk7CkBAIC0xMTcsNiArMTE5LDkgQEAgc3Rh
dGljIGludCBfX2luaXQgZG1hX3Jlc3ZfbG9ja2RlcCh2b2lkKQogCWlmIChyZXQgPT0gLUVERUFE
TEspCiAJCWRtYV9yZXN2X2xvY2tfc2xvdygmb2JqLCAmY3R4KTsKIAlmc19yZWNsYWltX2FjcXVp
cmUoR0ZQX0tFUk5FTCk7CisJLyogZm9yIHVubWFwX21hcHBpbmdfcmFuZ2Ugb24gdHJ5bG9ja2Vk
IGJ1ZmZlciBvYmplY3RzIGluIHNocmlua2VycyAqLworCWlfbW1hcF9sb2NrX3dyaXRlKCZtYXBw
aW5nKTsKKwlpX21tYXBfdW5sb2NrX3dyaXRlKCZtYXBwaW5nKTsKICNpZmRlZiBDT05GSUdfTU1V
X05PVElGSUVSCiAJbG9ja19tYXBfYWNxdWlyZSgmX19tbXVfbm90aWZpZXJfaW52YWxpZGF0ZV9y
YW5nZV9zdGFydF9tYXApOwogCV9fZG1hX2ZlbmNlX21pZ2h0X3dhaXQoKTsKLS0gCjIuMjcuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
