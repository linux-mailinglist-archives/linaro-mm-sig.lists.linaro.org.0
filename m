Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C024144E9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 11:13:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6BB5261E96
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 09:13:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 18C5867057; Wed, 22 Sep 2021 09:12:53 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C5D31619C2;
	Wed, 22 Sep 2021 09:12:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C5B4061758
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:11:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6467F61945; Wed, 22 Sep 2021 09:11:14 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by lists.linaro.org (Postfix) with ESMTPS id E3E1D63133
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:11:11 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id q11so4618439wrr.9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 02:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vDNZbZcYoW7IFr6lQi88QIbXjkbY+ZD5EoDTFjlvddA=;
 b=Gmi552MnL/rW+Mx1kL2nA/z5dmqeHqcUeGLsCY1r9ovqo+Cj70S1bDU5jIaLP4Hi72
 2RWq9Ldpxz1PQ8QVk0yAxYT5pRSPx//c788ezkmYsT920N0eJBRkUAV4Pn6JNZso8tlS
 sC7jdUlPiZmxL6hEwRe59Hfq+WxGHtSqN/pYF1njdio2/Ce+WIqjFhEf3IenPu4J6dbu
 6y7/SNwvbwMYoofdfflA6up+1DlnLxAEyaV0XKc7GvWPRP9PVpMF+eZSwsGRHng9zqTe
 wVfXF+FWccEkG+BzBHRIzBjSLz8CsiUHVMP0U/BhC8Dl3WW+Q2aZRYESHUSUOF9TMqgO
 cd4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vDNZbZcYoW7IFr6lQi88QIbXjkbY+ZD5EoDTFjlvddA=;
 b=S3d86KemftmeHc53tMpH7pOF4tF8P0pHxn4zrg8aBRIyzN5nhbUvYYIIuwWOVKzdDQ
 bizsn9dhrp1TM0zPrhdCL0s7J6uXmoz2rBKWxmK5gvYsI3pvKacisgx81s3CZgrItYyO
 cGKjwP8su1dpfihD5WSpP4EManRSyv/Ve6fTeRWJ46a2yXilKY0nd9xRB+lAF91/Snap
 +mewiMvYtd9SDVsR1DhJbuQuub5Rd7KLPyQMQ3NJth70GK+FbntmvFSRzRPbTufwMN1Y
 bXTZuuLeJuPh8StS9P6C1KDP1ZGWOfl5DhS7KhZcud2nYPKZU67gk0NnZ5HQDr+CGxlv
 Iq6w==
X-Gm-Message-State: AOAM530Qu0I7kKQaE+ll/zyKb4oFQbhXPW3tgeJ0dLFC9P4sVdCSV6Ul
 hcI+XyRXiDBGz5NtRrLx74zgMOGlBK0=
X-Google-Smtp-Source: ABdhPJz2W3gVg8Vc8l1hiYyOeCkZWJPcDFjNex2fXTdD3lXlKStjs/7cgs4pYVTghyezxOJ4PIGTtw==
X-Received: by 2002:a05:6000:105:: with SMTP id
 o5mr40077220wrx.413.1632301871073; 
 Wed, 22 Sep 2021 02:11:11 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 r25sm1535515wra.76.2021.09.22.02.11.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 02:11:10 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 11:10:43 +0200
Message-Id: <20210922091044.2612-26-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210922091044.2612-1-christian.koenig@amd.com>
References: <20210922091044.2612-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 25/26] drm/etnaviv: replace
 dma_resv_get_excl_unlocked
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

V2UgY2VydGFpbmx5IGhvbGQgdGhlIHJlc2VydmF0aW9uIGxvY2sgaGVyZSwgbm8gbmVlZCBmb3Ig
dGhlIFJDVSBkYW5jZS4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dl
bV9zdWJtaXQuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxl
dGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2Vt
X3N1Ym1pdC5jIGIvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW1fc3VibWl0LmMK
aW5kZXggNGRkN2Q5ZDU0MWMwLi43ZTE3YmMyYjVkZjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtX3N1Ym1pdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9l
dG5hdml2L2V0bmF2aXZfZ2VtX3N1Ym1pdC5jCkBAIC0xOTUsNyArMTk1LDcgQEAgc3RhdGljIGlu
dCBzdWJtaXRfZmVuY2Vfc3luYyhzdHJ1Y3QgZXRuYXZpdl9nZW1fc3VibWl0ICpzdWJtaXQpCiAJ
CQlpZiAocmV0KQogCQkJCXJldHVybiByZXQ7CiAJCX0gZWxzZSB7Ci0JCQliby0+ZXhjbCA9IGRt
YV9yZXN2X2dldF9leGNsX3VubG9ja2VkKHJvYmopOworCQkJYm8tPmV4Y2wgPSBkbWFfZmVuY2Vf
Z2V0KGRtYV9yZXN2X2V4Y2xfZmVuY2Uocm9iaikpOwogCQl9CiAKIAl9Ci0tIAoyLjI1LjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xp
c3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
