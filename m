Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DC741EAAE
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 12:09:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 680D263390
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 10:09:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 536C66325F; Fri,  1 Oct 2021 10:08:51 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 516F56A912;
	Fri,  1 Oct 2021 10:08:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C6AFF6242C
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 04DF062435; Fri,  1 Oct 2021 10:06:47 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by lists.linaro.org (Postfix) with ESMTPS id B511F610C3
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:37 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id h15so12994456wrc.3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 01 Oct 2021 03:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KGewx1QiQQVkw015IvGnnogZeqnpnoxIhP9ykI50FyQ=;
 b=Cyh1S+VO3uhIzwT/x7r/+ke6Tw/sa5XVJuThgyu+evB5Z5y/CWutZVCiwpCfFHZegQ
 26g2VRhhPd9KX0OahtFF1IqXac+YyHgvNSG+BpcuOZhLk6rSPqls/sVfH9Wsl6pjbXUB
 XsRKnopUjSmdmOFWLn/0SAswKVinKLLZIOOJ68Rji+ehsq9pT/XNSYhgJl3p4zqWjxdG
 qRMNY3UTJrNN4+H9YzyNpl5HDZW6MDXbSwuFyS6RhLSt5i+dUEBzxA8h8vacLvnZfnK4
 XkBWBukDRFSr/FdkYI1aumJo88N0+S3UmvOt/8HN1d6x0qt8I6r1t141kR5TM+/8VbRq
 N11g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KGewx1QiQQVkw015IvGnnogZeqnpnoxIhP9ykI50FyQ=;
 b=go1XDgyvK6GyiVM3rdVQ5BsQwRnqcO6DkST715oPV1+shlmRARpDHRLjuwdVGeskLg
 Ua6yA25yEvcYLPMyx4nBLCNHThR4qAxteR0UeVke4A/H1JW97gLZU0sq0ZdwBaXIVn/V
 3hFmVAief+RWoYsmtVhgHRv+4eRsq9Blrd0OCWjbzTTpfg7zqMto2Vuzaj+YRa87Nfzu
 78cbYrL7L1iYnQjYGKSAYsF40FB52RWorAgZWxxBneqJ5a4EeDxTnoK5FMZR0irj4qWX
 hmtzHelmDNsGogrKBr4uGN05Ln7h4lprOG8/aQz4uPcJD9SpYn42vidHwDyHSU30hJ2y
 ZKsA==
X-Gm-Message-State: AOAM531hMEaAZndl1hvrLshsegNIvxUWYGQfVSrkU3p4VOy5KBaagZ3/
 yuE67SRl+GUdUadIg8BpbeQeIMPJVXQ=
X-Google-Smtp-Source: ABdhPJwhtgvOI7xyayup3oIPTfuGI4IkHPBzz6DTtAC78R48IvmCzllr7F2U4ngGqkW0ygDIrfd4qA==
X-Received: by 2002:adf:dc0d:: with SMTP id t13mr11183115wri.158.1633082795955; 
 Fri, 01 Oct 2021 03:06:35 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 v17sm5746069wro.34.2021.10.01.03.06.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Oct 2021 03:06:35 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri,  1 Oct 2021 12:06:08 +0200
Message-Id: <20211001100610.2899-27-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211001100610.2899-1-christian.koenig@amd.com>
References: <20211001100610.2899-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 26/28] drm/nouveau: use the new interator in
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
