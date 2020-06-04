Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9592D1EDFAC
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2020 10:20:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7ACCE618C8
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2020 08:20:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 66CFB61772; Thu,  4 Jun 2020 08:20:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D0793619F1;
	Thu,  4 Jun 2020 08:13:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B971060BF7
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2020 08:12:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9657E6176E; Thu,  4 Jun 2020 08:12:50 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by lists.linaro.org (Postfix) with ESMTPS id C6C5560BF7
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2020 08:12:45 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id r15so4611073wmh.5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Jun 2020 01:12:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JO6albsu9ail3aAxe1jjEWcSoPjULvK53jZ9O0zdFWo=;
 b=bNX9lAHRiK2DvIxr1nFnjOkeoj7fRjeiIUSTmuTpom49Em6iG8P7v2gthaXvR6lcE2
 GRq15Q80Xlz9p6ahkasbn0rdZYsmcc8kOm5pYsyIxy9veirgTzaO69F3MtiQkpiEDwf5
 OBr4T6nitAoTQRiZ+kypunIRT4KZfOap0RYi8NSwkFdALpkvwncPqNPZedL5EU5cO6wA
 WwypJtFxOtXbHhwIX/fKBphLzDwDJaC9Q2px0xOSwELpOa0rU+qmegkuJvIKxFPBv0sK
 iyNnPnktv0la3UPbZ+t82t1F/oq8PzCDR9TKAAfdSfgh/Lg8qmR+dEgod2h2PIfE5+AX
 xOmA==
X-Gm-Message-State: AOAM530NbHyq4UshD5o/QuX0Bl3bjhSSDYkZelNDBtfdzvtrsRrMB0zd
 +czpTDP6XiF6VPmzDcSJDPnGLQ==
X-Google-Smtp-Source: ABdhPJyn8WC4htH2TFhAJzXT32NdRtoD972Y+p3loDxohFz/ONHD+IEVEXE5SDKPFz9SSfLivB0maw==
X-Received: by 2002:a7b:c385:: with SMTP id s5mr3041559wmj.121.1591258364877; 
 Thu, 04 Jun 2020 01:12:44 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f11sm6873305wrj.2.2020.06.04.01.12.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 01:12:44 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  4 Jun 2020 10:12:16 +0200
Message-Id: <20200604081224.863494-11-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 10/18] drm/amdgpu: use dma-fence annotations
	in cs_submit()
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

VGhpcyBpcyBhIGJpdCB0cmlja3ksIHNpbmNlIC0+bm90aWZpZXJfbG9jayBpcyBoZWxkIHdoaWxl
IGNhbGxpbmcKZG1hX2ZlbmNlX3dhaXQgd2UgbXVzdCBlbnN1cmUgdGhhdCBhbHNvIHRoZSByZWFk
IHNpZGUgKGkuZS4KZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcpIGlzIG9uIHRoZSBzYW1lIHNp
ZGUuIElmIHdlIG1peCB0aGlzIHVwCmxvY2tkZXAgY29tcGxhaW50cywgYW5kIHRoYXQncyBhZ2Fp
biB3aHkgd2Ugd2FudCB0byBoYXZlIHRoZXNlCmFubm90YXRpb25zLgoKQSBuaWNlIHNpZGUgZWZm
ZWN0IG9mIHRoaXMgaXMgdGhhdCBiZWNhdXNlIG9mIHRoZSBmc19yZWNsYWltIHByaW1pbmcKZm9y
IGRtYV9mZW5jZV9lbmFibGUgbG9ja2RlcCBub3cgYXV0b21hdGljYWxseSBjaGVja3MgZm9yIHVz
IHRoYXQKbm90aGluZyBpbiBoZXJlIGFsbG9jYXRlcyBtZW1vcnksIHdpdGhvdXQgZXZlbiBydW5u
aW5nIGFueSB1c2VycHRyCndvcmtsb2Fkcy4KCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5v
cmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpDYzogbGludXgtcmRtYUB2Z2Vy
Lmtlcm5lbC5vcmcKQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51
eC5pbnRlbC5jb20+CkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+ClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jIHwgNSArKysrKwog
MSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2NzLmMKaW5kZXggYTI1ZmI1OWMxMjdjLi5lMTA5NjY2YWVjMTQgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jCkBAIC0xMjEyLDYgKzEyMTIsNyBAQCBzdGF0aWMg
aW50IGFtZGdwdV9jc19zdWJtaXQoc3RydWN0IGFtZGdwdV9jc19wYXJzZXIgKnAsCiAJc3RydWN0
IGFtZGdwdV9qb2IgKmpvYjsKIAl1aW50NjRfdCBzZXE7CiAJaW50IHI7CisJYm9vbCBmZW5jZV9j
b29raWU7CiAKIAlqb2IgPSBwLT5qb2I7CiAJcC0+am9iID0gTlVMTDsKQEAgLTEyMjYsNiArMTIy
Nyw4IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2NzX3N1Ym1pdChzdHJ1Y3QgYW1kZ3B1X2NzX3BhcnNl
ciAqcCwKIAkgKi8KIAltdXRleF9sb2NrKCZwLT5hZGV2LT5ub3RpZmllcl9sb2NrKTsKIAorCWZl
bmNlX2Nvb2tpZSA9IGRtYV9mZW5jZV9iZWdpbl9zaWduYWxsaW5nKCk7CisKIAkvKiBJZiB1c2Vy
cHRyIGFyZSBpbnZhbGlkYXRlZCBhZnRlciBhbWRncHVfY3NfcGFyc2VyX2JvcygpLCByZXR1cm4K
IAkgKiAtRUFHQUlOLCBkcm1Jb2N0bCBpbiBsaWJkcm0gd2lsbCByZXN0YXJ0IHRoZSBhbWRncHVf
Y3NfaW9jdGwuCiAJICovCkBAIC0xMjYyLDEyICsxMjY1LDE0IEBAIHN0YXRpYyBpbnQgYW1kZ3B1
X2NzX3N1Ym1pdChzdHJ1Y3QgYW1kZ3B1X2NzX3BhcnNlciAqcCwKIAlhbWRncHVfdm1fbW92ZV90
b19scnVfdGFpbChwLT5hZGV2LCAmZnByaXYtPnZtKTsKIAogCXR0bV9ldV9mZW5jZV9idWZmZXJf
b2JqZWN0cygmcC0+dGlja2V0LCAmcC0+dmFsaWRhdGVkLCBwLT5mZW5jZSk7CisJZG1hX2ZlbmNl
X2VuZF9zaWduYWxsaW5nKGZlbmNlX2Nvb2tpZSk7CiAJbXV0ZXhfdW5sb2NrKCZwLT5hZGV2LT5u
b3RpZmllcl9sb2NrKTsKIAogCXJldHVybiAwOwogCiBlcnJvcl9hYm9ydDoKIAlkcm1fc2NoZWRf
am9iX2NsZWFudXAoJmpvYi0+YmFzZSk7CisJZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKGZlbmNl
X2Nvb2tpZSk7CiAJbXV0ZXhfdW5sb2NrKCZwLT5hZGV2LT5ub3RpZmllcl9sb2NrKTsKIAogZXJy
b3JfdW5sb2NrOgotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
