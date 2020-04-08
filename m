Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8731B6D38
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:34:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6890D65FCD
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:34:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5CCB862BBE; Fri, 24 Apr 2020 05:34:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 964E7619DA;
	Fri, 24 Apr 2020 05:29:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D11C7665FF
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:00:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BE5B966600; Wed,  8 Apr 2020 12:00:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 121A06660D
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:00:01 +0000 (UTC)
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9Mo-0001cr-R8; Wed, 08 Apr 2020 11:59:39 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 x86@kernel.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Laura Abbott <labbott@redhat.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Minchan Kim <minchan@kernel.org>, Nitin Gupta <ngupta@vflare.org>
Date: Wed,  8 Apr 2020 13:59:01 +0200
Message-Id: <20200408115926.1467567-4-hch@lst.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200408115926.1467567-1-hch@lst.de>
References: <20200408115926.1467567-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Fri, 24 Apr 2020 05:29:38 +0000
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, linux-arch@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-s390@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, bpf@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH 03/28] staging: media: ipu3: use vmap insted
	of reimplementing it
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

SnVzdCB1c2Ugdm1hcCBpbnN0ZWFkIG9mIG1lc3Npbmcgd2l0aCB2bWFsbG9jIGludGVybmFscy4K
ClNpZ25lZC1vZmYtYnk6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgotLS0KIGRyaXZl
cnMvc3RhZ2luZy9tZWRpYS9pcHUzL2lwdTMtY3NzLXBvb2wuaCB8ICA0ICstLQogZHJpdmVycy9z
dGFnaW5nL21lZGlhL2lwdTMvaXB1My1kbWFtYXAuYyAgIHwgMzAgKysrKysrLS0tLS0tLS0tLS0t
LS0tLQogMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDI1IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pcHUzL2lwdTMtY3NzLXBvb2wuaCBi
L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pcHUzL2lwdTMtY3NzLXBvb2wuaAppbmRleCBmNGE2MGI0
MTQwMWIuLmE4Y2NkNGY3MDMyMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lw
dTMvaXB1My1jc3MtcG9vbC5oCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pcHUzL2lwdTMt
Y3NzLXBvb2wuaApAQCAtMTUsMTQgKzE1LDEyIEBAIHN0cnVjdCBpbWd1X2RldmljZTsKICAqIEBz
aXplOgkJc2l6ZSBvZiB0aGUgYnVmZmVyIGluIGJ5dGVzLgogICogQHZhZGRyOgkJa2VybmVsIHZp
cnR1YWwgYWRkcmVzcy4KICAqIEBkYWRkcjoJCWlvdmEgZG1hIGFkZHJlc3MgdG8gYWNjZXNzIElQ
VTMuCi0gKiBAdm1hOgkJcHJpdmF0ZSwgYSBwb2ludGVyIHRvICZzdHJ1Y3Qgdm1fc3RydWN0LAot
ICoJCQl1c2VkIGZvciBpbWd1X2RtYW1hcF9mcmVlLgogICovCiBzdHJ1Y3QgaW1ndV9jc3NfbWFw
IHsKIAlzaXplX3Qgc2l6ZTsKIAl2b2lkICp2YWRkcjsKIAlkbWFfYWRkcl90IGRhZGRyOwotCXN0
cnVjdCB2bV9zdHJ1Y3QgKnZtYTsKKwlzdHJ1Y3QgcGFnZSAqKnBhZ2VzOwogfTsKIAogLyoqCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaXB1My9pcHUzLWRtYW1hcC5jIGIvZHJp
dmVycy9zdGFnaW5nL21lZGlhL2lwdTMvaXB1My1kbWFtYXAuYwppbmRleCA3NDMxMzIyMzc5ZjYu
LjhhMTliMDAyNDE1MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lwdTMvaXB1
My1kbWFtYXAuYworKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaXB1My9pcHUzLWRtYW1hcC5j
CkBAIC05Niw2ICs5Niw3IEBAIHZvaWQgKmltZ3VfZG1hbWFwX2FsbG9jKHN0cnVjdCBpbWd1X2Rl
dmljZSAqaW1ndSwgc3RydWN0IGltZ3VfY3NzX21hcCAqbWFwLAogCXVuc2lnbmVkIGxvbmcgc2hp
ZnQgPSBpb3ZhX3NoaWZ0KCZpbWd1LT5pb3ZhX2RvbWFpbik7CiAJc3RydWN0IGRldmljZSAqZGV2
ID0gJmltZ3UtPnBjaV9kZXYtPmRldjsKIAlzaXplX3Qgc2l6ZSA9IFBBR0VfQUxJR04obGVuKTsK
KwlpbnQgY291bnQgPSBzaXplID4+IFBBR0VfU0hJRlQ7CiAJc3RydWN0IHBhZ2UgKipwYWdlczsK
IAlkbWFfYWRkcl90IGlvdmFkZHI7CiAJc3RydWN0IGlvdmEgKmlvdmE7CkBAIC0xMTQsNyArMTE1
LDcgQEAgdm9pZCAqaW1ndV9kbWFtYXBfYWxsb2Moc3RydWN0IGltZ3VfZGV2aWNlICppbWd1LCBz
dHJ1Y3QgaW1ndV9jc3NfbWFwICptYXAsCiAKIAkvKiBDYWxsIElPTU1VIGRyaXZlciB0byBzZXR1
cCBwZ3QgKi8KIAlpb3ZhZGRyID0gaW92YV9kbWFfYWRkcigmaW1ndS0+aW92YV9kb21haW4sIGlv
dmEpOwotCWZvciAoaSA9IDA7IGkgPCBzaXplIC8gUEFHRV9TSVpFOyArK2kpIHsKKwlmb3IgKGkg
PSAwOyBpIDwgY291bnQ7ICsraSkgewogCQlydmFsID0gaW1ndV9tbXVfbWFwKGltZ3UtPm1tdSwg
aW92YWRkciwKIAkJCQkgICAgcGFnZV90b19waHlzKHBhZ2VzW2ldKSwgUEFHRV9TSVpFKTsKIAkJ
aWYgKHJ2YWwpCkBAIC0xMjMsMzMgKzEyNCwyMyBAQCB2b2lkICppbWd1X2RtYW1hcF9hbGxvYyhz
dHJ1Y3QgaW1ndV9kZXZpY2UgKmltZ3UsIHN0cnVjdCBpbWd1X2Nzc19tYXAgKm1hcCwKIAkJaW92
YWRkciArPSBQQUdFX1NJWkU7CiAJfQogCi0JLyogTm93IGdyYWIgYSB2aXJ0dWFsIHJlZ2lvbiAq
LwotCW1hcC0+dm1hID0gX19nZXRfdm1fYXJlYShzaXplLCBWTV9VU0VSTUFQLCBWTUFMTE9DX1NU
QVJULCBWTUFMTE9DX0VORCk7Ci0JaWYgKCFtYXAtPnZtYSkKKwltYXAtPnZhZGRyID0gdm1hcChw
YWdlcywgY291bnQsIFZNX1VTRVJNQVAsIFBBR0VfS0VSTkVMKTsKKwlpZiAoIW1hcC0+dmFkZHIp
CiAJCWdvdG8gb3V0X3VubWFwOwogCi0JbWFwLT52bWEtPnBhZ2VzID0gcGFnZXM7Ci0JLyogQW5k
IG1hcCBpdCBpbiBLVkEgKi8KLQlpZiAobWFwX3ZtX2FyZWEobWFwLT52bWEsIFBBR0VfS0VSTkVM
LCBwYWdlcykpCi0JCWdvdG8gb3V0X3Z1bm1hcDsKLQorCW1hcC0+cGFnZXMgPSBwYWdlczsKIAlt
YXAtPnNpemUgPSBzaXplOwogCW1hcC0+ZGFkZHIgPSBpb3ZhX2RtYV9hZGRyKCZpbWd1LT5pb3Zh
X2RvbWFpbiwgaW92YSk7Ci0JbWFwLT52YWRkciA9IG1hcC0+dm1hLT5hZGRyOwogCiAJZGV2X2Ri
ZyhkZXYsICIlczogYWxsb2NhdGVkICV6dSBAIElPVkEgJXBhZCBAIFZBICVwXG4iLCBfX2Z1bmNf
XywKLQkJc2l6ZSwgJm1hcC0+ZGFkZHIsIG1hcC0+dm1hLT5hZGRyKTsKLQotCXJldHVybiBtYXAt
PnZtYS0+YWRkcjsKKwkJc2l6ZSwgJm1hcC0+ZGFkZHIsIG1hcC0+dmFkZHIpOwogCi1vdXRfdnVu
bWFwOgotCXZ1bm1hcChtYXAtPnZtYS0+YWRkcik7CisJcmV0dXJuIG1hcC0+dmFkZHI7CiAKIG91
dF91bm1hcDoKIAlpbWd1X2RtYW1hcF9mcmVlX2J1ZmZlcihwYWdlcywgc2l6ZSk7CiAJaW1ndV9t
bXVfdW5tYXAoaW1ndS0+bW11LCBpb3ZhX2RtYV9hZGRyKCZpbWd1LT5pb3ZhX2RvbWFpbiwgaW92
YSksCiAJCSAgICAgICBpICogUEFHRV9TSVpFKTsKLQltYXAtPnZtYSA9IE5VTEw7CiAKIG91dF9m
cmVlX2lvdmE6CiAJX19mcmVlX2lvdmEoJmltZ3UtPmlvdmFfZG9tYWluLCBpb3ZhKTsKQEAgLTE3
Nyw4ICsxNjgsNiBAQCB2b2lkIGltZ3VfZG1hbWFwX3VubWFwKHN0cnVjdCBpbWd1X2RldmljZSAq
aW1ndSwgc3RydWN0IGltZ3VfY3NzX21hcCAqbWFwKQogICovCiB2b2lkIGltZ3VfZG1hbWFwX2Zy
ZWUoc3RydWN0IGltZ3VfZGV2aWNlICppbWd1LCBzdHJ1Y3QgaW1ndV9jc3NfbWFwICptYXApCiB7
Ci0Jc3RydWN0IHZtX3N0cnVjdCAqYXJlYSA9IG1hcC0+dm1hOwotCiAJZGV2X2RiZygmaW1ndS0+
cGNpX2Rldi0+ZGV2LCAiJXM6IGZyZWVpbmcgJXp1IEAgSU9WQSAlcGFkIEAgVkEgJXBcbiIsCiAJ
CV9fZnVuY19fLCBtYXAtPnNpemUsICZtYXAtPmRhZGRyLCBtYXAtPnZhZGRyKTsKIApAQCAtMTg3
LDExICsxNzYsOCBAQCB2b2lkIGltZ3VfZG1hbWFwX2ZyZWUoc3RydWN0IGltZ3VfZGV2aWNlICpp
bWd1LCBzdHJ1Y3QgaW1ndV9jc3NfbWFwICptYXApCiAKIAlpbWd1X2RtYW1hcF91bm1hcChpbWd1
LCBtYXApOwogCi0JaWYgKFdBUk5fT04oIWFyZWEpIHx8IFdBUk5fT04oIWFyZWEtPnBhZ2VzKSkK
LQkJcmV0dXJuOwotCi0JaW1ndV9kbWFtYXBfZnJlZV9idWZmZXIoYXJlYS0+cGFnZXMsIG1hcC0+
c2l6ZSk7CiAJdnVubWFwKG1hcC0+dmFkZHIpOworCWltZ3VfZG1hbWFwX2ZyZWVfYnVmZmVyKG1h
cC0+cGFnZXMsIG1hcC0+c2l6ZSk7CiAJbWFwLT52YWRkciA9IE5VTEw7CiB9CiAKLS0gCjIuMjUu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
