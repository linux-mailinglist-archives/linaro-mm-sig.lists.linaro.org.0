Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE6945A589
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 15:23:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A7B3162DC4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 14:23:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8B1E562DC1; Tue, 23 Nov 2021 14:23:02 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 411B863388;
	Tue, 23 Nov 2021 14:22:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6D017622B0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1ADB262D18; Tue, 23 Nov 2021 14:21:54 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by lists.linaro.org (Postfix) with ESMTPS id 04B9D62072
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:51 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id
 c6-20020a05600c0ac600b0033c3aedd30aso1734531wmr.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 06:21:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VGR7sEyP5xUI57aswHQi5HhbTWAZp7wO5W8n1Qo9nVA=;
 b=Ja54Ddld8qqcZzstvG4AWszv693k3+shcyjQQbG2LPx7hKiWSdJNF2r3KSmAbJXvdm
 8McOvaW400TjaB2kWzfse3ek0xNbhsiKxJ0kmCOq/Zb3P078UY+yYrLPDCyQ16MmUXFL
 60wxFFhfIDxNHxTQCAJ34NqXkVp4RpdzXHRVhqwlPUD7ffpMYR/6TDD9l88ECCjV8kI+
 kzKCX90I2GvSJSo3rnMES+fwkX2bHC7ujjVEnJiAalnRBsClJLm5xl7wVjv1BaHFdL+c
 kjWWj23ceMuVppYKU9CJhxgap7sY46qvF1aRJVpm/wNzsfnHY5amUQtG8C5E4KdyBU3w
 WryQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VGR7sEyP5xUI57aswHQi5HhbTWAZp7wO5W8n1Qo9nVA=;
 b=wmuXC8xD9oPw7Ly/FMWGLBPey70LfZuP7cPVsvuhqHrHfx7+ACTQTiRo1TzMPkyRyP
 toh8uCN1lKF9kTf2/fSVovqtyTVp0KQNYHN9WJuDfOIt5kAAIbRiCUr8Rl/UZ1oSgXGu
 vfA92XXm3eHHnKF3KUMRg2KoEodUdGzkVDZXQqvhf7LUoHnGlIbciw1Mo+hUMIX2fJeZ
 yZPEeS2DcMsl/SGNjzGKw6m9BnN2ZOIjlRSrGNhylzglFChUHAJrVvVCJpdpqZ34uSY4
 yey3lTAuvZAkm7j7I09hdTjnC1d+42q9VMDH0gQI/zKD1d1CfmpCVxyPbtMJyh9DG5e1
 +Urg==
X-Gm-Message-State: AOAM530TFekNZ3FG/HQxDUwuMsbgY1Sy2SnCitMQgk8KgFPu3TjZXuOw
 uln7YslS3SdkDiuiK/FaKe0=
X-Google-Smtp-Source: ABdhPJxz92PdTZx0DqNVL5rxsfV9YMFTqsBGNNgkSTOxdwTO2DMKRD+TWoxN1P6DgrLeGDMhFYfXhA==
X-Received: by 2002:a05:600c:224a:: with SMTP id
 a10mr3515571wmm.154.1637677309951; 
 Tue, 23 Nov 2021 06:21:49 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id t8sm1645928wmq.32.2021.11.23.06.21.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Nov 2021 06:21:49 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	daniel@ffwll.ch
Date: Tue, 23 Nov 2021 15:21:05 +0100
Message-Id: <20211123142111.3885-21-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211123142111.3885-1-christian.koenig@amd.com>
References: <20211123142111.3885-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 20/26] drm/nouveau: support more than one
 write fence in fenv50_wndw_prepare_fb
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
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VXNlIGRtYV9yZXN2X2dldF9zaW5nbGV0b24oKSBoZXJlIHRvIGV2ZW50dWFsbHkgZ2V0IG1vcmUg
dGhhbiBvbmUgd3JpdGUKZmVuY2UgYXMgc2luZ2xlIGZlbmNlLgoKU2lnbmVkLW9mZi1ieTogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9ub3V2ZWF1L2Rpc3BudjUwL3duZHcuYyB8IDE0ICsrKysrLS0tLS0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9ub3V2ZWF1L2Rpc3BudjUwL3duZHcuYyBiL2RyaXZlcnMvZ3B1L2RybS9u
b3V2ZWF1L2Rpc3BudjUwL3duZHcuYwppbmRleCAxMzNjODczNjQyNmEuLmI1NWE4YTcyMzU4MSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvZGlzcG52NTAvd25kdy5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L2Rpc3BudjUwL3duZHcuYwpAQCAtNTM2LDggKzUzNiw2
IEBAIG52NTBfd25kd19wcmVwYXJlX2ZiKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLCBzdHJ1Y3Qg
ZHJtX3BsYW5lX3N0YXRlICpzdGF0ZSkKIAlzdHJ1Y3Qgbm91dmVhdV9ibyAqbnZibzsKIAlzdHJ1
Y3QgbnY1MF9oZWFkX2F0b20gKmFzeWg7CiAJc3RydWN0IG52NTBfd25kd19jdHhkbWEgKmN0eGRt
YTsKLQlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7Ci0Jc3RydWN0IGRtYV9mZW5jZSAqZmVu
Y2U7CiAJaW50IHJldDsKIAogCU5WX0FUT01JQyhkcm0sICIlcyBwcmVwYXJlOiAlcFxuIiwgcGxh
bmUtPm5hbWUsIGZiKTsKQEAgLTU2MCwxMyArNTU4LDExIEBAIG52NTBfd25kd19wcmVwYXJlX2Zi
KHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLCBzdHJ1Y3QgZHJtX3BsYW5lX3N0YXRlICpzdGF0ZSkK
IAkJCWFzeXctPmltYWdlLmhhbmRsZVswXSA9IGN0eGRtYS0+b2JqZWN0LmhhbmRsZTsKIAl9CiAK
LQlkbWFfcmVzdl9pdGVyX2JlZ2luKCZjdXJzb3IsIG52Ym8tPmJvLmJhc2UucmVzdiwgZmFsc2Up
OwotCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKCZjdXJzb3IsIGZlbmNlKSB7Ci0J
CS8qIFRPRE86IFdlIG9ubHkgdXNlIHRoZSBmaXJzdCB3cml0ZXIgaGVyZSAqLwotCQlhc3l3LT5z
dGF0ZS5mZW5jZSA9IGRtYV9mZW5jZV9nZXQoZmVuY2UpOwotCQlicmVhazsKLQl9Ci0JZG1hX3Jl
c3ZfaXRlcl9lbmQoJmN1cnNvcik7CisJcmV0ID0gZG1hX3Jlc3ZfZ2V0X3NpbmdsZXRvbihudmJv
LT5iby5iYXNlLnJlc3YsIGZhbHNlLAorCQkJCSAgICAgJmFzeXctPnN0YXRlLmZlbmNlKTsKKwlp
ZiAocmV0KQorCQlyZXR1cm4gcmV0OworCiAJYXN5dy0+aW1hZ2Uub2Zmc2V0WzBdID0gbnZiby0+
b2Zmc2V0OwogCiAJaWYgKHduZHctPmZ1bmMtPnByZXBhcmUpIHsKLS0gCjIuMjUuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
