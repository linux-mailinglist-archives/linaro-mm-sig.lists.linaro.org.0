Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 340264144E3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 11:12:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D39C661A47
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 09:12:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A31516056F; Wed, 22 Sep 2021 09:12:38 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9F51562CF8;
	Wed, 22 Sep 2021 09:12:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 96D3661A3C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:11:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5E1C5631B3; Wed, 22 Sep 2021 09:11:13 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by lists.linaro.org (Postfix) with ESMTPS id 591AF6043D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:11:10 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id t8so4717040wrq.4
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 02:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KGewx1QiQQVkw015IvGnnogZeqnpnoxIhP9ykI50FyQ=;
 b=Z+ma+j9Hsi98m6TMPrZyOvlgwiJE/auOQVt8b0s7y/8hIwKxWopqqf9B/x9kCEu1dX
 u5zApj6Mhy5xObgS+EcT50eDY5gp9X7lv42gnFKQ/bjog+gmUFYs1JOcuv11r8YN0rlt
 D9+YmIj/jVYhvokdNnAdzuFYADJQ1o3BxPcSccng/l+b4JES0EEzpEvSAq9bhXZ8QBVs
 xrgkJRCATuiPRa5P3tcJh1reWSQPgzEUUVGCYptD6b+yolzaXJMBd51V1TnIOJSBs/pR
 vpNF/A16HsDx3qhIdmH12RJ4KVY/YeejI8677AzQPUrFw6NXunkIuOSzTr1UxqbQH6Vk
 q11A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KGewx1QiQQVkw015IvGnnogZeqnpnoxIhP9ykI50FyQ=;
 b=6BlYlDZMxHFt+s/Ukr7PdYhdxYl/FXIe06Xvtj/hlo9LRPDC75TnOXtJKAvp59gw+h
 DYQC0kRwtkK0ZauC6+dAIbNaWtbcYC5YZgDGaN6lU7LhqUfvKEghb23MieLh/UZail6q
 iSFgpCUuCtMi+zhgojC1J1LsxAe2/jRueOBhhXLy2qEZHZqiDuFbdgUQKGXfK9iXcJSK
 3DpkXdpei66JC14+gAtDwHNlFH1qNEfRIlGdxklkZ0EOUOsvY7RN8r9YjmgKB6vs6L8v
 N7qO2yzE6iF2VJNWboSImClkWuei4HkUOh6Whch3RH7u3H0pgb8oRwXvJL31qAPIq89o
 6fiw==
X-Gm-Message-State: AOAM531GxAGWdF+wE5qAh5+lZhrzHnOuC+HHqwrrclRxyIoxmIZuMoZF
 G2Dj5A7ST7ZGA6lcX0tgRC2s7ZE+JZ0=
X-Google-Smtp-Source: ABdhPJyXD1oAbzynMTqbYHQz9JPlAZOmN6Jct+hP4Cq4joyLvYGSkZ9Mwngyo0eOjqZf5mY3RSBXdA==
X-Received: by 2002:a1c:f314:: with SMTP id q20mr9032321wmq.154.1632301869258; 
 Wed, 22 Sep 2021 02:11:09 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 r25sm1535515wra.76.2021.09.22.02.11.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 02:11:08 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 11:10:41 +0200
Message-Id: <20210922091044.2612-24-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210922091044.2612-1-christian.koenig@amd.com>
References: <20210922091044.2612-1-christian.koenig@amd.com>
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
