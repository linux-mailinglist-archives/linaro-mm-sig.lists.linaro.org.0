Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1B6217935
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Jul 2020 22:18:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9975766737
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Jul 2020 20:18:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 876DC6673E; Tue,  7 Jul 2020 20:18:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E064D6673D;
	Tue,  7 Jul 2020 20:13:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8762A6670F
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Jul 2020 20:12:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 782D066725; Tue,  7 Jul 2020 20:12:54 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by lists.linaro.org (Postfix) with ESMTPS id E8A1B66726
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Jul 2020 20:12:49 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id f2so18609476wrp.7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Jul 2020 13:12:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/F5bE4Ajmtsmz1BnMPDeI6gxnQhrPyyYiyHS2HLPAEo=;
 b=sNrvqkyptGC3lYaJrvQiqBVTl0E2wN2EfDXUtR+k4Mg39naWFkd/NuGzg0s2Tu20YH
 Q9RepXMgJU+bk+wadloQcHXpB84kZUT1KM/bvHuNWs7i4KXy9aY6YrZr3CicgybOdqiH
 mT7bmDpdphKOvJ2D+joaGy91Ujtet+8Q9AJHdDAC4gXg3oy7N+wrWndngHed2ZBLx2Nj
 FgvbtrpHbMAwndDyV+MNn1LHzYsgQgEWhbsTd4VJXOvBNzfx6FK6dovNVwDZ4yiPzp/W
 3yQO8O10ecpbal/fb7JN/LDS+Y6T71rDuRYxfHgs7r8uva+pllLIghq9Ct3a9fmU7CAn
 QNfA==
X-Gm-Message-State: AOAM532EAzZoWltXhZgmCRxwOEl3OrBjUu089/dXOMbli23FGDyyB2qw
 7ZNXM4RnZ/94aEDD/AfCogqq7Q==
X-Google-Smtp-Source: ABdhPJwbdve/8vMlznHD/htlv+d2Iw56fdNcBxr/w0i0HbzaOXCdPCcE786isY4b7E3+0QkxxmkdLA==
X-Received: by 2002:a5d:62d1:: with SMTP id o17mr53792691wrv.162.1594152768997; 
 Tue, 07 Jul 2020 13:12:48 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q7sm2515262wra.56.2020.07.07.13.12.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jul 2020 13:12:48 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  7 Jul 2020 22:12:10 +0200
Message-Id: <20200707201229.472834-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 06/25] drm/amdgpu: add dma-fence annotations
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
YXkvYW1kZ3B1X2RtL2FtZGdwdV9kbS5jCmluZGV4IDViMGY3MDhkZDhjNS4uNmFmY2MzM2ZmODQ2
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdw
dV9kbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1
X2RtLmMKQEAgLTU3LDYgKzU3LDcgQEAKIAogI2luY2x1ZGUgIml2c3JjaWQvaXZzcmNpZF92aXNs
YW5kczMwLmgiCiAKKyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KICNpbmNsdWRlIDxsaW51eC9t
b2R1bGUuaD4KICNpbmNsdWRlIDxsaW51eC9tb2R1bGVwYXJhbS5oPgogI2luY2x1ZGUgPGxpbnV4
L3ZlcnNpb24uaD4KQEAgLTczNTksNiArNzM2MCw5IEBAIHN0YXRpYyB2b2lkIGFtZGdwdV9kbV9h
dG9taWNfY29tbWl0X3RhaWwoc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlKQogCXN0cnVj
dCBkcm1fY29ubmVjdG9yX3N0YXRlICpvbGRfY29uX3N0YXRlLCAqbmV3X2Nvbl9zdGF0ZTsKIAlz
dHJ1Y3QgZG1fY3J0Y19zdGF0ZSAqZG1fb2xkX2NydGNfc3RhdGUsICpkbV9uZXdfY3J0Y19zdGF0
ZTsKIAlpbnQgY3J0Y19kaXNhYmxlX2NvdW50ID0gMDsKKwlib29sIGZlbmNlX2Nvb2tpZTsKKwor
CWZlbmNlX2Nvb2tpZSA9IGRtYV9mZW5jZV9iZWdpbl9zaWduYWxsaW5nKCk7CiAKIAlkcm1fYXRv
bWljX2hlbHBlcl91cGRhdGVfbGVnYWN5X21vZGVzZXRfc3RhdGUoZGV2LCBzdGF0ZSk7CiAKQEAg
LTc2MzksNiArNzY0Myw4IEBAIHN0YXRpYyB2b2lkIGFtZGdwdV9kbV9hdG9taWNfY29tbWl0X3Rh
aWwoc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlKQogCS8qIFNpZ25hbCBIVyBwcm9ncmFt
bWluZyBjb21wbGV0aW9uICovCiAJZHJtX2F0b21pY19oZWxwZXJfY29tbWl0X2h3X2RvbmUoc3Rh
dGUpOwogCisJZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKGZlbmNlX2Nvb2tpZSk7CisKIAlpZiAo
d2FpdF9mb3JfdmJsYW5rKQogCQlkcm1fYXRvbWljX2hlbHBlcl93YWl0X2Zvcl9mbGlwX2RvbmUo
ZGV2LCBzdGF0ZSk7CiAKLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK
