Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 954E1422563
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 13:39:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 456CF61754
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 11:39:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3ED8C60D3D; Tue,  5 Oct 2021 11:39:14 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4EAED605DC;
	Tue,  5 Oct 2021 11:39:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E7D49606F5
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id ECD6D61945; Tue,  5 Oct 2021 11:38:08 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 by lists.linaro.org (Postfix) with ESMTPS id 792B16076D
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:00 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id
 m14-20020a05600c3b0e00b0030d4dffd04fso2644964wms.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Oct 2021 04:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d730QTcA12WB0FxkhM0n+vEOwpHIgTa3YH56dqVvnac=;
 b=AGHPzHyTbObVNAaOwMKpwE8lBcAqbw3FoKyW5qe6/Tdlq22O7vBLpHqZdE3XQnyP17
 IzBEoj/NDsiwk8ePd5Tcnfgr+g3X6c6TCM2mk7A5Jqu1DOqv08jBY1anu4IolTU/eu9g
 IpXMhmocTqgL+/ljGYyUsKz7dUvQF1lYIH5ZVgmgZjVHchR3w/ZEJdKNywIL+iodO5DJ
 8fdC0+a0daS/uDDGSpUnOv9OLwV7Ia+XfDk46AzESIhh03jl7PZmkdKs9zCFuknZGfhN
 QonswpRKkK8eH2R3c5BtVDVWXXdPXuICFyfz10ZSKeQOnBiM2ZfUNJ10YK0GGS80GX6a
 +tPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d730QTcA12WB0FxkhM0n+vEOwpHIgTa3YH56dqVvnac=;
 b=vXf2Q7p3gKHN+FRfcQFH67OBoW7ADLpFOSI7NCpCabzE1imiEy6aYN0bI1nACwOoVn
 DznNFJtKSaRp3gNfAjGrxm+e7I0eAipmkzV1rCawMJE8uOedtu2a0+StI9YIG1eczcEK
 frBEMT1HBxv/hNzai14agEyGKtaegm26qZwiWPoOL6sHuZejl+PHcpVxYhIisPGRdqV9
 TEdFbAFUlN6VvgIVbpIE3lxYesPZXBtKIn95B/vyJPOzozWUdJSuk3GPPIlB07usj9Ap
 Krq+lFPvbLkQbTcgCF5XF/W2jTcZKH//gmsvj1/U8l4yGOGfiPXZui7/P2GmSJ/4xpQu
 qIfg==
X-Gm-Message-State: AOAM533u+ZgvN2DLYApxf/izWnNNLyw5SjAOdEJDWd69e4+VeKXBCang
 TaZlDYPn8yXOLbiONqpzUUtWsmq1q4I=
X-Google-Smtp-Source: ABdhPJxecRyNg3S437RhSJiozzZhKzwjhUlyj4Z6lAlk+StsOMG/YjUPqJMYy7r2Gpdz3R/hLke3lw==
X-Received: by 2002:a1c:f405:: with SMTP id z5mr2873140wma.72.1633433879512;
 Tue, 05 Oct 2021 04:37:59 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c5sm1739912wml.9.2021.10.05.04.37.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 04:37:59 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Tue,  5 Oct 2021 13:37:30 +0200
Message-Id: <20211005113742.1101-17-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005113742.1101-1-christian.koenig@amd.com>
References: <20211005113742.1101-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 16/28] drm/scheduler: use new iterator in
 drm_sched_job_add_implicit_dependencies v2
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgp2MjogdXNlIGRtYV9yZXN2X2Zvcl9lYWNoX2Zl
bmNlCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+ClJldmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNo
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jIHwgMjYgKysrKysr
LS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIw
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2No
ZWRfbWFpbi5jIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMKaW5kZXgg
MDQyYzE2YjVkNTRhLi41YmM1Zjc3NWFiZTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9z
Y2hlZHVsZXIvc2NoZWRfbWFpbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2No
ZWRfbWFpbi5jCkBAIC02OTksMzAgKzY5OSwxNiBAQCBpbnQgZHJtX3NjaGVkX2pvYl9hZGRfaW1w
bGljaXRfZGVwZW5kZW5jaWVzKHN0cnVjdCBkcm1fc2NoZWRfam9iICpqb2IsCiAJCQkJCSAgICBz
dHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwKIAkJCQkJICAgIGJvb2wgd3JpdGUpCiB7CisJc3Ry
dWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOworCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwogCWlu
dCByZXQ7Ci0Jc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlczsKLQl1bnNpZ25lZCBpbnQgaSwgZmVu
Y2VfY291bnQ7Ci0KLQlpZiAoIXdyaXRlKSB7Ci0JCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlID0g
ZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQob2JqLT5yZXN2KTsKLQotCQlyZXR1cm4gZHJtX3Nj
aGVkX2pvYl9hZGRfZGVwZW5kZW5jeShqb2IsIGZlbmNlKTsKLQl9Ci0KLQlyZXQgPSBkbWFfcmVz
dl9nZXRfZmVuY2VzKG9iai0+cmVzdiwgTlVMTCwgJmZlbmNlX2NvdW50LCAmZmVuY2VzKTsKLQlp
ZiAocmV0IHx8ICFmZW5jZV9jb3VudCkKLQkJcmV0dXJuIHJldDsKIAotCWZvciAoaSA9IDA7IGkg
PCBmZW5jZV9jb3VudDsgaSsrKSB7Ci0JCXJldCA9IGRybV9zY2hlZF9qb2JfYWRkX2RlcGVuZGVu
Y3koam9iLCBmZW5jZXNbaV0pOworCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlKCZjdXJzb3IsIG9i
ai0+cmVzdiwgd3JpdGUsIGZlbmNlKSB7CisJCXJldCA9IGRybV9zY2hlZF9qb2JfYWRkX2RlcGVu
ZGVuY3koam9iLCBmZW5jZSk7CiAJCWlmIChyZXQpCi0JCQlicmVhazsKKwkJCXJldHVybiByZXQ7
CiAJfQotCi0JZm9yICg7IGkgPCBmZW5jZV9jb3VudDsgaSsrKQotCQlkbWFfZmVuY2VfcHV0KGZl
bmNlc1tpXSk7Ci0Ja2ZyZWUoZmVuY2VzKTsKLQlyZXR1cm4gcmV0OworCXJldHVybiAwOwogfQog
RVhQT1JUX1NZTUJPTChkcm1fc2NoZWRfam9iX2FkZF9pbXBsaWNpdF9kZXBlbmRlbmNpZXMpOwog
Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0t
c2lnCg==
