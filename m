Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DA0422574
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 13:40:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2BE1961189
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 11:40:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CDDBE608CD; Tue,  5 Oct 2021 11:40:22 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A14B69CCB;
	Tue,  5 Oct 2021 11:40:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9A2AE63391
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8F092618D1; Tue,  5 Oct 2021 11:38:21 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by lists.linaro.org (Postfix) with ESMTPS id 0F86360B35
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:12 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id v25so26046126wra.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Oct 2021 04:38:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vDNZbZcYoW7IFr6lQi88QIbXjkbY+ZD5EoDTFjlvddA=;
 b=L6QXQyheD0iBmll/6+c9+sMjS2UXeP6CZLR1N0Tr1p1DMvcTPcvrj/vKNkefQk6hSC
 XAX6j4T7WLIwelmGb3Vw7DLUWhezBvGs6oJ3tp31RGY4A+X0HaDNuHljSm35cqPZ0o7t
 QjEw8cbfgbfbfrG0xG80Z13SY25aLjgSqr4p04o5hntg/aaV0vvG/1PixW0ayo+SGnXJ
 bFD3lm4R1p4jMBoFZy9chDD/RdYUm8y5O3ncSTfdOnwBmi/Mxiqh1f9NXgEiYFTN6zb7
 0302neM0bN2wUiHC1/wncpvnSPz1YwKSZAGSg2az4zIvqkTWIv8EO2A860B80CR3DbjE
 l88Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vDNZbZcYoW7IFr6lQi88QIbXjkbY+ZD5EoDTFjlvddA=;
 b=oHDmGRrPFNTJfSreRMky1RU/bSoZC0YqQ8tpU6Z07sBGFDqWXpVxryvqus23K913cX
 BgwFSkkrgMQ9rfjoTA5CjGqH7lTXVcOOlgT/2xcxlpgyn1kjZ7dxTNrLw53KDnfJEAFw
 5H827Go3ijuJQMNhMdRMEbTw4PPidK2SJcdSt12NNIIx/h2CCnvARVfx9eEgs6//PImG
 /X/eez/2NznfiCsap8UWVWwCBa/6G9D6ySOCfleqAIABYo/5sJgybw3f/yl7FC147tiP
 CpyGTChKlcHNg1cevqeUzjqlJ/5cRjB/V5K0O4+GMo9r/qoX0kscde536zrI3KymETcS
 nbDg==
X-Gm-Message-State: AOAM530jnq0lTJJo81xd8Sw5evB33hwR0BgWxO+8cpOMoSUshGQ0OdtG
 QPdmAKesmJh6zaIQ7VyD6t2XXPQ+YEE=
X-Google-Smtp-Source: ABdhPJxGZxWVpSVFBiaJumxIFqfRiFL+GVcyqCPa5EfSRy4T9vy6Ac7sHOtq3cmmvYrRJTQvJN0d4w==
X-Received: by 2002:a5d:4cca:: with SMTP id c10mr17829743wrt.188.1633433890218; 
 Tue, 05 Oct 2021 04:38:10 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c5sm1739912wml.9.2021.10.05.04.38.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 04:38:09 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Tue,  5 Oct 2021 13:37:42 +0200
Message-Id: <20211005113742.1101-29-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005113742.1101-1-christian.koenig@amd.com>
References: <20211005113742.1101-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 28/28] drm/etnaviv: replace
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
