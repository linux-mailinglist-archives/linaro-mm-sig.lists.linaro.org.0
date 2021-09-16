Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A397C40D8E0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 13:32:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E89168646
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 11:32:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7A08A63542; Thu, 16 Sep 2021 11:32:41 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B687263221;
	Thu, 16 Sep 2021 11:32:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E16AB69CDB
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7A2E462D34; Thu, 16 Sep 2021 11:31:13 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by lists.linaro.org (Postfix) with ESMTPS id 289AD64AD8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:08 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id q26so8906543wrc.7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 04:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2+bkO5HBs2j3ln93bw25BJPWcYxbkv7E+H/9pqR/bfQ=;
 b=mP52YOcL+AxVz3KiSw3fvvB9zkcKwA/zAUKLTenIz5Oa1eenF2UaMiJf4ra00whqaT
 jSRK3l7QP14ml2qIGTeNfa4mBRahp7oCn/FbkqEajnMzw7oMWv0ytpqRdB8rHpJQfV98
 iqQ6i2OdCDaxwtNFokVlZ3g603hb7V1Y/yWR+0OP3lijze9oSpZnE+168aLNxKXify/w
 jVoJ99rwc8PwZFq5usRU8v6xRmanjkje93JcXitEZirN5uC5yO8/CS7PqemNJrPcLtoK
 tff06ih+3C+88UMEFeKpXjQQ8EebwJqohzX+jb8I9ubBrJKi2kZfzPAfyZTgPB0Mtmds
 t3jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2+bkO5HBs2j3ln93bw25BJPWcYxbkv7E+H/9pqR/bfQ=;
 b=fjW44fnzoEz+04GZAZXh1DihGyRCCfRykd01ROOlYy+sttiONOGpqXzGFkft8t2E9O
 jJE0VIBrGJFMW9oME8RwdDHQDAzj9JGGanCNVzrTvNLRyjr2eFPhM4M/eGA6L5msl7qb
 hKR51qxJObzVLxMhtRFbwwRrq9TQhDjturTsBkUlQJlb/74BznyuDNhfLFBta1LLTtWe
 bPe87RCftZ/kUw3sSuMVzOS33rD6yJ8augznHrdMcKaeIXqfj+YTwq7p8f6GXVr1iOAf
 cwmx9JZto/hib0koa9MJF9Ja3wzfSwwhCpQQJrMosHyMkhOnzI+O2+MsO0B3llfOvdr2
 qfcw==
X-Gm-Message-State: AOAM533ux7KXQX8jMWzjbvRJ/7GfUAxhC1xtaM9bvIK9zzGQO4T3PG26
 Epln8c/ttSpSxa3EDjCBF9E4vQsyFnEBxMlT
X-Google-Smtp-Source: ABdhPJy4mIlf7AvTUapLD1nLkmHwTh8uuMjAJTBuggOraBaigWUULuCE0bYamy+ETUj70VPoDk9jYQ==
X-Received: by 2002:adf:cf10:: with SMTP id o16mr5453601wrj.12.1631791867219; 
 Thu, 16 Sep 2021 04:31:07 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c17sm3803674wrn.54.2021.09.16.04.31.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 04:31:06 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 13:30:40 +0200
Message-Id: <20210916113042.3631-25-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916113042.3631-1-christian.koenig@amd.com>
References: <20210916113042.3631-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 24/26] drm/etnaviv: use new iterator in
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
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
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
dS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jCmluZGV4IDhmMWI1YWY0N2RkNi4uZGMyYTI2MTVk
YjM4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtLmMKQEAgLTQyOCwxOSArNDI4
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
c3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOwogCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwog
CXVuc2lnbmVkIGxvbmcgb2ZmID0gZHJtX3ZtYV9ub2RlX3N0YXJ0KCZvYmotPnZtYV9ub2RlKTsK
IApAQCAtNDUwLDE5ICs0NDgsMTIgQEAgc3RhdGljIHZvaWQgZXRuYXZpdl9nZW1fZGVzY3JpYmUo
c3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosIHN0cnVjdCBzZXFfZmlsZSAqbSkKIAkJCW9mZiwg
ZXRuYXZpdl9vYmotPnZhZGRyLCBvYmotPnNpemUpOwogCiAJcmN1X3JlYWRfbG9jaygpOwotCWZv
YmogPSBkbWFfcmVzdl9zaGFyZWRfbGlzdChyb2JqKTsKLQlpZiAoZm9iaikgewotCQl1bnNpZ25l
ZCBpbnQgaSwgc2hhcmVkX2NvdW50ID0gZm9iai0+c2hhcmVkX2NvdW50OwotCi0JCWZvciAoaSA9
IDA7IGkgPCBzaGFyZWRfY291bnQ7IGkrKykgewotCQkJZmVuY2UgPSByY3VfZGVyZWZlcmVuY2Uo
Zm9iai0+c2hhcmVkW2ldKTsKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZChyb2Jq
LCAmY3Vyc29yLCB0cnVlLCBmZW5jZSkgeworCQlpZiAoZG1hX3Jlc3ZfaXRlcl9pc19leGNsdXNp
dmUoJmN1cnNvcikpCisJCQlldG5hdml2X2dlbV9kZXNjcmliZV9mZW5jZShmZW5jZSwgIkV4Y2x1
c2l2ZSIsIG0pOworCQllbHNlCiAJCQlldG5hdml2X2dlbV9kZXNjcmliZV9mZW5jZShmZW5jZSwg
IlNoYXJlZCIsIG0pOwotCQl9CiAJfQotCi0JZmVuY2UgPSBkbWFfcmVzdl9leGNsX2ZlbmNlKHJv
YmopOwotCWlmIChmZW5jZSkKLQkJZXRuYXZpdl9nZW1fZGVzY3JpYmVfZmVuY2UoZmVuY2UsICJF
eGNsdXNpdmUiLCBtKTsKIAlyY3VfcmVhZF91bmxvY2soKTsKIH0KIAotLSAKMi4yNS4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0
cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
