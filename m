Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EA02FEECD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Jan 2021 16:31:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AFF0766739
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Jan 2021 15:31:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A339C66741; Thu, 21 Jan 2021 15:31:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 94A576673D;
	Thu, 21 Jan 2021 15:30:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2009E6672C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Jan 2021 15:30:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1437F6673C; Thu, 21 Jan 2021 15:30:12 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by lists.linaro.org (Postfix) with ESMTPS id 59CBE66738
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Jan 2021 15:30:08 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id 7so2166059wrz.0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Jan 2021 07:30:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cO1IkKPUOVwRn1crpsdxPu7FkoF7p+ucW3GbJhM3e14=;
 b=lhcKl8ChWplE/75fR40Y71DrRgaOV6kmKSOj2CKON2nTZIWHYmJog7dgLF1E0CmRrr
 IGIitym3UJWw/k65CBL9EKq1bwmwDbo7Vxrk3RuHftvfWTy0DmFZna/nA2O+qnqdKO21
 h0V7wlI4kLYh+rjyCegUP3XXhKZZm/tLr64bViVa/hpPiRivj8TbBVQHJ6gjRnvukr5v
 +nFFfCABba5SKEzhro6TEDBSHsLJ4kNU5Iv+bQ0+E4aeRqXeBJBBVwJnSmMBG1yV5yZv
 6EjBB+NCXlEFnipJFgP0Fy7Y7M5qAcmgImFiLsRJKndykVw8G/UI77bWYyQnVg/7AESN
 w0Qg==
X-Gm-Message-State: AOAM531y4Kav27uYOGQ64ZlL0bsdZfrmwkx5WbDKDARhvMk8t22CIQi9
 Ncs7g1BMVg/T/wMYfagonK49Ag==
X-Google-Smtp-Source: ABdhPJzW179r+95gTC9AApAezahGncz7nZxmZZU6SylexVR2TnthZyEScn1yu5DpB9svGDcS52Nyxg==
X-Received: by 2002:a5d:49c1:: with SMTP id t1mr33276wrs.56.1611243007580;
 Thu, 21 Jan 2021 07:30:07 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f14sm8269866wre.69.2021.01.21.07.30.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Jan 2021 07:30:06 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 21 Jan 2021 16:29:50 +0100
Message-Id: <20210121152959.1725404-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210121152959.1725404-1-daniel.vetter@ffwll.ch>
References: <20210121152959.1725404-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org,
 Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>,
 Haneen Mohammed <hamohammed.sa@gmail.com>, linux-rdma@vger.kernel.org,
 intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 amd-gfx@lists.freedesktop.org, Melissa Wen <melissa.srw@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 02/11] drm/vkms: Annotate vblank timer
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

VGhpcyBpcyBuZWVkZWQgdG8gc2lnbmFsIHRoZSBmZW5jZXMgZnJvbSBwYWdlIGZsaXBzLCBhbm5v
dGF0ZSBpdAphY2NvcmRpbmdseS4gV2UgbmVlZCB0byBhbm5vdGF0ZSBlbnRpcmUgdGltZXIgY2Fs
bGJhY2sgc2luY2UgaWYgd2UgZ2V0CnN0dWNrIGFueXdoZXJlIGluIHRoZXJlLCB0aGVuIHRoZSB0
aW1lciBzdG9wcywgYW5kIGhlbmNlIGZlbmNlcyBzdG9wLgpKdXN0IGFubm90YXRpbmcgdGhlIHRv
cCBwYXJ0IHRoYXQgZG9lcyB0aGUgdmJsYW5rIGhhbmRsaW5nIGlzbid0CmVub3VnaC4KClRlc3Rl
ZC1ieTogTWVsaXNzYSBXZW4gPG1lbGlzc2Euc3J3QGdtYWlsLmNvbT4KUmV2aWV3ZWQtYnk6IFJv
ZHJpZ28gU2lxdWVpcmEgPHJvZHJpZ29zaXF1ZWlyYW1lbG9AZ21haWwuY29tPgpDYzogbGludXgt
bWVkaWFAdmdlci5rZXJuZWwub3JnCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
Q2M6IGxpbnV4LXJkbWFAdmdlci5rZXJuZWwub3JnCkNjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFh
cnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5p
ZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IFJvZHJpZ28gU2lxdWVpcmEgPHJvZHJpZ29zaXF1ZWly
YW1lbG9AZ21haWwuY29tPgpDYzogSGFuZWVuIE1vaGFtbWVkIDxoYW1vaGFtbWVkLnNhQGdtYWls
LmNvbT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vdmttcy92a21zX2NydGMuYyB8IDggKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA3IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
dmttcy92a21zX2NydGMuYyBiL2RyaXZlcnMvZ3B1L2RybS92a21zL3ZrbXNfY3J0Yy5jCmluZGV4
IDA0NDNiN2RlZWFlZi4uNjE2NDM0OWNkZjExIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
dmttcy92a21zX2NydGMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdmttcy92a21zX2NydGMuYwpA
QCAtMSw1ICsxLDcgQEAKIC8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wKwogCisj
aW5jbHVkZSA8bGludXgvZG1hLWZlbmNlLmg+CisKICNpbmNsdWRlIDxkcm0vZHJtX2F0b21pYy5o
PgogI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljX2hlbHBlci5oPgogI2luY2x1ZGUgPGRybS9kcm1f
cHJvYmVfaGVscGVyLmg+CkBAIC0xNCw3ICsxNiw5IEBAIHN0YXRpYyBlbnVtIGhydGltZXJfcmVz
dGFydCB2a21zX3ZibGFua19zaW11bGF0ZShzdHJ1Y3QgaHJ0aW1lciAqdGltZXIpCiAJc3RydWN0
IGRybV9jcnRjICpjcnRjID0gJm91dHB1dC0+Y3J0YzsKIAlzdHJ1Y3Qgdmttc19jcnRjX3N0YXRl
ICpzdGF0ZTsKIAl1NjQgcmV0X292ZXJydW47Ci0JYm9vbCByZXQ7CisJYm9vbCByZXQsIGZlbmNl
X2Nvb2tpZTsKKworCWZlbmNlX2Nvb2tpZSA9IGRtYV9mZW5jZV9iZWdpbl9zaWduYWxsaW5nKCk7
CiAKIAlyZXRfb3ZlcnJ1biA9IGhydGltZXJfZm9yd2FyZF9ub3coJm91dHB1dC0+dmJsYW5rX2hy
dGltZXIsCiAJCQkJCSAgb3V0cHV0LT5wZXJpb2RfbnMpOwpAQCAtNDksNiArNTMsOCBAQCBzdGF0
aWMgZW51bSBocnRpbWVyX3Jlc3RhcnQgdmttc192Ymxhbmtfc2ltdWxhdGUoc3RydWN0IGhydGlt
ZXIgKnRpbWVyKQogCQkJRFJNX0RFQlVHX0RSSVZFUigiQ29tcG9zZXIgd29ya2VyIGFscmVhZHkg
cXVldWVkXG4iKTsKIAl9CiAKKwlkbWFfZmVuY2VfZW5kX3NpZ25hbGxpbmcoZmVuY2VfY29va2ll
KTsKKwogCXJldHVybiBIUlRJTUVSX1JFU1RBUlQ7CiB9CiAKLS0gCjIuMzAuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGlu
YXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
