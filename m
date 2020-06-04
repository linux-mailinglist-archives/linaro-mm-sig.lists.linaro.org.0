Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E01E71EDFAE
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2020 10:20:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 134D16179A
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2020 08:20:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 069F961820; Thu,  4 Jun 2020 08:20:57 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3ECCD61A21;
	Thu,  4 Jun 2020 08:13:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5DB3D615ED
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2020 08:12:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4A8A66175A; Thu,  4 Jun 2020 08:12:52 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by lists.linaro.org (Postfix) with ESMTPS id 3D4D8615ED
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2020 08:12:47 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id g10so4293398wmh.4
 for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Jun 2020 01:12:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r5PRcG/JtprEwCOUf2/ZPMLqKS9RbW1APrGVc2im3Nw=;
 b=KTrxrDVeKK20ymPZtXSVa2Rxe6Jhi9Ylmn0fO3bA+VMwTrJpx7ybWkmKbMUQR4jOyF
 /6PeXvXOyisWHqy0Dcg1dnnAhkujTB1z+ukORcgjTnetPuWQHrylqQv69nNplmwoELkv
 g7dxIXpdLmLn3KDY0ExB+1DMQe4/JOES4xxummp38WLgCq17ClfpDNRI+G+ZijsGWHTB
 AUE13YoCAbXHDEcv3/ciPd1/hLeDjb8yNeosGvlI32c/sKWcVK/SjShq0raksGFI0WPU
 TuFTO01fYtmi1qFss1jPKddZ6SXFuo9Re4CloWShHPIMWJGCbjuJN5RYdzctnN7xeqZK
 4vYQ==
X-Gm-Message-State: AOAM531IjYDhQwQ15r6F2KrbOSUr2nZkX84uG39ruUneI9oarvUQmOV3
 5FxvweCZ7d0TWs/PJKq+8Sboxg==
X-Google-Smtp-Source: ABdhPJxlvHiwLUKpMc/fibX83rHdeLrkjFY5wrTostf2iwbBSmbJPCuso4jxxSuY+d7sEL6BpjrzbQ==
X-Received: by 2002:a1c:7305:: with SMTP id d5mr2952331wmb.85.1591258366300;
 Thu, 04 Jun 2020 01:12:46 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f11sm6873305wrj.2.2020.06.04.01.12.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 01:12:45 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  4 Jun 2020 10:12:17 +0200
Message-Id: <20200604081224.863494-12-daniel.vetter@ffwll.ch>
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
Subject: [Linaro-mm-sig] [PATCH 11/18] drm/amdgpu: s/GFP_KERNEL/GFP_ATOMIC
	in scheduler code
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

TXkgZG1hLWZlbmNlIGxvY2tkZXAgYW5ub3RhdGlvbnMgY2F1Z2h0IGFuIGludmVyc2lvbiBiZWNh
dXNlIHdlCmFsbG9jYXRlIG1lbW9yeSB3aGVyZSB3ZSByZWFsbHkgc2hvdWxkbid0OgoKCWttZW1f
Y2FjaGVfYWxsb2MrMHgyYi8weDZkMAoJYW1kZ3B1X2ZlbmNlX2VtaXQrMHgzMC8weDMzMCBbYW1k
Z3B1XQoJYW1kZ3B1X2liX3NjaGVkdWxlKzB4MzA2LzB4NTUwIFthbWRncHVdCglhbWRncHVfam9i
X3J1bisweDEwZi8weDI2MCBbYW1kZ3B1XQoJZHJtX3NjaGVkX21haW4rMHgxYjkvMHg0OTAgW2dw
dV9zY2hlZF0KCWt0aHJlYWQrMHgxMmUvMHgxNTAKClRyb3VibGUgcmlnaHQgbm93IGlzIHRoYXQg
bG9ja2RlcCBvbmx5IHZhbGlkYXRlcyBhZ2FpbnN0IEdGUF9GUywgd2hpY2gKd291bGQgYmUgZ29v
ZCBlbm91Z2ggZm9yIHNocmlua2Vycy4gQnV0IGZvciBtbXVfbm90aWZpZXJzIHdlIGFjdHVhbGx5
Cm5lZWQgIUdGUF9BVE9NSUMsIHNpbmNlIHRoZXkgY2FuIGJlIGNhbGxlZCBmcm9tIGFueSBwYWdl
IGxhdW5kZXJpbmcsCmV2ZW4gaWYgR0ZQX05PRlMgb3IgR0ZQX05PSU8gYXJlIHNldC4KCkkgZ3Vl
c3Mgd2Ugc2hvdWxkIGltcHJvdmUgdGhlIGxvY2tkZXAgYW5ub3RhdGlvbnMgZm9yCmZzX3JlY2xh
aW1fYWNxdWlyZS9yZWxlYXNlLgoKT2ZjIHJlYWwgZml4IGlzIHRvIHByb3Blcmx5IHByZWFsbG9j
YXRlIHRoaXMgZmVuY2UgYW5kIHN0dWZmIGl0IGludG8KdGhlIGFtZGdwdSBqb2Igc3RydWN0dXJl
LiBCdXQgR0ZQX0FUT01JQyBnZXRzIHRoZSBsb2NrZGVwIHNwbGF0IG91dCBvZgp0aGUgd2F5LgoK
djI6IFR3byBtb3JlIGFsbG9jYXRpb25zIGluIHNjaGVkdWxlciBwYXRocy4KCkZyaXN0IG9uZToK
CglfX2ttYWxsb2MrMHg1OC8weDcyMAoJYW1kZ3B1X3ZtaWRfZ3JhYisweDEwMC8weGNhMCBbYW1k
Z3B1XQoJYW1kZ3B1X2pvYl9kZXBlbmRlbmN5KzB4ZjkvMHgxMjAgW2FtZGdwdV0KCWRybV9zY2hl
ZF9lbnRpdHlfcG9wX2pvYisweDNmLzB4NDQwIFtncHVfc2NoZWRdCglkcm1fc2NoZWRfbWFpbisw
eGY5LzB4NDkwIFtncHVfc2NoZWRdCgpTZWNvbmQgb25lOgoKCWttZW1fY2FjaGVfYWxsb2MrMHgy
Yi8weDZkMAoJYW1kZ3B1X3N5bmNfZmVuY2UrMHg3ZS8weDExMCBbYW1kZ3B1XQoJYW1kZ3B1X3Zt
aWRfZ3JhYisweDg2Yi8weGNhMCBbYW1kZ3B1XQoJYW1kZ3B1X2pvYl9kZXBlbmRlbmN5KzB4Zjkv
MHgxMjAgW2FtZGdwdV0KCWRybV9zY2hlZF9lbnRpdHlfcG9wX2pvYisweDNmLzB4NDQwIFtncHVf
c2NoZWRdCglkcm1fc2NoZWRfbWFpbisweGY5LzB4NDkwIFtncHVfc2NoZWRdCgpDYzogbGludXgt
bWVkaWFAdmdlci5rZXJuZWwub3JnCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
Q2M6IGxpbnV4LXJkbWFAdmdlci5rZXJuZWwub3JnCkNjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFh
cnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5p
ZWwudmV0dGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfZmVuY2UuYyB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9pZHMu
YyAgIHwgMiArLQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3N5bmMuYyAgfCAy
ICstCiAzIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZmVuY2UuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9mZW5jZS5jCmluZGV4IGQ4NzhmZTdmZWU1
MS4uMDU1YjQ3MjQxYmIxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfZmVuY2UuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZmVu
Y2UuYwpAQCAtMTQzLDcgKzE0Myw3IEBAIGludCBhbWRncHVfZmVuY2VfZW1pdChzdHJ1Y3QgYW1k
Z3B1X3JpbmcgKnJpbmcsIHN0cnVjdCBkbWFfZmVuY2UgKipmLAogCXVpbnQzMl90IHNlcTsKIAlp
bnQgcjsKIAotCWZlbmNlID0ga21lbV9jYWNoZV9hbGxvYyhhbWRncHVfZmVuY2Vfc2xhYiwgR0ZQ
X0tFUk5FTCk7CisJZmVuY2UgPSBrbWVtX2NhY2hlX2FsbG9jKGFtZGdwdV9mZW5jZV9zbGFiLCBH
RlBfQVRPTUlDKTsKIAlpZiAoZmVuY2UgPT0gTlVMTCkKIAkJcmV0dXJuIC1FTk9NRU07CiAKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9pZHMuYyBiL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9pZHMuYwppbmRleCBmZTkyZGNkOTRkNGEuLmZk
Y2Q2NjU5ZjVhZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X2lkcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9pZHMuYwpAQCAt
MjA4LDcgKzIwOCw3IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X3ZtaWRfZ3JhYl9pZGxlKHN0cnVjdCBh
bWRncHVfdm0gKnZtLAogCWlmIChyaW5nLT52bWlkX3dhaXQgJiYgIWRtYV9mZW5jZV9pc19zaWdu
YWxlZChyaW5nLT52bWlkX3dhaXQpKQogCQlyZXR1cm4gYW1kZ3B1X3N5bmNfZmVuY2Uoc3luYywg
cmluZy0+dm1pZF93YWl0LCBmYWxzZSk7CiAKLQlmZW5jZXMgPSBrbWFsbG9jX2FycmF5KHNpemVv
Zih2b2lkICopLCBpZF9tZ3ItPm51bV9pZHMsIEdGUF9LRVJORUwpOworCWZlbmNlcyA9IGttYWxs
b2NfYXJyYXkoc2l6ZW9mKHZvaWQgKiksIGlkX21nci0+bnVtX2lkcywgR0ZQX0FUT01JQyk7CiAJ
aWYgKCFmZW5jZXMpCiAJCXJldHVybiAtRU5PTUVNOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfc3luYy5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X3N5bmMuYwppbmRleCBiODdjYTE3MTk4NmEuLjMzMDQ3NmNjMGM4NiAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3N5bmMuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfc3luYy5jCkBAIC0xNjgsNyArMTY4LDcgQEAg
aW50IGFtZGdwdV9zeW5jX2ZlbmNlKHN0cnVjdCBhbWRncHVfc3luYyAqc3luYywgc3RydWN0IGRt
YV9mZW5jZSAqZiwKIAlpZiAoYW1kZ3B1X3N5bmNfYWRkX2xhdGVyKHN5bmMsIGYsIGV4cGxpY2l0
KSkKIAkJcmV0dXJuIDA7CiAKLQllID0ga21lbV9jYWNoZV9hbGxvYyhhbWRncHVfc3luY19zbGFi
LCBHRlBfS0VSTkVMKTsKKwllID0ga21lbV9jYWNoZV9hbGxvYyhhbWRncHVfc3luY19zbGFiLCBH
RlBfQVRPTUlDKTsKIAlpZiAoIWUpCiAJCXJldHVybiAtRU5PTUVNOwogCi0tIAoyLjI2LjIKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xp
c3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
