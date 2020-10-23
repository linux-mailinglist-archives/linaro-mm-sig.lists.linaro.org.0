Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF91296F01
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Oct 2020 14:24:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 939BE66604
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Oct 2020 12:24:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 861E1666EF; Fri, 23 Oct 2020 12:24:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5003C66614;
	Fri, 23 Oct 2020 12:22:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C767666009
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Oct 2020 12:22:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B26DE665E9; Fri, 23 Oct 2020 12:22:36 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id 1B0FF66009
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Oct 2020 12:22:32 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id h7so1586220wre.4
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Oct 2020 05:22:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9/R15F1LsgpmrfF3NNCzaFiRsuDDTsIACKqWmG0SISo=;
 b=ff/yT3hYIdc9h2qKSOR0RyNC7d4p+w9A45E4l3ZXizc5dFg66boji32aueP2H8Y+dy
 4i16ULuGA62TJeP0u9PkN8jmyc1JVCahhL3x4mx8rRfT3/or7J6Zxk6c0Mel5e9Ry9ei
 2C1/oyOshKEvg3bF55+ADmsmwXeQL3g4L+JvqlBB0FNfP96v56CZI692r9RlGTRy9miK
 OuPnPD29BDp6CJykXMbX4yTslbFBsHWxscqKbQ+ixvv34JNjvVc4ifI0g/JoYBMeLBz/
 QKFGc4AP0g8KJOLHjRIzwZyxNfDw+/CpT5vuANC3gByD3JVQ6zzngPQ+qCJsexeOb/02
 Fh+w==
X-Gm-Message-State: AOAM532RdLKrDc3WuA1EBwjHyUFYX5B4TwJvFfYDNmulJfd4w3PHLFRH
 +IQScBKnrgrBBHO4qqzS/VJKeg==
X-Google-Smtp-Source: ABdhPJzjwHFFX0eYKKTO5kCI7ZhG3p97yKYVzt0PU/hjOwBpbNrm4zEFSBi8+JEVc4oqTj3X2egovA==
X-Received: by 2002:adf:a1cb:: with SMTP id v11mr2261703wrv.86.1603455751311; 
 Fri, 23 Oct 2020 05:22:31 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y4sm3056484wrp.74.2020.10.23.05.22.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 05:22:30 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 23 Oct 2020 14:21:19 +0200
Message-Id: <20201023122216.2373294-8-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 08/65] drm/amdgpu: add dma-fence annotations
	to atomic commit path
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

SSBuZWVkIGEgY2FuYXJ5IGluIGEgdHRtLWJhc2VkIGF0b21pYyBkcml2ZXIgdG8gbWFrZSBzdXJl
IHRoZQpkbWFfZmVuY2VfYmVnaW4vZW5kX3NpZ25hbGxpbmcgYW5ub3RhdGlvbnMgYWN0dWFsbHkg
d29yay4KCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpDYzogbGludXgtcmRtYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGFtZC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1hYXJ0
ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBDaHJp
c3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+ClNpZ25lZC1vZmYtYnk6IERh
bmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMgfCA2ICsrKysrKwogMSBmaWxlIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQv
ZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3Bs
YXkvYW1kZ3B1X2RtL2FtZGdwdV9kbS5jCmluZGV4IGJiMWJjN2Y1ZDE0OS4uYjA1ZmVjZjA2ZjI1
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdw
dV9kbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1
X2RtLmMKQEAgLTU3LDYgKzU3LDcgQEAKIAogI2luY2x1ZGUgIml2c3JjaWQvaXZzcmNpZF92aXNs
YW5kczMwLmgiCiAKKyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KICNpbmNsdWRlIDxsaW51eC9t
b2R1bGUuaD4KICNpbmNsdWRlIDxsaW51eC9tb2R1bGVwYXJhbS5oPgogI2luY2x1ZGUgPGxpbnV4
L3ZlcnNpb24uaD4KQEAgLTc0OTIsNiArNzQ5Myw5IEBAIHN0YXRpYyB2b2lkIGFtZGdwdV9kbV9h
dG9taWNfY29tbWl0X3RhaWwoc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlKQogCXN0cnVj
dCBkbV9jcnRjX3N0YXRlICpkbV9vbGRfY3J0Y19zdGF0ZSwgKmRtX25ld19jcnRjX3N0YXRlOwog
CWludCBjcnRjX2Rpc2FibGVfY291bnQgPSAwOwogCWJvb2wgbW9kZV9zZXRfcmVzZXRfcmVxdWly
ZWQgPSBmYWxzZTsKKwlib29sIGZlbmNlX2Nvb2tpZTsKKworCWZlbmNlX2Nvb2tpZSA9IGRtYV9m
ZW5jZV9iZWdpbl9zaWduYWxsaW5nKCk7CiAKIAlkcm1fYXRvbWljX2hlbHBlcl91cGRhdGVfbGVn
YWN5X21vZGVzZXRfc3RhdGUoZGV2LCBzdGF0ZSk7CiAJZHJtX2F0b21pY19oZWxwZXJfY2FsY190
aW1lc3RhbXBpbmdfY29uc3RhbnRzKHN0YXRlKTsKQEAgLTc4MTYsNiArNzgyMCw4IEBAIHN0YXRp
YyB2b2lkIGFtZGdwdV9kbV9hdG9taWNfY29tbWl0X3RhaWwoc3RydWN0IGRybV9hdG9taWNfc3Rh
dGUgKnN0YXRlKQogCS8qIFNpZ25hbCBIVyBwcm9ncmFtbWluZyBjb21wbGV0aW9uICovCiAJZHJt
X2F0b21pY19oZWxwZXJfY29tbWl0X2h3X2RvbmUoc3RhdGUpOwogCisJZG1hX2ZlbmNlX2VuZF9z
aWduYWxsaW5nKGZlbmNlX2Nvb2tpZSk7CisKIAlpZiAod2FpdF9mb3JfdmJsYW5rKQogCQlkcm1f
YXRvbWljX2hlbHBlcl93YWl0X2Zvcl9mbGlwX2RvbmUoZGV2LCBzdGF0ZSk7CiAKLS0gCjIuMjgu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
