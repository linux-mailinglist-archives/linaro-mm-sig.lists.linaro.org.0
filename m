Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DAC422FB7B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Jul 2020 23:32:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9EC526073E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Jul 2020 21:32:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8EF3860B04; Mon, 27 Jul 2020 21:32:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SUBJ_OBFU_PUNCT_FEW,
	SUBJ_OBFU_PUNCT_MANY autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2B086610D2;
	Mon, 27 Jul 2020 21:31:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6D10D6073E
 for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Jul 2020 21:31:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 59B60610D2; Mon, 27 Jul 2020 21:31:54 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by lists.linaro.org (Postfix) with ESMTPS id 098076073E
 for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Jul 2020 21:31:53 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id r4so13306220wrx.9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Jul 2020 14:31:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IbBLsev6A/k6JtTZxYPdXm24BNGReWdxszm0mfyFmjs=;
 b=Jkg6wxN1/SRKTcqbULZPym5k+P5ShoJNOVvJejnknA1HOts9Gx3Qw3/Np+oP3Vnr1f
 KUOfqtkuWPz4gs3S0ENCPrF3QfD3EMbNsb/CTSxlkiAmtyu2MoInaBdRJ8YD8Y45lQ/H
 ZSH63+IouN0WKW9dnwWN2Y3YY2/wuUPSXnN2Huk+N7elwGPWxgt5BAngcVui8CywZC8X
 kx3sgw5MufNs1RC43EOXkms3RdKZlYfn92defsjDUemhRYTONHjtY7Vx1GUajk90CW7+
 GW+cuh6cM3QNVz5tjy76gMZjs1SisQgj9Xi4FhhoXzxgyuUbgRQ7m+TFZJLNB3q19k8p
 BBGQ==
X-Gm-Message-State: AOAM533AKnY2kP6lNMjyzEaGygaz3FIuobI+IbKX/7ZqKRurXI60nfG/
 bedkLVCDfzWVJpqrcdiXKe3GJA==
X-Google-Smtp-Source: ABdhPJxu91l4eNQybKcmI4LErpte7CoyW1rnIyORt8Wxy15Rf018CY26pqWTld4+57hcv1yfORKfeQ==
X-Received: by 2002:adf:82f6:: with SMTP id 109mr23889821wrc.25.1595885511913; 
 Mon, 27 Jul 2020 14:31:51 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f9sm13945424wru.47.2020.07.27.14.31.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jul 2020 14:31:51 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 27 Jul 2020 23:30:18 +0200
Message-Id: <20200727213017.852589-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH] drm/amdgpu/dc: Stop dma_resv_lock inversion
	in commit_tail
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

VHJ5aW5nIHRvIGdyYWIgZG1hX3Jlc3ZfbG9jayB3aGlsZSBpbiBjb21taXRfdGFpbCBiZWZvcmUg
d2UndmUgZG9uZQphbGwgdGhlIGNvZGUgdGhhdCBsZWFkcyB0byB0aGUgZXZlbnR1YWwgc2lnbmFs
bGluZyBvZiB0aGUgdmJsYW5rIGV2ZW50Cih3aGljaCBjYW4gYmUgYSBkbWFfZmVuY2UpIGlzIGRl
YWRsb2NrLXkuIERvbid0IGRvIHRoYXQuCgpIZXJlIHRoZSBzb2x1dGlvbiBpcyBlYXN5IGJlY2F1
c2UganVzdCBncmFiYmluZyBsb2NrcyB0byByZWFkCnNvbWV0aGluZyByYWNlcyBhbnl3YXkuIFdl
IGRvbid0IG5lZWQgdG8gYm90aGVyLCBSRUFEX09OQ0UgaXMKZXF1aXZhbGVudC4gQW5kIGF2b2lk
cyB0aGUgbG9ja2luZyBpc3N1ZS4KCnYyOiBBbHNvIHRha2UgaW50byBhY2NvdW50IHRtel9zdXJm
YWNlIGJvb2xlYW4sIHBsdXMganVzdCBkZWxldGUgdGhlCm9sZCBjb2RlLgoKQ2M6IGxpbnV4LW1l
ZGlhQHZnZXIua2VybmVsLm9yZwpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCkNj
OiBsaW51eC1yZG1hQHZnZXIua2VybmVsLm9yZwpDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0
ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlz
dGlhbi5rb2VuaWdAYW1kLmNvbT4KU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVs
LnZldHRlckBpbnRlbC5jb20+Ci0tLQpEQy1mb2xrcywgSSB0aGluayB0aGlzIHNwbGl0IG91dCBw
YXRjaCBmcm9tIG15IHNlcmllcyBoZXJlCgpodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2
ZWwvMjAyMDA3MDcyMDEyMjkuNDcyODM0LTEtZGFuaWVsLnZldHRlckBmZndsbC5jaC8KCnNob3Vs
ZCBiZSByZWFkeSBmb3IgcmV2aWV3L21lcmdpbmcuIEkgZml4ZWQgaXQgdXAgYSBiaXQgc28gdGhh
dCBpdCdzIG5vdApqdXN0IGEgZ3Jvc3MgaGFjayA6LSkKCkNoZWVycywgRGFuaWVsCgoKLS0tCiAu
Li4vZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMgfCAxOSArKysrKyst
LS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2Rt
L2FtZGdwdV9kbS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9kaXNwbGF5L2FtZGdwdV9kbS9hbWRn
cHVfZG0uYwppbmRleCAyMWVjNjRmZTU1MjcuLmEyMGI2MmIxZjJlZiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2FtZC9kaXNwbGF5L2FtZGdwdV9kbS9hbWRncHVfZG0uYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbS5jCkBAIC02OTU5LDIw
ICs2OTU5LDEzIEBAIHN0YXRpYyB2b2lkIGFtZGdwdV9kbV9jb21taXRfcGxhbmVzKHN0cnVjdCBk
cm1fYXRvbWljX3N0YXRlICpzdGF0ZSwKIAkJCURSTV9FUlJPUigiV2FpdGluZyBmb3IgZmVuY2Vz
IHRpbWVkIG91dCEiKTsKIAogCQkvKgotCQkgKiBUT0RPIFRoaXMgbWlnaHQgZmFpbCBhbmQgaGVu
Y2UgYmV0dGVyIG5vdCB1c2VkLCB3YWl0Ci0JCSAqIGV4cGxpY2l0bHkgb24gZmVuY2VzIGluc3Rl
YWQKLQkJICogYW5kIGluIGdlbmVyYWwgc2hvdWxkIGJlIGNhbGxlZCBmb3IKLQkJICogYmxvY2tp
bmcgY29tbWl0IHRvIGFzIHBlciBmcmFtZXdvcmsgaGVscGVycworCQkgKiBXZSBjYW5ub3QgcmVz
ZXJ2ZSBidWZmZXJzIGhlcmUsIHdoaWNoIG1lYW5zIHRoZSBub3JtYWwgZmxhZworCQkgKiBhY2Nl
c3MgZnVuY3Rpb25zIGRvbid0IHdvcmsuIFBhcGVyIG92ZXIgdGhpcyB3aXRoIFJFQURfT05DRSwK
KwkJICogYnV0IG1heWJlIHRoZSBmbGFncyBhcmUgaW52YXJpYW50IGVub3VnaCB0aGF0IG5vdCBl
dmVuIHRoYXQKKwkJICogd291bGQgYmUgbmVlZGVkLgogCQkgKi8KLQkJciA9IGFtZGdwdV9ib19y
ZXNlcnZlKGFibywgdHJ1ZSk7Ci0JCWlmICh1bmxpa2VseShyICE9IDApKQotCQkJRFJNX0VSUk9S
KCJmYWlsZWQgdG8gcmVzZXJ2ZSBidWZmZXIgYmVmb3JlIGZsaXBcbiIpOwotCi0JCWFtZGdwdV9i
b19nZXRfdGlsaW5nX2ZsYWdzKGFibywgJnRpbGluZ19mbGFncyk7Ci0KLQkJdG16X3N1cmZhY2Ug
PSBhbWRncHVfYm9fZW5jcnlwdGVkKGFibyk7Ci0KLQkJYW1kZ3B1X2JvX3VucmVzZXJ2ZShhYm8p
OworCQl0aWxpbmdfZmxhZ3MgPSBSRUFEX09OQ0UoYWJvLT50aWxpbmdfZmxhZ3MpOworCQl0bXpf
c3VyZmFjZSA9IFJFQURfT05DRShhYm8tPmZsYWdzKSAmIEFNREdQVV9HRU1fQ1JFQVRFX0VOQ1JZ
UFRFRDsKIAogCQlmaWxsX2RjX3BsYW5lX2luZm9fYW5kX2FkZHIoCiAJCQlkbS0+YWRldiwgbmV3
X3BsYW5lX3N0YXRlLCB0aWxpbmdfZmxhZ3MsCi0tIAoyLjI3LjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
