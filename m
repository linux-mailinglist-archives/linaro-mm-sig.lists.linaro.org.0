Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EC03AB258
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 13:17:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 56E6D63512
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 11:17:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1977163538; Thu, 17 Jun 2021 11:17:31 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B4FE163565;
	Thu, 17 Jun 2021 11:17:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E85D963570
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2FFE363586; Thu, 17 Jun 2021 11:16:15 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
 [209.85.208.43])
 by lists.linaro.org (Postfix) with ESMTPS id D1C2B63502
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:11 +0000 (UTC)
Received: by mail-ed1-f43.google.com with SMTP id c7so2533734edn.6
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 04:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=5RG0PthxUb2OXPV5l0/m18up/y1qESMs7WFmfpY8Xt0=;
 b=g+D3W4qMWgyEia6rgQELJge+SQQ2NVfYP2PuA5e0o92VM1hYGbeR4uefcSN1UEmoa0
 TyxVqAWIkKZT5a4Z+JnAXK8BzshUnD//UGDEXFwfnATj6IyJGF9aQYSXsSOwwnBgMovU
 HLMKsAPe1hGChok41/dl/BnkoiN6AOT4/qQMvyPCQXQ+ia0AFlKPeQ3saDEtSSAku3pP
 NS7Yyiieq+IfcO3utB0CcogeAzl1skgQaiP8PuspAUdUcEu+z0IjDFaODExWGb9hqPam
 8eYKw5TVI1MFS5m/0c6z2I07hNbMq1lc0DUOPSMnxA+TATcaeecC+UWTiWQCaT81NlaH
 oiYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5RG0PthxUb2OXPV5l0/m18up/y1qESMs7WFmfpY8Xt0=;
 b=n8KFsOSNv0pad3iYKWLH2rUFjdJEisvi41PiZCd5TaiHp4HwDGypo6u5nKhhO31Ez3
 S5iKHodWI6Ylt/PdFoDl3mmLKp2REP7u296f1tWA1YwC6li4qPFN1qa6L2ql2S7HYoh5
 fmaQrkfrGRVU82RUXKWCUxGMp2/Vkz8EAOeP5jmS6J/gn7WwFkHAuwhm4hmiPIlbpm26
 YxTPyAK7WsR8h5MmFl76gxN9JqfISn1ehezQ1V0npgdOxMamruH1EjiQCbmM7ct6yWDA
 dUfkxremvtaPCcuX11wQgKdFIwgq/hHqTi4o9onqq8eSTRJKe73NGv6+VALQ954AkLvs
 rtDg==
X-Gm-Message-State: AOAM532xPxBnewJWyiBAC33ZFh3AKPKslcG7yOqLrktljnwZOnj/ft4+
 x38062rPHvKqZhEshtPgdCNmnhOTp5c=
X-Google-Smtp-Source: ABdhPJxubHT7YLEEdz8ShaZB+VV9F9nfP2H/mn5NXRPMIM+yC4zBGh3VpVEM8t/+ZflUd4FZZM1Tww==
X-Received: by 2002:a50:8dc6:: with SMTP id s6mr5789974edh.50.1623928570919;
 Thu, 17 Jun 2021 04:16:10 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8534:5e76:1ee5:f3ad])
 by smtp.gmail.com with ESMTPSA id y10sm3531353ejm.76.2021.06.17.04.16.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 04:16:10 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Date: Thu, 17 Jun 2021 13:15:56 +0200
Message-Id: <20210617111558.28486-15-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210617111558.28486-1-christian.koenig@amd.com>
References: <20210617111558.28486-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 14/16] drm/msm: use new iterator in
 msm_gem_describe
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuIEFsc28gZHJvcCB0aGUgUkNVIHJlYWQgc2lkZSBs
b2NrIHNpbmNlIHRoZQpvYmplY3QgaXMgbG9ja2VkIGFueXdheS4KClVudGVzdGVkIHNpbmNlIEkg
Y2FuJ3QgZ2V0IHRoZSBkcml2ZXIgdG8gY29tcGlsZSBvbiAhQVJNLgoKU2lnbmVkLW9mZi1ieTog
Q2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9tc20vbXNtX2dlbS5jIHwgMTkgKysrKystLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0u
YwppbmRleCAyNGY4YzA2MDMzODUuLjhiMTBkODJiNWQ3YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL21zbS9tc21fZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMK
QEAgLTkzMiw3ICs5MzIsNyBAQCB2b2lkIG1zbV9nZW1fZGVzY3JpYmUoc3RydWN0IGRybV9nZW1f
b2JqZWN0ICpvYmosIHN0cnVjdCBzZXFfZmlsZSAqbSwKIHsKIAlzdHJ1Y3QgbXNtX2dlbV9vYmpl
Y3QgKm1zbV9vYmogPSB0b19tc21fYm8ob2JqKTsKIAlzdHJ1Y3QgZG1hX3Jlc3YgKnJvYmogPSBv
YmotPnJlc3Y7Ci0Jc3RydWN0IGRtYV9yZXN2X2xpc3QgKmZvYmo7CisJc3RydWN0IGRtYV9yZXN2
X2N1cnNvciBjdXJzb3I7CiAJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7CiAJc3RydWN0IG1zbV9n
ZW1fdm1hICp2bWE7CiAJdWludDY0X3Qgb2ZmID0gZHJtX3ZtYV9ub2RlX3N0YXJ0KCZvYmotPnZt
YV9ub2RlKTsKQEAgLTEwMDcsMjIgKzEwMDcsMTMgQEAgdm9pZCBtc21fZ2VtX2Rlc2NyaWJlKHN0
cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLCBzdHJ1Y3Qgc2VxX2ZpbGUgKm0sCiAJCXNlcV9wdXRz
KG0sICJcbiIpOwogCX0KIAotCXJjdV9yZWFkX2xvY2soKTsKLQlmb2JqID0gZG1hX3Jlc3Zfc2hh
cmVkX2xpc3Qocm9iaik7Ci0JaWYgKGZvYmopIHsKLQkJdW5zaWduZWQgaW50IGksIHNoYXJlZF9j
b3VudCA9IGZvYmotPnNoYXJlZF9jb3VudDsKLQotCQlmb3IgKGkgPSAwOyBpIDwgc2hhcmVkX2Nv
dW50OyBpKyspIHsKLQkJCWZlbmNlID0gcmN1X2RlcmVmZXJlbmNlKGZvYmotPnNoYXJlZFtpXSk7
CisJZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2Uocm9iaiwgJmN1cnNvciwgdHJ1ZSwgZmVuY2UpIHsK
KwkJaWYgKGN1cnNvci5pc19leGNsdXNpdmUpCisJCQlkZXNjcmliZV9mZW5jZShmZW5jZSwgIkV4
Y2x1c2l2ZSIsIG0pOworCQllbHNlCiAJCQlkZXNjcmliZV9mZW5jZShmZW5jZSwgIlNoYXJlZCIs
IG0pOwotCQl9CiAJfQogCi0JZmVuY2UgPSBkbWFfcmVzdl9leGNsX2ZlbmNlKHJvYmopOwotCWlm
IChmZW5jZSkKLQkJZGVzY3JpYmVfZmVuY2UoZmVuY2UsICJFeGNsdXNpdmUiLCBtKTsKLQlyY3Vf
cmVhZF91bmxvY2soKTsKLQogCW1zbV9nZW1fdW5sb2NrKG9iaik7CiB9CiAKLS0gCjIuMjUuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
