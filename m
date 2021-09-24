Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EE64E4177DF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 17:34:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 761A06242A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 15:34:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5617562175; Fri, 24 Sep 2021 15:34:09 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C6931603BB;
	Fri, 24 Sep 2021 15:34:03 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8AC7E61A4B
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 42C206206D; Fri, 24 Sep 2021 15:31:48 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id C9AAB63542
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:42 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id i24so12741762wrc.9
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 08:31:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KGewx1QiQQVkw015IvGnnogZeqnpnoxIhP9ykI50FyQ=;
 b=hef6b05hQy+5lGerGWpcfLcr9CeyiiWOn1lDY3P3sgSPdAg6Nb+txTI3e7Ym276Coc
 BUmcrvtRlg63/BmdOK5uhpfgtLSoyr/L6RUKzu/Ct7NAbo17Qhb8aR/3KwXoMnJFNDFp
 RDbXA2+0Bnwyi7I47FHZUjyj1KN7amdrhZiCQJ406fGjD6o/vP5JydsEWwgtZpdTYvyB
 wOFv/6F/YNr1LHOsUb8SbVNSQTRM/VUovKgc751PksR3+qI27eTUQmsaglPU7+crkhXG
 gvXcPxVHpse/eyifuhbJrWCL22RzvujeHGxTcbVN3e/O6yi/0vd2LtfLGY01dJC2Yrks
 Dxww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KGewx1QiQQVkw015IvGnnogZeqnpnoxIhP9ykI50FyQ=;
 b=LB0EGkYEwV5lzqkhY1mGFVxG49n0SEW2p3j/eB47S98TtrlBtiYKlhxT6oZjbrHlpy
 1bw89Pfwjyd77i3GA0dJsLeVTNStceeXKfLgHJiBrWirICY7yXz7uXTgj+WdiaHh6xcY
 LQJJ2+Fc+qxBzxTr0/+LcX27Ay7rAeru7+uYive8vt/xOYSsnNv2IAy3eSHh4gXJ2P4h
 uwhO9Fy9ut+xwH46U1M21wEryOyAfWcgOoy6DA75/wRRFz0ffovaLFboOKKRV8xyKUcU
 SFuCaYtvwEwTOPUyVD7NTKTXA7U5vSJXt/ZJ+AudDooI9rjN8+jvDZkjlS6OG0XoJA4J
 0qWg==
X-Gm-Message-State: AOAM532wxrgMzzDUiHMzxDZRown4QcakYFQNfs26lxcB83HXSWryAnOh
 W5AaVEahDyZLvdOSh99qj0F/H4R1xHY=
X-Google-Smtp-Source: ABdhPJwCQ50FiYFb6laK69EQMOH+0x7uDi595rBzL2mWBKY4VTN0iDpCqcFixhE+dNDw9UjaQDD1KQ==
X-Received: by 2002:a05:6000:184e:: with SMTP id
 c14mr12162487wri.242.1632497501846; 
 Fri, 24 Sep 2021 08:31:41 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 u25sm9902248wmm.5.2021.09.24.08.31.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Sep 2021 08:31:41 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 24 Sep 2021 17:31:11 +0200
Message-Id: <20210924153113.2159-25-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210924153113.2159-1-christian.koenig@amd.com>
References: <20210924153113.2159-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 25/27] drm/nouveau: use the new interator in
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
