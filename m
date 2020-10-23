Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A9A296F2C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Oct 2020 14:28:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EF6BD665AB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Oct 2020 12:28:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E12F8665F2; Fri, 23 Oct 2020 12:28:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3AE9F666DF;
	Fri, 23 Oct 2020 12:24:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7548B60FF8
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Oct 2020 12:24:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6A97066009; Fri, 23 Oct 2020 12:24:10 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id EEE5560FF8
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Oct 2020 12:22:46 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id j7so1562367wrt.9
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Oct 2020 05:22:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Pt7r3r8KzR5b5qiGeAc9wam0F2FH3YbYbdtTLI7+5pA=;
 b=dsK7gxQ1y2mUqtIllCV+PKwoxBx0/IkBNSg34jEFolp8VYm7MDyGnOd8E0bjKzn8iC
 JnyHEXzWaGnXshNyeKdmI9U2BgxI0dpmX010b80bnxOKK5IJHAGrfZL+/6YmriNVzgQR
 z1zQMOIY4xWs872eQqIX38o0gtnfZbg5kJ7FdFQFss1qA0VHP1XBsfe/Ipi/wy4Bando
 7JDb0VXPBmY+KJ+GC5svkqj7sjmuK6LfSM0jc3Xt3ux2PZsXkdXqJ1rY36UqwjPPQiPw
 +LYzo0l+PrEYMrM/keHVNn+YKNeT9eu2CST38xy4CTupJu8oQRMTHKeE85b53YFizhyl
 gJEQ==
X-Gm-Message-State: AOAM533q8fQL/oyCOlX5uyq7Ugjd2omsgPu15n9u5PGzGTqNcC10ax9x
 53uvosyWW6zaD3buVlUT/FcOlA==
X-Google-Smtp-Source: ABdhPJzeL0b3o7SdVpsqso58ueQCQULN8UwDSO9Ve2MQd7IHgs3k/2/xklwW61HBtOOF7k0eWuT9pw==
X-Received: by 2002:a5d:4ccd:: with SMTP id c13mr2315042wrt.221.1603455766129; 
 Fri, 23 Oct 2020 05:22:46 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y4sm3056484wrp.74.2020.10.23.05.22.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 05:22:45 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 23 Oct 2020 14:21:32 +0200
Message-Id: <20201023122216.2373294-21-daniel.vetter@ffwll.ch>
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
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 21/65] drm/amdgpu: use dma-fence annotations
	for gpu reset code
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

VG8gaW1wcm92ZSBjb3ZlcmFnZSBhbHNvIGFubm90YXRlIHRoZSBncHUgcmVzZXQgY29kZSBpdHNl
bGYsIHNpbmNlCnRoYXQncyBjYWxsZWQgZnJvbSBvdGhlciBwbGFjZXMgdGhhbiBkcm0vc2NoZWR1
bGVyICh3aGljaCBpcyBhbHJlYWR5CmFubm90YXRlZCkuIEFubm90YXRpb25zIG5lc3RzLCBzbyB0
aGlzIGRvZXNuJ3QgYnJlYWsgYW55dGhpbmcsIGFuZAphbGxvd3MgZWFzaWVyIHRlc3RpbmcuCgpD
YzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKQ2M6IGxpbnV4LXJkbWFAdmdlci5rZXJuZWwub3JnCkNjOiBhbWQtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNYWFydGVuIExhbmto
b3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0
dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9kZXZpY2UuYyB8IDExICsrKysrKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgOCBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV9kZXZpY2UuYwppbmRleCBlOGI0MTc1NmM5ZjkuLjAyOWEwMjZlY2ZhOSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RldmljZS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYwpAQCAtNDQ5Niw2ICs0NDk2
LDkgQEAgaW50IGFtZGdwdV9kZXZpY2VfZ3B1X3JlY292ZXIoc3RydWN0IGFtZGdwdV9kZXZpY2Ug
KmFkZXYsCiAJaW50IGksIHIgPSAwOwogCWJvb2wgbmVlZF9lbWVyZ2VuY3lfcmVzdGFydCA9IGZh
bHNlOwogCWJvb2wgYXVkaW9fc3VzcGVuZGVkID0gZmFsc2U7CisJYm9vbCBmZW5jZV9jb29raWU7
CisKKwlmZW5jZV9jb29raWUgPSBkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygpOwogCiAJLyoq
CiAJICogU3BlY2lhbCBjYXNlOiBSQVMgdHJpZ2dlcmVkIGFuZCBmdWxsIHJlc2V0IGlzbid0IHN1
cHBvcnRlZApAQCAtNDUyOSw2ICs0NTMyLDcgQEAgaW50IGFtZGdwdV9kZXZpY2VfZ3B1X3JlY292
ZXIoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsCiAJCQlEUk1fSU5GTygiQmFpbGluZyBvbiBU
RFIgZm9yIHNfam9iOiVsbHgsIGhpdmU6ICVsbHggYXMgYW5vdGhlciBhbHJlYWR5IGluIHByb2dy
ZXNzIiwKIAkJCQlqb2IgPyBqb2ItPmJhc2UuaWQgOiAtMSwgaGl2ZS0+aGl2ZV9pZCk7CiAJCQlh
bWRncHVfcHV0X3hnbWlfaGl2ZShoaXZlKTsKKwkJCWRtYV9mZW5jZV9lbmRfc2lnbmFsbGluZyhm
ZW5jZV9jb29raWUpOwogCQkJcmV0dXJuIDA7CiAJCX0KIAkJbXV0ZXhfbG9jaygmaGl2ZS0+aGl2
ZV9sb2NrKTsKQEAgLTQ1NDEsOCArNDU0NSwxMCBAQCBpbnQgYW1kZ3B1X2RldmljZV9ncHVfcmVj
b3ZlcihzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwKIAkgKi8KIAlJTklUX0xJU1RfSEVBRCgm
ZGV2aWNlX2xpc3QpOwogCWlmIChhZGV2LT5nbWMueGdtaS5udW1fcGh5c2ljYWxfbm9kZXMgPiAx
KSB7Ci0JCWlmICghaGl2ZSkKKwkJaWYgKCFoaXZlKSB7CisJCQlkbWFfZmVuY2VfZW5kX3NpZ25h
bGxpbmcoZmVuY2VfY29va2llKTsKIAkJCXJldHVybiAtRU5PREVWOworCQl9CiAJCWlmICghbGlz
dF9pc19maXJzdCgmYWRldi0+Z21jLnhnbWkuaGVhZCwgJmhpdmUtPmRldmljZV9saXN0KSkKIAkJ
CWxpc3Rfcm90YXRlX3RvX2Zyb250KCZhZGV2LT5nbWMueGdtaS5oZWFkLCAmaGl2ZS0+ZGV2aWNl
X2xpc3QpOwogCQlkZXZpY2VfbGlzdF9oYW5kbGUgPSAmaGl2ZS0+ZGV2aWNlX2xpc3Q7CkBAIC00
NTU2LDggKzQ1NjIsNiBAQCBpbnQgYW1kZ3B1X2RldmljZV9ncHVfcmVjb3ZlcihzdHJ1Y3QgYW1k
Z3B1X2RldmljZSAqYWRldiwKIAkJaWYgKCFhbWRncHVfZGV2aWNlX2xvY2tfYWRldih0bXBfYWRl
diwgaGl2ZSkpIHsKIAkJCWRldl9pbmZvKHRtcF9hZGV2LT5kZXYsICJCYWlsaW5nIG9uIFREUiBm
b3Igc19qb2I6JWxseCwgYXMgYW5vdGhlciBhbHJlYWR5IGluIHByb2dyZXNzIiwKIAkJCQkgIGpv
YiA/IGpvYi0+YmFzZS5pZCA6IC0xKTsKLQkJCXIgPSAwOwotCQkJZ290byBza2lwX3JlY292ZXJ5
OwogCQl9CiAKIAkJLyoKQEAgLTQ2OTksNiArNDcwMyw3IEBAIGludCBhbWRncHVfZGV2aWNlX2dw
dV9yZWNvdmVyKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LAogCiAJaWYgKHIpCiAJCWRldl9p
bmZvKGFkZXYtPmRldiwgIkdQVSByZXNldCBlbmQgd2l0aCByZXQgPSAlZFxuIiwgcik7CisJZG1h
X2ZlbmNlX2VuZF9zaWduYWxsaW5nKGZlbmNlX2Nvb2tpZSk7CiAJcmV0dXJuIHI7CiB9CiAKLS0g
CjIuMjguMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
Cmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
