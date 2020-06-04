Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1421EDFA9
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2020 10:19:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D2C76176E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2020 08:19:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3C3DB61772; Thu,  4 Jun 2020 08:19:30 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6CBE9618D7;
	Thu,  4 Jun 2020 08:13:25 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 933F06173B
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2020 08:12:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 800096175A; Thu,  4 Jun 2020 08:12:50 +0000 (UTC)
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by lists.linaro.org (Postfix) with ESMTPS id 87E1D60E25
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2020 08:12:44 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id f185so4619426wmf.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Jun 2020 01:12:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QpRcEBLBFti7+uwIPhFpaG5e28opFzcZsYVebGatC0I=;
 b=jrzkktg+GJGqR/0IqwxAjrTkSu7y/ZamV2+UMgIh/4j+FORQBN0PsbYWCuiOt15pf+
 n+ROmVT9Th1ZivYqEv1d27azoEyW1kiFaBHRMrQzPFc4p55fhWkIcZRM+cYLk1pfKfaG
 UnTkAgon4Fw6KkxB+GeLIErbyrd30H+nTlTT0y54WIBwnXEMkkPoy8JKBSAmQF0YzFaE
 3BBwg5ypDbOs2l6Iev8v0AF52XWU8IxA4j/jL4LNKOMNJFJkGmxB/3+zOKdX5FTwPpx3
 Iz4VjoUGsI4b0AETLe9X7YF8VDJ/3dZKad9KcraRtqW9B1JuF7KKzfzB4Yuk3Qp1h3+M
 ycaA==
X-Gm-Message-State: AOAM532j3CnyxgEHlFIcBXmcDaPDGk0xVzEBH5RLFAxA7mt1cKF8I5ZC
 7wFonbsfojVB153cEOVsjOASXw==
X-Google-Smtp-Source: ABdhPJzK094CFf7KReF2ex18c6m+K0h2mhk+2HMb53cWYgjLEFwQL7H9L4hoB3ty2HpwgAOoCcUgiQ==
X-Received: by 2002:a1c:5502:: with SMTP id j2mr3075373wmb.56.1591258363614;
 Thu, 04 Jun 2020 01:12:43 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f11sm6873305wrj.2.2020.06.04.01.12.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 01:12:42 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  4 Jun 2020 10:12:15 +0200
Message-Id: <20200604081224.863494-10-daniel.vetter@ffwll.ch>
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
Subject: [Linaro-mm-sig] [PATCH 09/18] drm/scheduler: use dma-fence
	annotations in main thread
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

SWYgdGhlIHNjaGVkdWxlciBydCB0aHJlYWQgZ2V0cyBzdHVjayBvbiBhIG11dGV4IHRoYXQgd2Un
cmUgaG9sZGluZwp3aGlsZSB3YWl0aW5nIGZvciBncHUgd29ya2xvYWRzIHRvIGNvbXBsZXRlLCB3
ZSBoYXZlIGEgcHJvYmxlbS4KCkFkZCBkbWEtZmVuY2UgYW5ub3RhdGlvbnMgc28gdGhhdCBsb2Nr
ZGVwIGNhbiBjaGVjayB0aGlzIGZvciB1cy4KCkkndmUgdHJpZWQgdG8gcXVpdGUgY2FyZWZ1bGx5
IHJldmlldyB0aGlzLCBhbmQgSSB0aGluayBpdCdzIGF0IHRoZQpyaWdodCBzcG90LiBCdXQgb2J2
aW9zbHkgbm8gZXhwZXJ0IG9uIGRybSBzY2hlZHVsZXIuCgpDYzogbGludXgtbWVkaWFAdmdlci5r
ZXJuZWwub3JnCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKQ2M6IGxpbnV4LXJk
bWFAdmdlci5rZXJuZWwub3JnCkNjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9y
c3RAbGludXguaW50ZWwuY29tPgpDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyB8IDYg
KysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMgYi9kcml2ZXJzL2dwdS9kcm0vc2No
ZWR1bGVyL3NjaGVkX21haW4uYwppbmRleCAyZjMxOTEwMmFlOWYuLjA2YTczNmU1MDZhZCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMKQEAgLTc2Myw5ICs3NjMsMTIgQEAg
c3RhdGljIGludCBkcm1fc2NoZWRfbWFpbih2b2lkICpwYXJhbSkKIAlzdHJ1Y3Qgc2NoZWRfcGFy
YW0gc3BhcmFtID0gey5zY2hlZF9wcmlvcml0eSA9IDF9OwogCXN0cnVjdCBkcm1fZ3B1X3NjaGVk
dWxlciAqc2NoZWQgPSAoc3RydWN0IGRybV9ncHVfc2NoZWR1bGVyICopcGFyYW07CiAJaW50IHI7
CisJYm9vbCBmZW5jZV9jb29raWU7CiAKIAlzY2hlZF9zZXRzY2hlZHVsZXIoY3VycmVudCwgU0NI
RURfRklGTywgJnNwYXJhbSk7CiAKKwlmZW5jZV9jb29raWUgPSBkbWFfZmVuY2VfYmVnaW5fc2ln
bmFsbGluZygpOworCiAJd2hpbGUgKCFrdGhyZWFkX3Nob3VsZF9zdG9wKCkpIHsKIAkJc3RydWN0
IGRybV9zY2hlZF9lbnRpdHkgKmVudGl0eSA9IE5VTEw7CiAJCXN0cnVjdCBkcm1fc2NoZWRfZmVu
Y2UgKnNfZmVuY2U7CkBAIC04MjMsNiArODI2LDkgQEAgc3RhdGljIGludCBkcm1fc2NoZWRfbWFp
bih2b2lkICpwYXJhbSkKIAogCQl3YWtlX3VwKCZzY2hlZC0+am9iX3NjaGVkdWxlZCk7CiAJfQor
CisJZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKGZlbmNlX2Nvb2tpZSk7CisKIAlyZXR1cm4gMDsK
IH0KIAotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJv
LW1tLXNpZwo=
