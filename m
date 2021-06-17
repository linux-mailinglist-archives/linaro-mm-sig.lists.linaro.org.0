Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C752B3AB253
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 13:17:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DF726634F3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 11:17:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A3B1C63E5D; Thu, 17 Jun 2021 11:17:14 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2CE2863578;
	Thu, 17 Jun 2021 11:17:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A519161145
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7783B63502; Thu, 17 Jun 2021 11:16:11 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com
 [209.85.218.53])
 by lists.linaro.org (Postfix) with ESMTPS id 386DA6350B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:09 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id my49so9189634ejc.7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 04:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Y/imVMS+E7ZynWw7iSiIjDs1SxBWXyWjuW715+Mfo5c=;
 b=M2EfIXDhNhQGfnqZeXtxmNfwHZoQaW2MTVa3UzNYhdb2fsMUXtcdPuWkWBrGvEWEp9
 sDzydRS9HenKK/Y5oenkwtBngqHPZOEk1hYGnQcqYOfDW+JdluHZyfgpXR2DKVeYlOq+
 k/brasQwC83W9K83wlbEsSexWGzNhSHlavnvMoz0pj2IxjrQFD/EVPJ9HG3LKfY9nUg/
 Cnmuujua6BAvCTBE/nJOIP/+2mSp4qi2A1F+99Nwy53hzXnB6w/pnT0lkPjUPVfgJJVV
 wWebCzXZQ9+bl1u6+aK7nvKJDR7cRxPrcwUG01ob7hSLxVWgigrBvaJznD2ytWqOwcRT
 68ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y/imVMS+E7ZynWw7iSiIjDs1SxBWXyWjuW715+Mfo5c=;
 b=f4dXsJ8n/8js7wBNuDyMvh8IX8ASVfOqRM3siw0DJ8xPchcThJ8twLlQ+T/azYdp7O
 NoQk139y8LtvUUX4dwkO7tjR8Tk+M0Hn1T79IBJ8BwRkSbKqpsuEfLtAj+nPh/asBLro
 wjKFil+mM4RfcruN3YUswGDLPVkt86WtL1ibZyLBtsJWwB4zxLzgraW2qm/mF9RCEBHv
 Md5HlNUoiF0E2b9UGuhwF6bt14MCXXiw8VDAY2oHbvd+PzPTWyUptS7mFYoRnY/PBBNN
 nwC4utrbiOF49VT8julaybp5uG87nYflyAfmlSEUNPfiCvK0moc6n0gojHklNWhDoLLa
 8RwA==
X-Gm-Message-State: AOAM530lfPFp8rDdya71bCm9wDJ8hYjRdE4He7yc/83H22ekSWBUA8UC
 hpF83V2VkifcpsiXdM4fwlY=
X-Google-Smtp-Source: ABdhPJxtONqJjTKNIkmenxgCWwIo2UFCZPig/Nqaq0PPK0Qw8TAhJetxxVTpxyIT5mpgKNhpreu58A==
X-Received: by 2002:a17:906:f6d7:: with SMTP id
 jo23mr4756958ejb.302.1623928568108; 
 Thu, 17 Jun 2021 04:16:08 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8534:5e76:1ee5:f3ad])
 by smtp.gmail.com with ESMTPSA id y10sm3531353ejm.76.2021.06.17.04.16.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 04:16:07 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Date: Thu, 17 Jun 2021 13:15:52 +0200
Message-Id: <20210617111558.28486-11-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210617111558.28486-1-christian.koenig@amd.com>
References: <20210617111558.28486-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 10/16] drm/etnaviv: use new iterator in
 etnaviv_gem_describe
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SW5zdGVhZCBvZiBoYW5kIHJvbGxpbmcgdGhlIGxvZ2ljLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9ldG5hdml2L2V0bmF2aXZfZ2VtLmMgfCAyNyArKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtLmMgYi9kcml2ZXJzL2dw
dS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jCmluZGV4IGI4ZmE2ZWQzZGQ3My4uNjgwOGRiZWY1
Yzc5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtLmMKQEAgLTQzNywxOSArNDM3
LDE3IEBAIGludCBldG5hdml2X2dlbV93YWl0X2JvKHN0cnVjdCBldG5hdml2X2dwdSAqZ3B1LCBz
dHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwKIHN0YXRpYyB2b2lkIGV0bmF2aXZfZ2VtX2Rlc2Ny
aWJlX2ZlbmNlKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLAogCWNvbnN0IGNoYXIgKnR5cGUsIHN0
cnVjdCBzZXFfZmlsZSAqbSkKIHsKLQlpZiAoIXRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1NJR05B
TEVEX0JJVCwgJmZlbmNlLT5mbGFncykpCi0JCXNlcV9wcmludGYobSwgIlx0JTlzOiAlcyAlcyBz
ZXEgJWxsdVxuIiwKLQkJCSAgIHR5cGUsCi0JCQkgICBmZW5jZS0+b3BzLT5nZXRfZHJpdmVyX25h
bWUoZmVuY2UpLAotCQkJICAgZmVuY2UtPm9wcy0+Z2V0X3RpbWVsaW5lX25hbWUoZmVuY2UpLAot
CQkJICAgZmVuY2UtPnNlcW5vKTsKKwlzZXFfcHJpbnRmKG0sICJcdCU5czogJXMgJXMgc2VxICVs
bHVcbiIsIHR5cGUsCisJCSAgIGZlbmNlLT5vcHMtPmdldF9kcml2ZXJfbmFtZShmZW5jZSksCisJ
CSAgIGZlbmNlLT5vcHMtPmdldF90aW1lbGluZV9uYW1lKGZlbmNlKSwKKwkJICAgZmVuY2UtPnNl
cW5vKTsKIH0KIAogc3RhdGljIHZvaWQgZXRuYXZpdl9nZW1fZGVzY3JpYmUoc3RydWN0IGRybV9n
ZW1fb2JqZWN0ICpvYmosIHN0cnVjdCBzZXFfZmlsZSAqbSkKIHsKIAlzdHJ1Y3QgZXRuYXZpdl9n
ZW1fb2JqZWN0ICpldG5hdml2X29iaiA9IHRvX2V0bmF2aXZfYm8ob2JqKTsKIAlzdHJ1Y3QgZG1h
X3Jlc3YgKnJvYmogPSBvYmotPnJlc3Y7Ci0Jc3RydWN0IGRtYV9yZXN2X2xpc3QgKmZvYmo7CisJ
c3RydWN0IGRtYV9yZXN2X2N1cnNvciBjdXJzb3I7CiAJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7
CiAJdW5zaWduZWQgbG9uZyBvZmYgPSBkcm1fdm1hX25vZGVfc3RhcnQoJm9iai0+dm1hX25vZGUp
OwogCkBAIC00NTksMTkgKzQ1NywxMiBAQCBzdGF0aWMgdm9pZCBldG5hdml2X2dlbV9kZXNjcmli
ZShzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgc3RydWN0IHNlcV9maWxlICptKQogCQkJb2Zm
LCBldG5hdml2X29iai0+dmFkZHIsIG9iai0+c2l6ZSk7CiAKIAlyY3VfcmVhZF9sb2NrKCk7Ci0J
Zm9iaiA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KHJvYmopOwotCWlmIChmb2JqKSB7Ci0JCXVuc2ln
bmVkIGludCBpLCBzaGFyZWRfY291bnQgPSBmb2JqLT5zaGFyZWRfY291bnQ7Ci0KLQkJZm9yIChp
ID0gMDsgaSA8IHNoYXJlZF9jb3VudDsgaSsrKSB7Ci0JCQlmZW5jZSA9IHJjdV9kZXJlZmVyZW5j
ZShmb2JqLT5zaGFyZWRbaV0pOworCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKHJv
YmosICZjdXJzb3IsIHRydWUsIGZlbmNlKSB7CisJCWlmIChjdXJzb3IuaXNfZXhjbHVzaXZlKQor
CQkJZXRuYXZpdl9nZW1fZGVzY3JpYmVfZmVuY2UoZmVuY2UsICJFeGNsdXNpdmUiLCBtKTsKKwkJ
ZWxzZQogCQkJZXRuYXZpdl9nZW1fZGVzY3JpYmVfZmVuY2UoZmVuY2UsICJTaGFyZWQiLCBtKTsK
LQkJfQogCX0KLQotCWZlbmNlID0gZG1hX3Jlc3ZfZXhjbF9mZW5jZShyb2JqKTsKLQlpZiAoZmVu
Y2UpCi0JCWV0bmF2aXZfZ2VtX2Rlc2NyaWJlX2ZlbmNlKGZlbmNlLCAiRXhjbHVzaXZlIiwgbSk7
CiAJcmN1X3JlYWRfdW5sb2NrKCk7CiB9CiAKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
