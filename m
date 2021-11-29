Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 814964614B4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 13:08:50 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8350C61A44
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 12:08:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 77B7760EA6; Mon, 29 Nov 2021 12:08:42 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DACEA62D2D;
	Mon, 29 Nov 2021 12:08:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3C65460A45
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 56DFE61E96; Mon, 29 Nov 2021 12:07:33 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by lists.linaro.org (Postfix) with ESMTPS id 0F33A61A3A
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:29 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id a9so36271629wrr.8
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 04:07:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VGR7sEyP5xUI57aswHQi5HhbTWAZp7wO5W8n1Qo9nVA=;
 b=DvxyvmA4UkCgdWcyCMMQaRiMvazH42UIQQOpJO5EerdANdxHj4KctvJTw1jId0sMdt
 UNipWKXziNXoJmDw3V19P2Iuqpg4Njhzt+PqLRQp5htQ8+upc+XS8TQ2VmsiQAB8sJ3u
 lwvMO3IftrF7bS/FOL2sYTRPvzDb8VK0giPv7FEZN8v4VA2ZomSLM+5Xm4vmsOCopeC0
 7dn8ho9Chxqh+uIWLz1M+KCYJOys7m3cTffo7iBowhR8YSIt5ezUfyF9xCxEgywMlq5b
 4gQdEIgOUbbvzuH4efae6HvT1R8fZLie5Gk1ljIRoZzsxwNaUcrjWY3K/1ovoaIleTyX
 ot3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VGR7sEyP5xUI57aswHQi5HhbTWAZp7wO5W8n1Qo9nVA=;
 b=gpOh5vwK3NHMx41GzWgSABE2j6x8dp8uueDZjacapXTYWYVgIh2fUEe+cvRRZbwVSM
 UWJl9FfLvV0IrEK1DOZjm7l4t/Sfpm3HCGZNINGO3rycEJTWjUzcvO764b1ocsiA2cXw
 OihFnMqJJhB17P0CNqBBG26LwXlQzaRxC4hIsNNnIE7y8W/nLYJHForBTQPdEamRVonG
 SttF6ZUZLnrisvZwZ5jc5KAFf7r1u1bgEn4AIG0dvw5v8mddjnnL1nlDwPTZXTt/YL3A
 kdkIxQgOL10/VSCXIbMHaYZ4t+6PW4YBT8bb1Z6pQc9komuc6Gg53win5YbsgsXriHRT
 kwcQ==
X-Gm-Message-State: AOAM5336B+AjytWQtXP1lv0uIQ1n3qkUYQ5F3cTHe4q0EYSsvnDXR7KN
 sLmDtcKdHYRQ8TKAE0vcB+QUvLVSn0s=
X-Google-Smtp-Source: ABdhPJx/isgwTDi2SrqXAXlYd86/rMNxzip0CZRacAJNcrcxqfNYJ4bA/CaByWKIpkS+/y0WMI24LA==
X-Received: by 2002:a5d:452b:: with SMTP id j11mr33442239wra.432.1638187647380; 
 Mon, 29 Nov 2021 04:07:27 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id b6sm20415234wmq.45.2021.11.29.04.07.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Nov 2021 04:07:27 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch
Date: Mon, 29 Nov 2021 13:06:51 +0100
Message-Id: <20211129120659.1815-21-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211129120659.1815-1-christian.koenig@amd.com>
References: <20211129120659.1815-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 20/28] drm/nouveau: support more than one
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
