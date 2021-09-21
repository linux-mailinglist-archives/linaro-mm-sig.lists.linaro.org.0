Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CDED4138C4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 19:39:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 40B6D631AA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 17:39:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 39B496314C; Tue, 21 Sep 2021 17:39:03 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 982F661A47;
	Tue, 21 Sep 2021 17:38:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8A12061456
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 716DC619B0; Tue, 21 Sep 2021 17:37:29 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by lists.linaro.org (Postfix) with ESMTPS id 1A0E4612E7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:25 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id i23so41645776wrb.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 10:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KGewx1QiQQVkw015IvGnnogZeqnpnoxIhP9ykI50FyQ=;
 b=Xq6wWVc1Z5F20PfHJazg6KxBBd7H0P4vmtq5bsruWiPGA1FBoghnkqRe8v7Rm3Vdm2
 MWfugL/sxAGlOOkbkCdeJsEVIMvZPuMaL3YJpQq1KoJVJ1dRYF743yK65vALbsH9ngzN
 LowqiylRSlyhD3MsM9u7ZxsR5jKZGgBiCSRNUgcr43cUkIP/kMZRdESEklGP2dvm1ifP
 5ByHiEME8AAPJDb8HxnFbpnCnpM2JALTb4JhEErxaqm0WYddCdPvgyZnOjkEcKIiBTMK
 x7dhZGl+nzgrBF7yMXENqyJOO9rx+5oziJD48cT1Cr5kUk3v31p2LpBLf7Kzu4Jg9yPo
 mbVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KGewx1QiQQVkw015IvGnnogZeqnpnoxIhP9ykI50FyQ=;
 b=FQMT2tyDEhINUNCilgYpyMpCsMxS3XaXv0YfIPSHBbOzHyFvpRJZvHs/8CgfNu/Gg7
 beXgCdFQZfHltDvkwmD+cE0Oxs+jky2rs2UxRmKOdae1QsbfpfFJ6LAY66BVg0Y7v4If
 KPdjz0LRj1+aj40oP2P773Geogw1wG64oL4fPDNQLuDm1A5RyMlMIrjYhULOjD+ZTj+R
 UXdtZWUSVYWZBhJoWeCCDS3IoNaf+f0qt+snepucX++/OpJAAslHrrPPuRqsMRI8/YqZ
 XwpWfJOY//uvD4BL0kN7GAA7vQiSp8R6AVZ6aeyM14ur2MwNcFmuP/Q1x9TBAL0N8Whh
 kRZw==
X-Gm-Message-State: AOAM530OfiCwEPYnkrEQPbvI78X0TJOzsHsznw34IiAiaSekdDADZhKS
 VxjZwEzwVl6e9RuLP+qRqQY=
X-Google-Smtp-Source: ABdhPJw5SwJWsbXOIR14p9znCpQlgAn5mTDseUxR0CQ7UeKD9FpPAvUU95sczDMftuP1OP+CPnIalg==
X-Received: by 2002:a1c:2246:: with SMTP id i67mr5874747wmi.157.1632245843939; 
 Tue, 21 Sep 2021 10:37:23 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 z13sm23310477wrs.90.2021.09.21.10.37.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 10:37:23 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: ckoenig.leichtzumerken@gmail.com, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 19:36:56 +0200
Message-Id: <20210921173659.246165-23-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210921173659.246165-1-christian.koenig@amd.com>
References: <20210921173659.246165-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 23/26] drm/nouveau: use the new interator in
 nv50_wndw_prepare_fb
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
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

TWFrZXMgdGhlIGhhbmRsaW5nIGEgYml0IG1vcmUgY29tcGxleCwgYnV0IGF2b2lkcyB0aGUgdXNl
IG9mCmRtYV9yZXN2X2dldF9leGNsX3VubG9ja2VkKCkuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L25vdXZlYXUvZGlzcG52NTAvd25kdy5jIHwgMTAgKysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQs
IDkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9ub3V2ZWF1L2Rpc3BudjUwL3duZHcuYyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L2Rp
c3BudjUwL3duZHcuYwppbmRleCA4ZDA0OGJhY2Q2ZjAuLjMwNzEyYTY4MWUyYSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvZGlzcG52NTAvd25kdy5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9ub3V2ZWF1L2Rpc3BudjUwL3duZHcuYwpAQCAtNTM5LDYgKzUzOSw4IEBAIG52NTBf
d25kd19wcmVwYXJlX2ZiKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLCBzdHJ1Y3QgZHJtX3BsYW5l
X3N0YXRlICpzdGF0ZSkKIAlzdHJ1Y3Qgbm91dmVhdV9ibyAqbnZibzsKIAlzdHJ1Y3QgbnY1MF9o
ZWFkX2F0b20gKmFzeWg7CiAJc3RydWN0IG52NTBfd25kd19jdHhkbWEgKmN0eGRtYTsKKwlzdHJ1
Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7CisJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7CiAJaW50
IHJldDsKIAogCU5WX0FUT01JQyhkcm0sICIlcyBwcmVwYXJlOiAlcFxuIiwgcGxhbmUtPm5hbWUs
IGZiKTsKQEAgLTU2MSw3ICs1NjMsMTMgQEAgbnY1MF93bmR3X3ByZXBhcmVfZmIoc3RydWN0IGRy
bV9wbGFuZSAqcGxhbmUsIHN0cnVjdCBkcm1fcGxhbmVfc3RhdGUgKnN0YXRlKQogCQkJYXN5dy0+
aW1hZ2UuaGFuZGxlWzBdID0gY3R4ZG1hLT5vYmplY3QuaGFuZGxlOwogCX0KIAotCWFzeXctPnN0
YXRlLmZlbmNlID0gZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQobnZiby0+Ym8uYmFzZS5yZXN2
KTsKKwlkbWFfcmVzdl9pdGVyX2JlZ2luKCZjdXJzb3IsIG52Ym8tPmJvLmJhc2UucmVzdiwgZmFs
c2UpOworCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKCZjdXJzb3IsIGZlbmNlKSB7
CisJCS8qIFRPRE86IFdlIG9ubHkgdXNlIHRoZSBmaXJzdCB3cml0ZXIgaGVyZSAqLworCQlhc3l3
LT5zdGF0ZS5mZW5jZSA9IGRtYV9mZW5jZV9nZXQoZmVuY2UpOworCQlicmVhazsKKwl9CisJZG1h
X3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7CiAJYXN5dy0+aW1hZ2Uub2Zmc2V0WzBdID0gbnZiby0+
b2Zmc2V0OwogCiAJaWYgKHduZHctPmZ1bmMtPnByZXBhcmUpIHsKLS0gCjIuMjUuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
