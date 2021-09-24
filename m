Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC574177CF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 17:32:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 96FA0623A8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 15:32:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 52A8962002; Fri, 24 Sep 2021 15:32:30 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D656761C4A;
	Fri, 24 Sep 2021 15:32:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A5368631AE
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B8C816322E; Fri, 24 Sep 2021 15:31:34 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by lists.linaro.org (Postfix) with ESMTPS id BEC6763231
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:31 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id i24so12739631wrc.9
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 08:31:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SQ++zZ5/yZpkHj9Fw3rhcDISIEh5bldO1ALOtoZPTbI=;
 b=GU9YhU5Pryn0hB8x07xuYZF8M7s+qXgLshbnexafRjeTizxn7h9FRONZ6n23xvPfTf
 UJ2eGR7lgmUiPjoir92KNbFbT5uEYvWIO+IJOxVkyn6iiRLbK5B/INWdcFZAChlFP3TQ
 qa0Mhu4+bkT/yb9oZIjUQJP3L6Qck7I/EtefMbt7uQ/2RCDjAS2GGZV/EaIQz7RNSFms
 vKXHR8Ui3fo8EU7WYsgti/u780Y0A1J2aoWareMMd6+ydH0C8PHT3l9HlqDhVyXjtew9
 nz8JC4ADUXW8vq/Ywl37I3PYeKNtPQRfX80jQ5F+bVAMs/z6aL5eZ+QKBJ1aekzFCe07
 6uNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SQ++zZ5/yZpkHj9Fw3rhcDISIEh5bldO1ALOtoZPTbI=;
 b=GpAVfsI5VnwTgSwzBrreK3WbqWkp4WGc0ypcvNH3ifxxZcfqIC8AeXczmXht5PLdbG
 ilcPTgHowyb75eKZzX6xk0ideVcYBJm6ehCYVThJ1DCvz8bzfqaDlMyYAEqNvm1GBRvj
 1ldO8e5ORKOXAtFGzhGHxxlr5Ernt7QnsM9LOLo4Bd+cyJA95otNOocAKvPEtSISjoeX
 kVoqvm5IAWpSWhRNI6nzhlXmF5kE7sespOpu57X2GhqgkHEvnBo+p5swU6VJdQ2BKWMs
 rCQGf9toKZG1pG4nxVMfmDhGiWE37JVlwg8ZffmzznZGWHAXKB80nFDwKS4OBy5N1r1q
 NLcw==
X-Gm-Message-State: AOAM533a6czWHEuIW4wXDHn3nHHY4FL+s7yagH9FRi/siQttOxCN9XM9
 VgjmEPEMHp9skkPPQcuAy0loLg9XHFE=
X-Google-Smtp-Source: ABdhPJwpe/xR1soLgzkh2xZshodGJdGysorueiWodthKrz5USEQ/vTDRlUoA0X5iRPY+P7LFZUt8ow==
X-Received: by 2002:a5d:67cc:: with SMTP id n12mr12092772wrw.381.1632497488865; 
 Fri, 24 Sep 2021 08:31:28 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 u25sm9902248wmm.5.2021.09.24.08.31.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Sep 2021 08:31:28 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 24 Sep 2021 17:30:58 +0200
Message-Id: <20210924153113.2159-12-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210924153113.2159-1-christian.koenig@amd.com>
References: <20210924153113.2159-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 12/27] drm/amdgpu: use new iterator in
 amdgpu_vm_prt_fini
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

Tm8gbmVlZCB0byBhY3R1YWxseSBhbGxvY2F0ZSBhbiBhcnJheSBvZiBmZW5jZXMgaGVyZS4KClNp
Z25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdm0uYyB8IDI2ICsrKysrLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyMSBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfdm0uYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV92bS5jCmluZGV4IDZi
MTVjYWQ3OGRlOS4uZTQyZGQ3OWVkNmY0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfdm0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfdm0uYwpAQCAtMjA5MCwzMCArMjA5MCwxNCBAQCBzdGF0aWMgdm9pZCBhbWRncHVfdm1fZnJl
ZV9tYXBwaW5nKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LAogc3RhdGljIHZvaWQgYW1kZ3B1
X3ZtX3BydF9maW5pKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LCBzdHJ1Y3QgYW1kZ3B1X3Zt
ICp2bSkKIHsKIAlzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YgPSB2bS0+cm9vdC5iby0+dGJvLmJhc2Uu
cmVzdjsKLQlzdHJ1Y3QgZG1hX2ZlbmNlICpleGNsLCAqKnNoYXJlZDsKLQl1bnNpZ25lZCBpLCBz
aGFyZWRfY291bnQ7Ci0JaW50IHI7CisJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOworCXN0
cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwogCi0JciA9IGRtYV9yZXN2X2dldF9mZW5jZXMocmVzdiwg
JmV4Y2wsICZzaGFyZWRfY291bnQsICZzaGFyZWQpOwotCWlmIChyKSB7Ci0JCS8qIE5vdCBlbm91
Z2ggbWVtb3J5IHRvIGdyYWIgdGhlIGZlbmNlIGxpc3QsIGFzIGxhc3QgcmVzb3J0Ci0JCSAqIGJs
b2NrIGZvciBhbGwgdGhlIGZlbmNlcyB0byBjb21wbGV0ZS4KLQkJICovCi0JCWRtYV9yZXN2X3dh
aXRfdGltZW91dChyZXN2LCB0cnVlLCBmYWxzZSwKLQkJCQkJCSAgICBNQVhfU0NIRURVTEVfVElN
RU9VVCk7Ci0JCXJldHVybjsKLQl9Ci0KLQkvKiBBZGQgYSBjYWxsYmFjayBmb3IgZWFjaCBmZW5j
ZSBpbiB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0ICovCi0JYW1kZ3B1X3ZtX3BydF9nZXQoYWRldik7
Ci0JYW1kZ3B1X3ZtX2FkZF9wcnRfY2IoYWRldiwgZXhjbCk7Ci0KLQlmb3IgKGkgPSAwOyBpIDwg
c2hhcmVkX2NvdW50OyArK2kpIHsKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZSgmY3Vyc29yLCBy
ZXN2LCB0cnVlLCBmZW5jZSkgeworCQkvKiBBZGQgYSBjYWxsYmFjayBmb3IgZWFjaCBmZW5jZSBp
biB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0ICovCiAJCWFtZGdwdV92bV9wcnRfZ2V0KGFkZXYpOwot
CQlhbWRncHVfdm1fYWRkX3BydF9jYihhZGV2LCBzaGFyZWRbaV0pOworCQlhbWRncHVfdm1fYWRk
X3BydF9jYihhZGV2LCBmZW5jZSk7CiAJfQotCi0Ja2ZyZWUoc2hhcmVkKTsKIH0KIAogLyoqCi0t
IAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2ln
Cg==
